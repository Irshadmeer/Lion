clear all;
% Urban : UMi  basstation height = 10, w = 200
% Urban : UMa  basstation height = 25, w = 500
% Rural : RMa  basstation height = 35, w = 1732
scenario = 'UMa';
w = 500;
hbs = 25; % height of the base station
fc = 2; % frequency in GHz 
N_devices = 19 ;  %number of participating base stations
total_cases =100000;
%M_devices = 4; %number of participating basestations

SINR_thr = -20:1:0;

% case 1 
p = 0;
q = 0;
M_devices = 6;
gain = zeros(length(SINR_thr),M_devices);
Gain = zeros(length(SINR_thr),total_cases);
hut = 30;

for i = 1: total_cases
for kk = 1 : length(SINR_thr) 
    positive_cases = 0;

    sinr_db = uav_ch_model(scenario,hbs,hut,N_devices,M_devices,fc,w,p,q);
  
    %B = maxk(sinr_db,M_devices); % old one
    B = sinr_db(1:M_devices);
  
    gain(kk,:) = SINR_thr(kk) - B;
    
   
    
    
   %sinr_db 
end
 Gain(:,i) = mean(gain,2);
end 
plot(SINR_thr,mean(Gain,2));
hold on 


%case 2
p = 0.5;
q = 0;
hut = 30;
M_devices = 6;
gain2 = zeros(length(SINR_thr),M_devices);
Gain2 = zeros(length(SINR_thr),total_cases);
for i = 1: total_cases
for kk = 1 : length(SINR_thr) 
   
    sinr_db = uav_ch_model(scenario,hbs,hut,N_devices,M_devices,fc,w,p,q);
  
   
    B = sinr_db(1:M_devices);
  
    gain2(kk,:) = SINR_thr(kk) - B;
    
   
    
    
   %sinr_db 
end
 Gain2(:,i) = mean(gain2,2);
end 
plot(SINR_thr,mean(Gain2,2)); 
 
 
 
%case 3
p = 1;
q = 0;
hut = 30;
M_devices = 6;
gain3 = zeros(length(SINR_thr),M_devices);
Gain3 = zeros(length(SINR_thr),total_cases);
for i = 1: total_cases
for kk = 1 : length(SINR_thr) 
   
    sinr_db = uav_ch_model(scenario,hbs,hut,N_devices,M_devices,fc,w,p,q);
  
   
    B = sinr_db(1:M_devices);
  
    gain3(kk,:) = SINR_thr(kk) - B;
    
   
    
    
   %sinr_db 
end
 Gain3(:,i) = mean(gain3,2);
end 
plot(SINR_thr,mean(Gain3,2)); 
 
 
%case 4
% hut = 120;
% M_devices = 6;
% gain4 = zeros(length(SINR_thr),M_devices);
% Gain4 = zeros(length(SINR_thr),total_cases);
% for i = 1: total_cases
% for kk = 1 : length(SINR_thr) 
%    
%     sinr_db = uav_ch_model(scenario,hbs,hut,N_devices,M_devices,fc,w,p,q);
%   
%    
%     B = sinr_db(1:M_devices);
%   
%     gain4(kk,:) = SINR_thr(kk) - B;
%     
%    
%     
%     
%    %sinr_db 
% end
%  Gain4(:,i) = mean(gain4,2);
% end 
% plot(SINR_thr,mean(Gain4,2)); 
 

%legend({'h_{ut}=30','h_{ut}=60','h_{ut}=90'})
  %legend({'M = 4','M = 6','M = 8','M = 10'})
 legend({'p = 0','p = 0.5','p = 1'})
 hold off