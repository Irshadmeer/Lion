NoOfUAV = 1000;
a=1582;
b= 185200; % RANGE OF THE TIME INTERVAL
randomdistances = sort((b-a).*rand(NoOfUAV,1) + a);
SignalPower1 = RecievedSignalPower(1,randomdistances);
SignalPower2 = RecievedSignalPower(0.1,randomdistances);
SignalPower3 = RecievedSignalPower(0.05,randomdistances);
SignalPower4 = RecievedSignalPower(0.01,randomdistances);
SignalPower1
y1 = SignalPower1;
semilogx(randomdistances,y1)
title('Combine Plots')
xlabel('Seperation,NM'); 
ylabel('Signal level,dBm'); 

hold on
y2 = SignalPower2;
semilogx(randomdistances,y2)
y3 = SignalPower3;
semilogx(randomdistances,y3)
y4 = SignalPower4;
semilogx(randomdistances,y4)
hold off

SignalPower
plot(randomdistances,SignalPower,'r');
%xlim([0 length(randomdistances)])
%ylim([-100 -60])
grid on
grid minor