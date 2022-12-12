function [mediana_array,value] = mediana(data, value, from, to)

[value,date] = base(data, value, from, to);
mediana_array = [value(1)];

for i=2:length(value)
    mediana_array(end+1) = (value(i) + value(i-1))/2;
end
% disp(length(date)+" "+length(mediana_array)+" "+length(value));
plot(date,mediana_array, '--',date,value);
end