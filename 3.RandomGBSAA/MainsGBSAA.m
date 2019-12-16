clear all
%%%%%%%%%%%% highest data rate %%%%%%%%%%%%
percentage = zeros(1000,5);
a=0;
b= 0.161; % RANGE OF THE TIME INTERVAL
randomArrival1 = (b-a).*rand(1,1) + a;
randomArrival2 = (b-a).*rand(2,1) + a;
randomArrival3 = (b-a).*rand(3,1) + a;
randomArrival4 = (b-a).*rand(4,1) + a;
randomArrival5 = (b-a).*rand(5,1) + a;
for q = 1 : 1000

randomGBSAA = RandomGBSAA(a,b);
collision1 = 0;
for n = 1: length(randomArrival1)  
  firstpacketarrival = randomArrival1(n);  
  
  for k = 1: length(randomGBSAA)
   
      if (firstpacketarrival >(randomGBSAA(k)- 0.000120) && firstpacketarrival< (randomGBSAA(k)+2*(0.000120)) )
        
          collision1 = collision1 +1;  
      end
  end 
        
end
collision1
x1 = length(randomArrival1);
x1
percentage1 = (collision1/x1)*100 ;
percentage1

collision2=0;
for n = 1: length(randomArrival2)  
  firstpacketarrival = randomArrival2(n);  
  
  for k = 1: length(randomGBSAA)
   
      if (randomGBSAA(k)>firstpacketarrival && randomGBSAA(k)< (firstpacketarrival+0.000120) )
        
          collision2 = collision2 +1;  
      end
  end 
        
end
collision2
x2 = length(randomArrival2);
x2
percentage2 = (collision2/x2)*100 ;
percentage2

collision3 =0;
for n = 1: length(randomArrival3)  
  firstpacketarrival = randomArrival3(n);  
  
  for k = 1: length(randomGBSAA)
   
      if (randomGBSAA(k)>firstpacketarrival && randomGBSAA(k)< (firstpacketarrival+0.000120) )
        
          collision3 = collision3 +1;  
      end
  end 
        
end
collision3
x3 = length(randomArrival3);
x3
percentage3 = (collision3/x3)*100 ;
percentage3

collision4 =0;
for n = 1: length(randomArrival4)  
  firstpacketarrival = randomArrival4(n);  
  
  for k = 1: length(randomGBSAA)
   
      if (randomGBSAA(k)>firstpacketarrival && randomGBSAA(k)< (firstpacketarrival+0.000120) )
        
          collision4 = collision4 +1;  
      end
  end 
        
end

collision4
x4 = length(randomArrival4);
x4
percentage4 = (collision4/x4)*100 ;
percentage4


collision5 =0;
for n = 1: length(randomArrival5)  
  firstpacketarrival = randomArrival5(n);  
  
  for k = 1: length(randomGBSAA)
   
      if (randomGBSAA(k)>firstpacketarrival && randomGBSAA(k)< (firstpacketarrival+0.000120) )
        
          collision5 = collision5 +1;  
      end
  end 
        
end

collision5
x5 = length(randomArrival5);
x5
percentage5 = (collision5/x5)*100 ;
percentage5

percentage(q,1:5) = [percentage1,percentage2,percentage3,percentage4,percentage5];
X = [x1,x2,x3,x4,x5];
end
%percentage
meanpercentage = mean(percentage);
meanpercentage




% bar(X,meanpercentage);




%%%%%%%%%%%%%%%%% addition for changing the time period %%%%%%%%%%%
%%%%%%%%%%%% 2 updates per second%%%%%%%%%%%%%%%%%%%%%%%%
percent = zeros(1000,5);
aa=0;
bb= 0.5; % RANGE OF THE TIME INTERVAL
randomArrival11 = (bb-aa).*rand(1,1) + aa;
randomArrival22 = (bb-aa).*rand(2,1) + aa;
randomArrival33 = (bb-aa).*rand(3,1) + aa;
randomArrival44 = (bb-aa).*rand(4,1) + aa;
randomArrival55 = (b-a).*rand(5,1) + a;
for w = 1 : 1000


randomGBSAA = RandomGBSAA(aa,bb);

collision11 = 0;
for n = 1: length(randomArrival11)  
  firstpacketarrival = randomArrival11(n);  
  
  for k = 1: length(randomGBSAA)
   
      if (randomGBSAA(k)>firstpacketarrival && randomGBSAA(k)< (firstpacketarrival+0.000120) )
        
          collision11 = collision11 +1;  
      end
  end 
        
end
collision11
x11 = length(randomArrival11);
x11
percentage11 = (collision11/x11)*100 ;
percentage11

collision22=0;
for n = 1: length(randomArrival22)  
  firstpacketarrival = randomArrival22(n);  
  
  for k = 1: length(randomGBSAA)
   
      if (randomGBSAA(k)>firstpacketarrival && randomGBSAA(k)< (firstpacketarrival+0.000120) )
        
          collision22 = collision22 +1;  
      end
  end 
        
end
collision22
x22 = length(randomArrival22);
x22
percentage22 = (collision22/x22)*100 ;
percentage22

collision33 =0;
for n = 1: length(randomArrival33)  
  firstpacketarrival = randomArrival33(n);  
  
  for k = 1: length(randomGBSAA)
   
      if (randomGBSAA(k)>firstpacketarrival && randomGBSAA(k)< (firstpacketarrival+0.000120) )
        
          collision33 = collision33 +1;  
      end
  end 
        
end
collision33
x33 = length(randomArrival33);
x33
percentage33 = (collision33/x33)*100 ;
percentage33

collision44 =0;
for n = 1: length(randomArrival44)  
  firstpacketarrival = randomArrival44(n);  
  
  for k = 1: length(randomGBSAA)
   
      if (randomGBSAA(k)>firstpacketarrival && randomGBSAA(k)< (firstpacketarrival+0.000120) )
        
          collision44 = collision44 +1;  
      end
  end 
        
end
collision44
x44 = length(randomArrival44);
x44
percentage44 = (collision44/x44)*100 ;
percentage44

collision55 =0;
for n = 1: length(randomArrival55)  
  firstpacketarrival = randomArrival55(n);  
  
  for k = 1: length(randomGBSAA)
   
      if (randomGBSAA(k)>firstpacketarrival && randomGBSAA(k)< (firstpacketarrival+0.000120) )
        
          collision55 = collision55 +1;  
      end
  end 
        
end

collision55
x55 = length(randomArrival55);
x55
percentage55 = (collision55/x55)*100 ;
percentage55


percent(w,1:5) = [percentage11,percentage22,percentage33,percentage44,percentage55];
X = [x11,x22,x33,x44,x55];
end
%percentage
meanpercentage2 = mean(percent);
meanpercentage2

%%%%%%%%%%%%% one update per sec%%%%%%%%%%%%%%%%%%%
percent3 = zeros(1000,5);
aaa=0;
bbb= 1; % RANGE OF THE TIME INTERVAL
randomArrival111 = (bbb-aaa).*rand(1,1) + aaa;
randomArrival222 = (bbb-aaa).*rand(2,1) + aaa;
randomArrival333 = (bbb-aaa).*rand(3,1) + aaa;
randomArrival444 = (bbb-aaa).*rand(4,1) + aaa;
randomArrival555 = (b-a).*rand(5,1) + a;
for r = 1 : 1000


randomGBSAA = RandomGBSAA(aaa,bbb);

collision11 = 0;
for n = 1: length(randomArrival111)  
  firstpacketarrival = randomArrival111(n);  
  
  for k = 1: length(randomGBSAA)
   
      if (randomGBSAA(k)>firstpacketarrival && randomGBSAA(k)< (firstpacketarrival+0.000120) )
        
          collision11 = collision11 +1;  
      end
  end 
        
end
collision11
x11 = length(randomArrival111);
x11
percentage11 = (collision11/x11)*100 ;
percentage11

collision22=0;
for n = 1: length(randomArrival222)  
  firstpacketarrival = randomArrival222(n);  
  
  for k = 1: length(randomGBSAA)
   
      if (randomGBSAA(k)>firstpacketarrival && randomGBSAA(k)< (firstpacketarrival+0.000120) )
        
          collision22 = collision22 +1;  
      end
  end 
        
end
collision22
x22 = length(randomArrival222);
x22
percentage22 = (collision22/x22)*100 ;
percentage22

collision33 =0;
for n = 1: length(randomArrival333)  
  firstpacketarrival = randomArrival333(n);  
  
  for k = 1: length(randomGBSAA)
   
      if (randomGBSAA(k)>firstpacketarrival && randomGBSAA(k)< (firstpacketarrival+0.000120) )
        
          collision33 = collision33 +1;  
      end
  end 
        
end
collision33
x33 = length(randomArrival333);
x33
percentage33 = (collision33/x33)*100 ;
percentage33

collision44 =0;
for n = 1: length(randomArrival444)  
  firstpacketarrival = randomArrival444(n);  
  
  for k = 1: length(randomGBSAA)
   
      if (randomGBSAA(k)>firstpacketarrival && randomGBSAA(k)< (firstpacketarrival+0.000120) )
        
          collision44 = collision44 +1;  
      end
  end 
        
end
collision44
x44 = length(randomArrival444);
x44
percentage44 = (collision44/x44)*100 ;
percentage44

collision55 =0;
for n = 1: length(randomArrival555)  
  firstpacketarrival = randomArrival555(n);  
  
  for k = 1: length(randomGBSAA)
   
      if (randomGBSAA(k)>firstpacketarrival && randomGBSAA(k)< (firstpacketarrival+0.000120) )
        
          collision55 = collision55 +1;  
      end
  end 
        
end

collision55
x55 = length(randomArrival555);
x55
percentage55 = (collision55/x55)*100 ;
percentage55


percent3(r,1:5) = [percentage11,percentage22,percentage33,percentage44,percentage55];
X = [x11,x22,x33,x44,x55];
end
%percentage
meanpercentage3 = mean(percent3);
meanpercentage3


% bar(X,meanpercentage2,'r');


bpcombined = [meanpercentage(:), meanpercentage2(:),meanpercentage3(:)];
hb = bar(X, bpcombined, 'grouped');
xlabel('No of Incoming helicopter'); 
ylabel('Collision Prob. (percentage)'); 
title('GBSAA Random Collision Probability'); 
