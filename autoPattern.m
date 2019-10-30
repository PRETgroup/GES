

% The state info array
autoq1 = [q.Time, q.Data, q2.Data, q3.Data, q4.Data, q5.Data, q6.Data, q7.Data, q8.Data, q9.Data];


% cut out the data for the first 36 s
autoq1(1:36000,:) = [];

r1(1:3, 1:3) = NaN;
time = 0;
timebase = 40;


%---------- timing heat map by state change ----------

% for 10 s
for i = 1:10000 
    
    % cell1 - cell9
    for j = 2:10
        
       %if the cell goes into upstroke (state change) 
       if autoq1(i,j) == 0
           if autoq1(i+1,j) == 1
               
               % position of the cell
               row = ceil((j-1)/3);
               col = mod((j-1),3);
               
               if col == 0
                   col = 3;
               end
               
               % get the timing info
               time = round((autoq1(i+1,1) - timebase),1);
               r1(row,col)= time;               
           
           end
       end
        
    end
    
end       
       

% ------ heatmap ------
figure;
h=heatmap(r1);









