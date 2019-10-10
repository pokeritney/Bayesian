%%% ISYE 6420 Bayesian Statistics, SP'19, HW4 %%%
clear all
close all

%% Problem 1(a)

lik = @(theta) 0.6*exp(-theta^2/2) + 0.2*exp(-(theta-5)^2/(2*2^2))
prop = @(theta,s) exp(-theta^2/(2*s^2))
% Parameters for proposal distribution
s=40;

% Metropolis
theta=0;

thetas=[]; % collect generated samples (accepted)

for i=1:10500
    theta_prop=normrnd(0,s);
    
    A=min(1, lik(theta_prop) * prop(theta, s)/(lik(theta)*prop(theta_prop,s)))

    if(rand<A) 
        theta=theta_prop;   
    end
    thetas=[thetas theta];
end

histogram(thetas(501:end), 60)


