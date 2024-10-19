RC Circuit Model

Circuit Description:

An RC circuit consists of a resistor (R) and a capacitor (C) connected in series or parallel with a voltage source V0​. The behaviour of this circuit is governed by the charging and discharging of the capacitor.

Governing Equations:

When a voltage V0​ is applied to the circuit, the capacitor begins to charge. 

The voltage across the capacitor VC(t) and the resistor VR​(t) can be described using Kirchhoff's voltage law:


V0 = VC(t) + VR(t)

According to Ohm’s law, the voltage across the resistor is:


VR(t) = I(t)R

The current I(t) through the capacitor can be defined as:


I(t) = C [dVC​(t)​/dt]
Differential Equation:

Substituting these relationships into Kirchhoff’s equation yields the following first-order linear differential equation:


V0 = VC(t) + RC [dVC(t)/dt]​

Rearranging gives:


RC [dVC(t)/dt] + VC(t) = V0
​
Solution:

To solve this equation, we can apply the method of separation of variables. 

The general solution for the voltage across the capacitor during the charging process is:


VC(t) = V0(1− e-1/RC)

This equation shows that as time increases, VC(t) approaches V0​, indicating that the capacitor is fully charged.

Current through the Circuit:

The current I(t) can be derived by differentiating the voltage across the capacitor:


I(t) = C [dVC(t)/dt] = [V0/R] e−1/RC

This equation indicates that the current decreases exponentially as the capacitor charges, ultimately approaching zero.

Discharging Phase:

When the capacitor discharges, the voltage VC(t) can be described as:


VC(t) = [V0] e−1/RC

The current during discharging is given by:


I(t) = [−V0 /R] e−1/RC




RL Circuit Model

Circuit Description:

An RL circuit consists of a resistor (R) and an inductor (L) connected in series with a voltage source V0​. This circuit is characterized by its inductance, which opposes changes in current.

Governing Equations:

When the voltage V0​ is applied, the current I(t) through the inductor begins to increase. The voltage across the inductor VL(t)and the resistor VR(t) is given by:


V0 = VL(t) + VR(t)

Substituting the expressions for VR(t) and VL(t):


VR(t) = I(t)R


VL(t) = L[dI(t)/dt​]

Differential Equation:

This leads to the following differential equation for the current:


V0 = L[dI(t)/dt] + I(t)R

Rearranging gives:


L[dI(t)/dt] + RI(t)=V0 ​

Solution:

The solution for the current I(t) during the charging phase is given by:


I(t) = V0R (1 − e−Rt/L)

This equation indicates that the current asymptotically approaches V0/R​​,the steady-state current.

Voltage across the Inductor:

The voltage across the inductor during the charging phase can be expressed as:

VL(t) = V0 − I(t)R



Summary of Key Equations:

RC Circuit:

Charging Voltage: 
VC(t) = V0(1 − e−1/RC)

Current: 
I(t) = [V0/R] e−1/RC


RL Circuit:

Current:
I(t) = [V0/R] (1 − e−Rt/L)

Voltage across Inductor: 
VL(t) = V0 − I(t)R
