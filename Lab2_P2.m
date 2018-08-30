
%%%%% SEGUNDA PARTE %%%%%

% Limpiar workspace
clc
clear

% FUNCION 1
F1_N = [0 0 3 0];
F1_D = [0 5 0 2];

% FUNCION 2
F2_N = [0 0 0 4];
F2_D = [0 0 1 2];

% FUNCION 3
F3_N = [0 0 3 1];
F3_D = [3 5 0 1];

% FUNCION 4
F4_N = [0 0 0 1];
F4_D = [0 0 7 1];

% FUNCION 5
F5_N = [0 0 5 4];
F5_D = [5 1 0 4];

% FUNCION 6
F6_N = [0 0 2 3];
F6_D = [1 6 0 5];


%%%%% REDUCCIÓN DIAGRAMA DE BLOQUE %%%%%

[num1,den1] = parallel(F1_N, F1_D, F2_N, F2_D);
[num2,den2] = parallel(F4_N, F4_D, F5_N, F5_D);
[num3,den3] = series(num2, den2, F6_N, F6_D);
[num4,den4] = feedback(F3_N, F3_D, 1, 1);
[num5,den5] = series(num4, den4, num3, den3);
[num6,den6] = parallel(num1, den1, num5, den5);

%%%%% GRAFICAR RESPUESTA AL ESCALON %%%%%

% Mostrar por Pantalla la Fucion de Transferencia
respuestaTF = tf(num6,den6)
 
% Gráfico Lazo Cerrado´
figure(gcf) ; figure(1) ;                           
hold off;                                           
grid off;                                           
[num,den] = cloop(num6,den6);
step(num,den);
title('Función de Transferencia del Diagrama de Bloque en Lazo Cerrado');
xlabel('Tiempo (t)');                                    
ylabel('Función de Transferencia');                                    
legend('H(s)');
legend('Location','best');   

