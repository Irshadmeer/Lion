clear all
%%%%%%%%%%%% highest data rate %%%%%%%%%%%%
NoOfUAV = 1000;
percentage11 = zeros(100,NoOfUAV);
percentage12 = zeros(100,NoOfUAV);
percentage13 = zeros(100,NoOfUAV);
for r = 1: 100
for i = 1 : NoOfUAV
a=0;
b= 0.161; % RANGE OF THE TIME INTERVAL

randomGBSAA = RandomGBSAA(a,b,i);

finalcollisionNo11 = 0;
finalcollisionNo12 = 0;
finalcollisionNo13 = 0;
%%%Single helicopter %%%
  for q = 1 : 1000

randomArrival1 = (b-a).*rand(1,1) + a;
collision11 = 0;
for n = 1: length(randomArrival1)  
  firstpacketarrival1 = randomArrival1(n);  
  
  for k = 1: length(randomGBSAA)
   
      if (firstpacketarrival1 > (randomGBSAA(k)- 0.000120) && firstpacketarrival1< (randomGBSAA(k)+2*(0.000120)) )
        
          collision11 = collision11 +1;  
      end
  end 
        
end
if (collision11 > 0 )
    finalcollisionNo11 = finalcollisionNo11+1;
end
  end  
  
  

%%%2nd block with 5 incoming helicopters%%%%
for y = 1: 1000
randomArrival12 = (b-a).*rand(1,5) + a;
collision112 = 0;
for n = 1: length(randomArrival12)  
  firstpacketarrival2 = randomArrival12(n);  
  
  for k = 1: length(randomGBSAA)
   
      if (firstpacketarrival2 > (randomGBSAA(k)- 0.000120) && firstpacketarrival2 < (randomGBSAA(k)+2*(0.000120)) )
        
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
  
  for k = 1: length(randomGBSAA)
   
      if (firstpacketarrival3 > (randomGBSAA(k)- 0.000120) && firstpacketarrival3 < (randomGBSAA(k)+2*(0.000120)) )
        
          collision13 = collision13 +1;  
      end
  end 
        
end
if (collision13 > 0 )
    finalcollisionNo13 = finalcollisionNo13+1;
end

end



percentage11(r,i) = (finalcollisionNo11/1000)*100 ;
percentage12(r,i) = (finalcollisionNo12/1000)*100 ;
percentage13(r,i) = (finalcollisionNo13/1000)*100 ;
end  

  




end

MeanPertentage11 = mean(percentage11);
MeanPertentage12 = mean(percentage12);
MeanPertentage13 = mean(percentage13);
plot(MeanPertentage11,'r');
hold on 
plot(MeanPertentage12,'b')
plot(MeanPertentage13)
hold off
grid on
grid minor 