function res = findAlbedo(temp)
    term = exp((temp-265)/5);
    res = .7 - .4*(term/(1+term));
end