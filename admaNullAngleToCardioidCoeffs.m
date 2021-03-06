%calculates the weight for weighted addition of front and back cardioids to get
%a resulting pattern with a specific null angle
%input:
	%angle: angle of the pattern null in degree
%output:
	%weight: weight a to calculate the resulting pattern as follows:
	% 		weight*front_cardioid - (1-weight)*back_cardioid = result
function weight = admaNullAngleToCardioidCoeffs(angle)
angle = angle/180*pi;
weight = (1-cos(angle))/2;

%!test
%! assert(eps,0.5,admaNullAngleToCardioidCoeffs(90))

%!test
%! assert(eps,1/3,admaNullAngleToCardioidCoeffs(120))

%!test
%! assert(eps,0,admaNullAngleToCardioidCoeffs(180))
