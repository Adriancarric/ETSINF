	.data
a:	.dword  9,8,7,6,5,4,3,2,1,0
afin:	

	.text
start:	
	dadd r5,r0,afin
	dadd r1,r0,a
	dsub r4,r5,#8

loopi:	
	ld r6,0(r1)
loopi2:
	dadd r2,r1,#8
	
loopj:
	ld r7,0(r2)
loopj2:
	sgt r3,r6,r7
	beqz r3, endif
then:	
	sd r7,0(r1)
	sd r6,0(r2)
	dadd r6,r7,r0
endif:	
	dadd r2,r2,#8
	seq r3,r2,r5
	beqz r3,loopj2
	ld r7,0(r2)
    dadd r1,r1,#8
	seq r3,r1,r4
	beqz r3,loopi2
	ld r6,0(r1)

	trap #0
