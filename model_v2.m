% MODEL V2 - Include Reflectivity
% Variables:
% T - temperature of the earth
% R - Radius of earth
% S - energy flux density
% sigma - Stefan-Boltzmann constant
% alpha - albedo

S = 1367.6;
sigma = 5.67e-8;
Q = S/4;
alpha = .3;

T = (Q*(1-alpha)/sigma)^.25