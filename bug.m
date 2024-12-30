function result = myFunction(input)
  % Some code that might cause an error
  if input < 0
    error('Input must be non-negative');
  end
  result = input * 2; 
end

% Example of calling myFunction with a negative input
input = -5;
result = myFunction(input);