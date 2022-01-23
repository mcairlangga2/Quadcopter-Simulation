clc
clear all
close all
fig=1;
global Jr Ixx Iyy Izz Ax Ay Az b d l m g 


% Quadrotor constants
Ixx = 15.67*10^(-3);  % Quadrotor moment of inertia around X axis
Iyy = 15.67*10^(-3);  % Quadrotor moment of inertia around Y axis
Izz = 28.346*10^(-3);  % Quadrotor moment of inertia around Z axis
Ax = 0.0; %Air resistance about X
Ay = 0.0;%Air resistance about Y
Az = 0.0;%Air resistance about Z
Jr = 6.01*10^(-5);  % Total rotational moment of inertia around the propeller axis 6.5*10^(-6)
b = 192.3208*10^(-7);  % Thrust factor
d = 4.003*10^(-7);  % Drag factor
l = 0.3;  % Distance to the center of the Quadrotor
g = 9.81;   % Gravitational acceleration
weight =8; %Newton  Weight=mg (from a scale)
m = weight/g;  % Mass of the Quadrotor in Kg

%%Altitude Controller

Kp_z = 0;
Ki_z = 0;
Kd_z = 0;

%%Attitude Controller

Kp_roll = 0;
Ki_roll = 0;
Kd_roll = 0;

Kp_pitch = 0;
Ki_pitch = 0;
Kd_pitch = 0;

Kp_yaw = 0;
Ki_yaw = 0;
Kd_yaw = 0;

%%Position Controller
Kp_Vx = 0;
Ki_Vx = 0;
Kd_Vx = 0;
 
Kp_Vy = 0;
Ki_Vy = 0;
Kd_Vy = 0;
t_sim = 0;
h_ref = 0;
phi_ref =0;
theta_ref=0;
psi_ref=0;
vx_ref = 0;
vy_ref = 0;
%sim('Quadcopter_Fix.slx');

%% OUTPUT SECTION
%Trayektori_animatedline