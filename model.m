function [T, Y] = model()
    initial_temp = 230;
    initial_energy = temperatureToEnergy(initial_temp);

    [T, Y] = ode45(@rate_func, [0 200], initial_energy);
end

function dudt = rate_func(~, energy)
    S = 1367.6;
    sigma = 5.67e-8;
    Q = S/4;
    T = energyToTemperature(energy);
    epsilon = findGreenhouseEffect(288);
    alpha = findAlbedo(T);
   
    dudt = Q*(1 - alpha) - (epsilon * sigma * T^4);
end
