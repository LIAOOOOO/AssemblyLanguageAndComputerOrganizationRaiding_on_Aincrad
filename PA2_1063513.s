	.option nopic
	.text
	.align	3
.LC0:
	.string "%lli\n"
	.text
	.align 1
	.globl	main
	.type	main, @function
.LC1:
	.string "%lli"
	.align 3
.LC2:
	.string "%lli "
	.align 3
.LC3:
	.string "\n"
	.align 3
main:
	addi	x2,x2,-32
	sd	x1,24(x2)
	sd	x8,16(x2)
	addi x8,x2,32
	
	#begin
    add x11, x8, zero
    lui x15,%hi(.LC1)
    addi x10,x15,%lo(.LC1)
    call scanf

    ld x29, 0(x8)
    add x10,x29,x0          # x = x10
	jal x1, fact            
	beq x0, x0, end
fact:
    addi x2, x2, -16             
    sd x1, 8(x2)
    sd x10,0(x2) 
    addi x5,x0,1            # x5 = 1
    beq x10,x5,L0			# if x == 1, goto L0
    beq x10,x0,L1	     	# if x == 0, goto L1  
    addi x31,x0,21          # x31 = 21
    bge x10,x31,L3      	# if x > 20, goto L3
    addi x6,x0,11           # x6 = 11
    bge x10,x6,L2		    # if x > 10 && x <= 20, goto L2
    addi x7,x0,2            # x7 = 2
    bge x10,x7,L4		    # if x > 1 && x <= 10,goto L4
    ld x1,8(x2)     
    addi x10,x0,-1          # else fact(x) = -1
    addi x2,x2,16              
    jalr x0,0(x1)

L0:                         # if x == 1, return 5
	addi x10,x0,5	        # x10 = 5
	ld x1,8(x2)             # load return address
	addi x2,x2,16
	jalr x0,0(x1)

L1:                         # if x == 0, return 1
	addi x10,x0,1			# x10 = 1
	ld x1,8(x2)             # load return address
	addi x2,x2,16
	jalr x0,0(x1)


L3:                         # if x > 20, return 2*x + fact(x/5)
	add x18,x10,x0          # x18 stored the value in x10
	addi x28,x0,5           # x28 = 5
    div x10,x10,x28         # x10 = x / 5     
    jal x1,fact             # call fact
    ld x1,8(x2)             # load return address                  
    add x19,x18,x18         # x19 = 2*x 
    add x10,x10,x19         # x10 = 2*x + fact(x/5)
    ld x1,8(x2)             # load return address
	addi x2,x2,16  
    jalr x0,0(x1)

L2:                         # if x > 10 && x <= 20, return fact(x-2) + fact(x-3)
	addi x10, x10, -2       # x10 = x - 2
	jal x1,fact             # call fact
	addi x2, x2, -8
	sd x10, 0(x2)           # store fact(x-2)
	ld x10, 8(x2)           # load input x
	addi x10, x10, -3       # x10 = x - 3
	jal x1,fact             # call fact
	ld x9, 0(x2)            # load fact(x - 3) and stored in x9
	addi x2, x2, 8
	add x10, x10, x9        # x10 = fact(x-2) + fact(x - 3)
	ld x1, 8(x2)            # load return address 
	addi x2, x2, 16
	jalr x0, 0(x1)
L4:                         # if x > 1 && x <= 10, return fact(x-1)+fact(x-2)
	addi x10, x10, -1       # x10 = x - 1
	jal x1,fact             # call fact
	addi x2, x2, -8   
	sd x10, 0(x2)           # store fact(x - 1)
	ld x10, 8(x2)           # load input x
	addi x10, x10, -2       # x10 = x - 2
	jal x1,fact             # call fact
	ld x9, 0(x2)            # load fact(x - 1) and stored in x9
	addi x2, x2, 8
	add x10, x10, x9        # x10 = fact(x-1) + fact(x - 2)
	ld x1, 8(x2)            # load return address 
	addi x2, x2, 16
	jalr x0, 0(x1)




 end:
    add x29,x10,x0
    add x11,x29,0
    lui x15,%hi(.LC0)    
    addi x10,x15,%lo(.LC0)
    call printf
	#end

	li	x15,0
	mv	x10,x15
	ld	x1,24(x2)
	ld	x8,16(x2)
	addi x2,x2,32
	jr	x1
	.size	main, .-main
	.ident	"GCC: (GNU) 7.2.0"


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><title>

</title></head>
<body>
    <form method="post" action="./File_DownLoad_Wk_zip.aspx?File_name=PA2_1063513.s&amp;type=3&amp;id=2691782" id="form1">
<div class="aspNetHidden">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKLTEzNDM3NzkxOWRkwneTr34MFXJYUKyKKda+DU4gQVM=" />
</div>

<div class="aspNetHidden">

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="629601C3" />
</div>
    <div>
    
    </div>
    </form>
</body>
</html>
