function randomGBSAA = randomGBSAA()
a=0.000000;
b= 0.160999; % RANGE OF THE TIME INTERVAL
randomArrival = (b-a).*rand(1000,1) + a;
%x = sort((b-a)*rand(n,1)+a,'ascend' or 'descend');
%randomArrival
for n = 1: length(randomArrival)  
  firstpacketarrival = randomArrival(n);  
  for k = n+1 : length(randomArrival)
    if (randomArrival(k)>firstpacketarrival && randomArrival(k)< (firstpacketarrival+0.000120) )
       
        randomArrival(k)= 0;
         
    end
        
  end
end
randomGBSAA = randomArrival(randomArrival ~= 0);
%randomGBSS
%format SHORT
%disp(randomGBSS)