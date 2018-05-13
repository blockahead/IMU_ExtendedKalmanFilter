function variance_estimated = ExKF_estimateVariance( variance_predicted, KalmanGain, parameters, system )
    variance_estimated = ( eye( parameters.varianceSize ) - KalmanGain * system.Cd ) * variance_predicted;
end