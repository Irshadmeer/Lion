clear all
NoOfUAV = 1000;
percentage1 = zeros(100,NoOfUAV);
percentage2 = zeros(100,NoOfUAV);
percentage3 = zeros(100,NoOfUAV);
for r = 1 :100
for i = 1 : NoOfUAV
 sortedGBSAA = SortedGBSAA(i);
 finalcollisionNo11 = 0;
 finalcollisionNo12 = 0;
 finalcollisionNo13 = 0;
 finalcollisionNo = 0 ; 
 
 %%%First block with one incoming helicopters%%%%
for q = 1 : 1000
a = 0;
b = 0.161; 
randomArrival1 = (b-a).*rand(1,1) + a;

   for n = 1: length(randomArrival1)  
       firstpacketarrival = randomArrival1(n);  
       collision = 0;
     for k = 1: length(sortedGBSAA)
           if(sortedGBSAA(k)== 0)
        continue;
           else
              if (firstpacketarrival > (sortedGBSAA(k)- 0.000120) && firstpacketarrival < (sortedGBSAA(k)+ 0.000240) )
        
                   collision = collision +1;  
              end
           end
      end       
        
   end
        if (collision > 0 )
           finalcollisionNo = finalcollisionNo+1;
        end   
end


%%%2nd block with 5 incoming helicopters%%%%
for y = 1: 1000
randomArrival12 = (b-a).*rand(1,5) + a;
collision112 = 0;
for n = 1: length(randomArrival12)  
  firstpacketarrival2 = randomArrival12(n);  
  
  for k = 1: length(sortedGBSAA)
   
      if (firstpacketarrival2 > (sortedGBSAA(k)- 0.000120) && firstpacketarrival2 < (sortedGBSAA(k)+2*(0.000120)) )
        
          collision112 = collision112 +1;  
      end
  end 
        
end
if (collision112 > 0 )
    finalcollisionNo12 = finalcollisionNo12+1;
end

end

%%%third block with 10 incoming helicopters
for u = 1: 1000
randomArrival13 = (b-a).*rand(1,10) + a;
collision13 = 0;
for n = 1: length(randomArrival13)  
  firstpacketarrival3 = randomArrival13(n);  
  
  for k = 1: length(sortedGBSAA)
   
      if (firstpacketarrival3 > (sortedGBSAA(k)- 0.000120) && firstpacketarrival3 < (sortedGBSAA(k)+2*(0.000120)) )
        
          collision13 = collision13 +1;  
      end
  end 
        
end
if (collision13 > 0 )
    finalcollisionNo13 = finalcollisionNo13+1;
end

end



percentage1(r,i) = (finalcollisionNo/1000)*100 ;
percentage2(r,i) = (finalcollisionNo12/1000)*100 ;
percentage3(r,i) = (finalcollisionNo13/1000)*100 ;
end

end

MeanPertentage1 = mean(percentage1);
MeanPertentage2 = mean(percentage2);
MeanPertentage3 = mean(percentage3);
% percentage
% MeanPertentage
plot(MeanPertentage1,'r');
hold on
plot(MeanPertentage2,'b');
plot(MeanPertentage3,'b');
xlabel('No of UAVs'); 
ylabel('Collision Prob. (percentage)'); 
title('Random Collision Probability(sorted)'); 
grid on
grid minor
hold off



%plot(percentage);

% for r = 1: 10
% for i = 1 : NoOfUAV
%    a = 0;
%    b = 0.161; % RANGE OF THE TIME INTERVAL
% 
% sortedGBSAA = SortedGBSAA(NoOfUAV);
% 
% finalcollisionNo = 0;
%   for q = 1 : 1000
% 
% randomArrival1 = (b-a).*rand(1,1) + a;
% 
%    for n = 1: length(randomArrival1)  
%        firstpacketarrival = randomArrival1(n);  
%        collision = 0;
%      for k = 1: length(sortedGBSAA)
%            if(sortedGBSAA(k)==0)
%         continue;
%            else
%               if (firstpacketarrival > (sortedGBSAA(k)- 0.000120) && firstpacketarrival < (sortedGBSAA(k)+ 2*(0.000120)) )
%         
%                    collision = collision +1;  
%               end
%            end
%       end 
%         if (collision > 0 )
%            finalcollisionNo = finalcollisionNo+1;
%         end    
%         
%    end
% 
%  end   
%     
%     
% 
% percentage(1,i) = (finalcollisionNo/1000)*100 ;
% 
% end
% 
% %end
% MeanPertentage = mean(percentage);
% percentage
% MeanPertentage
% plot(MeanPertentage);







% %percentage
% meanpercentage = mean(percentage);
% meanpercentage
% bar(X,meanpercentage);
% xlabel('No of Incoming helicopter'); 
% ylabel('Collision Prob. (percentage)'); 
% title('Random Collision Probability(sorted)'); 
% 
% grid on
