
%transmitter
function SignalPower = SignalPowerAnalysis()
latitude = [59.404151,59.404200,59.404642,59.405106,59.405920,59.405565,59.405008,59.405532,59.404800];
longitude = [17.950242,17.947797,17.951540,17.946274,17.948730,17.951507,17.952494,17.950274,17.948022];
tx = txsite('Name','ADS-B Transmitter', ...
        'Latitude', latitude, ...
        'Longitude', longitude, ...
        'TransmitterPower',10, ...
        'TransmitterFrequency',1090e6);

%Reciever sensitivity in dBm
rx = rxsite('Name','Electrum KTH', ...
        'Latitude', 59.404694, ...
        'Longitude',17.949595);
    
k=100;    
signalPowerdBm = sigstrength(rx,tx);
signalPowerwatts = 10.^((signalPowerdBm-30)/10);
 
 SignalPower = repmat(signalPowerwatts,20);
 
%show(tx);
%show(rx);