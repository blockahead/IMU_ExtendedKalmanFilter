function accVector = Accelerometer( attitude_RPY_rad )
    C_os = rotateYaw( attitude_RPY_rad(3) ) * rotatePitch( attitude_RPY_rad(2) ) * rotateRoll( attitude_RPY_rad(1) );
    accVector = C_os' * gravityVector();
end