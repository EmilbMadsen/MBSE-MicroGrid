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
Min_H2_P_Input = 1400;
number_fuel_cells = 12; 
fuel_cell_power_rating = 12*5000;
Start_Tank_Fill_L = 5e6; % [W]

P_electrolysis_max = 570000;
P_electrolysis_min = 0;

H2_out_max = 150;
H2_out_min = 50;


%% Battery
Battery_Capacity = 100000; %[W]
minSOC = 60; %[%]
maxSOC = 100; %[%]
SOC_Start = 50; %[%] 
T_bat = 30*60; % timeconstant for loading
number_cars = 20000;
P_rating_bat = 10e3 * number_cars;
