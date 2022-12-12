function value = switch_func(header)

table = readtable("OpenData_Slovakia_Covid_DailyStats.csv");
switch header
    case 1
        value = table.Pocet_potvrdenych_PCR_testami;
    case 2
        value = table.Dennych_PCR_testov;
    case 3
        value = table.Dennych_PCR_prirastkov;
    case 4
        value = table.Pocet_umrti;
    case 5
        value = table.AgTests;
    case 6
        value = table.AgPosit;
    case 7
        value = table.Pocet_hospitalizovanych;
end
end