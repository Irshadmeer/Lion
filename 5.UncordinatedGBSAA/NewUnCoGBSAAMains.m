clear all

percentagefinal = zeros(1000,1000);
for w = 1: 1000
 for q = 10 : 1000
     a=0.000000;
b= 0.160999; % RANGE OF THE TIME INTERVAL
noOfUAV = 500;
randomGBSAA = RandomGBSAA(q,a,b);
len = length(randomGBSAA);
if(mod(len,2)==1)
    len = len-1;
end
my_indices = randperm(len);
station1 = randomGBSAA(my_indices(1:(len/2)));
station2 = randomGBSAA(my_indices((len/2): end));
 
 finalCollision= 0;
for r= 1:1000
collision=0;
 a=0;
 b= 0.161; % RANGE OF THE TIME INTERVAL
 randomArrival = (b-a).*rand(1,1) + a;%incoming packet arrival time
for n = 1: length(randomArrival)  
    
  firstpacketarrival = randomArrival(n);  
  
  for k = 1: length(station1)
   
      if (firstpacketarrival>(station1(k)- 0.000120) && firstpacketarrival<(station1(k)+2*(0.000120)) )
        
          collision = collision +1;  
      end
  end 
        
end
if(collision>0)
    finalCollision = finalCollision +1;
end
percentage1 = (finalCollision/1000) ;
end


%%%%2nd tower

% a=0;
% b= 0.161; % RANGE OF THE TIME INTERVAL
%  randomArrival = (b-a).*rand(1,1) + a;%incoming packet arrival time
finalCollision2= 0;
for r= 1:1000
collision2=0;
a=0;
 b= 0.161; % RANGE OF THE TIME INTERVAL
 randomArrival = (b-a).*rand(1,1) + a;%incoming packet arrival time

for n = 1: length(randomArrival)  
    
  firstpacketarrival = randomArrival(n);  
  
  for k = 1: length(station1)
   
      if (firstpacketarrival>(station1(k)- 0.000120) && firstpacketarrival<(station1(k)+2*(0.000120)) )
        
          collision2 = collision2 +1;  
      end
  end 
        
end
if(collision2>0)
    finalCollision2 = finalCollision2 +1;
end
percentage2 = (finalCollision2/1000) ;
end

percentagefinal(w,q) = (percentage2 * percentage1)*100;

 end 
end
meanpercentage = mean(percentagefinal) ;
plot(meanpercentage);
grid on
grid minor
title('GBSAA Random Collision Probability with two stations');
xlabel('No of UAVs'); 
ylabel('Collision Prob. (percentage)');
 
 
%msize = numel(randomGBSAA);
%station1 = randomGBSAA(randperm(msize, (msize/2)));
%station2 = randomGBSAA(randperm(msize, (msize/2)));
% matrix = zeros(1000,3);
% matrix(:,1) = randomGBSAA;
% matrix(1:msize,2) = station1;
% matrix(1:msize,3) = station2;
 


 %percentage = zeros(10,4); 

% collision22=0;
% for n = 1: length(randomArrival2)  
%     
%   firstpacketarrival = randomArrival2(n);  
%   
%   for k = 1: length(station2)
%    
%       if (station2(k)>firstpacketarrival && station2(k)< (firstpacketarrival+0.000120) )
%         
%           collision22 = collision22 +1;  
%       end
%   end 
%         
% end
% x2 = length(randomArrival2);
% percentage22 = (collision22/x2) ;
% 
% percentage222 = (percentage22 * percentage2)*100;
%  end 
% % 
% % 
% % 
% % percentage(q,1:4) = [percentage222,percentage333,percentage444,percentage555];
% % X = [x2,x3,x4,x5];
% % end
% % %percentage
% % meanpercentage = mean(percentage);
% % meanpercentage
% % bar(X,meanpercentage);
% % xlabel('No of halicopters'); 
% % ylabel('Collision Prob. (percentage)'); 
% % title('GBSAA Random Collision Probability with two stations'); 
% % grid on
% % 
% % x =  percentage(:,1);                       % Create Data
% % SEM = std(x)/sqrt(length(x));               % Standard Error
% % ts = tinv([0.025  0.975],length(x)-1);      % T-Score
% % CI = mean(x) + ts*SEM;                      % Confidence Intervals
% % plot(CI);
