for L=40:100
      t = dtmfdesign([697,770],L,8000);
      h_1 = t(:,1);  HH_1 = freqz(h_1,1,ww_d);
      stb_index = find(abs(HH_1)>=0.25); 
      stb_right = ww_d(stb_index(1)+length(stb_index)-1); 
      if (2*pi*770/8000>=stb_right)   
          L_min = L;      
          break 
      end
  end