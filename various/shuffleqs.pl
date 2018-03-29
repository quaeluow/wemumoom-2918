use List::Util 'shuffle';
$i2=0;
system "ls -l > fnames.data";
open(fnames,"<./fnames.data");
@fnames=<fnames>;
close(fnames);
foreach $fnames (@fnames)
{
    chomp($fnames);
}
for ($i1=0;$i1<=$#fnames;++$i1)
{
    unless (($fnames[$i1]=~/fnames/)||($fnames[$i1]=~/shuffleqs/)||($fnames[$i1]=~/total/))
    {
	@t1=split(" ",$fnames[$i1]);
	$qn[$i2]=$t1[8];
	++$i2;
    }
}
@pn = shuffle(@qn);
for ($i3=0;$i3<=$#qn;++$i3)
{
    if ($i3<10)
    {
	$prefix="0";
    }
    else
    {
	$prefix="";
    }
    print "system \"mv -v $qn[$i3] a$qn[$i3]\";\n";
}
for ($i4=0;$i4<=$#qn;++$i4)
{
    if ($i4<10)
    {
	$prefix="0";
    }
    else
    {
	$prefix="";
    }
    print "system \"mv -v a$qn[$i4] $pn[$i4]\";\n";
}
print "Are you ready to proceed (y/n)? ";
$a=<STDIN>;
chomp($a);
if ($a eq "y")
{
for ($i3=0;$i3<=$#qn;++$i3)
{
    if ($i3<10)
    {
	$prefix="0";
    }
    else
    {
	$prefix="";
    }
    system "mv -v $qn[$i3] a$qn[$i3]";
}
for ($i4=0;$i4<=$#qn;++$i4)
{
    if ($i4<10)
    {
	$prefix="0";
    }
    else
    {
	$prefix="";
    }
    system "mv -v a$qn[$i4] $pn[$i4]";
}
}

