.eqv N 10

#Corrispodenza variabili - registri
#I/O simulati attraverso registri a0

#h -> t0
#i -> t1
#z -> t2
#w -> t3
#R -> t4

#	scanf("%d", &h)
	li $t0,15
#	prima espressione for
	move $t1,$zero # i = 0
	li   $t2,3     # z = 3
	
for_begin:
	#if (i >= N) goto for_end
	bge $t1, N, for_end
	
	add $t5,$t0,$t2	#int t = z + h
	bge $t5,20,for_end
	
	#corpo ciclo for
	
	li 	$t6, 5		#int t2 = z % 5;
	div 	$t2,$t6
	mfhi 	$t6
	
	beqz 	$t6, if_else		#if (t == 0) goto if_else
	move	$t4,$t2			#R = z
	mul	$t0,$t0,$t1
	b 	if_end			#goto if_end
	
	
if_else:
	mflo 	$t3			#w = z / 5
	add	$t4,$t4,$t3

if_end:
	add $t1,$t1,1  #i = i + 1
	add $t6,$t0,4  #
	add $t2,$t3,$t6
	b for_begin
	
for_end:
	mul $t4,$t4,2  # oppure usa shift
	add $t4,$t4,$t0
	move $a0,$t4
	

