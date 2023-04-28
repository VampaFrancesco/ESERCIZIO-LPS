	

.text
	
	li $t1, -35
	li $t3, 6300
	li $t2, -9153
	
	
	#prima parte
	sub $t1,$t1,1
	sub $t4,$t1,254
	li $t7, 1302
	sub $t5,$t7,$t2
	add $t3,$t4,$t5
	
	#reset variabili
	move $t4,$zero
	move $t5,$zero
	move $t7,$zero
	
	#seconda parte
	add $t4,$t1, 27033
	sub $t4,$t4,$t3
	li  $t7, 740
	sub $t5,$t7,$t2
	sub $t2,$t2,1
	sub $t6,$t3,14
	sub $t1,$t4,$t5
	add $t1,$t1,$t6
	
	#reset variabili appoggio
	move $t4,$zero
	move $t5,$zero
	move $t6,$zero
	move $t7,$zero
	
