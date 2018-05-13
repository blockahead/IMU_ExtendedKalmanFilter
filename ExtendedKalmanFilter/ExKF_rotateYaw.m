function C_z = ExKF_rotateYaw( angle )
    C_z = [
        cos( angle ), -sin( angle ), 0;
        sin( angle ), cos( angle ), 0;
        0, 0, 1;
    ];
end