# Separation-of-original-signal
Separation of original signal from its echoed one along calculating power and delay of the echo

1- **Custom MATLAB Function to Calculate Determinant of a 2D Matrix** (p1.m)

2- **Implementation of Matrix Inversion Function Using Determinant Calculation** (p2.m)

3- **Comparing Analytical and Convolution-based Output Calculation for Discrete LTI Systems** (p3.md)

4- **Recording and Analyzing a Poet's Verse: Sampling and Analysis Using MATLAB** (p4a.m)

5- **Introduction to Audio Signal Echo and Impulse Response Calculation in an IIR System** (y.wav)

6- **Generating and Storing Pleasant Audio Responses Using Hypothetical Values for Impact** (y_best.wav)

7- **Separation of original signal from its echoed one along calculating power and delay of the echo**: *Estimation of Unknown Coefficients in a System with Linear Operation* (p4b.m)

The proposed method involves initially subtracting the signal $x[n]$ from $y[n]$, leaving only the value $ax[n-n_0]$. Then, utilizing the relation $a=R_{xy}/R_{xx}$, we determine the unknown coefficient, and $n_0$ is also determined as the point where $R_{xy}$ reaches its maximum. (Since in the manual calculation, the index is $n-n_0$ and $n_0$ is derived from the equation $n_0=-R_{xy}$ in MATLAB.) However, considering that the signal $x[n]$ exists in the equation for $y[n]$, there is no need to calculate $R_{xx}$, and we directly compute 'a' from $R_{xy}$ itself. This is done by dividing the maximum value of $R_{xy}$ in the input-related interval by the overall maximum of $R_{xy}$.

$n_0$ = index(max{$R_{xy}$ in relation to input})

$a$ = ${max(R_{xy})} / {max(R_{xy})}$

(This approach is more suitable, as in cases where the signal $x[n]$ includes noise and transforms into $x'[n]$, we lack access to it for calculating $R_{x'x'}$. Hence, we directly employ the input-output correlation.)

