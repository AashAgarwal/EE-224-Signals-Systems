b.	function [xx,tt] = mychirp (f1, f2, dur, fsamp )
%MYCHIRP	generate a linear-FM chirp signal
	xx= mychirp (f1, f2, dur, fsamp )
	f1= 5000
	f2=500
	dur=3
	fsamp= 11025
	tt=0:3
if (nargin<4)
fsamp = 11025
end
