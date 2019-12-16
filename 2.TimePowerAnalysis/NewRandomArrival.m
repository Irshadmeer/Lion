function percentage = NewRandomArrival(NoOfUAV,txPower)
% q=10;
% w= 3000; % RANGE OF THE distances
% randomdistances = ((w-q).*rand(NoOfUAV,1) + q);
%% start new method for finding distances
x1=0;
y1=0;
z1 =0;
radius= 1500;
A = zeros(1,3);
B = zeros(NoOfUAV,3);

for t= 1:NoOfUAV %loop until doing 10000 points inside the circle
A = randomPoints(x1,y1,z1,radius);

B(t,:) = A;% storing points in the matrix

end

% Euclidean distance to point [0,0,0]:
randomdistances = sqrt(sum((B - [0,0,0]).^2, 2));


%% end changes
a=0;
b= 0.161; % RANGE OF THE TIME INTERVAL
randomArrival = (b-a).*rand(NoOfUAV,1) + a;

SignalPower = RecievedSignalPower(txPower,randomdistances);
signalPowerwatts = (10.^((SignalPower)/10))/1000;
%signalPowerwatts
collision=0;
Noise_dB = -93; %dbm
Noise = (10^(Noise_dB/10))/1000; %noise in linear
signalPower = signalPowerwatts ;
Interferance = zeros(length(randomArrival),1);
for n = 1: length(randomArrival)  
  firstpacketarrival = randomArrival(n);  
  for k = 1: length(randomArrival)
  if (k == n)
      continue 
  else
    if (firstpacketarrival>(randomArrival(k) - (0.000120)) && firstpacketarrival< (randomArrival(k)+ 2*(0.000120)) )
        Interferance(n) = Interferance(n) + signalPower(k);
       
    end    
  end
  
  end 
end
sinr = zeros(1000,1);
for n = 1: length(Interferance)  
  sinr(n)= signalPower(n)/(Interferance(n)+Noise);
       if (sinr(n) < 0.5 )
           collision = collision +1; 
       end
        
       
      
end

%collision
%collision2
percentage = (collision/NoOfUAV)*100; 
% matrix = zeros(1000,2);
% matrix(:,1)= signalPower;
% matrix(:,2) =Interferance;
% 
% matrix
% sinr
% mean(sinr)
end