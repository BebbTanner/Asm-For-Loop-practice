INCLUDE Irvine32.inc

.data
	i SDWORD ?

.code

main PROC
	mov i, 1

again:
	cmp i, 10
	jg done
	mov eax, i
	call WriteInt
	mov al, ' '
	call WriteChar
	inc i
	jmp again

done:
	Call Crlf
	Call WaitMsg
	exit

main ENDP
END	main