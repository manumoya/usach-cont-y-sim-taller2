
%%%%% PRIMERA PARTE: FUNCION 1 %%%%%

% LAZO ABIERTO
clear
clc
figure(gcf) ; figure(1) ;                           
hold off;                                           
grid off;
num11 = [0 3];
den11 = [3 2];
step(num11,den11);  
[z11,p11,g11] =  tf2zp (num11,den11)
title('Primera Parte: Función 1er. Orden en Lazo Abierto')
xlabel('Tiempo (t)');                                    
ylabel('Función de Transferencia');                                    
legend('H(s) = 3/(3s+2)''Polos');
legend('Location','southeast');                   

%LAZO CERRADO
figure(gcf) ; figure(2) ;                           
hold off;                                           
grid off;       
num12 = [0 3];
den12 = [3 2];
[z12,p12,g12] =  tf2zp (num12,den12);
[num122,den122] = cloop(num12,den12);
step(num122,den122);
title('Primera Parte: Función 1er. Orden en Lazo Cerrado')
xlabel('Tiempo (t)');                                    
ylabel('Función de Transferencia');                                    
legend('H(s) = 3/(3s+2)');
legend('Location','southeast');                   

%%%%% PRIMERA PARTE: FUNCION 2 %%%%%

%LAZO ABIERTO
figure(gcf) ; figure(3) ;                           
hold off;                                           
grid off;
num21 = [1 8 1];
den21 = [1 2 7];
[z21,p21,g21] =  tf2zp (num21,den21)
step(num21,den21)
title('Primera Parte: Función 2do. Orden en Lazo Abierto')
xlabel('Tiempo (t)');                                    
ylabel('Función de Transferencia');                                    
legend('H(s) = (s^2+8s+1 )/(s^2+2s+7)');
legend('Location','southeast');                   

%LAZO CERRADO
figure(gcf) ; figure(4) ;                           
hold off;                                           
grid off;                                           
num22 = [1 8 1];
den22 = [1 2 7];
[z22,p22,g22] =  tf2zp (num22,den22);
[num222,den222] = cloop(num22,den22);
step(num222,den222);
title('Primera Parte: Función 2do. Orden en Lazo Cerrado')
xlabel('Tiempo (t)');                                    
ylabel('Función de Transferencia');                                    
legend('H(s) = (s^2+8s+1 )/(s^2+2s+7)');
legend('Location','northeast');                   
    

%%%%% PRIMERA PARTE: FUNCION 3 %%%%%

%LAZO ABIERTO
figure(gcf) ; figure(5) ;                           
hold off;                                           
grid off;  
num31 = [0 0 18.7 54.231];
den31 = [1 7.4 29.5 54.231];
[z31,p31,g31] =  tf2zp (num31,den31)
step(num31,den31);
title('Primera Parte: Función 3er. Orden en Lazo Abierto')
xlabel('Tiempo (t)');                                    
ylabel('Función de Transferencia');                                    
legend('H(s) = (18.7s^2 + 54.231)/(s^3 + 7.4s^2 + 29.5s + 54.231)');
legend('Location','southeast');                   

%LAZO CERRADO
figure(gcf) ; figure(6) ;                           
hold off;                                           
grid off;   
num32 = [0 0 18.7 54.231];
den32 = [1 7.4 29.5 54.231];
[z32,p32,g32] =  tf2zp (num32,den32);
[num322,den322] = cloop(num32,den32);
step(num322,den322)
title('Primera Parte: Función 3er. Orden en Lazo Cerrado')
xlabel('Tiempo (t)');                                    
ylabel('Función de Transferencia');                                    
legend('H(s) = (18.7s^2 + 54.231)/(s^3 + 7.4s^2 + 29.5s + 54.231)');
legend('Location','southeast');                   
