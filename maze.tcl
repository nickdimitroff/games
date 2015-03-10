for {set i 0} {$i<1001} {incr i} {
  set r [expr {int(rand()*2)}]
  if {$r==1} {puts -nonewline "\|"} else {puts -nonewline "\_"}
  if {[expr {$i % 50}]==49} {puts -nonewline "\n"}
}
