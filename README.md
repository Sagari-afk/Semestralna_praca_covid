# Semestralna_praca_covid
Semester work for my university


Hello! My name is Alice. This application is a semester work for my university. It works with database that is located in the folder and has the name 'OpenData_Slovakia_Covid_DailyStats.csv'.

I hope you would like it!
****************************************************************

This application is completely made in matlab and contains 11 files, each of which is a function, except main.


main.m

The main file is responsible for reading the table from the excel file and a simple console menu. It also launches other functions, passing certain parameters to them.

switch_func.m

In order not to pile up an already large main file, there is a separate unction that is responsible for selecting the desired table column by the user.

answer_temp.m

In the anver template file, strangely enough, there are message templates that are often repeated.

base.m

The base file contains the main body with which the entire project interacts. It is responsible for preparing information for drawing a graph (removes none of the values).

time_limit.m

The time limit function translates the given date by the user into date indexes from the table in order to use them in the future.

horsie_lepsie_dni.m

The horsie lepsie dni function finds the most favorable and unfavorable day in a given time period.

casovy_segment.m

The casovy segment function finds the time segment with the worst and best results within a given number of days.

mediana_line.m

Finds the median using matlab's built-in function

mediana.m

Finds the median in an array using a specific algorithm.

pocet_dni_nad.m

Finds the number of days in which a given value is greater than the median, median line, and given position.
