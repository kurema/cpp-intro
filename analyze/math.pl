my $content = do { local $/; <STDIN> };

print "<root>\n";
$content=~ s/<span class="math[^\"]*">([^<>]*)<\/span>/print "  <math>".$1."<\/math>\n"/seg;
print "</root>\n";

