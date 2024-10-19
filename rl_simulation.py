import numpy as np
import matplotlib.pyplot as plt

def rl_response(R, L, V_in, t):
    return (V_in / R) * (1 - np.exp(-R * t / L))

if __name__ == "__main__":
    R, L, V_in = 1000, 0.5, 5  # Resistance, Inductance, Input Voltage
    t = np.linspace(0, 0.1, 100)  # Time range
    I_out = rl_response(R, L, V_in, t)
    plt.plot(t, I_out)
    plt.xlabel('Time (s)')
    plt.ylabel('Current (A)')
    plt.title('RL Circuit Response')
    plt.show()
