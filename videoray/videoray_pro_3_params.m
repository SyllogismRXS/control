%==============================================================================
% Title  : VideoRay Pro III Dynamics Model Coefficients / Parameters
% Author : Kevin DeMarco <demarco@gatech.edu> 
%        : http://www.kevindemarco.com
% Date   : June 7, 2013
% Notes  : 1. The coefficients for this model were obtained from Wei Wang's 
%        : thesis, "Autonomous Control of a Differential Thrust Micro ROV," 
%        : page 19.
%        :
%        : 2. Coefficients used were experimental, unless only the 
%        : theoretical results were available.
%==============================================================================

% Added Mass Terms
global X_udot Y_vdot Z_wdot N_rdot;
X_udot = 1.94; % inertia matrix M (m11)
Y_vdot = 6.05; % inertia matrix M (m22)
Z_wdot = 3.95; % m33
N_rdot = 1.18e-2; % vehicle's motion of inertia about z-axis
                  % (6,6) entry of the vehicle inertia Matrix M

% Linear Drag Coefficients
global Xu Yv Nr Zw
Xu = -0.95;
Yv = -5.87;
Nr = -0.023;
Zw = -3.70;

% Quadratic Drag Coefficients
global Xuu Yvv Nrr Zww
Xuu = -6.04;
Yvv = -30.73;
Nrr = -0.45;
Zww = -26.36;

global Ct_forw Ct_back Ct_vert_forw Ct_vert_back
Ct_forw = 0.026667;
Ct_back = 0.026667;
Ct_vert_forw = 0.026667;
Ct_vert_back = 0.026667;

%[TODO] : understand convertion from input u to Ct
% Vertical Thruster Coefficients
%global Ct_vert_forw = 1.19e-4;
%global Ct_vert_back = 7.53e-5;

%% Horizontal Thruster Coefficients
%global Ct_forw = 2.59e-4;
%global Ct_back = 1.01e-4;
%
% Input thruster saturation limits
global u_saw_low u_sat_high
u_sat_low = -150;
u_sat_high = 150;
