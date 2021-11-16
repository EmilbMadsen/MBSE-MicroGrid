run('load_data_as_vectors.m');

number_households = 200000;

sim_time = 24;

%% Windturbine

number_of_windturbines = 1;
Rho = 1.204;
Efficiency_wind = 0.4;
length_of_wing = 5;
A = length_of_wing^2*3.14 * number_of_windturbines;

%% Solar panel
Efficiency_solar = 0.1;
Area_panels = 700;%m2

%% Hydrogen
Max_H2_P_Input = 260000000;
Min_H2_P_Input = 14000;
number_fuel_cells = 12; 
fuel_cell_power_rating = 5000;
Start_Tank_Fill_W = 10000000; % [W]

%% Battery
Battery_Capacity = 10000; %[W]
minSOC = 5; %[%]
maxSOC = 95; %[%]
SOC_Start = 50; %[%] 
