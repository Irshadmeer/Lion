clear all  
NoOfUAV = 1000;
percentage1 = zeros(1000, 1000);
a=0;
b= 0.161; % RANGE OF THE TIME INTERVAL
for q = 1 : 1000
    
for k = 1 : NoOfUAV
    
    
    percentage1(q,k) = RandomArrival(k,a,b);
    
end

end
MeanPercentage1 = mean(percentage1);
plot(MeanPercentage1,'r');
MeanPercentage1
xlabel('No Of UAV'); 
ylabel('Collision Prob. (percentage)'); 
title('Random Arrival Collision'); 


hold on

percentage2 = zeros(1000, 1000);
a=0;
b= 0.5; % RANGE OF THE TIME INTERVAL
for q = 1 : 1000
    
for k = 1 : NoOfUAV
    
    
    percentage2(q,k) = RandomArrival(k,a,b);
    
end

end
MeanPercentage2 = mean(percentage2);
MeanPercentage2
plot(MeanPercentage2,'b');


percentage3 = zeros(1000, 1000);
a=0;
b= 1; % RANGE OF THE TIME INTERVAL
for q = 1 : 1000
    
for k = 1 : NoOfUAV
    
    
    percentage3(q,k) = RandomArrival(k,a,b);
    
end

end
MeanPercentage3 = mean(percentage3);
MeanPercentage3
plot(MeanPercentage3,'g');
hold off
grid on
grid minor
