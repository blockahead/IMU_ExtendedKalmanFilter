% Controller
parameters.dSamplingPeriod = 0.01;

parameters.m = 1;
parameters.c = 1;
parameters.k = 1;

parameters.Sx = diag( [ 1e-3, 1e-3, 1e-3 ] );
parameters.Sz = 1;
parameters.stateInit = [ 0;0;0 ];
parameters.varianceInit = diag( [ 0.1, 0.1, 0.1 ] );

parameters.stateSize = size( parameters.stateInit );
parameters.inputSize = [ 3, 1 ];
parameters.outputSize = [ 3, 1 ];
parameters.varianceSize = size( parameters.varianceInit );