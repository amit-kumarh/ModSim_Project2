% PLOTTING E_in vs E_out
% 
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
energyIn = NaN(1, 100);
energyOut = NaN(1, 100);
epsilon = findGreenhouseEffect(288);

for T = 200:300
    alpha = findAlbedo(T);
    epsilon = findGreenhouseEffect(288);
    energyIn(T-199) = Q*(1 - alpha);
    energyOut(T-199) = epsilon * sigma * T^4;
end

clf; hold on; grid on;
plot(200:300, energyIn)
plot(200:300, energyOut)
xlabel('Temperature (K)')
ylabel('Energy (W/m^2)')
legend("Energy in", "Energy Out")
