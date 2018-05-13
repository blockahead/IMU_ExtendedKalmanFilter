function KalmanGain = ExKF_getKalmanGain( variance_predicted, parameters, system )
    KalmanGain = ( variance_predicted * system.Cd' ) / ( system.Cd * variance_predicted * system.Cd' + parameters.Sz );
end