% MODEL V3 - Include Greenhouse Factor
% Variables:
% T - temperature of the earth
% R - Radius of earth
% S - energy flux density
% sigma - Stefan-Boltzmann constant
% alpha - albedo (percentage of incoming energy that is reflected back out)
% epsilon - greenhouse factor (percentage of outcoming energy that can permeate the greenhouse layer
%           As it decreases, the temperature must go up to maintain energy equilibrium)

S = 1367.6;
sigma = 5.67e-8;
Q = S/4;
alpha = .3;

epsilon = findGreenhouseEffect(288)
T = (Q*(1-alpha)/(sigma*epsilon))^.25


