% RL Circuit Transient Response Simulation

% Get user input for RL circuit parameters
R = input('Enter the resistance R (ohms): ');
L = input('Enter the inductance L (henrys): ');

% Ensure R and L are positive
if R <= 0
    error('Resistance must be a positive value.');
end

if L <= 0
    error('Inductance must be a positive value.');
end

% Time settings
t_end = input('Enter the simulation end time (seconds): ');
dt = input('Enter the time step (seconds): ');

% Ensure valid time step
if dt <= 0 || t_end <= 0
    error('Time step and end time must be positive values.');
end

t = 0:dt:t_end; % Time vector

% Initial current
I0 = input('Enter the initial current I0 (amps): ');

% Calculate the time constant (tau = L / R)
tau = L / R;

% Compute the current over time for the RL circuit
I_t = I0 * exp(-t / tau); % Transient response of the RL circuit

% Plot the result
figure;
plot(t, I_t, 'b', 'LineWidth', 2);
xlabel('Time (s)');
ylabel('Current (A)');
title(['Transient Response of RL Circuit with R = ' num2str(R) ' \Omega, L = ' num2str(L) ' H']);
grid on;

% Display the time constant on the plot for reference
legend(['\tau = ' num2str(tau) ' s'], 'Location', 'northeast');
