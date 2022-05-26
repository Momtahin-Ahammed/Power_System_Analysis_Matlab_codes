% line data in PU
% R X G B
line2to4 = [0.009 0.1 0 1.72];
line2to5 = [0.0045 0.05 0 0.88];
line4to5 = [0.00225 0.025 0 0.44];
line_data = [line2to4; line2to5; line4to5];
% transformer data
% R X G B
tformer1 = [0.00150 0.02 0 0];
tformer2 = [0.00075 0.02 0 0];
transformer_data = [tformer1; tformer2];
% Admittance data
y11 = 1/(0.0015+j*0.02);
y12 = 0;
y13 = 0;
y14 = 0;
y15 = 1/(0.0015+j*0.02);
y21 = 0;
y22 = 0+j*1.72/2+j*0.88/2+0+1/(0.009+j*0.1)+1/(0.0045+j*0.05);
y23 = 0;
y24 = 1/(0.009+j*0.1);
y25 = 1/(0.0045+j*0.05);
y31 = 0;
y32 = 0;
y33 = 1/(0.00075+j*0.02);
y34 = 1/(0.00075+j*0.02);
y35 = 0;
y41 = 0;
y42 = 1/(0.009+j*0.1);
y43 = 1/(0.00075+j*0.02);
y44 =1/(0.009+j*0.1)+1/(0.00075+j*0.02)+1/(0.00225+j*0.025)+j*1.72/2+j*0.44/2;
y45 = 1/(0.00225+j*0.025);
y51 = 1/(0.0015+j*0.02);
y52 = 1/(0.0045+j*0.05);
y53 = 0;
y54 = 1/(0.00225+j*0.025);
y55 =1/(0.0015+j*0.02)+1/(0.0045+j*0.05)+1/(0.00225+j*0.025)+j*0.88/2+j*0.44/2;
admittance_matrix = [ y11 -y12 -y13 -y14 -y15;-y21 y22 -y23 -y24 -y25;-y31 -y32 y33 -y34 -y35;-y41 -y42 -y43 y44 -y45;-y51 -y52 -y53 -y54 y55]
