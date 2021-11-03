function res = findIceCoverage(temp)
    syms x
    eqn = (27-43*(sin(x*pi/180)^2)) + temp-288 ==-2;
    if (259 <= temp) && (temp <= 302) 
        ice_point = double(vpasolve(eqn, x, [0 90]));
    else
        if temp < 259
            ice_point = 0;
        else
            ice_point = 90;
        end
    end

    integral_func = @(y) cos(y*pi/180);

    res = (integral(integral_func, ice_point, 90))/(integral(integral_func, 0,90));

end