%clear all
% Random Arrival Model
function percentage = RandomArrival(NoOfUAV,txPower)
q=10;
w= 3000; % RANGE OF THE distances
randomdistances = ((w-q).*rand(NoOfUAV,1) + q);
a=0;
b= 0.161; % RANGE OF THE TIME INTERVAL
randomArrival = (b-a).*rand(NoOfUAV,1) + a;

SignalPower = RecievedSignalPower(txPower,randomdistances);
signalPowerwatts = 10.^((SignalPower-30)/10);
%signalPowerwatts
collision=0;
Noise_dB = -93; %db
Noise = 10^(Noise_dB-30/10); %noise in linear
signalPower = signalPowerwatts ;
I = zeros(length(randomArrival),1);
for n = 1: length(randomArrival)  
  firstpacketarrival = randomArrival(n);  
  for k = n+1: length(randomArrival)

    if (randomArrival(k)>(firstpacketarrival - (0.000120)) && randomArrival(k)< (firstpacketarrival+ 2*(0.000120)) )
        I(n) = I(n) + signalPower(k);
        collision = collision +1; 
    end    
  
  
  end 
end

collision2 =0;
for n = 1: length(randomArrival)  
  firstpacketarrival = randomArrival(n);  
  for k = n+1: length(randomArrival)
      
    if (randomArrival(k)>(firstpacketarrival - (0.000120)) && randomArrival(k)< (firstpacketarrival+ 2*(0.000120)) )
       if (signalPower(n)/(I(n)+Noise) < 0.5 )
           collision2 = collision2 +1; 
       end
        
       
    end       
  end 
end

%collision
%collision2
percentage = (collision2/NoOfUAV)*100 ;
 
  
          