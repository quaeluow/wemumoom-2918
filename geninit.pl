# 319727,218,A01014725,G92O,"Benjaminsen","Aaron"
# 319727,319727,Student,,,,,,319727,G92O,
open(wlst,"<./math2441-plain.lst");
@wlst=<wlst>;
close(wlst);
open(output,">./init.txt");
foreach $wlst (@wlst)
{
    chomp($wlst);
}
open(stud,"<./students.csv");
@stud=<stud>;
close(stud);
foreach $stud (@stud)
{
    chomp($stud);
}

@txt=(
"Hi,",
"To log in for the grades database and for WeBWorK, here are your credentials:",
"username:",
"password:",
    "The grades database is not operational yet. I will let you know in class when it is uploaded. However, WeBWorK is already in operation, and the first lab report is online. Please log in and make sure everything looks good. Lab Report 1 is due on Thursday, January 18, at 11pm sharp. WeBWorK will not accept submissions after the deadline.",
    "The link for WeBWorK is http://www.tinyurl.com/wbwrk",
"Let me know if there are any problems, but please do not reply to this email. Email me at slukits\@bcit.ca instead.",
    "Stefan"
    );

for ($i1=0;$i1<=$#wlst;++$i1)
{
    @t=split(",",$wlst[$i1]);
    @s=split(",",$stud[$i1]);
    @r=split("\"",$s[5]);
    print output "For student $s[5] $s[4]\n\n";
    print output "$r[1],\n\n";
    print output "$txt[1]\n\n";
    print output "$txt[2] $t[0]\n\n";
    print output "$txt[3] $t[9]\n\n";
    print output "$txt[4]\n\n";
    print output "$txt[5]\n\n";
    print output "$txt[6]\n\n";
    print output "$txt[7]\n\n";
}

close(output);
