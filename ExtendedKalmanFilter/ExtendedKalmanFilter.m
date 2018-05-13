function x_hat = ExtendedKalmanFilter( control_input, plant_output, parameters, system )
    persistent state;
    persistent variance;

    if( isempty( state ) )
        state = parameters.stateInit;
    end

    if( isempty( variance ) )
        variance = parameters.varianceInit;
    end

    state_predicted = ExKF_predictState( state, control_input, parameters );
    
    system.Ad = ExKF_getParameter_Ad( state, control_input, parameters );
    system.Cd = ExKF_getParameter_Cd( state, parameters );
    
    variance_predicted = ExKF_predictVariance( variance, parameters, system );
    
    KalmanGain = ExKF_getKalmanGain( variance_predicted, parameters, system );
    state = ExKF_estimateState( state_predicted, plant_output, KalmanGain, parameters );
    variance = ExKF_estimateVariance( variance_predicted, KalmanGain, parameters, system );
    
    x_hat = state;
end