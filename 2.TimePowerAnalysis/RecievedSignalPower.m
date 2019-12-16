
function recievedPower = RecievedSignalPower(transmitPower,distance)
Distance=distance;
PTx = transmitPower; %watt
recievedPower = zeros(length(Distance),1);
%%%%Parameters Setting%%%%%
LightSpeedC=3e8;%speed of light
Adsb_freq=1090*1000000;% fresquency of ADS-B        
Freq=Adsb_freq;
TXAntennaGain=1; %db
RXAntennaGain=9; %dbi 
Dref=1; %Meter
SignalTransferLoss = 0; % 3dbi
PathLossExponent=2;   %Line Of sight

%%%%%%   FRIIS Equation %%%%%%%%%
% Friis free space propagation model:
%        Pt * Gt * Gr * (Wavelength^2)
%  Pr = --------------------------
%        (4 *pi * d)^2 * L
Wavelength=LightSpeedC/Freq;
PTxdBm=10*log10(PTx*1000);
M = Wavelength / (4 * pi * Dref);
Pr0 = PTxdBm + TXAntennaGain + RXAntennaGain - (20*log10(1/M)) - SignalTransferLoss ;

for i = 1 : length(Distance)
recievedPower(i,1) = Pr0-(10*PathLossExponent * log10(Distance(i)/Dref));
end

end


%sigma=6;%Sigma from 6 to 12 %Principles of communication...
%systems simulation with wireless application P.548
%mean=0;
% log normal shadowing radio propagation model:
% Pr0 = friss(d0)
% Pr(db) = Pr0(db) - 10*n*log(d/d0) + X0
% where X0 is a Gaussian random variable with zero mean and a variance in db
%        Pt * Gt * Gr * (lambda^2)   d0^passlossExp    (X0/10)
%  Pr = --------------------------*-----------------*10
%        (4 *pi * d0)^2 * L          d^passlossExp
% get power loss by adding a log-normal random variable (shadowing)
% the power loss is relative to that at reference distance d0
%  reset rand does influcence random
%applied normal shadowing below
% rstate = randn('state');
% randn('state', Distance);
% %GaussRandom=normrnd(0,6)%mean+randn*sigma;    %Help on randn
% GaussRandom= (randn*0.1+0);
% %disp(GaussRandom);
% Pr = Pr0-(10*PathLossExponent* log10(Distance/Dref))+ GaussRandom
% randn('state', rstate);