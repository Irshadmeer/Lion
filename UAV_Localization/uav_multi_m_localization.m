clear all;
% Urban : UMi  basstation height = 10, w = 200
% Urban : UMa  basstation height = 25, w = 500
% Rural : RMa  basstation height = 35, w = 1732



scenario = 'RMa';
w = 1732;
hbs = 35; % height of the base station
fc = 0.8; % frequency in GHz 
hut = 90;

%hut = 60;
N_devices = 19 ;  %number of participating base stations
positive_cases = 0;
total_cases =100000;
M_devices = 4; %number of participating basestations
percentage = 0;
SINR_thr = -50:0.5:0;
p = 0;
q = 0;
%for kk = 1  
 positive_cases = 0;
for i = 1: total_cases
    sinr_db = uav_ch_model(scenario,hbs,hut,N_devices,M_devices,fc,w,p,q);
  
    %B = maxk(sinr_db,M_devices); % old one
    B = sinr_db(1:M_devices);
  
    
    
    if (B >= -16)
        
        positive_cases = positive_cases +1;
    
    end 
    
    
   %sinr_db 
end
 percentage = positive_cases/total_cases;
%end
 percentage
%  plot(SINR_thr,percentage);
%  hold on 
 %set(gca,'XTick',0:10:60)
 %set(gca,'XTickLabel',-60:10:0)
 
 %%%%%% height = 
%hut = 60;
N_devices = 19;  %number of participating base stations
positive_cases = 0;
M_devices = 5; %number of participating basestations
total_cases =100000;
percentage2 = 0;
p = 0;
q = 0;
%SINR_thr = -50:1:0;
%for kkk = 1 : length(SINR_thr) 
 positive_cases = 0;
for i = 1: total_cases
    sinr_db = uav_ch_model(scenario,hbs,hut,N_devices,M_devices,fc,w,p,q);
    
    %B = maxk(sinr_db,M_devices);
    B = sinr_db(1:M_devices);
    if (B >= -16)
        
        positive_cases = positive_cases +1;
    
    end 
    
    
   %sinr_db 
end
 percentage2 = positive_cases/total_cases;
%end
 percentage2
%  plot(SINR_thr,percentage2);
 
 
 %%%%%%% height = 150
%hut = 60;
N_devices = 19 ;  %number of participating base stations
positive_cases = 0;
M_devices = 6; %number of participating basestations
total_cases =100000;
percentage3 = 0;
p = 0;
q = 0;
%SINR_thr = -50:1:0;
%for %kkk = 1 : length(SINR_thr) 
positive_cases = 0;
for i = 1: total_cases
    sinr_db = uav_ch_model(scenario,hbs,hut,N_devices,M_devices,fc,w,p,q);
    
    %B = maxk(sinr_db,M_devices);
    B = sinr_db(1:M_devices);
    if (B >= -16)
        
        positive_cases = positive_cases +1;
    
    end 
    
    
   %sinr_db 
end
 percentage3 = positive_cases/total_cases;
%end
 percentage3
 %plot(SINR_thr,percentage3);
 
 
 %%%% from 30,60,90 to 120 
 %%%%%%% height = 210
%hut = 60;
N_devices = 19 ;  %number of participating base stations
positive_cases = 0;
M_devices = 7; %number of participating basestations
total_cases =100000;
percentage4 = 0;
p = 0;
q = 0;
%SINR_thr = -50:1:0;
%for kkk = 1 : length(SINR_thr) 
    positive_cases = 0;
for i = 1: total_cases
    sinr_db = uav_ch_model(scenario,hbs,hut,N_devices, M_devices,fc,w,p,q);
    
    %B = maxk(sinr_db,M_devices);
    B = sinr_db(1:M_devices);
    if (B >= -16)
        
        positive_cases = positive_cases +1;
    
    end 
    
    
   %sinr_db 
end
 percentage4 = positive_cases/total_cases;
%end
 percentage4
 

 %hut = 60;
N_devices = 19 ;  %number of participating base stations
positive_cases = 0;
M_devices = 8; %number of participating basestations
total_cases =100000;
percentage5 = 0;
p = 0;
q = 0;
%SINR_thr = -50:1:0;
%for kkk = 1 : length(SINR_thr) 
    positive_cases = 0;
for i = 1: total_cases
    sinr_db = uav_ch_model(scenario,hbs,hut,N_devices, M_devices,fc,w,p,q);
    
    %B = maxk(sinr_db,M_devices);
    B = sinr_db(1:M_devices);
    if (B >= -16)
        
        positive_cases = positive_cases +1;
    
    end 
    
    
   %sinr_db 
end
 percentage5 = positive_cases/total_cases;
%end
 percentage5
% plot(SINR_thr,percentage4);
  %legend({'h_{ut}=30','h_{ut}=60','h_{ut}=90','h_{ut}=120'})
 %legend({'M = 4','M = 6','M = 8','M = 10'})
 %legend({'p = 0.2','p = 0.4','p = 0.6','p = 0.8'})
 
 scenario1_percent = [percentage,percentage2,percentage3,percentage4,percentage5];

 
 
 
 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 2nd scenario
 %%%%%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
scenario = 'RMa';
w = 1732;
hbs = 35; % height of the base station
fc = 0.8; % frequency in GHz 
hut = 60;


%hut = 60;
N_devices = 19 ;  %number of participating base stations
positive_cases = 0;
total_cases =100000;
M_devices = 4; %number of participating basestations
percentage = 0;
SINR_thr = -50:0.5:0;
p = 0;
q = 0;
%for kk = 1  
    positive_cases = 0;
for i = 1: total_cases
    sinr_db = uav_ch_model(scenario,hbs,hut,N_devices,M_devices,fc,w,p,q);
  
    %B = maxk(sinr_db,M_devices); % old one
    B = sinr_db(1:M_devices);
  
    
    
    if (B >= -16)
        
        positive_cases = positive_cases +1;
    
    end 
    
    
   %sinr_db 
end
 percentage = positive_cases/total_cases;
%end
 percentage
%  plot(SINR_thr,percentage);
%  hold on 
 %set(gca,'XTick',0:10:60)
 %set(gca,'XTickLabel',-60:10:0)
 
 %%%%%% height = 
%hut = 60;
N_devices = 19;  %number of participating base stations
positive_cases = 0;
M_devices = 5; %number of participating basestations
total_cases =100000;
percentage2 = 0;
p = 0;
q = 0;
%SINR_thr = -50:1:0;
%for kkk = 1 : length(SINR_thr) 
    positive_cases = 0;
for i = 1: total_cases
    sinr_db = uav_ch_model(scenario,hbs,hut,N_devices,M_devices,fc,w,p,q);
    
    %B = maxk(sinr_db,M_devices);
    B = sinr_db(1:M_devices);
    if (B >= -16)
        
        positive_cases = positive_cases +1;
    
    end 
    
    
   %sinr_db 
end
 percentage2 = positive_cases/total_cases;
%end
 percentage2
%  plot(SINR_thr,percentage2);
 
 
 %%%%%%% height = 150
%hut = 60;
N_devices = 19 ;  %number of participating base stations
positive_cases = 0;
M_devices = 6; %number of participating basestations
total_cases =100000;
percentage3 = 0;
p = 0;
q = 0;
%SINR_thr = -50:1:0;
%for %kkk = 1 : length(SINR_thr) 
    positive_cases = 0;
for i = 1: total_cases
    sinr_db = uav_ch_model(scenario,hbs,hut,N_devices,M_devices,fc,w,p,q);
    
    %B = maxk(sinr_db,M_devices);
    B = sinr_db(1:M_devices);
    if (B >= -16)
        
        positive_cases = positive_cases +1;
    
    end 
    
    
   %sinr_db 
end
 percentage3 = positive_cases/total_cases;
%end
 percentage3
 %plot(SINR_thr,percentage3);
 
 
 %%%% from 30,60,90 to 120 
 %%%%%%% height = 210
%hut = 60;
N_devices = 19 ;  %number of participating base stations
positive_cases = 0;
M_devices = 7; %number of participating basestations
total_cases =100000;
percentage4 = 0;
p = 0;
q = 0;
%SINR_thr = -50:1:0;
%for kkk = 1 : length(SINR_thr) 
    positive_cases = 0;
for i = 1: total_cases
    sinr_db = uav_ch_model(scenario,hbs,hut,N_devices, M_devices,fc,w,p,q);
    
    %B = maxk(sinr_db,M_devices);
    B = sinr_db(1:M_devices);
    if (B >= -16)
        
        positive_cases = positive_cases +1;
    
    end 
    
    
   %sinr_db 
end
 percentage4 = positive_cases/total_cases;
%end
 percentage4
 

 %hut = 60;
N_devices = 19 ;  %number of participating base stations
positive_cases = 0;
M_devices = 8; %number of participating basestations
total_cases =100000;
percentage5 = 0;
p = 0;
q = 0;
%SINR_thr = -50:1:0;
%for kkk = 1 : length(SINR_thr) 
    positive_cases = 0;
for i = 1: total_cases
    sinr_db = uav_ch_model(scenario,hbs,hut,N_devices, M_devices,fc,w,p,q);
    
    %B = maxk(sinr_db,M_devices);
    B = sinr_db(1:M_devices);
    if (B >= -16)
        
        positive_cases = positive_cases +1;
    
    end 
    
    
   %sinr_db 
end
 percentage5 = positive_cases/total_cases;
%end
 percentage5
% plot(SINR_thr,percentage4);
  %legend({'h_{ut}=30','h_{ut}=60','h_{ut}=90','h_{ut}=120'})
 %legend({'M = 4','M = 6','M = 8','M = 10'})
 %legend({'p = 0.2','p = 0.4','p = 0.6','p = 0.8'})
 
 scenario2_percent = [percentage,percentage2,percentage3,percentage4,percentage5];

 
 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 3rd scenario%%%%%%%%%&%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
scenario = 'RMa';
w = 1732;
hbs = 35; % height of the base station
fc = 0.8; % frequency in GHz  
hut = 30;

%hut = 60;
N_devices = 19 ;  %number of participating base stations
positive_cases = 0;
total_cases =100000;
M_devices = 4; %number of participating basestations
percentage = 0;
SINR_thr = -50:0.5:0;
p = 0;
q = 0;
%for kk = 1  
    positive_cases = 0;
for i = 1: total_cases
    sinr_db = uav_ch_model(scenario,hbs,hut,N_devices,M_devices,fc,w,p,q);
  
    %B = maxk(sinr_db,M_devices); % old one
    B = sinr_db(1:M_devices);
  
    
    
    if (B >= -16)
        
        positive_cases = positive_cases +1;
    
    end 
    
    
   %sinr_db 
end
 percentage = positive_cases/total_cases;
%end
 percentage
%  plot(SINR_thr,percentage);
%  hold on 
 %set(gca,'XTick',0:10:60)
 %set(gca,'XTickLabel',-60:10:0)
 
 %%%%%% height = 
%hut = 60;
N_devices = 19;  %number of participating base stations
positive_cases = 0;
M_devices = 5; %number of participating basestations
total_cases =100000;
percentage2 = 0;
p = 0;
q = 0;
%SINR_thr = -50:1:0;
%for kkk = 1 : length(SINR_thr) 
    positive_cases = 0;
for i = 1: total_cases
    sinr_db = uav_ch_model(scenario,hbs,hut,N_devices,M_devices,fc,w,p,q);
    
    %B = maxk(sinr_db,M_devices);
    B = sinr_db(1:M_devices);
    if (B >= -16)
        
        positive_cases = positive_cases +1;
    
    end 
    
    
   %sinr_db 
end
 percentage2 = positive_cases/total_cases;
%end
 percentage2
%  plot(SINR_thr,percentage2);
 
 
 %%%%%%% height = 150
%hut = 60;
N_devices = 19 ;  %number of participating base stations
positive_cases = 0;
M_devices = 6; %number of participating basestations
total_cases =100000;
percentage3 = 0;
p = 0;
q = 0;
%SINR_thr = -50:1:0;
%for %kkk = 1 : length(SINR_thr) 
    positive_cases = 0;
for i = 1: total_cases
    sinr_db = uav_ch_model(scenario,hbs,hut,N_devices,M_devices,fc,w,p,q);
    
    %B = maxk(sinr_db,M_devices);
    B = sinr_db(1:M_devices);
    if (B >= -16)
        
        positive_cases = positive_cases +1;
    
    end 
    
    
   %sinr_db 
end
 percentage3 = positive_cases/total_cases;
%end
 percentage3
 %plot(SINR_thr,percentage3);
 
 
 %%%% from 30,60,90 to 120 
 %%%%%%% height = 210
%hut = 60;
N_devices = 19 ;  %number of participating base stations
positive_cases = 0;
M_devices = 7; %number of participating basestations
total_cases =100000;
percentage4 = 0;
p = 0;
q = 0;
%SINR_thr = -50:1:0;
%for kkk = 1 : length(SINR_thr) 
    positive_cases = 0;
for i = 1: total_cases
    sinr_db = uav_ch_model(scenario,hbs,hut,N_devices, M_devices,fc,w,p,q);
    
    %B = maxk(sinr_db,M_devices);
    B = sinr_db(1:M_devices);
    if (B >= -16)
        
        positive_cases = positive_cases +1;
    
    end 
    
    
   %sinr_db 
end
 percentage4 = positive_cases/total_cases;
%end
 percentage4
 

% hut = 60;
N_devices = 19 ;  %number of participating base stations
positive_cases = 0;
M_devices = 8; %number of participating basestations
total_cases =100000;
percentage5 = 0;
p = 0;
q = 0;
%SINR_thr = -50:1:0;
%for kkk = 1 : length(SINR_thr) 
    positive_cases = 0;
for i = 1: total_cases
    sinr_db = uav_ch_model(scenario,hbs,hut,N_devices, M_devices,fc,w,p,q);
    
    %B = maxk(sinr_db,M_devices);
    B = sinr_db(1:M_devices);
    if (B >= -16)
        
        positive_cases = positive_cases +1;
    
    end 
    
    
   %sinr_db 
end
 percentage5 = positive_cases/total_cases;
%end
 percentage5
% plot(SINR_thr,percentage4);
  %legend({'h_{ut}=30','h_{ut}=60','h_{ut}=90','h_{ut}=120'})
 %legend({'M = 4','M = 6','M = 8','M = 10'})
 %legend({'p = 0.2','p = 0.4','p = 0.6','p = 0.8'})
 
 scenario3_percent = [percentage,percentage2,percentage3,percentage4,percentage5];
 
 
  %%%% combined bar graph 
 M = [4,5,6,7,8];
 bpcombined = [scenario1_percent(:), scenario2_percent(:), scenario3_percent(:)];
 
 bar(M,bpcombined, 'grouped');
  legend({'h_{ut}=90','h_{ut}=60','h_{ut}=30'})
 
 