% RC Circuit Transient Response Simulation

% Get user input for RC circuit parameters
R = input('Enter the resistance R (ohms): ');
C = input('Enter the capacitance C (farads): ');

% Ensure R and C are positive
if R <= 0
    error('Resistance must be a positive value.');
end

if C <= 0
    error('Capacitance must be a positive value.');
end

% Time settings
t_end = input('Enter the simulation end time (seconds): ');
dt = input('Enter the time step (seconds): ');

% Ensure valid time step
if dt <= 0 || t_end <= 0
    error('Time step and end time must be positive values.');
end

t = 0:dt:t_end; % Time vector

% Initial voltage across the capacitor
V0 = input('Enter the initial voltage V0 (volts): ');

% Check if initial voltage is valid
if ~isnumeric(V0)
    error('Initial voltage must be a numeric value.');
end

% Calculate the time constant (tau = R * C)
tau = R * C;

% Compute the voltage across the capacitor over time for the RC circuit
V_t = V0 * (1 - exp(-t / tau)); % Transient response of the RC circuit

% Plot the result
figure;
plot(t, V_t, 'r', 'LineWidth', 2);
xlabel('Time (s)');
ylabel('Voltage (V)');
title(sprintf('Transient Response of RC Circuit\nR = %.2f Ω, C = %.2f F', R, C));
grid on;

% Display the time constant on the plot for reference
legend(sprintf('\\tau = %.2f s', tau), 'Location', 'southeast');

% Optionally, display voltage values at specific time intervals
disp('Voltage values at selected time points:');
disp(table(t', V_t', 'VariableNames', {'Time (s)', 'Voltage (V)'}));
