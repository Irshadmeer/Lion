clear all;
% Urban : UMi  basstation height = 10, w = 200
% Urban : UMa  basstation height = 25, w = 500
% Rural : RMa  basstation height = 35, w = 1732
scenario = 'UMi';
w = 200;
hbs = 10; % height of the base station
fc = 2; % frequency in GHz 
total_cases =100000;


%case 1
hut = 30;
N_devices = 19 ;  %number of participating base stations
positive_cases = 0;

M_devices = 4; %number of participating basestations
percentage = zeros(1,51);
SINR_thr = -50:0.5:0;
q = 0;
p = 0;
for kk = 1 : length(SINR_thr) 
    positive_cases = 0;
for i = 1: total_cases
    sinr_db = uav_ch_model(scenario,hbs,hut,N_devices,M_devices,fc,w,p,q);
  
    %B = maxk(sinr_db,M_devices); % old one
    B = sinr_db(1:M_devices);
  
    
    
    if (B >= SINR_thr(kk))
        
        positive_cases = positive_cases +1;
    
    end 
    
    
   %sinr_db 
end
 percentage(kk) = positive_cases/total_cases;
end
 percentage
 plot(SINR_thr,percentage);
 hold on 
 %set(gca,'XTick',0:10:60)
 %set(gca,'XTickLabel',-60:10:0)
 
 
 
 
 
 
 
 %%%%%% height = 
hut = 30;
N_devices = 19 ;  %number of participating base stations
positive_cases = 0;
M_devices = 4; %number of participating basestations

percentage2 = zeros(1,51);
q = 0;
p = 0.2;
%SINR_thr = -50:1:0;
for kkkk = 1 : length(SINR_thr) 
    positive_cases = 0;
for i = 1: total_cases
    sinr_db = uav_ch_model(scenario,hbs,hut,N_devices,M_devices,fc,w,p,q);
    
    %B = maxk(sinr_db,M_devices);
    B = sinr_db(1:M_devices);
    if (B >= SINR_thr(kkkk))
        
        positive_cases = positive_cases +1;
    
    end 
    
    
   %sinr_db 
end
 percentage2(kkkk) = positive_cases/total_cases;
end
 percentage2
 plot(SINR_thr,percentage2);
 
 
 
 
 
 
 
 
 
 %%%%%% height = 150
hut = 30;
N_devices = 19 ;  %number of participating base stations
positive_cases = 0;
M_devices = 4; %number of participating basestations

percentage3 = zeros(1,51);
q = 0;
p = 0.4;
SINR_thr = -50:1:0;
for kkkk = 1 : length(SINR_thr) 
    positive_cases = 0;
for i = 1: total_cases
    sinr_db = uav_ch_model(scenario,hbs,hut,N_devices,M_devices,fc,w,p,q);
    
    B = maxk(sinr_db,M_devices);
    B = sinr_db(1:M_devices);
    if (B >= SINR_thr(kkkk))
        
        positive_cases = positive_cases +1;
    
    end 
    
    
   sinr_db 
end
 percentage3(kkkk) = positive_cases/total_cases;
end
 percentage3
 plot(SINR_thr,percentage3);
 
 
 
 
 
 
 
 %%%% from 30,60,90 to 120 
 %%%%%%% height = 210
hut = 30;
N_devices = 19 ;  %number of participating base stations
positive_cases = 0;
M_devices = 4; %number of participating basestations

percentage4 = zeros(1,51);
q = 0;
p = 0.6;
%SINR_thr = -50:1:0;
for kkk = 1 : length(SINR_thr) 
    positive_cases = 0;
for i = 1: total_cases
    sinr_db = uav_ch_model(scenario,hbs,hut,N_devices, M_devices,fc,w,p,q);
    
    %B = maxk(sinr_db,M_devices);
    B = sinr_db(1:M_devices);
    if (B >= SINR_thr(kkk))
        
        positive_cases = positive_cases +1;
    
    end 
    
    
   %sinr_db 
end
 percentage4(kkk) = positive_cases/total_cases;
end
 percentage4
 plot(SINR_thr,percentage4);
 
 
 
 
 
 




hut = 30;
N_devices = 19 ;  %number of participating base stations
positive_cases = 0;
M_devices = 4; %number of participating basestations

percentage5 = zeros(1,51);
q = 0;
p = 0.8;
%SINR_thr = -50:1:0;
for kkkk = 1 : length(SINR_thr) 
    positive_cases = 0;
for i = 1: total_cases
    sinr_db = uav_ch_model(scenario,hbs,hut,N_devices, M_devices,fc,w,p,q);
    
    %B = maxk(sinr_db,M_devices);
    B = sinr_db(1:M_devices);
    if (B >= SINR_thr(kkkk))
        
        positive_cases = positive_cases +1;
    
    end 
    
    
   %sinr_db 
end
 percentage5(kkkk) = positive_cases/total_cases;
end
 percentage5
 plot(SINR_thr,percentage5);
 
 
 
 
 
 
 
 
 
 
 hut = 30;
N_devices = 19 ;  %number of participating base stations
positive_cases = 0;
M_devices = 4; %number of participating basestations

percentage6 = zeros(1,51);
q = 0;
p = 0.95;
%SINR_thr = -50:1:0;
for kkkw = 1 : length(SINR_thr) 
    positive_cases = 0;
for i = 1: total_cases
    sinr_db = uav_ch_model(scenario,hbs,hut,N_devices, M_devices,fc,w,p,q);
    
    %B = maxk(sinr_db,M_devices);
    B = sinr_db(1:M_devices);
    if (B >= SINR_thr(kkkw))
        
        positive_cases = positive_cases +1;
    
    end 
    
    
   %sinr_db 
end
 percentage6(kkkw) = positive_cases/total_cases;
end
 percentage6
 plot(SINR_thr,percentage6);
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 %legend({'h_{ut}=30','h_{ut}=60','h_{ut}=90','h_{ut}=120'})
%legend({'M = 4','M = 6','M = 8','M = 10'})
legend({'p = 0.0','p = 0.2','p = 0.4','p = 0.6','p = 0.8','p = 1'})
 hold off