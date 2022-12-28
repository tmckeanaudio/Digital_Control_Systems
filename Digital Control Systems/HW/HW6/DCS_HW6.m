%% Digital Control Systems Homework #6
%% Problem 1
% Problem 7.5-4 of the textbook parts (a) and (c)
% 
% 
% 
% *(a) Write the closed-loop system characteristic equation*
% 
% We are given the $z$-transform of the Open-Loop System which is 
% 
% $$G(z) = \frac{0.01873z +0.01752}{(z-1)(z-0.8187)}$$
% 
% We determine the closed-llop system characteristic equation by solving: $1+K\overline{GH}(z) 
% = 0$
% 
% $$GH(z) = \frac{0.01873z +0.01752}{(z-1)(z-0.8187)} (0.07)$$
% 
% $$GH(z) = \frac{0.0013111z +0.0011226}{z^2 -1.8187 +0.8187} $$
% 
% Then making the substitution for the system characteristic equation is:
% 
% $$1 + K\left[\frac{0.0013111z +0.0011226}{z^2 -1.8187 +0.8187}\right] = 0$$
% 
% $$z^2 -1.8187z +0.8187 + 0.0013111Kz +0.001226K = 0$$
% 
% $$z^2 -(1.8187 - 0.0013111K)z +0.8187+0.001226K = 0$$
% 
% Thus, the system characteristic equation is:
% 
% $$z^2 -(1.8187 - 0.0013111K)z +0.8187+0.001226K = 0$$
% 
% *(b) Use Routh-Hurwitz criterion to determine the range of* $K$ *for stability*
% 
% Use MATLAB to convert from $z$-plane to $w$-plane via bilinear transformation

T = 0.1;
numz = [0.0013111 0.0012264]; 
denomz = [1 -1.8187 0.8187];
GHz = tf(numz,denomz,T)
Gw = d2c(GHz,'tustin')
%% 
% Then the characteristic equation in terms of the $w$-plane is 
% 
% $$1+K\overline{GH}(w) = (1 - 0.00002329K)w^2 +(1.994-0.01349K)w + 0.279K = 
% 0$$
% 
% Then we can construct the Routh array as 
% 
% $$\left\lbrack \begin{array}{c}w^2 \\w^1 \\w^0 \end{array}\right\rbrack \left\lbrack 
% \begin{array}{cc}1-0\ldotp 00002329K & \\1\ldotp 994-0\ldotp 01349K & \\0\ldotp 
% 279K & \end{array}\right\rbrack \to \left\lbrack \begin{array}{c}K<42936\ldotp 
% 9\\K<147\ldotp 8\\K>0\end{array}\right\rbrack$$
% 
% Thus, $K$ is in the range of $\rightarrow$ $0 < K < 147.8$
% 
% *(c) Check the results of part (b) using the Jury test*
% 
% Using the closed-loop system characteristic equation from before, $z^2 -(1.8187 
% - 0.0013111K)z +0.8187+0.001226K = 0$
% 
% We construct the Jury array as: 
% 
% $$\left\lbrack \begin{array}{ccc}z^0  & z^1  & z^2 \\0\ldotp 8187+0\ldotp 
% 001226K & 0\ldotp 0013111K-1\ldotp 8187 & 1\end{array}\right\rbrack$$
% 
% Checking the constraint $Q(1)>0$ yields
% 
% $$(1)^2 -(1.8187 - 0.0013111K)(1) +0.8187+0.0011226K = 0$$
% 
% $$0.0024337K > 0 \rightarrow K > 0$$
% 
% Checking the constraint $(-1)^2Q(-1) > 0$ yields
% 
% $$(-1)^2 -(1.8187 - 0.0013111K)(-1) +0.8187+0.001226K = 0$$
% 
% $$3.6374 - 0.0000851K > 0 \rightarrow K < \frac{3.6374}{0.0000851} \rightarrow 
% K < 42,742.7$$
% 
% Checking the constraint $|a_0| < a_2$ yields
% 
% $$0.8187 + 0.001226K < 1 \rightarrow K < \frac{0.1813}{0.001226} \rightarrow 
% K < 147.8$$
% 
% Thus, the system is stable for $0<K<147.8$ which matches the results from 
% part (b)
% 
% *(d) Determine the location of all roots of the characteristic equation in 
% both the* $w$*-plane and the* $z$*-plane for the value of* $K>0$ *for which 
% the system is marginally stable*
% 
% From above, it was computed that the system is marginally stable at the value 
% of $K = 147.8$
% 
% Substituting this value into the system characteristic equation, we get
% 
% $$z^2 -(1.8187 - 0.0013111K)z +0.8187+0.001226K |_{K=147.8} = 0$$
% 
% $$z^2 -1.625z +1 = 0$$

z = roots([1 -1.625 1])
z_mag = abs(z(1)), z_ang_deg = angle(z(1))*(180/pi), z_ang_rad = angle(z(1))
%% 
% The roots of this equation in the $z$-plane are
% 
% $$z = 0.8125 \pm j0.583 = 1\angle(\pm 35.66^{\circ}) = 1\angle(\pm 0.6225\ 
% \text{rad/s})$$
% 
% Checking for the characteristic equation in the $w$-plane:
% 
% $$(1 - 0.00002329K)w^2 +(1.994-0.01349K)w + 0.279K|_{K=147.8}= 0$$
% 
% $$0.9966w^2 +0.000178w +41.2362 = 0$$

w = roots([0.9966 0.000178 41.2362])
w_mag = abs(w(1)), w_ang_deg = angle(w(1))*(180/pi), w_ang_rad = angle(w(1))
%% 
% The roots of this equation in the $w$-plane are
% 
% $$w = 0 \pm j6.433 $$
% 
% *(e) Determine both the* $s$*-plane frequency and the* $w$*-plane frequency 
% at which the system will oscillate when marginally stable, using results of 
% part (d)*
% 
% From part (d), the $s$-plane frequency is
% 
% $$1\angle(\pm 0.6225\ \text{rad/s}) = 1\angle(\omega T)$$
% 
% $$\omega T = 0.6225 \rightarrow \omega = 0.6225/T = 6.225$$
% 
% And the $w$-plane frequency is
% 
% $$w = 0 \pm j6.433 $$
% 
% *(f) Show that the frequencies in part (e) satisfy (7-10)*
% 
% Formula (7-10) refers to
% 
% $$\omega_w = \frac{2}{T}\tan\left(\frac{\omega T}{2}\right)$$
% 
% Substituting values from part (d) into the equation, we get
% 
% $$\omega_w = \frac{2}{0.1}\tan\left(\frac{0.6225}{2}\right)$$
% 
% $$\omega_w = 20\tan\left(0.31125\right)$$
% 
% $$\omega_w = 6.434$$
% 
% Which this verifies the results from part (d)
% Root Locus for System

T = 0.1; numz = [0.01873 0.01752]; denomz = [1 -1.8187 0.8187];
Gz = tf(numz,denomz,T)
GHz = Gz * 0.07
zpk(GHz)
figure()
rlocus(GHz), hold on
xline(0.9071,'k--')
xline(-2.774,'k--')
title("Z-Plane Root Locus")
axis([-4 2 -2 2])
%% 
% 
%% Problem 2
% Problem 7.5-5
% 
% 
% 
% *(a) Write the closed-loop system characteristic equation*
% 
% We are given the $z$-transform of the Open-Loop System which is 
% 
% $$G(z) = \frac{0.02268z +0.02052}{(z-1)(z-0.7408)}$$
% 
% We determine the closed-llop system characteristic equation by solving: $1+K\overline{GH}(z) 
% = 0$
% 
% $$GH(z) = \frac{0.02268z +0.02052}{(z-1)(z-0.7408)} (0.4)$$
% 
% $$GH(z) = \frac{0.009072z +0.008208}{z^2-1.7408z+0.7408}$$
% 
% Then making the substitution for the system characteristic equation is:
% 
% $$1 + K\left[ \frac{0.009072z +0.008208}{z^2-1.7408z+0.7408}\right] = 0$$
% 
% $$z^2-1.7408z+0.7408 + 0.009072Kz +0.008208K= 0$$
% 
% $$z^2+(0.009072K-1.7408)z+0.7408 +0.008208K= 0$$
% 
% Thus, the system characteristic equation is:
% 
% $$z^2+(0.009072K-1.7408)z+0.7408 +0.008208K= 0$$
% 
% *(b) Use Routh-Hurwitz criterion to determine the range of* $K$ *for stability*
% 
% Use MATLAB to convert from $z$-plane to $w$-plane via bilinear transformation

T = 0.05;
numz = [0.009072 0.008208]; 
denomz = [1 -1.7408 0.7408];
GHz = tf(numz,denomz,T)
Gw = d2c(GHz,'tustin')
%% 
% Then the characteristic equation in terms of the $w$-plane is 
% 
% $$1+K\overline{GH}(w) = (1 - 0.0002482K)w^2 +(5.956-0.1886K)w + 7.941K = 0$$
% 
% Then we can construct the Routh array as 
% 
% $$\left\lbrack \begin{array}{c}w^2 \\w^1 \\w^0 \end{array}\right\rbrack \left\lbrack 
% \begin{array}{cc}1-0\ldotp 0002482K & \\5\ldotp 956-0\ldotp 1886K & \\7\ldotp 
% 941K & \end{array}\right\rbrack \to \left\lbrack \begin{array}{c}K<4029\\K<31\ldotp 
% 6\\K>0\end{array}\right\rbrack$$
% 
% Thus, $K$ is in the range of $\rightarrow$ $0 < K < 31.6$
% 
% *(c) Check the results of part (b) using the Jury test*
% 
% Using the closed-loop system characteristic equation from before, $z^2+(0.009072K-1.7408)z+0.7408 
% +0.008208K= 0$
% 
% We construct the Jury array as: 
% 
% $$\left\lbrack \begin{array}{ccc}z^0  & z^1  & z^2 \\0\ldotp 7408+0\ldotp 
% 008208K & 0\ldotp 009072K-1\ldotp 7408 & 1\end{array}\right\rbrack$$
% 
% Checking the constraint $Q(1)>0$ yields
% 
% $$(1)^2+(0.009072K-1.7408)(1)+0.7408 +0.008208K= 0$$
% 
% $$0.01728K > 0 \rightarrow K > 0$$
% 
% Checking the constraint $(-1)^2Q(-1) > 0$ yields
% 
% $$(-1)^2+(0.009072K-1.7408)(-1)+0.7408 +0.008208K= 0$$
% 
% $$3.4816 - 0.000864K > 0 \rightarrow K < \frac{3.6374}{0.000864} \rightarrow 
% K < 4029.7$$
% 
% Checking the constraint $|a_0| < a_2$ yields
% 
% $$0.7408 + 0.008208K < 1 \rightarrow K < \frac{0.7408}{0.008208} \rightarrow 
% K < 31.6$$
% 
% Thus, the system is stable for $0<K<31.6$ which matches the results from part 
% (b)
% 
% *(d) Determine the location of all roots of the characteristic equation in 
% both the* $w$*-plane and the* $z$*-plane for the value of* $K>0$ *for which 
% the system is marginally stable*
% 
% From above, it was computed that the system is marginally stable at the value 
% of $K = 31.6$
% 
% Substituting this value into the system characteristic equation, we get
% 
% $$z^2+(0.009072K-1.7408)z+0.7408 +0.008208K|_{K=31.6}= 0$$
% 
% $$z^2 -1.4541z+1 = 0$$

z = roots([1 -1.4541 1])
z_mag = abs(z(1)), z_ang_deg = angle(z(1))*(180/pi), z_ang_rad = angle(z(1))
%% 
% The roots of this equation in the $z$-plane are
% 
% $$z = 0.727\pm j0.687 = 1\angle(\pm 43.36^{\circ}) = 1\angle(\pm 0.7568\ \text{rad/s})$$
% 
% Checking for the characteristic equation in the $w$-plane:
% 
% $$(1 - 0.0002482K)w^2 +(5.956-0.1886K)w + 7.941K|_{K=31.6}= 0$$
% 
% $$0.9922w^2 -0.00376w +250.94 = 0$$

w = roots([0.9922 -0.00376 250.94])
w_mag = abs(w(1)), w_ang_deg = angle(w(1))*(180/pi), w_ang_rad = angle(w(1))
%% 
% The roots of this equation in the $w$-plane are
% 
% $$w = 0 \pm j15.903$$
% 
% *(e) Determine both the* $s$*-plane frequency and the* $w$*-plane frequency 
% at which the system will oscillate when marginally stable, using results of 
% part (d)*
% 
% From part (d), the $s$-plane frequency is
% 
% $$1\angle(\pm 0.7568\ \text{rad/s}) = 1\angle(\omega T)$$
% 
% $$\omega T = 0.7568 \rightarrow \omega = 0.7568/0.05 = 15.136 \ \text{rad/s}$$ 
% 
% And the $w$-plane frequency is
% 
% $$w = 0 \pm j15.903$$
% 
% *(f) Show that the frequencies in part (e) satisfy (7-10)*
% 
% Formula (7-10) refers to
% 
% $$\omega_w = \frac{2}{T}\tan\left(\frac{\omega T}{2}\right)$$
% 
% Substituting values from part (d) into the equation, we get
% 
% $$\omega_w = \frac{2}{0.05}\tan\left(\frac{0.7568}{2}\right)$$
% 
% $$\omega_w = 40\tan\left(0.3784\right)$$
% 
% $$\omega_w = 15.9023$$
% 
% Which this verifies the results from part (d)