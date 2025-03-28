function [p_normalized, q_normalized] = normalize_polynomials(p, q)
% Check if both polynomials are empty
if isempty(p) || isempty (q)
    error('Error: Ambos polinomios deben contener coeficientes.');
end

  % Maximum length berween the two polunomials
  max_length = max (length(p), length(q));


  % Fill with zeros at the beginning (to align terms of equal degree)
  p_normalized = [zeros(1, max_length - length(p)), p];
  q_normalized = [zeros(1, max_length - length(q)), q];
end

% Define 
p = [1 -6 1 11 -6]; % equal to x^2 - 3x + 2
q = [1 -1]; % equal to x + 1

% Addition polynomial 
[p_norm, q_norm] = normalize_polynomials (p, q); % use te funcion normlize_polynomials
addition = p_norm + q_norm; % add the polynomials
disp ('Suma de polinomios:');
disp(addition);

% Product polynomial 
product = conv(p_norm, q_norm);
disp('Producto de polinomios:');
disp(product);

% Division polynomial 
[cociente, residuo] = deconv (p, q); % divide the polynomials
disp ('Cociente:');
disp (cociente);
disp ('Residuo');
disp (residuo);

