function state_estimated = ExKF_estimateState( state_predicted, plant_output, KalmanGain, parameters )
    output_predicted = ExKF_observationEquation( state_predicted, parameters );
    
    state_estimated = state_predicted + KalmanGain * ( plant_output - output_predicted );
end