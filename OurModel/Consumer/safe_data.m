c_table_new = table(hours,hours_continous,...
                    summer_weekday,summer_saturday,summer_sunday,...
                    trans_weekday,trans_saturday,trans_sunday,...
                    winter_weekday,winter_saturday,winter_sunday)
                
writetable(c_table_new)