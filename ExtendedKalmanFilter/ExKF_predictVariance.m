function variance_predicted = ExKF_predictVariance( variance, parameters, system )
    variance_predicted = system.Ad * variance * system.Ad' + parameters.Sx;
end