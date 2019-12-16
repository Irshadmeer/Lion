clear all
%%%%%% Higesht Data rate
NoOfUAV = 1000;
percentage = zeros(100,NoOfUAV);
for r = 1 :100
for i = 1 : NoOfUAV
 sortedGBSAA = SortedGBSAA(i);
finalcollisionNo = 0 ;   
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
        if (collision > 0 )
           finalcollisionNo = finalcollisionNo+1;
        end    
        
   end

end
percentage(r,i) = (finalcollisionNo/1000)*100 ;
end

end

MeanPertentage = mean(percentage);
plot(MeanPertentage,'r');
hold on 


%%%%%%%% T(ADS-B = 0.5)
NoOfUAV = 1000;
percentage2 = zeros(100,NoOfUAV);
for r = 1 :100
for i = 1 : NoOfUAV
 sortedGBSAA = SortedGBSAA(i);
finalcollisionNo2 = 0 ;   
for q = 1 : 1000
a = 0;
b = 0.5; 
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
        if (collision > 0 )
           finalcollisionNo2 = finalcollisionNo2+1;
        end    
        
   end

end
percentage2(r,i) = (finalcollisionNo2/1000)*100 ;
end

end

MeanPertentage2 = mean(percentage2);
plot(MeanPertentage2);


%%%%%%% T(ADS-B) = 1 sec
NoOfUAV = 1000;
percentage3 = zeros(100,NoOfUAV);
for r = 1 :100
for i = 1 : NoOfUAV
 sortedGBSAA = SortedGBSAA(i);
finalcollisionNo3 = 0 ;   
for q = 1 : 1000
a = 0;
b = 1; 
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
        if (collision > 0 )
           finalcollisionNo3 = finalcollisionNo3+1;
        end    
        
   end

end
percentage3(r,i) = (finalcollisionNo3/1000)*100 ;
end

end

MeanPertentage3 = mean(percentage3);
plot(MeanPertentage3,'b');

hold off 














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
