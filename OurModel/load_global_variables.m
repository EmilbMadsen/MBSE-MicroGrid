clear all; clc

run('load_data_as_vectors.m');

number_households = 200000;

sim_time = 24;

%% Scenario

scenario = 5;

%% Windturbine

number_of_windturbines = 35;
Rho = 1.204;
Efficiency_wind = 0.4;
length_of_wing = 236/2;
A_prWindturbine = length_of_wing^2*3.14;
A = A_prWindturbine * number_of_windturbines;

%% Solar panel
Efficiency_solar = 0.1;
football_field = 700;
%Area_panels = 20 * 200000/ 2; %10 * football_field;   % [m2]
Area_panels = 5*number_households;
%% Hydrogen
Max_H2_P_Input = 260000000;
Min_H2_P_Input = 1400;
number_fuel_cells = 12; 

fuel_cell_power_rating = 50e6*4;
Start_Tank_Fill_L = 50e6; % [L]

P_electrolysis_max = 570000;
P_electrolysis_min = 0;

H2_out_max = 150;
H2_out_min = 0;


%% Battery
Battery_Capacity = 100e3; %[Wh]
minSOC = 60; % [%]
maxSOC = 100; % [%]
SOC_Start = 90; % [%] 
T_bat = 30*60; % timeconstant for loading
number_cars = number_households/3; %number_households/10;
P_rating_bat_single = 14e3; %7e3; % [W] output power wall
P_charge_max = 250e3; %150e3; %[W]

%% Controller

H2_safety_buffer = 50e6;
SOC_safety_buffer = 80;
SOC_selfsupply = 90;
H2_selfsupply = 100e6;
controller_delay = 5;


