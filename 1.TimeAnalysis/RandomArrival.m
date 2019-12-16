
% Random Arrival Model
% function percentage = RandomArrival(noofUAV,a,b)
% collision=0;
% randomArrival = (b-a).*rand(noofUAV,1) + a;
% for n = 1: (length(randomArrival)-1)  
%   firstpacketarrival = randomArrival(n);  
%   for k = n+1: length(randomArrival)
%      if(n==k)
%          continue ;
%   
%      else
%          if (randomArrival(k)>(firstpacketarrival-(0.000120) ) && randomArrival(k)< (firstpacketarrival+(0.000120)) )
% 
%         collision = collision +1;  
%         
%   
%           end
%      end
%   end
%     
% end
% 
% 
% 
% 
% percentage = (collision/noofUAV)*100 ;
 
        
 function percentage = RandomArrival(noofUAV,a,b)

finalcollisionNo = 0;
for w = 1 : 100
collision=0;
randomArrival = (b-a).*rand(noofUAV,1) + a;
for n = 1: (length(randomArrival)-1)  
  firstpacketarrival = randomArrival(n);  
  for k = n+1: length(randomArrival)
     if(n==k)
         continue ;
  
     else
         if (randomArrival(k)>(firstpacketarrival-(0.000120) ) && randomArrival(k)< (firstpacketarrival+(0.000120)) )

        collision = collision +1;  
        
  
          end
     end
  end
    
end

 if (collision > 0 )
    finalcollisionNo = finalcollisionNo+1;
 end
end


percentage = (finalcollisionNo/100)*100 ; 

