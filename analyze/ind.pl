my $isFirstList=0;
my $isFirstItem=0;

print "<root>\n";
while(my $text = <STDIN>){
  if($text=~ /^\{\\textsf\{\\color\[gray\]\{0\.6\} ■\}~\\sffamily ([^}]+)/){
    if($isFirstList!=0){
      print "    </item>\n  </list>\n";
    }
    print "  <list header=\"$1\">\n";
    $isFirstList=1;
  }elsif($text=~ /^\s+\\item ([^,]+),/){
    if($isFirstItem!=0){
      print "    </item>\n";
    }
    my $entry=quick_tex_unescape($1);
    if($entry eq "\\index{find_if}"){next;}
    print "    <item content=\"$entry\">\n";
    $isFirstItem=1;
  }elsif($text=~ /^\s+\\subitem ([^,]+),/){
    my $entry=quick_tex_unescape($1);
    print "      <subitem content=\"$entry\" />\n";
  }
}
print "    </item>\n  </list>\n</root>";

sub quick_tex_unescape{
  #my ($text)=@_;
  my $text=$_[0];
  $text=~ s/\\texttt\s*\{([^}]+)\}/$1/g;
  $text=~ s/\\protect\{([^}]+)\}/$1/g;
  $text=~ s/\\texttt\s*\{([^}]+)\}/$1/g;
  $text=~ s/\\textbackslash/╲/g;
  $text=~ s/\\textbar/|/g;
  $text=~ s/\\textasciicircum/\^/g;
  $text=~ s/\\_/_/g;
  $text=~ s/\\\(//g;
  $text=~ s/\\\)//g;
  $text=~ s/\\#/#/g;
  $text=~ s/\\%/%/g;
  $text=~ s/\\&/&/g;
  $text=~ s/\\\$/\$/g;
  $text=~ s/\\infty/∞/g;
  $text=~ s/</&lt;/g;
  $text=~ s/>/&gt;/g;
  $text=~ s/"/&quot;/g;
  
  if($text eq "\\texttt{"){return ",";}
  elsif($text eq "\\{\\}"){return "{}";}
  
  $text=~ s/\{//g;
  $text=~ s/\}//g;
  
  return $text;
}
