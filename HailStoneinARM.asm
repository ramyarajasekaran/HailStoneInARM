; RO contains parameter for HailStone function (n)
HSTONE
		PUSH {R1,R2}	
chk			OUT	;prints n
			SUBS R2,R0,#1	; if n==1, exit
			BEQ end
			ANDS R2,R0,#0x01 ; isolates 0th bit to check 
			BEQ even		 ; odd/even
odd		LDR R1,#3
		MUL R0,R0,R1
		ADD R0,#1
		BRnzp chk
even 		LSRS R0,#1	; divides n by 2
	 		BRnzp chk
end		POP {R1,R2}
		BX LR
	

