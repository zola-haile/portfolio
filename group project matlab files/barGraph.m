function barGraph(app)
%% barGraph - Generates a bar graph based on Olympic data.
%   barGraph(app) reads Olympic data from a CSV file and generates a bar
%   graph based on user-selected parameters such as start year, end year,
%   medal type, chosen countries, and sport category. It counts the number
%   of occurrences of the selected medal type in each chosen country for
%   the specified time period and sport category. The generated bar graph
%   displays the distribution of medals across different countries.
%   Inputs:
%   - app: The graphical user interface (GUI) application object.

%   Author: Eric Durazno & Zelalem Haile
%   Date: 04/22/2024

%% Loading Data
% Load Olympic data from the CSV file

tableOfData=readcell("Olympic_data_set.csv");

[nRow,nCol]=size(tableOfData);


%% Parameter Selection
% Extract user-selected parameters from the GUI
startyear=double(app.StartEditField.Value);
endyear=double(app.EndEditField);
medalType=string(app.MedalDropDown.Value);
chosenCountries=[string(app.ListBox.Value)];
numCountries=length(chosenCountries);
sportCategory=string(app.SportDropDown.Value);
% Initialize bins to store counts of medal occurrences in each chosen country
bins=zeros(1,numCountries);


%% Counting Medal Occurrences
% Iterate over chosen countries and count medal occurrences
for icountry=1:numCountries
    bins(icountry)=0;
    firstr=true;
        for jrow=1:nRow
            if firstr==false
                if (double(tableOfData{jrow,10})>=0) && (double(tableOfData{jrow,10})<=2000) 
                    if string(tableOfData{jrow,13})==sportCategory
                        if string(tableOfData{jrow,8})==chosenCountries(icountry)
                            if string(tableOfData{jrow,15})==medalType
                                bins(icountry)=bins(icountry)+1;
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
% Plot the bar graph in the UIAxes of the GUI
bar(app.UIAxes,bins)
xticklabels(app.UIAxes,chosenCountries)
doGrid = app.GridCheckBox.Value;
if doGrid
    grid(app.UIAxes,"on")
else
    grid(app.UIAxes, "off")
end