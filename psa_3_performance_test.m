clc
V_base=20e3;
base_s=300e6;
generator_s = 300e6;
generator_v = 20e3;
generator_x = j*0.2;  
transformer_t1_s = 350e6;
transformer_t1_k1=20e3; 
transformer_t1_k2=230e3; 
transformer_t1_k = (transformer_t1_k2)/(transformer_t1_k1)
transformer_t1_x = j*0.1; 
V_base_new_1=V_base*(transformer_t1_k2/transformer_t1_k1)
transformer_t1_x_pu=(transformer_t1_x)*(transformer_t1_k1/V_base_new_1)^2*(base_s/transformer_t1_s);
transformer_t2_s = 3*100e6;
transformer_t2_k1=sqrt(3)*127e3; 
transformer_t2_k2=13.2e3; 
transformer_t2_k = transformer_t2_k2/transformer_t2_k1
transformer_t2_x = j*0.1; 
V_base_new_2=V_base_new_1*(transformer_t2_k2/transformer_t2_k1)
transformer_t2_x_pu=(transformer_t2_x)*(transformer_t2_k1/V_base_new_2)^2*(base_s/transformer_t2_s)
line_x = j*0.5*64; 
line_x_base =(V_base)^2/base_s;
line_x_pu=(line_x)/(line_x_base)
motor_M1_s = 200e6;
motor_M1_v = 13.2e3;
motor_M1_x = j*0.2; 
Motor_M1_x_pu=(motor_M1_x)*(motor_M1_v/V_base_new_2)^2*(base_s/motor_M1_s)
motor_M2_s = 100e6;
motor_M2_v = 13.2e3;
motor_M2_x = j*0.2; 
Motor_M2_x_pu=(motor_M2_x)*(motor_M2_v/V_base_new_2)^2*(base_s/motor_M2_s)
 

