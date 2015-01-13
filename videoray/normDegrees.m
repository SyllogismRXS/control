function result = normDegrees(in)

result = in;    
    
if (result < 0) 
    result = result + 360;
elseif (result >= 360) 
    result = result - 360;
end

