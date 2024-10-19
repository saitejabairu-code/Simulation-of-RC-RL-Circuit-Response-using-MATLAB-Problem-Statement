import numpy as np
import matplotlib.pyplot as plt

def rc_response(R, C, V_in, t):
    return V_in * (1 - np.exp(-t / (R * C)))

if __name__ == "__main__":
    R, C, V_in = 1000, 1e-6, 5  # Resistance, Capacitance, Input Voltage
    t = np.linspace(0, 0.1, 100)  # Time range
    V_out = rc_response(R, C, V_in, t)
    plt.plot(t, V_out)
    plt.xlabel('Time (s)')
    plt.ylabel('Voltage (V)')
    plt.title('RC Circuit Response')
    plt.show()