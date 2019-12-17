function pathloss = pathloss_nlos(sc,hut,d2d,d3d,fc)

switch(sc)
    case 'RMa'
        % selecting rural scenario
       
        if (1.5 < hut) && (hut <= 10)
            
               pathloss = 1 ; 
            
        elseif (10 < hut) && (hut <= 300) % && (d2d <= 10000) relaxing the condition
                 std_db = 6;
                 %rstate = randn('state');
                 %randn('state', d3d);
                 powerLoss_shadowing_db = (randn*std_db+0);
                 %randn('state', rstate);
                
                   pathloss_los = (max((23.9 - 1.8*log10(hut)),20))*(log10(d3d)) + 20*log10((40*pi*fc)/3);
                   pathloss = max(pathloss_los,(-12 + (35-5.3*log10(hut))* log10(d3d)+ 20*log10((40*pi*fc)/3))) + powerLoss_shadowing_db;
                   
                    
        
        end
        
        

    case 'UMa'
        
          if (1.5 < hut) && (hut <= 22.5)
            
               pathloss = 1 ; 
            
        elseif (22.5 < hut) && (hut <= 100) %% && (d2d <= 4000) relaxing this condition
            
                std_db = 6;
                 %rstate = randn('state');
                 %randn('state', d3d);
                 powerLoss_shadowing_db = (randn*std_db+0);
                % randn('state', rstate);
                 pathloss = -17.5 + (46 - 7*log10(hut))*log10(d3d) + 20*log10((40*pi*fc)/3) + powerLoss_shadowing_db;
          end
         
    case 'UMi'
       
        
        
         if (1.5 < hut) && (hut <= 22.5)
            
               pathloss = 1 ; 
            
        elseif (22.5 < hut) && (hut <= 300) %%&& (d2d <= 4000)
                 std_db = 8;
                 %rstate = randn('state');
                 %randn('state', d3d);
                 powerLoss_shadowing_db = (randn*std_db+0);
                 %randn('state', rstate);
                % disp('it is here')
                FSPL = 20*log10(d3d) + 20*log10(fc) + 52.45; 
                 %disp(FSPL)
              pathloss_los = max(FSPL, (30.9 + (22.25 -0.5*log10(hut))*log10(d3d) + 20*log10(fc) ));
               %disp(pathloss_los)
               p0 = (32.4 +(43.2 - 7.6*log10(hut))*log10(d3d)+ 20*log10(fc));
                %disp(p0)
              pathloss = max(pathloss_los, p0) + powerLoss_shadowing_db;
                %disp(pathloss)
          end
        
    otherwise
        disp('invalid')
  

     
    

end