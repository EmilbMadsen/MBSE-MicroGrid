%% Generate plots

%% Create timeline
timePlot = [1:1381];

%% Baseline
figure()
plot(out.totalCost.Time, out.totalCost.Data, 'g', 'LineWidth',2)
xlabel('Time [s]')
ylabel('Total Cost [DKK]')
legend('Baseline price [DKK]')
grid

%% Irradiance

figure()
hold on
area(SunSum.signals.values)
area(SunSpr.signals.values)
area(SunFal.signals.values)
area(SunWin.signals.values)
hold off
grid
xlabel('Time [h]')
ylabel('Irradiance [W/m^2]')
legend('Summer', 'Spring', 'Fall', 'Winter')

%% Wind

figure()
hold on
plot(out.windLow.Time/3600, out.windLow.Data)
plot(out.windHigh.Time/3600, out.windHigh.Data)
plot(out.windHurricane.Time/3600, out.windHurricane.Data)
yline(25, '--')
yline(3, '--')
hold off
xlabel('Time [h]')
ylabel('Wind speed [m/s]')
legend('High', 'Low', 'Hurricane', 'Cut-out', 'Cut-in')

%% Consumer

figure()
hold on
plot([0.25:0.25:24], summer_weekday*2860)
plot([0.25:0.25:24], summer_sunday*2860)
hold off
legend('Summer Weekday', 'Summer Weekend')
grid
xlabel('Time [h]')
ylabel('Power consumption [W]') 


% figure()
% hold on
% plot(winter_weekday*2860)
% plot(winter_sunday*2860)
% legend('Winter Weekday', 'Winter Weekend')
% hold off
% 
% figure()
% hold on
% plot(trans_weekday*2860)
% plot(trans_sunday*2860)
% legend('Spring/fall Weekday', 'Spring/Fall Weekend')
% hold off

figure()
hold on
plot([0.25:0.25:24], summer_weekday*2860)
plot([0.25:0.25:24], winter_weekday*2860)
plot([0.25:0.25:24], trans_weekday*2860)
hold off
legend('Summer', 'Winter', 'Spring/Fall')
grid
xlabel('Time [h]')
ylabel('Power consumption [W]') 





