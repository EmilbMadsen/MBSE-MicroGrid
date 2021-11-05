%% Import data from text file
% Script for importing data from the following text file:
%
%    filename: C:\Users\cm\OneDrive - Danmarks Tekniske Universitet\Model-Based Systems Eng\05 Models\OurModel\Load\c_table_new.txt
%
% Auto-generated by MATLAB on 03-Nov-2021 11:29:55

%% Set up the Import Options and import the data
opts = delimitedTextImportOptions("NumVariables", 11);

% Specify range and delimiter
opts.DataLines = [2, Inf];
opts.Delimiter = ",";

% Specify column names and types
opts.VariableNames = ["hours1", "hours_continous", "summer_weekday", "summer_saturday", "summer_sunday", "trans_weekday", "trans_saturday", "trans_sunday", "winter_weekday", "winter_saturday", "winter_sunday"];
opts.VariableTypes = ["string", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double"];

% Specify file level properties
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% Specify variable properties
opts = setvaropts(opts, "hours1", "WhitespaceRule", "preserve");
opts = setvaropts(opts, "hours1", "EmptyFieldRule", "auto");
opts = setvaropts(opts, ["hours_continous", "summer_weekday", "summer_saturday", "summer_sunday", "trans_weekday", "trans_saturday", "trans_sunday", "winter_weekday", "winter_saturday", "winter_sunday"], "ThousandsSeparator", ",");

% Import the data
tbl = readtable("C:\Users\cm\OneDrive - Danmarks Tekniske Universitet\Model-Based Systems Eng\05 Models\OurModel\Consumer\c_table_new.txt", opts);

%% Convert to output type
hours_string = tbl.hours1;
hours_continous = tbl.hours_continous;
summer_weekday = tbl.summer_weekday;
summer_saturday = tbl.summer_saturday;
summer_sunday = tbl.summer_sunday;
trans_weekday = tbl.trans_weekday;
trans_saturday = tbl.trans_saturday;
trans_sunday = tbl.trans_sunday;
winter_weekday = tbl.winter_weekday;
winter_saturday = tbl.winter_saturday;
winter_sunday = tbl.winter_sunday;


%
load('Eur_MWh.mat')


%% Clear temporary variables
clear opts tbl

%% Create struct

 
consumer_summer.time = [];
consumer_summer.signals.values = [summer_weekday,summer_saturday,summer_sunday];
consumer_summer.signals.dimensions =3;

consumer_trans.time = [];
consumer_trans.signals.values = [trans_weekday,trans_saturday,trans_sunday];
consumer_trans.signals.dimensions =3;

consumer_winter.time = [];
consumer_winter.signals.values = [winter_weekday,winter_saturday,winter_sunday];
consumer_winter.signals.dimensions =3;

price.time = [];
price.signals.values = [Eur_MWh];
price.signals.dimensions = 1;
