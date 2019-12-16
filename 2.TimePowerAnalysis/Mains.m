clear all  
NoOfUAV = 1000;
txPower = 1;%watt
percentage1 = zeros(1000,NoOfUAV);
for a = 1 : 1000
    
for k = 1 : NoOfUAV
    
    
    percentage1(a,k) = NewRandomArrival(k,txPower);
    
end

end


txPower2 = 0.0005;
percentage2 = zeros(1000, NoOfUAV);
for j = 1 : 1000
    
for k = 1 : NoOfUAV
    
    
    percentage2(j,k) = NewRandomArrival(k,txPower2);
    
end

end


txPower3 = 0.0008;
percentage3 = zeros(1000, NoOfUAV);
for j = 1 : 1000
    
for k = 1 : NoOfUAV
    
    
    percentage3(j,k) = NewRandomArrival(k,txPower3);
    
end

end


%percentage
MeanPercentage1 = mean(percentage1);
MeanPercentage2 = mean(percentage2);
MeanPercentage3 = mean(percentage3);
%MeanPercentage 
plot(MeanPercentage1,'r');
xlabel('No Of UAVs'); 
ylabel('Collision Prob. (percentage)'); 
title('Random Arrival Collision with power analysis'); 
hold on
plot(MeanPercentage2,'b');
plot(MeanPercentage3,'y');

hold off

grid on





% 





