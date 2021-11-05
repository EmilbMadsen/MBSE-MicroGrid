number_households = 200000;
number_windmills = 100;
number_pv = 100;

battery_capacity = 100; %kWh

sim_time = 24;

%% Windturbine

Rho = 1.204;
Efficiency_wind = 0.4;
length_of_wing = 44;
A = length_of_wing^2*3.14;
