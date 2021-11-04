function [time, U] = model_verify(initial_temp, time_span)
    initial_energy = temperatureToEnergy(initial_temp);

    [time, U] = ode45(@rate_func, [0 time_span], initial_energy);

    function dudt = rate_func(time, energy)
        S = 1367.6;
        sigma = 5.67e-8;
        Q = S/4;
        T = energyToTemperature(energy);
        epsilon = findGreenhouseEffect(288)-(.001*time/time_span);
        alpha = findAlbedo(T);
       
        dudt = Q*(1 - alpha) - (epsilon * sigma * T^4);
    end
end


