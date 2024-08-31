function question3(app)
% question3 - Analyzes Olympic medal data for selected countries.
%
%   question3(app) takes input from a graphical user interface (GUI) 
%   represented by dropdown menus for selecting countries to analyze. It 
%   then counts the number of gold, silver, and bronze medals won by each
%   selected country from the loaded Olympic data set. Finally, it updates
%   the GUI elements with the counts of gold, silver, bronze, and total
%   medals for each selected country.
%
%   Inputs:
%   - app: The graphical user interface (GUI) application object.
%
%   Note:
%   - This function assumes that the Olympic data set is loaded into a
%     cell array named "tableOfData" from a CSV file named
%     "Olympic_data_set.csv" before calling this function.
%
%   Example:
%   % Call this function with the GUI application object 'app' to analyze
%   % Olympic medal data for selected countries.
%   question3(app);

%   Author: Eric Durazno & Zelalem Haile
%   Date: 04/22/2024



%% Loading in the Data
tableOfData=readcell("Olympic_data_set.csv");
[nRow,nCol]=size(tableOfData);


% Input from User for Sports to Look For
country1 = string(app.Country1DropDown.Value);
country2 = string(app.Country2DropDown.Value);
country3 = string(app.Country3DropDown.Value);
country4 = string(app.Country4DropDown.Value);
country5 = string(app.Country5DropDown.Value);


% Initialize counters and cell arrays for athletes

logic_counter = 0;
countries = [country1, country2, country3, country4, country5];
gold_counter1 = 0;
silver_counter1 = 0;
bronze_counter1 = 0;
gold_counter2 = 0;
silver_counter2 = 0;
bronze_counter2 = 0;
gold_counter3 = 0;
silver_counter3 = 0;
bronze_counter3 = 0;
gold_counter4 = 0;
silver_counter4 = 0;
bronze_counter4 = 0;
gold_counter5 = 0;
silver_counter5 = 0;
bronze_counter5 = 0;

% Loop through the data to count medals and identify athletes for each sport
for iz = 2:nRow
        if tableOfData{iz,8} == countries(1)
            if tableOfData{iz,15} == "Gold"
                gold_counter1 = gold_counter1 + 1;
            elseif tableOfData{iz,15} == "Silver"
                silver_counter1 = silver_counter1 + 1;
            elseif tableOfData{iz,15} == "Bronze"
                bronze_counter1 = bronze_counter1 + 1;
            end
        elseif tableOfData{iz,8} == countries(2)
            if tableOfData{iz,15} == "Gold"
                gold_counter2 = gold_counter2 + 1;
            elseif tableOfData{iz,15} == "Silver"
                silver_counter2 = silver_counter2 + 1;
            elseif tableOfData{iz,15} == "Bronze"
                bronze_counter2 = bronze_counter2 + 1;
            end
        elseif tableOfData{iz,8} == countries(3)
            if tableOfData{iz,15} == "Gold"
                gold_counter3 = gold_counter3 + 1;
            elseif tableOfData{iz,15} == "Silver"
                silver_counter3 = silver_counter3 + 1;
            elseif tableOfData{iz,15} == "Bronze"
                bronze_counter3 = bronze_counter3 + 1;
            end
        elseif tableOfData{iz,8} == countries(4)
            if tableOfData{iz,15} == "Gold"
                gold_counter4 = gold_counter4 + 1;
            elseif tableOfData{iz,15} == "Silver"
                silver_counter4 = silver_counter4 + 1;
            elseif tableOfData{iz,15} == "Bronze"
                bronze_counter4 = bronze_counter4 + 1;
            end
        elseif tableOfData{iz,8} == countries(5)
            if tableOfData{iz,15} == "Gold"
                gold_counter5 = gold_counter5 + 1;
            elseif tableOfData{iz,15} == "Silver"
                silver_counter5 = silver_counter5 + 1;
            elseif tableOfData{iz,15} == "Bronze"
                bronze_counter5 = bronze_counter5 + 1;
            end
        end
end
% Initialize counters for gold, silver, and bronze medals
country_medals1 = gold_counter1 + silver_counter1 + bronze_counter1;
country_medals2 = gold_counter2 + silver_counter2 + bronze_counter2;
country_medals3 = gold_counter3 + silver_counter3 + bronze_counter3;
country_medals4 = gold_counter4 + silver_counter4 + bronze_counter4;
country_medals5 = gold_counter5 + silver_counter5 + bronze_counter5;


% Update GUI elements with details of champion athletes for each sport
app.GoldEditField_6.Value=gold_counter1;
app.SilverEditField_6.Value=silver_counter1;
app.BronzeEditField_6.Value=bronze_counter1;
app.TotalEditField_6.Value=country_medals1;

app.GoldEditField_7.Value=gold_counter2;
app.SilverEditField_7.Value=silver_counter2;
app.BronzeEditField_7.Value=bronze_counter2;
app.TotalEditField_7.Value=country_medals2;


app.GoldEditField_8.Value=gold_counter3;
app.SilverEditField_8.Value=silver_counter3;
app.BronzeEditField_8.Value=bronze_counter3;
app.TotalEditField_8.Value=country_medals3;


app.GoldEditField_9.Value=gold_counter4;
app.SilverEditField_9.Value=silver_counter4;
app.BronzeEditField_9.Value=bronze_counter4;
app.TotalEditField_9.Value=country_medals4;


app.GoldEditField_10.Value=gold_counter5;
app.SilverEditField_10.Value=silver_counter5;
app.BronzeEditField_10.Value=bronze_counter5;
app.TotalEditField_10.Value=country_medals5;




