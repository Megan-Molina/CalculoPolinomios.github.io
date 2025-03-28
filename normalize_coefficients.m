function a_normalize = normalize_coefficients (a,grade)
    % Normalizes the vector of coefficients to have the correct length
    % a is the vector of coefficients of the polynomial 
    % grade is the degree of the polynomial 

    n = length (a);
    if n < grade + 1
        % If there are missing coefficients, fill with zeros
        a_normalize = [a, zeros(1, grade + 1 - n)];
    elseif n > grade + 1 
        % If there are more coefficients, truncate the vector 
        a_normalize = a(1:grade + 1);
    else
        % If it has the correct length, do nothing
        a_normalize = a;
    end
end