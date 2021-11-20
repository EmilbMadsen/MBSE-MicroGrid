run('load_data_as_vectors.m');

number_households = 200000;

sim_time = 24;

%% Windturbine

number_of_windturbines = 50;
Rho = 1.204;
Efficiency_wind = 0.4;
length_of_wing = 44;
A = length_of_wing^2*3.14 * number_of_windturbines;

%% Solar panel
Efficiency_solar = 0.1;
football_field = 700;
Area_panels = 20 * 200000/ 2; %10 * football_field;   % [m2]

%% Hydrogen
Max_H2_P_Input = 260000000;
Min_H2_P_Input = 1400;
number_fuel_cells = 12; 

fuel_cell_power_rating = 50e6;
Start_Tank_Fill_L = 1000; % [L]

P_electrolysis_max = 570000;
P_electrolysis_min = 0;

H2_out_max = 150;
H2_out_min = 0;


%% Battery
Battery_Capacity = 100e3; %[Wh]
minSOC = 60; % [%]
maxSOC = 100; % [%]
SOC_Start = 100; % [%] 
T_bat = 30*60; % timeconstant for loading
number_cars = number_households/3;
P_rating_bat_single = 7e3; % [W] output power wall

P_charge_max = 150e3; %[W]

%% Controller

H2_safety_buffer = 1e3;
SOC_safety_buffer = 80;
SOC_selfsupply = 98;
H2_selfsupply = 10e3;
controller_delay = 5;

