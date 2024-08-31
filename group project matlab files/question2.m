function question2(app)
%% question2 - Analyzes Olympic medal data for selected sports.
%
%   question2(app) takes input from a graphical user interface (GUI)
%   represented by dropdown menus for selecting sports to analyze. It then
%   identifies unique athletes participating in each selected sport and
%   counts the number of gold, silver, and bronze medals won by each
%   athlete. Afterward, it determines the athlete with the highest total
%   number of medals (gold, silver, and bronze combined) in each sport.
%   Finally, it updates the GUI elements with the details of the champion
%   athlete (name, gold, silver, bronze, and total medals) for each sport.
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
%   % Olympic medal data for selected sports.
%   question2(app);
%
%   Author: Eric Durazno & Zelalem Haile
%   Date: 04/22/2024


% Author : Eric Durazno & Zelalem Haile


%% Loading in the Data
tableOfData=readcell("Olympic_data_set.csv");
[nRow,nCol]=size(tableOfData);

%% Question 2 
% Input from User for Sports to Look For
sport1 = string(app.Event1DropDown.Value);
sport2 = string(app.Event2DropDown.Value);
sport3 = string(app.Event3DropDown.Value);
sport4 = string(app.Event4DropDown.Value);
sport5 = string(app.Event5DropDown.Value);

% Initialize counters and cell arrays for athletes

logic_counter1 = 0;
logic_counter2 = 0;
logic_counter3 = 0;
logic_counter4 = 0;
logic_counter5 = 0;
athletes1 = {};
athletes2 = {};
athletes3 = {};
athletes4 = {};
athletes5 = {};

% Count medals for each athlete in each sport
for ix = 2:nRow
    if tableOfData{ix,13} == sport1
        a = string(tableOfData{ix,2});
        variable = false;
        ln = length(athletes1);
        for i = 1:ln
            b = string(athletes1{i});
            if a == b
                variable = true;
            end
        end
        if ~variable
            logic_counter1 = logic_counter1 + 1;
            athletes1{logic_counter1} = a;
        end
    elseif tableOfData{ix,13} == sport2
        a = string(tableOfData{ix,2});
        variable = false;
        ln = length(athletes2);
        for i = 1:ln
            b = string(athletes2{i});
            if a == b
                variable = true;
            end
        end
        if ~variable
            logic_counter2 = logic_counter2 + 1;
            athletes2{logic_counter2} = a;
        end
    elseif tableOfData{ix,13} == sport3
        a = string(tableOfData{ix,2});
        variable = false;
        ln = length(athletes3);
        for i = 1:ln
            b = string(athletes3{i});
            if a == b
                variable = true;
            end
        end
        if ~variable
            logic_counter3 = logic_counter3 + 1;
            athletes3{logic_counter3} = a;
        end
    elseif tableOfData{ix,13} == sport4
        a = string(tableOfData{ix,2});
        variable = false;
        ln = length(athletes4);
        for i = 1:ln
            b = string(athletes4{i});
            if a == b
                variable = true;
            end
        end
        if ~variable
            logic_counter4 = logic_counter4 + 1;
            athletes4{logic_counter4} = a;
        end
    elseif tableOfData{ix,13} == sport5
        a = string(tableOfData{ix,2});
        variable = false;
        ln = length(athletes5);
        for i = 1:ln
            b = string(athletes5{i});
            if a == b
                variable = true;
            end
        end
        if ~variable
            logic_counter5 = logic_counter5 + 1;
            athletes5{logic_counter5} = a;
        end
    end
end

% Initialize counters for gold, silver, and bronze medals
gold_counter1 = zeros(1,length(athletes1));
silver_counter1 = zeros(1,length(athletes1));
bronze_counter1 = zeros(1,length(athletes1));
gold_counter2 = zeros(1,length(athletes2));
silver_counter2 = zeros(1,length(athletes2));
bronze_counter2 = zeros(1,length(athletes2));
gold_counter3 = zeros(1,length(athletes3));
silver_counter3 = zeros(1,length(athletes3));
bronze_counter3 = zeros(1,length(athletes3));
gold_counter4 = zeros(1,length(athletes4));
silver_counter4 = zeros(1,length(athletes4));
bronze_counter4 = zeros(1,length(athletes4));
gold_counter5 = zeros(1,length(athletes5));
silver_counter5 = zeros(1,length(athletes5));
bronze_counter5 = zeros(1,length(athletes5));
% 1
for iz = 2:nRow
    for ix = 1:length(athletes1)
        if tableOfData{iz,2} == athletes1{ix}
            if tableOfData{iz,15} == "Gold"
                gold_counter1(ix) = gold_counter1(ix) + 1;
            elseif tableOfData{iz,15} == "Silver"
                silver_counter1(ix) = silver_counter1(ix) + 1;
            elseif tableOfData{iz,15} == "Bronze"
                bronze_counter1(ix) = bronze_counter1(ix) + 1;
            end
        end
    end
end
% 2
for iz = 2:nRow
    for ix = 1:length(athletes2)
        if tableOfData{iz,2} == athletes2{ix}
            if tableOfData{iz,15} == "Gold"
                gold_counter2(ix) = gold_counter2(ix) + 1;
            elseif tableOfData{iz,15} == "Silver"
                silver_counter2(ix) = silver_counter2(ix) + 1;
            elseif tableOfData{iz,15} == "Bronze"
                bronze_counter2(ix) = bronze_counter2(ix) + 1;
            end
        end
    end
end
% 3
for iz = 2:nRow
    for ix = 1:length(athletes3)
        if tableOfData{iz,2} == athletes3{ix}
            if tableOfData{iz,15} == "Gold"
                gold_counter3(ix) = gold_counter3(ix) + 1;
            elseif tableOfData{iz,15} == "Silver"
                silver_counter3(ix) = silver_counter3(ix) + 1;
            elseif tableOfData{iz,15} == "Bronze"
                bronze_counter3(ix) = bronze_counter3(ix) + 1;
            end
        end
    end
end
% 4
for iz = 2:nRow
    for ix = 1:length(athletes4)
        if tableOfData{iz,2} == athletes4{ix}
            if tableOfData{iz,15} == "Gold"
                gold_counter4(ix) = gold_counter4(ix) + 1;
            elseif tableOfData{iz,15} == "Silver"
                silver_counter4(ix) = silver_counter4(ix) + 1;
            elseif tableOfData{iz,15} == "Bronze"
                bronze_counter4(ix) = bronze_counter4(ix) + 1;
            end
        end
    end
end
% 5
for iz = 2:nRow
    for ix = 1:length(athletes5)
        if tableOfData{iz,2} == athletes5{ix}
            if tableOfData{iz,15} == "Gold"
                gold_counter5(ix) = gold_counter5(ix) + 1;
            elseif tableOfData{iz,15} == "Silver"
                silver_counter5(ix) = silver_counter5(ix) + 1;
            elseif tableOfData{iz,15} == "Bronze"
                bronze_counter5(ix) = bronze_counter5(ix) + 1;
            end
        end
    end
end
% 1
for ix = 1:length(athletes1)
    total_medals1(ix) = gold_counter1(ix) + silver_counter1(ix) + bronze_counter1(ix);
end
max1 = max(total_medals1);
% 2
for ix = 1:length(athletes2)
    total_medals2(ix) = gold_counter2(ix) + silver_counter2(ix) + bronze_counter2(ix);
end
max2 = max(total_medals2);
% 3
for ix = 1:length(athletes3)
    total_medals3(ix) = gold_counter3(ix) + silver_counter3(ix) + bronze_counter3(ix);
end
max3 = max(total_medals3);
% 4
for ix = 1:length(athletes4)
    total_medals4(ix) = gold_counter4(ix) + silver_counter4(ix) + bronze_counter4(ix);
end
max4 = max(total_medals4);
% 5
for ix = 1:length(athletes5)
    total_medals5(ix) = gold_counter5(ix) + silver_counter5(ix) + bronze_counter5(ix);
end
max5 = max(total_medals5);
% 1
for ix = 1:length(total_medals1)
    if total_medals1(ix) == max1
        champion1 = ix;
    end
end
% 2
for ix = 1:length(total_medals2)
    if total_medals2(ix) == max2
        champion2 = ix;
    end
end
% 3
for ix = 1:length(total_medals3)
    if total_medals3(ix) == max3
        champion3 = ix;
    end
end
% 4
for ix = 1:length(total_medals4)
    if total_medals4(ix) == max4
        champion4 = ix;
    end
end
% 5
for ix = 1:length(total_medals5)
    if total_medals5(ix) == max5
        champion5 = ix;
    end
end





%% Update GUI elements with details of champion athletes for each sport



app.Country_EditField.Value=sport1;
app.Country_EditField_2.Value=string(athletes1{champion1});
app.BronzeEditField.Value=bronze_counter1(champion1);
app.SilverEditField.Value=silver_counter1(champion1);
app.GoldEditField.Value=gold_counter1(champion1);
app.TotalEditField.Value=total_medals1(champion1);



app.Country_EditField_3.Value=sport2;
app.Country_EditField_10.Value=string(athletes2{champion2});
app.BronzeEditField_2.Value=bronze_counter2(champion2);
app.SilverEditField_2.Value=silver_counter2(champion2);
app.GoldEditField_2.Value=gold_counter2(champion2);
app.TotalEditField_2.Value=total_medals2(champion2);



app.Country_EditField_4.Value=sport3;
app.Country_EditField_9.Value=string(athletes3{champion3});
app.BronzeEditField_3.Value=bronze_counter3(champion3);
app.SilverEditField_3.Value=silver_counter3(champion3);
app.GoldEditField_3.Value=gold_counter3(champion3);
app.TotalEditField_3.Value=total_medals3(champion3);

app.Country_EditField_5.Value=sport4;
app.Country_EditField_8.Value=string(athletes4{champion4});
app.BronzeEditField_4.Value=bronze_counter4(champion4);
app.SilverEditField_4.Value=silver_counter4(champion4);
app.GoldEditField_4.Value=gold_counter4(champion4);
app.TotalEditField_4.Value=total_medals4(champion4);



app.Country_EditField_6.Value=sport5;
app.Country_EditField_7.Value=string(athletes5{champion5});
app.BronzeEditField_5.Value=bronze_counter5(champion5);
app.SilverEditField_5.Value=silver_counter5(champion5);
app.GoldEditField_5.Value=gold_counter5(champion5);
app.TotalEditField_5.Value=total_medals5(champion5);

