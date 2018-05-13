function C_y = ExKF_rotatePitch( angle )
    C_y = [
        cos( angle ), 0, sin( angle );
        0, 1, 0;
        -sin( angle ), 0, cos( angle );
    ];
end