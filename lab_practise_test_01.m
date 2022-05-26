clear all
close all
clc
a = -0.5+0.866i;
alpha_mat = [1 1 1; 1 a^2 a; 1 a a^2];
alpha_mat_inv = inv(alpha_mat);
voltage_phase_a = 40.698+0i;  
voltage_phase_b = 0-3i; 
voltage_phase_c =-6.3975+4.803i; 
voltage_phase_matrix = [voltage_phase_a;voltage_phase_b; voltage_phase_c]
voltage_sequence_matrix =alpha_mat_inv*voltage_phase_matrix 
voltage_a =sum(voltage_sequence_matrix)
voltage_b =voltage_sequence_matrix(1)+ a^2*voltage_sequence_matrix(2)+a*voltage_sequence_matrix(3)
voltage_c =voltage_sequence_matrix(1)+ a*voltage_sequence_matrix(2)+a^2*voltage_sequence_matrix(3)