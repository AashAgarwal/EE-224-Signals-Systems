function keys = dtmfrun(xx,L,fs)

%DTMFRUN keys = dtmfrun(xx,L,fs)
% returns the list of key names found in xx.
% keys = array of characters, i.e., the decoded key names
%
% Inputs:
%   xx = DTMF waveform
%   L = filter length
%   fs = sampling freq
%

% Initialize key arrays and frequencies
dtmf.keys = ...
['1','2','3','A';
 '4','5','6','B';
 '7','8','9','C';
 '*','0','#','D'];

center_freqs = [697,770,852,941,1209,1336,1477,1633];

hh = dtmfdesign(center_freqs,L,fs );

[nstart,nstop] = dtmfcut(xx,fs); %<--Find the beginning and end of tone bursts

keys = [];
M=zeros(1,8);

for kk=1:length(nstart)
    x_seg = xx(nstart(kk):nstop(kk)); 
    for i=1:8
        M(i)=dtmfscore(x_seg, hh(:,i));
    end
    ind=find(M==1);
    
    if (length(ind)>2)
       keys = [keys,'-1'];
    else
        row_ind = find(M(1:4)==1);
        col_ind = find(M(5:8)==1);
        keys = [keys,dtmf.keys(row_ind,col_ind)];
    end;
end
end