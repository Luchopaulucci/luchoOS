org 0x7C00      ;el org le dice al ensamblador que calcule todas las compensaciones de memoria a partir de 0x7C00
bits 16         ;como se basa en un procesador 8086 vamos a usar 16 bits ya que va a pensar que es una vija version del 8086



main:           ;main marca donde comineza el codigo
    hlt         ;procesador se detiene y queda en estado de espera hasta que se produce una interrupción externa o se reinicia el sistema

.halt:          ;procesador permanece en este estado hasta que se recibe una interrupción externa
    jmp .halt

                                ;$-$$ nos dará la duración del programa hasta ahora y times se usa para repetir una instrucción o grupo de instrucciones un número específico de veces
times 510-($-$$) db 0           ;db reserva espacio en la memoria y asignar valores de un byte en esa ubicación de memoria
dw 0AA55h           ;dw se usa para definir palabras (palabras de datos) en la memoria





