function [above_given_poz, above_median_line, above_median] = pocet_dni_nad(data, value, from, to, given_poz)

above_given_poz = 0;
above_median = 0;
above_median_line = 0;
mediana_value = mediana_line(data,value,from,to);
[mediana_array,value] = mediana(data,value,from,to);

for i=1:length(value)
    if value(i) > given_poz
        above_given_poz = above_given_poz + 1;
    end
    if value(i) > mediana_value
        above_median_line = above_median_line + 1;
    end
    if value(i) > mediana_array(i)
        above_median = above_median + 1;
    end
end
yline(mediana_value, '--');
% disp(above_median+" "+above_median_line+" "+above_given_poz)
end