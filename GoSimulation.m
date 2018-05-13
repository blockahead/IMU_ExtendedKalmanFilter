close all;
clc;
clear;

addpath( 'ExtendedKalmanFilter' );
addpath( 'InertialMeasurementUnit' );

dSamplingPeriod = 0.01;
SimTime = 40;

% Go simulation
sim( 'IMU_ExtendedKalmanFilter_model', SimTime );

% Plotting
figure( 'Name', 'State comparison' );

% figure_titles = [ 'Roll', 'Pitch', 'Yaw' ];
figure_titles = [ 
    cellstr( 'Roll' );
    cellstr( 'Pitch' );
    cellstr( 'Yaw' );
];

state_length = parameters.stateSize(1);

for cnt = 1:state_length
    subplot( state_length, 1, cnt ); hold on;

    plot( TrueState.Time, TrueState.Data(:,cnt), 'Color', [0.0,0.0,1.0] );
    plot( EstimatedState.Time, EstimatedState.Data(cnt,:), 'Color', [1.0,0.0,0.0] );
    legend( 'Truth', 'Estimate' );
    title( figure_titles(cnt) );
end
