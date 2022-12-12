function [value,date] = base(data, value, from, to)

date = data.Datum(isnat(data.Datum)==false); 
% deletes the whole row where values equals to NaT

value = rmmissing(value,1);
% deletes elements that equals to NaN

if nargin == 4
    [from,to] = time_limit(from,to);
    value = value(from:to);
end

date = date(isnan(value)==false);
% takes dates from the table 'data' and 
% deletes the whole row where values equals to NaN
plot(date,value);
end