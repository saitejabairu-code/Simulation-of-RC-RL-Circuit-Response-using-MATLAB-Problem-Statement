# Test Cases for RC and RL Circuit Simulation

This document outlines the various test cases used to verify the correctness of the RC and RL circuit transient response simulations. Each test ensures that the simulation behaves as expected for a range of inputs, including edge cases and invalid inputs.

## Test Case 1: Valid Inputs for RC Circuit

**Description**:  
Tests the RC circuit simulation with typical valid values of resistance (R), capacitance (C), initial voltage (V0), and time settings.

- **Inputs**:
  - Resistance (R): 100 ohms
  - Capacitance (C): 0.01 farads
  - Initial voltage (V0): 10 volts
  - Simulation end time (t_end): 5 seconds
  - Time step (dt): 0.1 seconds

- **Expected Output**:  
  The voltage across the capacitor should follow an exponential growth curve, approaching the source voltage as time increases.

## Test Case 2: Invalid Inputs for RC Circuit (Negative Resistance)

**Description**:  
Tests the input validation by providing a negative value for resistance (R).

- **Inputs**:
  - Resistance (R): -100 ohms
  - Capacitance (C): 0.01 farads
  - Initial voltage (V0): 10 volts

- **Expected Output**:  
  The simulation should return an error: `"Resistance must be a positive value."`

## Test Case 3: Valid Inputs for RL Circuit

**Description**:  
Tests the RL circuit simulation with valid values of resistance (R), inductance (L), initial current (I0), and time settings.

- **Inputs**:
  - Resistance (R): 50 ohms
  - Inductance (L): 0.5 henrys
  - Initial current (I0): 5 amps
  - Simulation end time (t_end): 5 seconds
  - Time step (dt): 0.1 seconds

- **Expected Output**:  
  The current in the RL circuit should follow an exponential decay, approaching zero as time increases.

## Test Case 4: Edge Case (Zero Capacitance for RC Circuit)

**Description**:  
Tests the RC circuit with a capacitance value of zero, which is physically invalid.

- **Inputs**:
  - Resistance (R): 100 ohms
  - Capacitance (C): 0 farads
  - Initial voltage (V0): 10 volts

- **Expected Output**:  
  The simulation should return an error: `"Capacitance must be a positive value."`

## Test Case 5: Edge Case (Zero Inductance for RL Circuit)

**Description**:  
Tests the RL circuit with zero inductance, which is an invalid value.

- **Inputs**:
  - Resistance (R): 50 ohms
  - Inductance (L): 0 henrys
  - Initial current (I0): 5 amps

- **Expected Output**:  
  The simulation should return an error: `"Inductance must be a positive value."`

## Test Case 6: Large Time Step

**Description**:  
Tests the simulation with a very large time step, which could lead to inaccurate results due to fewer sampling points.

- **Inputs**:
  - Resistance (R): 100 ohms
  - Capacitance (C): 0.01 farads
  - Initial voltage (V0): 10 volts
  - Simulation end time (t_end): 5 seconds
  - Time step (dt): 2 seconds

- **Expected Output**:  
  The simulation should run but produce a graph that lacks smoothness due to the large time step. A warning may be included in the documentation about choosing appropriate time steps for accuracy.

---

## Conclusion

These test cases ensure that the simulation tool handles a variety of input scenarios, from typical values to edge cases and invalid inputs, with appropriate error handling and correct output behavior.
