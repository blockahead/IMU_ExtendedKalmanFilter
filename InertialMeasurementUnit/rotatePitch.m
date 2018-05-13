function C_y = rotatePitch( angle )
    C_y = [
        cos( angle ), 0, sin( angle );
        0, 1, 0;
        -sin( angle ), 0, cos( angle );
    ];
end