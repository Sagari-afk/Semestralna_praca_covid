function mediana_value = mediana_line(data, value, from, to)

[value,date] = base(data, value, from, to);
mediana_value = median(value);

plot(date, value);
yline(mediana_value, '--');
end