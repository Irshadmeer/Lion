
clear all
a=0.000000;
b= 0.160999; % RANGE OF THE TIME INTERVAL
randomGBSAA = RandomGBSAA(a,b);
msize = numel(randomGBSAA);
station1 = randomGBSAA(randperm(msize, (msize/2)));
station2 = randomGBSAA(randperm(msize, (msize/2)));
%matrix = zeros(1000,3);
%matrix(:,1) = randomGBSAA;
%matrix(1:msize,2) = station1;
%matrix(1:msize,3) = station2;
 

percentage = zeros(10000,4);
for q = 1 : 10000
a=0;
b= 0.161; % RANGE OF THE TIME INTERVAL
randomArrival2 = (b-a).*rand(2,1) + a;
randomArrival3 = (b-a).*rand(3,1) + a;
randomArrival4 = (b-a).*rand(4,1) + a;
randomArrival5 = (b-a).*rand(5,1) + a;




collision2=0;
for n = 1: length(randomArrival2)  
    
  firstpacketarrival = randomArrival2(n);  
  
  for k = 1: length(station1)
   
      if (station1(k)>firstpacketarrival && station1(k)< (firstpacketarrival+0.000120) )
        
          collision2 = collision2 +1;  
      end
  end 
        
end
x2 = length(randomArrival2);
percentage2 = (collision2/x2) ;

collision22=0;
for n = 1: length(randomArrival2)  
    
  firstpacketarrival = randomArrival2(n);  
  
  for k = 1: length(station2)
   
      if (station2(k)>firstpacketarrival && station2(k)< (firstpacketarrival+0.000120) )
        
          collision22 = collision22 +1;  
      end
  end 
        
end
x2 = length(randomArrival2);
percentage22 = (collision22/x2) ;

percentage222 = (percentage22 * percentage2)*100;

collision3 =0;
for n = 1: length(randomArrival3)  
  firstpacketarrival = randomArrival3(n);  
  
  for k = 1: length(station1)
   
      if (station1(k)>firstpacketarrival && station1(k)< (firstpacketarrival+0.000120) )
        
          collision3 = collision3 +1;  
      end
  end 
        
end
x3 = length(randomArrival3);
percentage3 = (collision3/x3) ;

collision33 =0;
for n = 1: length(randomArrival3)  
  firstpacketarrival = randomArrival3(n);  
  
  for k = 1: length(station2)
   
      if (station2(k)>firstpacketarrival && station2(k)< (firstpacketarrival+0.000120) )
        
          collision33 = collision33 +1;  
      end
  end 
        
end
x3 = length(randomArrival3);
percentage33 = (collision33/x3) ;

percentage333 = (percentage33 * percentage3)*100;


collision4 =0;
for n = 1: length(randomArrival4)  
  firstpacketarrival = randomArrival4(n);  
  
  for k = 1: length(station1)
   
      if (station1(k)>firstpacketarrival && station1(k)< (firstpacketarrival+0.000120) )
        
          collision4 = collision4 +1;  
      end
  end 
        
end
x4 = length(randomArrival4);
percentage4 = (collision4/x4);


collision44 =0;
for n = 1: length(randomArrival4)  
  firstpacketarrival = randomArrival4(n);  
  
  for k = 1: length(station2)
   
      if (station2(k)>firstpacketarrival && station2(k)< (firstpacketarrival+0.000120) )
        
          collision44 = collision44 +1;  
      end
  end 
        
end
x4 = length(randomArrival4);
percentage44 = (collision44/x4);

percentage444 = (percentage44 * percentage4)*100;

collision5 =0;
for n = 1: length(randomArrival5)  
  firstpacketarrival = randomArrival5(n);  
  
  for k = 1: length(station1)
   
      if (station1(k)>firstpacketarrival && station1(k)< (firstpacketarrival+0.000120) )
        
          collision5 = collision5 +1;  
      end
  end 
        
end
x5 = length(randomArrival5);
percentage5 = (collision5/x5) ;

collision55 =0;
for n = 1: length(randomArrival5)  
  firstpacketarrival = randomArrival5(n);  
  
  for k = 1: length(station2)
   
      if (station2(k)>firstpacketarrival && station2(k)< (firstpacketarrival+0.000120) )
        
          collision55 = collision55 +1;  
      end
  end 
        
end
x5 = length(randomArrival5);
percentage55 = (collision55/x5) ;

percentage555 = (percentage55 * percentage5)*100;

percentage(q,1:4) = [percentage222,percentage333,percentage444,percentage555];
X = [x2,x3,x4,x5];
end
%percentage
meanpercentage = mean(percentage);
meanpercentage
bar(X,meanpercentage);
xlabel('No of halicopters'); 
ylabel('Collision Prob. (percentage)'); 
title('GBSAA Random Collision Probability with two stations'); 
grid on

x =  percentage(:,1);                       % Create Data
SEM = std(x)/sqrt(length(x));               % Standard Error
ts = tinv([0.025  0.975],length(x)-1);      % T-Score
CI = mean(x) + ts*SEM;                      % Confidence Intervals
plot(CI);
