function C_x = ExKF_rotateRoll( angle )
    C_x = [
        1, 0, 0;
        0, cos( angle ), -sin( angle );
        0, sin( angle ), cos( angle );
    ];
end