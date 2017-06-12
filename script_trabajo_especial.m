% script_trabajo_especial
clear
clc
tic

dni= 39290709;
epsilon = 0.1;
A= [probabilidad, probabilidades_parciales] = probabilidad_fallos(dni, epsilon);

% Mostramos por pantalla la probabilidad que nos dio
fprintf('Epsilon = %f: \n', epsilon);
fprintf('Probabilidad de fallos seguidos = %d: \n', probabilidad);

% Graficamos cómo fue evolucionando la probabilidad iteración a iteración
figure, plot(probabilidades_parciales);
hold on
xlabel('Numero de iteracion');
ylabel('Probabilidad');
ylim([0 1]);
legend('Evolucion de la probabilidad');
grid on

fprintf('desvio estandar de las primeras 20 iteraciones = %f: \n', A(1:20));
fprintf('desvio estandar de las primeras 20 iteraciones = %f: \n', A(end-19:end));

epsilon = 0.01;
dni = 39290709;

B =[probabilidad, probabilidades_parciales] = probabilidad_fallos(epsilon, dni);

fprintf('Epsilon = %f: \n', epsilon);
fprintf('Probabilidad de fallos = %f: \n', probabilidad);

% Grafico
figure, plot(probabilidades_parciales);
hold on
xlabel('Numero de iteracion');
ylabel('Probabilidad');
ylim([0 1]);
legend('Evolucion de la probabilidad');
grid on

fprintf('desvio estandar de las primeras 20 iteraciones = %f: \n', B(1:20));
fprintf('desvio estandar de las primeras 20 iteraciones = %f: \n', B(end-19:end));

epsilon = 0.001;
dni = 39290709;

 C = [probabilidad, probabilidades_parciales] = probabilidad_fallos(epsilon, dni);

fprintf('Epsilon = %f: \n', epsilon);
fprintf('Probabilidad de fallos= %f: \n', probabilidad);

% Grafico
figure, plot(probabilidades_parciales);
hold on
xlabel('Numero de iteracion');
ylabel('Probabilidad');
ylim([0 1]);
legend('Evolucion de la probabilidad');
grid on

fprintf('desvio estandar de las primeras 20 iteraciones = %f: \n', C(1:20));
fprintf('desvio estandar de las primeras 20 iteraciones = %f: \n', C(end-19:end));
toc