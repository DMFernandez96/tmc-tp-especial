function [probabilidad, probabilidades_parciales] = probabilidad_fallos(dni, epsilon)
  probabilidad_anterior = 0;
  probabilidad_actual = 1;
  casos_favorables = 0;
  total_de_tiradas = 0;
  dni1 = 0;
  dni2 = 0;
  probabilidades_parciales = [];
  
  
  while ~converge(probabilidad_anterior, probabilidad_actual, epsilon, total_de_tiradas)
    probabilidad_anterior = probabilidad_actual;
    dni1 = my_mex_service(dni);
    dni2 = my_mex_service(dni);
    total_de_tiradas = total_de_tiradas + 1;
    if (dni1 == 0)
      if (dni2 == 0)
      casos_favorables = casos_favorables + 1;
      end
    end
    probabilidad_actual = casos_favorables / total_de_tiradas;
    probabilidades_parciales = cat(1, probabilidades_parciales, probabilidad_actual);
        
  end
  probabilidad = probabilidad_actual;
  
  fprintf('%f\n', probabilidad_actual);
  fflush(stdout);
  
end