function state = ExKF_stateEquation( state, control_input, parameters )
    % control_input = [ wx, wy, wz ]'
    angularVelVector = control_input;

    % state = [ roll, pitch, yaw ]'
    D_x = [ 1, 0, 0 ]';
    D_y = [ 0, 1, 0 ]';
    D_z = [ 0, 0, 1 ]';

    Left = [ ( ExKF_rotateYaw( state(3) ) * ExKF_rotatePitch( state(2) ) * D_x ), ( ExKF_rotateYaw( state(3) ) * D_y ), ( D_z ) ];
    Right = ExKF_rotateYaw( state(3) ) * ExKF_rotatePitch( state(2) ) * ExKF_rotateRoll( state(1) );
    dC_os = ( Left \  Right );
    
    angularVelVector_world = dC_os * angularVelVector;
    
    state = state + angularVelVector_world * parameters.dSamplingPeriod;
end