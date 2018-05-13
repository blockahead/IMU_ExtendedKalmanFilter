function state_predicted = ExKF_predictState( state, control_input, parameters )
    state_predicted = ExKF_stateEquation( state, control_input, parameters );
end