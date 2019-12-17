function pathloss = pathloss_los(sc,hut,d2d,d3d,fc)

%fc in GHz and distance in meters
switch(sc)
    case 'RMa'
        % selecting rural scenario
       
        if (1.5 < hut) && (hut <= 10)
            
               pathloss = 1 ; 
            
        elseif (10 < hut) && (hut <= 300) && (d2d <= 10000)
                std_db = 4.2*exp(-0.0046*hut);
                 %rstate = randn('state');
                 %randn('state', d3d);
                 powerLoss_shadowing_db = (randn*std_db+0);
                 %randn('state', rstate);
                
                   pathloss = (max((23.9 - 1.8*log10(hut)),20))*(log10(d3d)) + 20*log10((40*pi*fc)/3) + powerLoss_shadowing_db;
                    
        
        end
        
        

    case 'UMa'
        
          if (1.5 < hut) && (hut <= 22.5)
            
               pathloss = 1 ; 
            
        elseif (22.5 < hut) && (hut <= 300) %% && (d2d <= 4000) relaxing the condition
                 std_db = 4.64*exp(-0.0066*hut);
                 %rstate = randn('state');
                % randn('state', d3d);
                 powerLoss_shadowing_db = (randn*std_db+0);
                % randn('state', rstate);
                 pathloss = 28.0 + 22*log10(d3d) + 20*log10(fc)+ powerLoss_shadowing_db;
          end
         
    case 'UMi'
        
        
        
         if (1.5 < hut) && (hut <= 22.5)
            
               pathloss = 1 ; 
            
        elseif (22.5 < hut) && (hut <= 300) %% && (d2d <= 4000) relaxing the condition
               std_db = max(5*exp(-0.01*hut),2);
                % rstate = randn('state');
                 %randn('state', d3d);
                 powerLoss_shadowing_db = (randn*std_db+0);
                % randn('state', rstate);
              FSPL = 20*log10(d3d) + 20*log10(fc) + 52.45;
              pathloss = max(FSPL, (30.9 + (22.25 -0.5*log10(hut))*log10(d3d) + 20*log10(fc) )) + powerLoss_shadowing_db ;    
        
          end
        
    otherwise
        disp('invalid')
  

     
    

end