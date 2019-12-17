function SINR_dB = uav_ch_model(scenario, hbs, hut, N_devices, M_devices, fc, w,p,q)

% we are considering pointy topped hexagonals
%              
%defing the parameters

R = w/sqrt(3);       % radius of the hexagon or range of the base station
%w = sqrt(3)*R;  % end to end horizantal distance
h = 2*R ;       % end to end vertical distance 
x1 = 0;         % center.x of the center cell
y1 = 0 ;        % center.y of the center cell
%hbs = hbss;        % height of the base station
%hut = hutt;
N =  1 ; 
%fc = 2; % frequency in GHz  
pt = 44;        % transmitted power in dBm
Noise_dB = -95; %dB Noise_a = 10^(Noise_dB/10);
Noise_a = 10^(Noise_dB/10);
%N_devices = 7 ; %number of participating base stations
% defining centers of the hexagons 

center0 = [x1 y1 hbs];                   % center
center1 = [(x1+w) y1 hbs];               % right to center
center2 = [(x1-w) y1 hbs];               % left to center
center3 = [(x1+(w/2)) (y1+(3*h)/4) hbs]; % right top corner
center4 = [(x1-(w/2)) (y1+(3*h)/4) hbs]; % left top corner
center5 = [(x1+(w/2)) (y1-(3*h)/4) hbs]; % right bottom corner
center6 = [(x1-(w/2)) (y1-(3*h)/4) hbs]; % left bottom corner
%%% the 2nd layer of cells
center7 = [(x1+2*w) (y1) hbs]; % right to center
center8 = [(x1-2*w) (y1) hbs]; % left to center

center9 = [(x1+(w*3)/2) (y1 +(3*h)/4) hbs]; % 
center10 = [(x1-(w*3)/2) (y1 +(3*h)/4) hbs]; % 

center11= [(x1+w) (y1+(3*h)/2) hbs]; % 
center12= [(x1-w) (y1+(3*h)/2) hbs]; % 
center13 =[(x1) (y1+(3*h)/2) hbs]; % 

center14 = [(x1+(w*3)/2) (y1-(3*h)/4) hbs]; % left bottom corner
center15 = [(x1-(w*3)/2) (y1-(3*h)/4) hbs]; % left bottom corner

center16 = [(x1+w) (y1-(3*h)/2) hbs]; % left bottom corner
center17 = [(x1-w) (y1-(3*h)/2) hbs]; % left bottom corner
center18 = [(x1) (y1-(3*h)/2) hbs]; % left bottom corner


center = [center0;center1;center2;center3;center4;center5;center6;center7;center8;center9;center10;center11;center12;center13;center14;center15;center16;center17;center18];
% defining a random UAV in the central cell

% vertex of the central cell
v_x = center0(1) + R * cos((1:7)*(pi/3) - pi/6);
v_y = center0(2) + R * sin((1:7)*(pi/3) - pi/6);
%for other cells
v_x1 = center1(1) + R * cos((1:7)*(pi/3) - pi/6);
v_y1 = center1(2) + R * sin((1:7)*(pi/3) - pi/6);
%Generate N random points with square that is 2R by 2R
c_x = R - rand(1, N)*1.5*R;
c_y = R-rand(1, N)*1.5*R;
%There is a command in MATLAB inploygon. 
%The command finds points within a polygon region.
%get the points within the polygon
IN = inpolygon(c_x, c_y, v_x, v_y);
%drop nodes outside the hexagon
%c_x = c_x(IN);
%c_y = c_y(IN);
UAV = [c_x c_y hut];
%choose only N points
%idx = randperm(length(c_x));
%c_x = c_x(idx(1:N));
%c_y = c_y(idx(1:N));


% for plotting cell
%plot(c_x, c_y, 'r*');
%hold on;
%plot(center0(1),center0(2),'b^')



%plot(center1(1),center1(2),'b^')
%plot(center2(1),center2(2),'b^')
%plot(center3(1),center3(2),'b^')
%plot(center4(1),center4(2),'b^')
%plot(center5(1),center5(2),'b^')


%plot(v_x,v_y);
%plot(v_x1,v_y1);
%axis square;
%hold off

d2d = zeros(N_devices,1);
d3d = zeros(N_devices,1);
% calculating the distances 
for i = 1:N_devices
d2d(i) = sqrt((center(i,1) - UAV(1)).^ 2 + (center(i,2) - UAV(2)) .^ 2 );
d3d(i) = sqrt(sum((center(i,:) - UAV).^ 2));
end

%end
% defining scenario :

% Urban : UMi  basstation height = 10
% Urban : UMa  basstation height = 25
% Rural : RMa  basstation height = 35
%scenario = 'UMa';
prob_los = zeros(N_devices,1);
pathloss = zeros(N_devices,1);
recieved_power = zeros(N_devices,1);





% getting the probability :
for k = 1:N_devices 
prob_los(k) = los_prob(scenario, hut, d2d(k));


% recieved_power(k) = pt - pathloss(k);
end 
%prob_los

for kk = 1:N_devices 
    %Using probability for deciding the  Model
  
if(prob_los(kk) > 0.5 && prob_los(kk) <= 1)
    %disp('LOS')
    pathloss(kk) = pathloss_los(scenario,hut,d2d(kk),d3d(kk),fc);
    
elseif(prob_los(kk) <= 0.5 && prob_los(kk) > 0)
    %disp('NLOS')
    pathloss(kk) = pathloss_nlos(scenario,hut,d2d(kk),d3d(kk),fc);
    
end
recieved_power(kk) = pt - pathloss(kk);
end
% pathloss
% recieved_power

%recived_power in linear 
 recieved_power_a = 10.^((recieved_power-30)/10); 
% recieved_power_a
% Noise_a
% %Interference vector

%%%% start - with network ativity %%%% 
I_1 = zeros(N_devices,1);
I_2 = zeros(N_devices,1);
I = zeros(N_devices,1);
 
recieved_power_sorted = sort(recieved_power_a,'descend');

%p = 0.2;
%q = 0;

  for i=1:M_devices
              for j = 1 : M_devices
                     if(i == j)
                      continue
                        else                
                     if (rand(1)>= p)
                          I_1(i) = I_1(i) + recieved_power_sorted(j);
                     end
                         
                      end
               end
  end
   

  for ii=M_devices+1 : N_devices
              for jj = M_devices+1 : N_devices
                     if(ii == jj)
                      continue
                        else                
                     if (rand(1)>= q)
                          I_2(ii) = I_2(ii) + recieved_power_sorted(jj);
                     end
                         
                      end
               end
  end


%%%% end - with network ativity %%%% 

% below code for without the coordeination
% %I = zeros(N_devices,1);
%        
% %Making Interference vector: All basestations that transmit in the same
% %time
%           for iii=1:N_devices
%               for jjj = 1 : N_devices
%                      if(iii == jjj)
%                       continue
%                         else                
%                     
%                           I(iii) = I(iii) + recieved_power_sorted(jjj);
%                       
%                          
%                       end
%                end
%           end
%                     
%          
% %I
I = I+ I_1 +I_2;
for w = 1:N_devices
SINR(w) = recieved_power_a(w)/( I(w) + Noise_a);

end
 SINR_dB = 10*log10(SINR);
%  SINR_dB
%  SINR
end 
 %commulative distribution function
 
 
 
 
 
 
 
 
% Recieved power calculation
 %pr = pt + pathloss;
 
 
 % calculating SINR















