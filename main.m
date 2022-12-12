clear
clc
answer_temp;
input(hello_there);
ok = true;

while ok
    clear
    clc
    ok = true;
    table = readtable("OpenData_Slovakia_Covid_DailyStats.csv");
    answer_temp;
    want = input(choose_function);
    switch want
        case 1
            value = switch_func(input(header_ask));
            [value,date] = base(table, value, input("type the date from "), ...
                input("type the date to "));
            plot(date,value);
            disp("(´｡• ω •｡`)")
        case 2
            header = input(header_ask);
            value = switch_func(input(header_ask));
            mediana_line(table, value, input("type the date from "), ...
                input("type the date to "))
            disp("(╯✧▽✧)╯")
        case 3
            value = switch_func(input(header_ask));
            mediana(table, value, input("type the date from "), ...
                input("type the date to "));
            disp("(ﾉ◕ヮ◕)ﾉ*:･ﾟ✧")
        case 4
            disp("(≧◡≦) ♡")
            input(the_difference);
        case 5
            value = switch_func(input(header_ask));
            [above_given_poz, above_median_line, above_median] = pocet_dni_nad(table, value, input("type the date from "), ...
                input("type the date to "), input("Type the position"));
            disp("(ノ*°▽°*)")
            input("Above given posithion - "+above_given_poz+" dni\n" + ...
                "Above median line - "+above_median_line+" dni\n" + ...
                "Above median - "+above_median+" dni\n")
        case 6
            value = switch_func(input(header_ask));
            [horsy,lepsy] = horsie_lepsie_dni(table, value, input("type the date from "), ...
                input("type the date to "));
            disp("(＠´ー`)ﾉﾞ")
            input("The worst day was "+string(horsy)+ ...
                "\nThe best day was "+string(lepsy)+"\n")
        case 7
            value = switch_func(input(header_ask));
            [x_horsi,range_horsi,x_lepsi,range_lepsi] = casovy_segment(table, ...
                value, input("type how mach days allow"));
            disp("(づ￣ ³￣)づ")
            input("The worst in the time segment is from "+string(range_horsi(1))+ ...
                " to "+string(range_horsi(end))+...
                "\nThe best in the time segment is from "+string(range_horsi(1))+ ...
                " to "+string(range_horsi(end)))
        case 8
            value = switch_func(input(header_ask));
            [max_narost,min_narost] = narost(table, value, input("type the date from "), ...
                input("type the date to "));
            disp("(´｡• ω •｡`)")
            input("largest setpoint increase rate - "+max_narost+ ...
                "\nSmallest setpoint increase rate - "+min_narost)
        case 9
            ok = false;
        otherwise
            disp('You typed something wrong ((');
            disp("(－ω－) zzZ")
            want = input(choose_function);
    end
end
