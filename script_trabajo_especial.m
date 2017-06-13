% script_trabajo_especial
%limpia la command window
clear
clc


tic
dni= 39290709;
epsilon = 0.1;
 [probabilidad, probabilidades_parciales] = probabilidad_fallos(dni, epsilon);

% Mostramos por pantalla la probabilidad que nos dio
fprintf('Epsilon = %f: \n', epsilon);
fprintf('Probabilidad de fallos seguidos = %f \n', probabilidad);

% Graficamos cómo fue evolucionando la probabilidad iteración a iteración
figure, plot(probabilidades_parciales);
hold on
xlabel('iteracion');
ylabel('Probabilidad');
ylim([0 1]);
legend('probabilidades parciales');
grid on
%imprime por pantalla el desvio estandar de las primeras 20 iteraciones
Y1 = std(probabilidades_parciales(1:20));
fprintf('desvio estandar de las primeras 20 iteraciones = %f \n', Y1);
%imprime el desvio estandar de las ultimas 20 iteraciones
Y2 = std(probabilidades_parciales(end-20:end));
fprintf('desvio estandar de las ultimas 20 iteraciones = %f \n', Y2 );
 tiempo_epsilon = toc;
fprintf('tiempo epsilon 0,1=%f \n', tiempo_epsilon)

tic
epsilon = 0.01;
dni = 39290709;

[probabilidad, probabilidades_parciales] = probabilidad_fallos(epsilon, dni);

fprintf('Epsilon = %f \n', epsilon);
fprintf('Probabilidad de fallos = %f \n', probabilidad);

% Grafico
figure, plot(probabilidades_parciales);
hold on
xlabel('iteracion');
ylabel('Probabilidad');
ylim([0 1]);
legend('probabilidades parciales');
grid on

Y1 = std(probabilidades_parciales(1:20));
fprintf('desvio estandar de las primeras 20 iteraciones = %f \n', Y1);

Y2 = std(probabilidades_parciales(end-20:end));
fprintf('desvio estandar de las ultimas 20 iteraciones = %f \n', Y2 );
tiempo_epsilon = toc;
fprintf('tiempo epsilon 0,01=%f \n', tiempo_epsilon)

tic
epsilon = 0.001;
dni = 39290709;

[probabilidad, probabilidades_parciales] = probabilidad_fallos(epsilon, dni);

fprintf('Epsilon = %f \n', epsilon);
fprintf('Probabilidad de fallos= %f \n', probabilidad);

% Grafico
figure, plot(probabilidades_parciales);
hold on
xlabel('iteracion');
ylabel('Probabilidad');
ylim([0 1]);
legend('probabilidades parciales');
grid on

Y1 = std(probabilidades_parciales(1:20));
fprintf('desvio estandar de las primeras 20 iteraciones = %f \n', Y1);

Y2 = std(probabilidades_parciales(end-20:end));
fprintf('desvio estandar de las ultimas 20 iteraciones = %f \n', Y2 );
tiempo_epsilon = toc;
fprintf('tiempo epsilon 0,001=%f \n', tiempo_epsilon)

 