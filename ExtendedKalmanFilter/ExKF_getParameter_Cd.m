function Cd = ExKF_getParameter_Cd( state, parameters )
    Cd = zeros( parameters.outputSize(1), parameters.stateSize(1) );
    
    buff = 0.001;
    for cnt = 1:parameters.stateSize(1)
        state_p = state;
        state_n = state;
        state_p(cnt) = state(cnt) + buff;
        state_n(cnt) = state(cnt) - buff;
        Cd(:,cnt) = ( ExKF_observationEquation( state_p, parameters ) - ExKF_observationEquation( state_n, parameters ) ) / ( 2 * buff );
    end
end