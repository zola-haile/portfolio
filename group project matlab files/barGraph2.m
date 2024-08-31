function barGraph2(app)
%% barGraph2 - Generates a bar graph based on Olympic data.
%
%   barGraph2(app) reads Olympic data from a CSV file and generates a bar
%   graph based on user-selected parameters such as gender, age group,
%   medal type, and sport category. It counts the number of occurrences of
%   the selected medal type in each age group for the specified gender and
%   sport category. The generated bar graph displays the distribution of
%   medals across different age groups.
%
%   Inputs:
%   - app: The graphical user interface (GUI) application object.
%
%   Author: Eric Durazno & Zelalem Haile
%   Date: 04/22/2024

%% Load Olympic data from the CSV file
tableOfData=readcell("Olympic_data_set.csv");
[nRow,nCol]=size(tableOfData);


%% Parameter Selection
% Extract user-selected parameters from the GUI

sex=string(app.GenderDropDown.Value);
if sex=="Men"
    sex="M";
elseif sex=="Women"
    sex="F";

end
medalType=string(app.MedalDropDown_2.Value);
AgeGroups=["14-19","20-25","26-31","32-37","38-43","44-49",">50"];
numAgeGroups=length(AgeGroups);
sportCategory=string(app.SportDropDown_2.Value);
% Initialize bins to store counts of medal occurrences in each age group
bins=zeros(1,numAgeGroups);


%% Counting Medal Occurrences
% Iterate over age groups and count medal occurrences
for iage=1:numAgeGroups
    bins(iage)=0;
    firstr=true;
        for jrow=1:nRow
            if firstr==false
                if string(tableOfData{jrow,3})==sex

                    if string(tableOfData{jrow,13})==sportCategory

                        if string(tableOfData{jrow,15})==medalType
                            if double(tableOfData{jrow,4})>=14 && double(tableOfData{jrow,4})<=19
                                bins(1)=bins(1)+1;
                            elseif double(tableOfData{jrow,4})>=20 && double(tableOfData{jrow,4})<=25
                                bins(2)=bins(2)+1;
                            elseif double(tableOfData{jrow,4})>=26 && double(tableOfData{jrow,4})<=31
                                bins(3)=bins(3)+1;
                            elseif double(tableOfData{jrow,4})>=32 && double(tableOfData{jrow,4})<=37
                                bins(4)=bins(4)+1;
                            elseif double(tableOfData{jrow,4})>=38 && double(tableOfData{jrow,4})<=43
                                bins(5)=bins(5)+1;
                            elseif double(tableOfData{jrow,4})>=44 && double(tableOfData{jrow,4})<=49
                                bins(6)=bins(6)+1;
                            elseif double(tableOfData{jrow,4})>=50
                                bins(7)=bins(7)+1;
                            end
                        end
                    end
                end
            else
                firstr=false;
            end
        
        end
end

%% Plotting Bar Graph
% Plot the bar graph in the UIAxes2 of the GUI

bar(app.UIAxes2,bins)
xticklabels(app.UIAxes2,AgeGroups)
doGrid = app.GridCheckBox_2.Value;
if doGrid
    grid(app.UIAxes2,"on")
else
    grid(app.UIAxes2, "off")
end