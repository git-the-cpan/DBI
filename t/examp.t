
use DBI;
use Config;
use Cwd;
$|=1;

print "1..$tests\n";

require VMS::Filespec if $^O eq 'VMS';

sub ok ($$) {
    my($n, $ok) = @_;
    ++$t;
    die "sequence error, expected $n but actually $t"
	if $n and $n != $t;
    ($ok) ? print "ok $t\n" : print "not ok $t\n";
}
	
my $dbh = DBI->connect('', '', '', 'ExampleP');
ok(0, $dbh);

ok(0, $dbh->ping);
ok(3, $dbh->quote("quote's") eq "'quote''s'");
ok(0, $dbh->quote(undef)     eq "NULL");

eval { $dbh->commit('dummy') };
ok(0, $@ =~ m/^DBI commit: invalid number of parameters: handle \+ 1/);

my $cursor_e = $dbh->prepare("select unknown_field_name from ?");
ok(0, !defined $cursor_e);
ok(0, $DBI::err);
ok(0, $DBI::errstr =~ m/unknown_field_name/);
ok(0, $DBI::err    == $dbh->err);
ok(0, $DBI::errstr eq $dbh->errstr);

ok(0, $dbh->errstr eq $dbh->func('errstr'));

foreach(12..19) { ok(0, 1) }	# soak up to next round number

my $csr_a = $dbh->prepare("select mode,size,name from ?");
ok(20, ref $csr_a);

my $csr_b = $dbh->prepare("select mode,size,name from ?");
ok(0, ref $csr_b);

ok(0, $csr_a != $csr_b);
ok(0, $csr_a->{NUM_OF_FIELDS} == 3);
ok(0, $csr_a->{'Database'}->{'Driver'}->{'Name'} eq 'ExampleP');

my $dir = cwd();	# a dir always readable on all platforms
$dir = VMS::Filespec::unixify($dir) if $^O eq 'VMS';
my($col0, $col1, $col2);
my(@row_a, @row_b);

ok(25, $csr_a->bind_columns(undef, \($col0, $col1, $col2)) );
ok(0, $csr_a->execute( $dir ));
@row_a = $csr_a->fetchrow_array;
ok(0, @row_a);
# check bind_columns
ok(0, $row_a[0] eq $col0);
ok(0, $row_a[1] eq $col1);
ok(0, $row_a[2] eq $col2);

ok(0, $csr_b->bind_param(1, $dir));
ok(0, $csr_b->execute());
@row_b = @{ $csr_b->fetchrow_arrayref };
ok(0, @row_b);

ok(0, "@row_a" eq "@row_b");
@row_b = $csr_b->fetchrow_array;
ok(0, "@row_a" ne "@row_b");

ok(0, $csr_a->finish);
ok(0, $csr_b->finish);

ok(0, $csr_b->execute());
my $row_b = $csr_b->fetchrow_hashref;
ok(0, $row_b);
ok(0, $row_b->{mode} == $row_a[0]);
ok(0, $row_b->{size} == $row_a[1]);
ok(0, $row_b->{name} eq $row_a[2]);

$csr_a = undef;	# force destructin of this cursor now
ok(43, 1);

ok(0, $csr_b->execute());
my $r = $csr_b->fetchall_arrayref;
ok(0, $r);
ok(0, @$r);
ok(0, $r->[0]->[0] == $row_a[0]);
ok(0, $r->[0]->[1] == $row_a[1]);
ok(0, $r->[0]->[2] eq $row_a[2]);

my $csr_c;
$csr_c = $dbh->prepare("select unknown_field_name1 from ?");
ok(0, !defined $csr_c);
ok(0, $DBI::errstr =~ m/Unknown field names: unknown_field_name1/);

$dbh->{RaiseError} = 1;
ok(0, $dbh->{RaiseError});
ok(0, ! eval { $csr_c = $dbh->prepare("select unknown_field_name2 from ?"); 1; });
ok(0, $@ =~ m/Unknown field names: unknown_field_name2/);
$dbh->{RaiseError} = 0;
ok(55, !$dbh->{RaiseError});

{
  my @warn;
  local($SIG{__WARN__}) = sub { push @warn, @_ };
  $dbh->{PrintError} = 1;
  ok(0, $dbh->{PrintError});
  ok(0, ! $dbh->prepare("select unknown_field_name3 from ?"));
  ok(0, "@warn" =~ m/Unknown field names: unknown_field_name3/);
  $dbh->{PrintError} = 0;
  ok(0, !$dbh->{PrintError});
}

BEGIN { $tests = 59; }
