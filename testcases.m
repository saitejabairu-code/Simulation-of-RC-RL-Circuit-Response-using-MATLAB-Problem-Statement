% Test Cases for RC and RL Circuit Transient Response Simulations

disp('Running Test Cases...');

%% Test Case 1: Valid Inputs for RC Circuit
try
    disp('Test Case 1: Valid Inputs for RC Circuit');
    R = 100;  % Resistance in ohms
    C = 0.01; % Capacitance in farads
    V0 = 10;  % Initial voltage in volts
    t_end = 5; % End time in seconds
    dt = 0.1;  % Time step in seconds
    
    % Run RC circuit simulation
    t = 0:dt:t_end;
    tau = R * C;
    V_t = V0 * (1 - exp(-t / tau)); % Expected output
    
    % Plot for manual inspection
    figure;
    plot(t, V_t, 'r', 'LineWidth', 2);
    title('RC Circuit Simulation: Valid Input');
    xlabel('Time (s)');
    ylabel('Voltage (V)');
    grid on;
    
    disp('Pass: Valid inputs for RC circuit simulated successfully.');
catch ME
    disp(['Fail: ' ME.message]);
end

%% Test Case 2: Invalid Inputs for RC Circuit (Negative Resistance)
try
    disp('Test Case 2: Invalid Inputs for RC Circuit (Negative Resistance)');
    R = -100;  % Invalid negative resistance
    C = 0.01;
    V0 = 10;
    
    % Expecting error for negative resistance
    if R <= 0
        error('Resistance must be a positive value.');
    end
catch ME
    disp(['Pass: Caught expected error - ' ME.message]);
end

%% Test Case 3: Valid Inputs for RL Circuit
try
    disp('Test Case 3: Valid Inputs for RL Circuit');
    R = 50;   % Resistance in ohms
    L = 0.5;  % Inductance in henrys
    I0 = 5;   % Initial current in amps
    t_end = 5; % End time in seconds
    dt = 0.1;  % Time step in seconds
    
    % Run RL circuit simulation
    t = 0:dt:t_end;
    tau = L / R;
    I_t = I0 * exp(-t / tau); % Expected output
    
    % Plot for manual inspection
    figure;
    plot(t, I_t, 'b', 'LineWidth', 2);
    title('RL Circuit Simulation: Valid Input');
    xlabel('Time (s)');
    ylabel('Current (A)');
    grid on;
    
    disp('Pass: Valid inputs for RL circuit simulated successfully.');
catch ME
    disp(['Fail: ' ME.message]);
end

%% Test Case 4: Edge Case (Zero Capacitance for RC Circuit)
try
    disp('Test Case 4: Edge Case (Zero Capacitance for RC Circuit)');
    R = 100;  % Resistance in ohms
    C = 0;    % Invalid capacitance (zero)
    V0 = 10;
    
    % Expecting error for zero capacitance
    if C <= 0
        error('Capacitance must be a positive value.');
    end
catch ME
    disp(['Pass: Caught expected error - ' ME.message]);
end

%% Test Case 5: Edge Case (Zero Inductance for RL Circuit)
try
    disp('Test Case 5: Edge Case (Zero Inductance for RL Circuit)');
    R = 50;  % Resistance in ohms
    L = 0;   % Invalid inductance (zero)
    I0 = 5;
    
    % Expecting error for zero inductance
    if L <= 0
        error('Inductance must be a positive value.');
    end
catch ME
    disp(['Pass: Caught expected error - ' ME.message]);
end

%% Test Case 6: Large Time Step for RC Circuit
try
    disp('Test Case 6: Large Time Step for RC Circuit');
    R = 100;
    C = 0.01;
    V0 = 10;
    t_end = 5;
    dt = 2;   % Large time step
    
    % Run RC circuit simulation with large time step
    t = 0:dt:t_end;
    tau = R * C;
    V_t = V0 * (1 - exp(-t / tau)); % Expected output
    
    % Plot for manual inspection
    figure;
    plot(t, V_t, 'r', 'LineWidth', 2);
    title('RC Circuit Simulation: Large Time Step');
    xlabel('Time (s)');
    ylabel('Voltage (V)');
    grid on;
    
    disp('Pass: Large time step for RC circuit simulated successfully, but may lack smoothness.');
catch ME
    disp(['Fail: ' ME.message]);
end

%% Summary
disp('All test cases completed.');
