#b=board,p=player,w=winning combos,r=random integer
set b 123456789
puts $b
set w [list 123 456 789 147 258 369 159 357]

foreach p {x o x o x o x o x} {
set r [expr {int(rand()*9)+1}]
 while {![regexp $r $b]} {set r [expr {int(rand()*9)+1}]}
 regsub $r $b $p b
 puts $b

foreach c $w { ;# c=cell

set c0 [string index $c 0]
set c1 [string index $c 1]
set c2 [string index $c 2]

set b0 [string index $b [expr {$c0-1}]]
set b1 [string index $b [expr {$c1-1}]]
set b2 [string index $b [expr {$c2-1}]]

#puts "$c0 $c1 $c2 \n$b0 $b1 $b2"
if {
$b0==$b1 &&
$b1==$b2
} {puts stderr "$b Winner! $p"; exit}}
}
puts stderr "Tie!"

