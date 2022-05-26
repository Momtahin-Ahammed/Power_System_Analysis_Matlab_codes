%19-40698-1
clc
unknown =-1; 
%Bus Number V delta Pg Qg PL QL
% pu pu pu pu pu pu
bus1 = [1 unknown .5 unknown 0 0];
bus2 = [unknown unknown 0 0 8 2.8];
bus3 = [1.05 0 5.2 unknown 0.8 0.4];
bus4 = [unknown unknown 0 0 0 0];
bus5 = [unknown unknown 0 0 0 0];
bus6 = [unknown unknown 0 0 0.2 0.1];%bus 6 is added as per instruction


bus_dataa = [bus1; bus2; bus3; bus4; bus5;bus6]; 

string1 = 'Slack/swing';
string2 = 'Generator/PV';
string3 = 'Load/PQ';
bus_type = {};
% finding out types of bus
for m = 1:6;
if (bus_dataa(m, 1) ~= unknown) && (bus_dataa(m, 2) ~= unknown)
 bus_type{m} = string1;
 
 elseif (bus_dataa(m, 1) ~= unknown) && (bus_dataa(m, 3) ~= unknown)
 bus_type{m} = string2;
 
 else (bus_dataa(m, 3) ~= unknown) && (bus_dataa(m,4) ~= unknown) && (bus_dataa(m, 5) ~= unknown) && (bus_dataa(m,6) ~= unknown);
 bus_type{m} = string3;
 end
 
 
end