.text
	
	li $t1,23
	li $t2,9
	li $t3,-11
	
	add  $t2,$t1,$t2  #t2 = t1 + t2
	addi $t2,$t2,4	  #t2 = t2 + 4
	
	li    $t4,14
	sub   $t3,$t4,$t1	  #t3 = 14 - s1
	sub   $t3,$t2,$t3  	  #t3 = t2 - t3
	
	sub  $t1,$t2,$t3
	subi $t1,$t1,15
	
	
	
	
