clear all
% %%%%%%%%%%%% highest data rate %%%%%%%%%%%%
% NoOfUAV = 1000;
% percentage = zeros(100,NoOfUAV);
% for r = 1: 100
% for i = 1 : NoOfUAV
% a=0;
% b= 0.161; % RANGE OF THE TIME INTERVAL
% randomGBSAA = RandomGBSAA(a,b,i);
% 
% finalcollisionNo = 0;
%   for q = 1 : 1000
% 
% randomArrival1 = (b-a).*rand(1,1) + a;
% collision1 = 0;
% for n = 1: length(randomArrival1)  
%   firstpacketarrival = randomArrival1(n);  
%   
%   for k = 1: length(randomGBSAA)
%    
%       if (firstpacketarrival > (randomGBSAA(k)- 0.000120) && firstpacketarrival< (randomGBSAA(k)+2*(0.000120)) )
%         
%           collision1 = collision1 +1;  
%       end
%   end 
%         
% end
% if (collision1 > 0 )
%     finalcollisionNo = finalcollisionNo+1;
% end
%   end   
%     
%     
% 
% percentage(r,i) = (finalcollisionNo/1000)*100 ;
% 
% end
% 
% end
% MeanPertentage = mean(percentage);
% plot(MeanPertentage);

%%%%%%%%%%%% highest data rate %%%%%%%%%%%%
NoOfUAV = 1000;
percentage1 = zeros(100,NoOfUAV);
for r = 1: 100
for i = 1 : NoOfUAV
a=0;
b= 0.161; % RANGE OF THE TIME INTERVAL
randomGBSAA = RandomGBSAA(a,b,i);

finalcollisionNo = 0;
  for q = 1 : 1000

randomArrival1 = (b-a).*rand(1,1) + a;
collision1 = 0;
for n = 1: length(randomArrival1)  
  firstpacketarrival = randomArrival1(n);  
  
  for k = 1: length(randomGBSAA)
   
      if (firstpacketarrival > (randomGBSAA(k)- 0.000120) && firstpacketarrival< (randomGBSAA(k)+(0.000120)) )
        
          collision1 = collision1 +1;  
      end
  end 
        
end
if (collision1 > 0 )
    finalcollisionNo = finalcollisionNo+1;
end
  end   
    
    

percentage1(r,i) = (finalcollisionNo/1000)*100 ;

end

end
MeanPertentage1 = mean(percentage1);
plot(MeanPertentage1,'b');

hold on


%%%%%%%%%%%% T0= 0.5 %%%%%%%%%%%%
NoOfUAV = 1000;
percentage2 = zeros(100,NoOfUAV);
for r = 1: 100
for i = 1 : NoOfUAV
a=0;
b= 0.5; % RANGE OF THE TIME INTERVAL
randomGBSAA = RandomGBSAA(a,b,i);

finalcollisionNo2 = 0;
  for q = 1 : 1000

randomArrival1 = (b-a).*rand(1,1) + a;
collision2 = 0;
for n = 1: length(randomArrival1)  
  firstpacketarrival = randomArrival1(n);  
  
  for k = 1: length(randomGBSAA)
   
      if (firstpacketarrival > (randomGBSAA(k)- 0.000120) && firstpacketarrival< (randomGBSAA(k)+(0.000120)) )
        
          collision2 = collision2 +1;  
      end
  end 
        
end
if (collision2 > 0 )
    finalcollisionNo2 = finalcollisionNo2+1;
end
  end   
    
    

percentage2(r,i) = (finalcollisionNo2/1000)*100 ;

end

end
MeanPertentage2 = mean(percentage2);
plot(MeanPertentage2);




%%%%%%%%%%%% T = 1 sec %%%%%%%%%%%%
NoOfUAV = 1000;
percentage3 = zeros(100,NoOfUAV);
for r = 1: 100
for i = 1 : NoOfUAV
a=0;
b= 1; % RANGE OF THE TIME INTERVAL
randomGBSAA = RandomGBSAA(a,b,i);

finalcollisionNo3 = 0;
  for q = 1 : 1000

randomArrival3 = (b-a).*rand(1,1) + a;
collision1 = 0;
for n = 1: length(randomArrival3)  
  firstpacketarrival = randomArrival3(n);  
  
  for k = 1: length(randomGBSAA)
   
      if (firstpacketarrival > (randomGBSAA(k)- 0.000120) && firstpacketarrival< (randomGBSAA(k)+(0.000120)) )
        
          collision1 = collision1 +1;  
      end
  end 
        
end
if (collision1 > 0 )
    finalcollisionNo3 = finalcollisionNo3+1;
end
  end   
    
    

percentage3(r,i) = (finalcollisionNo3/1000)*100 ;

end

end
MeanPertentage3 = mean(percentage3);
plot(MeanPertentage3,'r');

hold off





