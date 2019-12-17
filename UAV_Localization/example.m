A = [ 0 10 20 30 40 50 60 70 80 90 100 ];
recieved_power_sorted = sort(A,'descend')
N_devices = length(recieved_power_sorted);
M_devices = 4;
I_1 = zeros(N_devices,1);
I_2 = zeros(N_devices,1);
I = zeros(N_devices,1);
p=0.9;
for i= 1:M_devices
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
   I_1

  for ii=M_devices+1 : N_devices
              for jj = M_devices+1 : N_devices
                     if(ii == jj)
                      continue
                        else                
                   
                          I_2(ii) = I_2(ii) + recieved_power_sorted(jj);
                   
                         
                      end
               end
  end
  I_2
%     for iii= M_devices+1:N_devices
%               for jjj = 1 : N_devices
%                      if(iii == jjj)
%                       continue
%                         else                
%                      % here we can apply the condition if they are
%                      % simulatanously transmitting the signals.
%                           I(iii) = I(iii) + recieved_power_sorted(jjj);
%                       
%                          
%                       end
%                end
%           end

  
 I = I+ I_1 +I_2