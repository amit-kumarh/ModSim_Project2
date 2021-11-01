function res = findGreenhouseEffect(temp)
    S = 1367.6;
    sigma = 5.67e-8;
    Q = S/4;
    alpha = findAlbedo(temp);
    res = (Q*(1-alpha))/(sigma*temp^4);
end