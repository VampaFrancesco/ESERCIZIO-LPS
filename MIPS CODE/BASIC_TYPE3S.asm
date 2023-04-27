.text 
#Varibili di 3 tipi interi signed
#corrispondenza tra variabili c e codice mips

#signed char  c0, c1 = 23, c2 = -4
	
	li $t1, 23
	li $t2, -4
	
#int i0, i1 = 7, i2 = 2

	li $s1, 7
	li $s2, 2
	
#long l0, l1 = -127223, l2 = 86055
	li $a1,-127223
	li $a2,86055
	
	sub $a0,$a1,$a2
	
	mul $s4,$s2,3
	ble $s4,$s1,if_else
		add $1,$s1,4
		sub $s0,$a0,$s2
		b if_end
		
		
if_else:
	
	sub $s0,$s2,5502
	add $t0,$t1,$t2
	




if_end:
	
	add $a0,$s0,$s1
	div $s1,$s2
	mflo $s0
	mfhi $s2
	add $s2,$s2,$s1
	
#non posso fare op diretta tra due char e tra due short, convertire tutto a int
