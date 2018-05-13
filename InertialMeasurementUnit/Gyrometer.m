function angularVelVector = Gyrometer( attitude_RPY_rad, angularAccelearation_RPY_rad_per_sec )
    D_x = [ 1, 0, 0 ]';
    D_y = [ 0, 1, 0 ]';
    D_z = [ 0, 0, 1 ]';

    Left = [ ( rotateYaw( attitude_RPY_rad(3) ) * rotatePitch( attitude_RPY_rad(2) ) * D_x ), ( rotateYaw( attitude_RPY_rad(3) ) * D_y ), ( D_z ) ];
    Right = rotateYaw( attitude_RPY_rad(3) ) * rotatePitch( attitude_RPY_rad(2) ) * rotateRoll( attitude_RPY_rad(1) );
    dC_OS = ( Left \  Right );
    angularVelVector = dC_OS \ angularAccelearation_RPY_rad_per_sec;
end