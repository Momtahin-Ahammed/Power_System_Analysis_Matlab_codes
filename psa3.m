clear all;
close all;
clc;
% Ratings
% -------------------------------------------------------
% Generator ratings: Apparent power, Voltages, Reactance’s
generator_s = 100e6; % Per Unit value
generator_v = 13.8e3;
generator_r = 0.1;
generator_x = j*0.9; % Per Unit value

% Transformer-1 ratings: Apparent power, Voltages, Reactances
transformer_1_s = 100e6;
transformer_1_k = 110/13.8;
transformer_1_r = 0.01; % Per Unit value
transformer_1_x = j*0.05; % Per Unit value
% Transformer-2 ratings: Apparent power, Voltages, Reactance’s
transformer_2_s = 50e6; % Per Unit value
transformer_2_k =14.4/120;
transformer_2_r = 0.01;

% Generator ratings: Apparent power, Voltages, Reactances
transformer_2_x = j*0.05; % Per Unit value
motor_s = 50e6; % Per Unit value
motor_v = 13.8e3;
motor_r = 0.1;
motor_x = j*1.1; % Per Unit value

% Line parameters: Impedances, resistances
line_r = 15; % Ohmic value
line_x = j*75; % Ohmic value
% Base values
% ------------------------------------------------------------
base_power = 100e6;
base_voltage_1 = 13.8e3;
base_voltage_2 = transformer_1_k*base_voltage_1;
base_voltage_3 = transformer_2_k*base_voltage_2;
base_impedance_1 = base_voltage_1^2/base_power;
base_impedance_2 = base_voltage_2^2/base_power;
base_impedance_3 = base_voltage_3^2/base_power;
base_current_1 = base_power/base_voltage_1/sqrt(3);
base_current_2 = base_power/base_voltage_2/sqrt(3);
base_current_3 = base_power/base_voltage_3/sqrt(3);
% Per unit quantities
% ------------------------------------------------------------
gen_v_pu = generator_v/base_voltage_1;
gen_r_pu = 0.1; % Per Unit value
gen_x_pu = j*0.9; % Per Unit value


trans1_r_pu = transformer_1_r*(base_voltage_1/base_voltage_1)^2*(base_power/transformer_1_s)
trans1_x_pu =transformer_1_x*(base_voltage_1/base_voltage_1)^2*(base_power/transformer_1_s)
line_r_pu = line_r/base_impedance_2
line_x_pu = line_x/base_impedance_2
trans2_r_pu =transformer_2_r*(base_voltage_2/base_voltage_2)^2*(base_power/transformer_1_s)
trans2_x_pu =transformer_2_x*(base_voltage_2/base_voltage_2)^2*(base_power/transformer_2_s)
motor_v_pu = motor_v/base_voltage_3
motor_r_pu = motor_r*(motor_v/base_voltage_3)^2*(base_power/motor_s)
% Per Unit value
motor_x_pu = motor_x*(motor_v/base_voltage_3)^2*(base_power/motor_s)
% Per Unit value
