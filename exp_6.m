%19-40698-1,MOMTAHIN AHMMED
clear all
close all
clc
base_power = 100;
% Bus Number V delta P Q
% pu pu MW MVAR
bus1 = [1 0 NaN NaN];
bus2 = [1 NaN 60 0];
bus3 = [NaN NaN -80 -60];
bus_data = [bus1; bus2; bus3];
Z12 = j*0.5;
Z13 = j*0.2;
Z23 = j*0.25;
Y12 = -1/Z12;
Y13 = -1/Z13;
Y23 = -1/Z23;
Y21 = Y12;
Y31 = Y13;
Y32 = Y23;
Y11 = -(Y12+Y13);
Y22 = -(Y12+Y23);
Y33 = -(Y23+Y13);
Y_bus = [Y11 Y12 Y13;...
Y12 Y22 Y23;...
Y13 Y23 Y33];
p_bus2 = 60/base_power;
p_bus3 = -80/base_power;
q_bus3 = -60/base_power;
% Estimated and initial values
voltage_bus1 = bus1(1,1)+j*bus1(1,2);
voltage_bus2 = bus2(1,1)*(1+j*0);
voltage_bus3 = 1+j*0;
V2 = [];
V3 = [];
% % % % Iterations with gauss-seidel
itr = 10;
for i = 1:itr;
q_bus2(i) = -imag(conj(voltage_bus2)*(Y21*voltage_bus1+Y22*voltage_bus2+Y23*voltage_bus3))
V2(i) = 1/Y22*((p_bus2-j*(q_bus2(i))/conj(voltage_bus2))-Y21*voltage_bus1-Y23*voltage_bus3)
V2_new(i) = V2(i)/abs(V2(i))*abs(voltage_bus2)
V3(i) = 1/Y33*((p_bus3-j*(q_bus3)/conj(voltage_bus3))-Y31*voltage_bus1-Y23*V2_new(i))
voltage_bus3 = V3(i)
voltage_bus2 = V2_new(i)
end



