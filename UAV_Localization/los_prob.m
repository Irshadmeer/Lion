function prob_LOS = los_prob(sc,hut,d2d)
%selecting the scenario : rural,urban etc..
switch(sc)
    case 'RMa'
        % selecting rural scenario
       
        if (1.5 < hut) && (hut <= 10)
            
            if (d2d <= 10)
               prob_LOS = 1 ; 
            elseif (d2d > 10)
                
                prob_LOS = exp(-(d2d-10)/1000);
                
            end   
            
        elseif (10 < hut) && (hut <= 40)
                
                    p1 = max((15021 * log10(hut)- 16053),1000);
                    d1 = max((1350.8 * log10(hut)-1602),18);
                    
                    if (d2d > d1)
                    
                    prob_LOS = ((d1/d2d) + exp(-d2d/p1)*(1-(d1/d2d)));
                     
                    else
                        
                            prob_LOS = 1;
                    end
                    
        elseif (hut > 40)
            
                prob_LOS = 1 ; 
        end
        
        
  
    case 'UMa'
        
          if (1.5 < hut) && (hut <= 22.5)
              
%             if(d2d<= 18)
%                prob_LOS = 1 ;
%                
%             elseif(d2d > 18)
%           
%                 prob_LOS = ((18/d2d) + exp(-d2d/63)*(1-(18/d2d)));
%             end
%             
%           elseif (13 < hut) && (hut <= 22.5)
%               
%             if(d2d<= 18)
%                prob_LOS = 1 ;
%                
%             elseif(d2d > 18)
%           
%                 prob_LOS = ((18/d2d) + exp(-d2d/63)*(1-(18/d2d)))*(1+ (((hut-13)/10)^1.5)*(5/4)*((d2d/100)^3)*exp(-d2d/150));
%             end


                prob_LOS = 0 ;
                
                
        elseif (22.5 < hut) && (hut <= 100)
                
                    p1 = 4300*log10(hut) - 3800 ;
                    d1 = max((460 * log10(hut)-700),18);
                    
                    if (d2d > d1)
                    
                    prob_LOS = ((d1/d2d) + exp(-d2d/p1)*(1-(d1/d2d)));
                     
                    else
                        
                            prob_LOS = 1;
                    end
                    
        elseif (hut > 100)
            
                prob_LOS = 1 ; 
            
          end
         
    case 'UMi'
  
         if (1.5 < hut) && (hut <= 22.5)
            if (d2d <= 18)
              prob_LOS = 1 ;
            elseif(d2d > 18)
                prob_LOS = (18/d2d) + exp(-d2d/36)*(1-(18/d2d)) ;
                
            end
            
        elseif (22.5 < hut) && (hut <= 100)
                
                    p1 = 233.98 * log10(hut) - 0.95 ;
                    d1 = max((294.05 * log10(hut)-432.94),18);
                    
                    if (d2d > d1)
                    
                    prob_LOS = ((d1/d2d) + exp(-d2d/p1)*(1-(d1/d2d)));
                     
                    else
                        
                            prob_LOS = 1;
                    end
                    
        elseif (hut > 100)
            
                prob_LOS = 1 ; 
        
          end
        
    otherwise
        disp('invalid')
  
        
end
      
end 
