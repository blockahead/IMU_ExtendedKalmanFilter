function Ad = ExKF_getParameter_Ad( state, control_input, parameters )
    Ad = zeros( parameters.stateSize(1), parameters.stateSize(1) );
    
    buff = 0.001;
    for cnt = 1:parameters.stateSize(1)
        state_p = state;
        state_n = state;
        state_p(cnt) = state(cnt) + buff;
        state_n(cnt) = state(cnt) - buff;
        Ad(:,cnt) = ( ExKF_stateEquation( state_p, control_input, parameters ) - ExKF_stateEquation( state_n, control_input, parameters ) ) / ( 2 * buff );
    end
end