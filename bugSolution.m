function result = myFunction(input)
  % Check if the input is a number
  if ~isnumeric(input)
    error('Input must be a number.');
  end
  % Check if the input is non-negative
  if input < 0
    error('Input must be non-negative. Please provide a value greater than or equal to zero.');
  end
  result = input * 2;
end

% Example of calling myFunction with a negative input
input = -5;
[result,err] = tryMyFunction(input);

% Error Handling Function
function [result,err] = tryMyFunction(input)
  try
    result = myFunction(input);
    err = '';
  catch e
    result = [];
    err = e.message;
  end
end