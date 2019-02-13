
	.data               ; Comienzo de los datos de memoria
m:	.dword 0,1,0,1,0,1,0,1,0
mfin:
	.dword 0,1,1,0,1,1,0,1,1
	.dword 0,0,0,0,0,0,0,0,0
	.dword 1,1,1,1,1,1,1,1,1
	.dword 0,1,0,1,0,1,0,1,0

res1:
	.dword 0


	.text               ; Comienzo del fragmento de c—digo
	dadd r1,$gp,m
	dadd r10,$gp,mfin
	dsub r10,r10,#8
loop1:
	ld r2,0(r1)
	beqz r2, fin1
uno1:	
	dadd r3,r3,#1
fin1:	
	dadd r1,r1,#8
	bne r1,r10,loop1
	
	sd r3,res1($gp)
	
	trap 0

