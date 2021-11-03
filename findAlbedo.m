function res = findAlbedo(temp)
    iceCoverage = findIceCoverage(temp) * 100;
    res = 0.00638554216867 * iceCoverage + .2;
end