function output = ExKF_observationEquation( state, parameters )
    C_os = ExKF_rotateYaw( state(3) ) * ExKF_rotatePitch( state(2) ) * ExKF_rotateRoll( state(1) );
    output = ( C_os )' * [ 0, 0, 9.81 ]';
end