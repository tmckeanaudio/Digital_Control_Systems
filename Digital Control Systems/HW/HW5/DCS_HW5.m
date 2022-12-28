%% Digital Control Systems Homework #5
%% Problem 1
% Problem 6.2-1 Consider the closed-loop system of Fig. P6.2-1
% 
% 
% 
% *(a.)* Calculate and plot the unit-step response at the sampling instants, 
% for the case that $D\left(z\right)=1$
% 
% With this system's digital controller having a transfer function of $D\left(z\right)=1$, 
% then we only need to calculate the Pulse transfer function $G_p \left(s\right)$ 
% and then find its $z$-transform $G\left(z\right)$
% 
% $$G_p \left(s\right)=z\left\lbrace 1-\varepsilon^{-\textrm{Ts}} \right\rbrace 
% z\left\lbrace \frac{0\ldotp 5}{s\left(s+0\ldotp 5\right)}\right\rbrace$$
% 
% Using the common $z$-transform pair:
% 
% $$\frac{a}{s\left(s+a\right)}\leftrightarrow \frac{z\left(1-\varepsilon^{-\textrm{aT}} 
% \right)}{\left(z-1\right)\left(z-\varepsilon^{-\textrm{aT}} \right)}$$
% 
% Then subsituting in values for sample period $T=2\;\textrm{secs}$
% 
% $$G\left(z\right)=\left(\frac{z-1}{z}\right)\left(\frac{z\left(1-\varepsilon^{-0\ldotp 
% 5\left(2\right)} \right)}{\left(z-1\right)\left(z-\varepsilon^{-0\ldotp 5\left(2\right)} 
% \right)}\right)=\frac{0\ldotp 6321}{z-0\ldotp 3679}$$
% 
% Then calculating the closed-loop transfer function
% 
% $$T\left(z\right)=\frac{C\left(z\right)}{R\left(z\right)}=\frac{G\left(z\right)}{1+G\left(z\right)}=\frac{\frac{0\ldotp 
% 6321}{z-0\ldotp 3679}}{1+\frac{0\ldotp 6321}{z-0\ldotp 3679}}=\frac{0\ldotp 
% 6321}{z+0\ldotp 2642}$$
% 
% Then using calculating the unit-step response means the input term $R\left(z\right)=z\left\lbrace 
% \frac{1}{s}\right\rbrace =\left(\frac{z}{z-1}\right)$, and calculating the output:
% 
% $$C\left(z\right)=\frac{G\left(z\right)}{1+G\left(z\right)}R\left(z\right)=\frac{0\ldotp 
% 6321}{z+0\ldotp 2642}\left(\frac{z}{z-1}\right)=\frac{0\ldotp 6321z}{\left(z-1\right)\left(z+0\ldotp 
% 2642\right)}$$
% 
% Then taking the partial fractions expansion and solving for the inverse $z$-transform 
% give us
% 
% $$\frac{C\left(z\right)}{z}=\frac{A}{z-1}+\frac{B}{z+0\ldotp 2642}$$
% 
% $$A={\left\lbrack \left(z-1\right)\frac{0\ldotp 6321}{\left(z-1\right)\left(z+0\ldotp 
% 2642\right)}\right\rbrack }_{z=1} =\frac{0\ldotp 6321}{1+0\ldotp 2642}=0\ldotp 
% 5$$
% 
% Thus, $A=0\ldotp 5$
% 
% Solving for $B$ yields:
% 
% $$B={\left\lbrack \left(z+0\ldotp 2642\right)\frac{0\ldotp 6321}{\left(z-1\right)\left(z+0\ldotp 
% 2642\right)}\right\rbrack }_{z=-0\ldotp 2642} =\frac{0\ldotp 6321}{-0\ldotp 
% 2642-1}=-0\ldotp 5\;$$
% 
% Thus
% 
% $$C\left(z\right)=\frac{0\ldotp 5z}{z-1}-\frac{0\ldotp 5z}{z+0\ldotp 2642}\;$$
% 
% Taking the inverse $z$-transform by using common pairs, we find the unit-step 
% response to be
% 
% $$c\left(\textrm{kT}\right)=z^{-1} \left\lbrace \frac{0\ldotp 5z}{z-1}-\frac{0\ldotp 
% 5z}{z+0\ldotp 2642}\right\rbrace =0\ldotp 5\left(1-{\left(-0\ldotp 2642\right)}^k 
% \right)$$
% 
% Thus, the unit-step response for the system is 
% 
% $$c\left(\textrm{kT}\right)=0\ldotp 5\left(1-{\left(-0\ldotp 2642\right)}^k 
% \right)$$
% 
% Now using MATLAB to verify calculations and plot the unit-step response, we 
% get:

T1 = 2; Gs = tf(0.5,[1 0.5]); Gz = c2d(Gs,T1);
Tz = feedback(Gz,1), Rz = tf(1);
Cz = zpk(Rz*Tz)
% Partial Fraction Expansion of C(z)/z
[R,P,K] = residue(0.6321,[1 -0.7358 -0.2642])
k = 0:10/T1; kT2 = k.*T1;
ckT2 = real(0.5.*(1-(-0.2642).^k));
figure
stairs(kT2,ckT2,'LineWidth',1.5), ylim([0 0.7]), grid on
xlabel('Time (sec)'), ylabel('c(kT)'), title('Unit-Step Response')
%% 
% *(b.)* Calculate the system unit-step response of the analog system, that 
% is, with the sampler, digital controller, and data hold removed. Plot the response 
% on the same graph with the results of part (a).
% 
% The transfer function of just the analog system is
% 
% $$G\left(s\right)=\frac{0\ldotp 5}{s+0\ldotp 5}$$
% 
% Then the closed-loop transfer function would be described as
% 
% $$T\left(s\right)=\frac{G\left(s\right)}{1+G\left(s\right)}=\frac{\frac{0\ldotp 
% 5}{s+0\ldotp 5}}{1+\frac{0\ldotp 5}{s+0\ldotp 5}}=\frac{0\ldotp 5}{s+1}\;$$
% 
% Subsituting the definition of the impulse reponse for $R\left(s\right)=\frac{1}{s}$ 
% to calculate the analog output yields
% 
% $$C\left(s\right)=\frac{G\left(s\right)}{1+G\left(s\right)}R\left(s\right)=\frac{0\ldotp 
% 5}{s+1}\frac{1}{s}=\frac{0\ldotp 5}{s\left(s+1\right)}$$
% 
% Then by taking the partial fraction expansion and inverse laplace transform, 
% we can solve the unit-step response of the analog system to be
% 
% $$C\left(s\right)=\frac{A}{s}+\frac{B}{s+1}$$
% 
% $$\begin{array}{l}A={\left\lbrack \left(s\right)\frac{0\ldotp 5}{s\left(s+1\right)}\right\rbrack 
% }_{s=0} =\frac{0\ldotp 5}{0+1}=0\ldotp 5\\B={\left\lbrack \left(s+1\right)\frac{0\ldotp 
% 5}{s\left(s+1\right)}\right\rbrack }_{s=-1} =\frac{0\ldotp 5}{-1}=-0\ldotp 5\;\;\end{array}$$
% 
% $$C\left(s\right)=\frac{0\ldotp 5}{s}-\frac{0\ldotp 5}{s+1}$$
% 
% $$c\left(t\right)=L^{-1} \left\lbrace \frac{0\ldotp 5}{s}-\frac{0\ldotp 5}{s+1}\right\rbrace 
% =0\ldotp 5\left(1-\varepsilon^{-t} \right)$$
% 
% Thus, the unit-step response of the analog system is
% 
% $$c\left(t\right)=0\ldotp 5\left(1-\varepsilon^{-t} \right)$$
% 
% Now using MATLAB to verify calculations and plot the analog system's unit-step 
% response, we get:

% Plot analog system unit-step
t = 0:0.01:10;
ct = 0.5.*(1-exp(-t));
figure
stairs(kT2,ckT2,'LineWidth',1.5), grid on, hold on
plot(t,ct, 'LineWidth',1.5), hold off
xlabel('Time (s)'), ylabel('Amplitude')
ylim([0 0.7])
title('Unit-Step of Analog and Discrete-Time Systems')
legend('c(kT)','c(t)','Location','best')
%% 
% *(c.)* For the system of Fig. P6.2-1, let $D\left(z\right)=1$ and $T=0\ldotp 
% 4\;\textrm{secs}$. Calculate the unit-step response and plot these results on 
% the same graph used for parts (a) and (b).
% 
% Subsituting inthe value for sample period $T=0\ldotp 4\;\textrm{secs}$ to 
% the transfer functions of part (a) yields
% 
% $$G\left(z\right)=\left(\frac{z-1}{z}\right)\left(\frac{z\left(1-\varepsilon^{-0\ldotp 
% 5\left(0\ldotp 4\right)} \right)}{\left(z-1\right)\left(z-\varepsilon^{-0\ldotp 
% 5\left(0\ldotp 4\right)} \right)}\right)=\frac{0\ldotp 1813}{z-0\ldotp 8187}$$
% 
% Then calculating the closed-loop transfer function
% 
% $$T\left(z\right)=\frac{C\left(z\right)}{R\left(z\right)}=\frac{G\left(z\right)}{1+G\left(z\right)}=\frac{\frac{0\ldotp 
% 1813}{z-0\ldotp 8187}}{1+\frac{0\ldotp 1813}{z-0\ldotp 8187}}=\frac{0\ldotp 
% 1813}{z-0\ldotp 6375}$$
% 
% Then using calculating the unit-step response means the input term $R\left(z\right)=z\left\lbrace 
% \frac{1}{s}\right\rbrace =\left(\frac{z}{z-1}\right)$, and calculating the output:
% 
% $$C\left(z\right)=\frac{G\left(z\right)}{1+G\left(z\right)}R\left(z\right)=\frac{0\ldotp 
% 1813}{z-0\ldotp 6375}\left(\frac{z}{z-1}\right)=\frac{0\ldotp 1813z}{\left(z-1\right)\left(z-0\ldotp 
% 6375\right)}$$
% 
% Then taking the partial fractions expansion ans solving for the inverse $z$-transform 
% give us
% 
% $$\frac{C\left(z\right)}{z}=\frac{A}{\left(z-1\right)}+\frac{B}{\left(z-0\ldotp 
% 6375\right)}$$
% 
% $$A={\left\lbrack \left(z-1\right)\frac{0\ldotp 1813}{\left(z-1\right)\left(z-0\ldotp 
% 6375\right)}\right\rbrack }_{z=1} =\frac{0\ldotp 1813}{1-0\ldotp 6375}=0\ldotp 
% 5$$
% 
% $$B={\left\lbrack \left(z-0\ldotp 6375\right)\frac{0\ldotp 1813}{\left(z-1\right)\left(z-0\ldotp 
% 6375\right)}\right\rbrack }_{z=0\ldotp 6375} =\frac{0\ldotp 1813}{0\ldotp 6375-1}=-0\ldotp 
% 5\;$$
% 
% Thus
% 
% $$C\left(z\right)=\frac{0\ldotp 5z}{z-1}-\frac{0\ldotp 5z}{z-0\ldotp 6375}\;$$
% 
% Taking the inverse $z$-transform by using common pairs, we find the unit-step 
% response to be
% 
% $$c\left(\textrm{kT}\right)=z^{-1} \left\lbrace \frac{0\ldotp 5z}{z-1}-\frac{0\ldotp 
% 5z}{z-0\ldotp 6375}\right\rbrace =0\ldotp 5\left(1-{\left(0\ldotp 6375\right)}^k 
% \right)$$
% 
% Thus, the unit-step response for the system with sample period $T=0\ldotp 
% 4\textrm{secs}$ is 
% 
% $$c\left(\textrm{kT}\right)=0\ldotp 5\left(1-{\left(0\ldotp 6375\right)}^k 
% \right)$$
% 
% Now using MATLAB to verify calculations and plot the unit-step response, we 
% get:

% Dz = 1 and T = 0.4 secs
T2 = 0.4; Gs = tf(0.5,[1 0.5]); Gz = c2d(Gs,T2)
Tz = feedback(Gz,1), Rz = tf(1);
Cz = zpk(Rz*Tz)
% Partial Fraction Expansion of C(z)/z
b = 0.1813; a = conv([1 -1],[1 -0.6375]);
[R,P,K] = residue(b,a)
k = 0:10/T2; kT4 = k*T2;
ckT_04 = real(0.5.*(1-(0.6375).^k));
figure
stairs(kT2,ckT2, 'LineWidth',1.5), grid on, hold on
plot(t,ct, 'LineWidth',1.5), 
stairs(kT4,ckT_04, 'LineWidth', 1.5), hold off
xlabel('Time (s)'), ylabel('Amplitude'), ylim([0 0.7])
title('Unit-Step of Analog and Discrete-Time Systems')
legend('part (a)','part (b)','part (c)','Location','best')
%% 
% *(d.)* Use the system dc gains to calculate the steady-state responses for 
% each of the systems of parts (a), (b), and (c). Why are these gains equal?
% 
% The dc gains for discrete-time systems in parts (a) and (c) can be derived 
% by solving $\lim_{z\to 1} \;T\left(z\right)$ and $\lim_{s\to 0} \;T\left(s\right)$ 
% the analog system in part (b), which result in
% 
% DC Gain for Part (a) system: 
% 
% $$\textrm{dc}\;\textrm{gain}=\;\lim_{z\to 1} \;T\left(z\right)=\lim_{z\to 
% 1} \;\frac{0\ldotp 6321}{z+0\ldotp 2642}=\frac{0\ldotp 6321}{1+0\ldotp 2642}=0\ldotp 
% 5$$
% 
% DC Gain for Part (b) system: 
% 
% $$\textrm{dc}\;\textrm{gain}=\;\lim_{s\to 0} \;T\left(z\right)=\lim_{s\to 
% 0} \;\frac{0\ldotp 5}{s+1}=\frac{0\ldotp 5}{0+1}=0\ldotp 5$$
% 
% DC Gain for Part (c) system: 
% 
% $$\textrm{dc}\;\textrm{gain}=\;\lim_{z\to 1} \;T\left(z\right)=\lim_{z\to 
% 1} \;\frac{0\ldotp 1813}{z-0\ldotp 6375}=\frac{0\ldotp 1813}{1-0\ldotp 6375}=0\ldotp 
% 5$$
% 
% The choosing of different sample periods will result in varying transient 
% reponses of the systems, but the discretization process of the analog system 
% does not change the steady-state response provided that both discrete- and continuous-time 
% systems are stable. The fact that all these systems have the same dc gain value 
% verifies that all the systems are related through the conversion from a continuous 
% to a discrete-time system.
%% Problem 2
% Problem 6.2-7 The block diagram of a control system of a joint in a robot 
% arm is shown in Fig. P6.2-7. This system is discussed in Section 1.6. Let $T=0\ldotp 
% 1\;\textrm{secs}$ and $D\left(z\right)=1$.
% 
% 
% 
% *(a.)* Evaluate $C\left(z\right)$ if the input is to command a ${20}^{\circ 
% } C$step in the output and $K=10$. Note that the system input must be a step 
% function with an amplitude $1\ldotp 4V\ldotp$ Why?
% 
% Given that the amplifier value is $K=10V/V$, and the input voltage must be 
% $1\ldotp 4V$, then the input voltage to the servomotor $E_a$ must be: 
% 
% $E_a \le 14\;V$ which means that the servomotor must be rated at $14V$ and 
% the input voltage must not exceed $1\ldotp 4V$ because the voltage signal will 
% be increased by a gain of 10 from the amplifier. 
% 
% To solve for $C\left(z\right)$ we first start by finding the Pulse transfer 
% function and taking its $z$-transform
% 
% $$G\left(z\right)=D\left(z\right)z\left\lbrace \frac{1-\varepsilon^{-\textrm{Ts}} 
% }{s}\right\rbrace z\left\lbrace 10\frac{200}{s\left(0\ldotp 5s+1\right)}\frac{1}{100}\right\rbrace$$
% 
% $$\;\;\;\;\;\;\;\;\;=\left(1\right)z\left\lbrace 1-\varepsilon^{-\textrm{Ts}} 
% \right\rbrace z\left\lbrace \frac{20}{s^2 \left(0\ldotp 5s+1\right)}\right\rbrace$$
% 
% $$\;\;\;\;\;\;\;\;\;=\left(1\right)z\left\lbrace 1-\varepsilon^{-\textrm{Ts}} 
% \right\rbrace z\left\lbrace \frac{40}{s^2 \left(s+2\right)}\right\rbrace$$
% 
% or 
% 
% $$\;\;\;\;\;\;\;\;\;=\left(20\right)\left(\frac{z-1}{z}\right)z\left\lbrace 
% \frac{2}{s^2 \left(s+2\right)}\right\rbrace$$
% 
% Using the common $z$-transform pair:
% 
% $$\frac{a}{s^2 \left(s+a\right)}\leftrightarrow \frac{z\left\lbrack \left(\textrm{aT}-1+\varepsilon^{-\textrm{aT}} 
% \right)z+\left(1-\varepsilon^{-\textrm{aT}} -\textrm{aT}\varepsilon^{-\textrm{aT}} 
% \right)\right\rbrack }{{a\left(z-1\right)}^2 \left(z-\varepsilon^{-\textrm{aT}} 
% \right)}$$
% 
% and then subsituting in values for $T=0\ldotp 1\;\textrm{secs}$, we find the 
% Pulse transfer function $G\left(z\right)$ to be
% 
% $$G\left(z\right)=\left(\frac{z-1}{z}\right)\frac{z\left\lbrack \left(0\ldotp 
% 2-1+\varepsilon^{-0\ldotp 2} \right)z+\left(1-\varepsilon^{-0\ldotp 2} -0\ldotp 
% 2\varepsilon^{-0\ldotp 2} \right)\right\rbrack }{2{\left(z-1\right)}^2 \left(z-\varepsilon^{-0\ldotp 
% 2} \right)}$$
% 
% Now simplifying, we get
% 
% $$G\left(z\right)=\left(20\right)\frac{\left(0\ldotp 2-1+0\ldotp 8187\right)z+\left(1-0\ldotp 
% 8187-0\ldotp 2\left(0\ldotp 8187\right)\right)}{2\left(z-1\right)\left(z-0\ldotp 
% 8187\right)}$$
% 
% $$\;\;\;\;\;\;\;\;\;=\frac{0\ldotp 187z+0\ldotp 176}{\left(z-1\right)\left(z-0\ldotp 
% 8187\right)}$$
% 
% Now using Mason's formula and solving for the closed-loop system, we get
% 
% $$T\left(z\right)=\frac{C\left(z\right)}{R\left(z\right)}=\frac{G\left(z\right)}{1+G\left(z\right)H\left(z\right)}=\frac{\frac{0\ldotp 
% 187z+0\ldotp 176}{\left(z-1\right)\left(z-0\ldotp 8187\right)}}{1+\frac{0\ldotp 
% 187z+0\ldotp 176}{\left(z-1\right)\left(z-0\ldotp 8187\right)}\left(0\ldotp 
% 07\right)}$$
% 
% $$\;\;\;\;\;\;\;\;\;=\frac{0\ldotp 187z+0\ldotp 176}{\left(z-1\right)\left(z-0\ldotp 
% 8187\right)+\left(0\ldotp 0131z+0\ldotp 0123\right)}$$
% 
% $$\;\;\;\;\;\;\;\;\;=\frac{0\ldotp 187z+0\ldotp 176}{z^2 -1\ldotp 8187z+0\ldotp 
% 8187+\left(0\ldotp 0131z+0\ldotp 0123\right)}$$
% 
% $$\;\;\;\;\;\;\;\;\;=\frac{0\ldotp 187z+0\ldotp 176}{z^2 -1\ldotp 8056z+0\ldotp 
% 831}$$
% 
% or solving for the complex poles, we can represent it as
% 
% $$\;\;\;\;\;\;\;\;\;=\frac{0\ldotp 187z+0\ldotp 176}{\left(z-0\ldotp 9116e^{-\textrm{j7}\ldotp 
% {96}^{\circ } } \right)\left(z-0\ldotp 9116e^{\textrm{j7}\ldotp {96}^{\circ 
% } } \right)}$$

% Solve complex roots of C(z) using MATLAB
p = roots([1 -1.8056 0.831])
P1_mag = abs(p(1)), P1_ang = angle(p(1))*(180/pi)
P2_mag = abs(p(2)), P2_ang = angle(p(2))*(180/pi)
%% 
% Lastly, substituting the input for $r\left(t\right)=1\ldotp 4u\left(t\right)\;V\leftrightarrow 
% R\left(s\right)=\frac{1\ldotp 4}{s}$
% 
% Convert to $z$-transform pair: $R\left(z\right)=\frac{1\ldotp 4z}{z-1}$ and 
% multiplying by the closed-loop transfer function, gives our output $C\left(z\right)$ 
% as:
% 
% $$C\left(z\right)=\frac{G\left(z\right)}{1+G\left(z\right)H\left(z\right)}R\left(z\right)=\frac{0\ldotp 
% 187z+0\ldotp 176}{z^2 -1\ldotp 8056z+0\ldotp 831}\left(\frac{1\ldotp 4z}{z-1}\right)\;$$
% 
% $$\;\;\;\;\;\;\;\;\;=\frac{1\ldotp 4z\left(0\ldotp 187z+0\ldotp 176\right)}{\left(z-1\right)\left(z^2 
% -1\ldotp 8056z+0\ldotp 831\right)}$$
% 
% Thus, the output for the system is $C\left(z\right)=\frac{1\ldotp 4z\left(0\ldotp 
% 187z+0\ldotp 176\right)}{\left(z-1\right)\left(z^2 -1\ldotp 8056z+0\ldotp 831\right)}$
% 
% *(b.)* Assuming the system to be stable, find that steady-state output.
% 
% We can solve for the steady-state value by using the final value theorem:
% 
% $$c_{\textrm{ss}} \left(\textrm{kT}\right)=\lim_{z\to 1} \;\left(z-1\right)C\left(z\right)$$
% 
% $$\;\;\;\;\;\;\;\;\;\;\;\;\;\;=\lim_{z\to 1} \;\left(z-1\right)\frac{1\ldotp 
% 4z\left(0\ldotp 187z+0\ldotp 176\right)}{\left(z-1\right)\left(z^2 -1\ldotp 
% 8056z+0\ldotp 831\right)}$$
% 
% $$\;\;\;\;\;\;\;\;\;\;\;\;\;\;=\lim_{z\to 1} \;\frac{1\ldotp 4z\left(0\ldotp 
% 187z+0\ldotp 176\right)}{\left(z^2 -1\ldotp 8056z+0\ldotp 831\right)}$$
% 
% $$\;\;\;\;\;\;\;\;\;\;\;\;\;\;=\frac{1\ldotp 4\left(1\right)\left(0\ldotp 
% 187\left(1\right)+0\ldotp 176\right)}{\left(1^2 -1\ldotp 8056\left(1\right)+0\ldotp 
% 831\right)}$$
% 
% $$\;\;\;\;\;\;\;\;\;\;\;\;\;\;=\frac{1\ldotp 4\left(0\ldotp 363\right)}{\left(0\ldotp 
% 0254\right)}$$
% 
% $$\;\;\;\;\;\;\;\;\;\;\;\;\;\;\approx 20$$
% 
% Thus, the steady-state value for the output is $c_{\textrm{ss}} \left(\textrm{kT}\right)=20$.
% 
% *(c.)* Find the (approximate) time required for the system response to reach 
% steady-state. 
% 
% Using the complex poles of the system: 
% 
% $p_1 =0\ldotp 9116\angle 7\ldotp {96}^{\circ }$ and $p_2 =0\ldotp 9116\angle 
% -7\ldotp {96}^{\circ }$
% 
% The time constant $\tau$ of the poles is given by
% 
% $$\tau =-\frac{T}{\ln \;r}$$
% 
% Filling in the sample period $T=0\ldotp 1\;\sec$ and the radius of the complex 
% poles $r=0\ldotp 9116$
% 
% $$\tau =-\frac{T}{\ln \;r}=-\frac{0\ldotp 1}{\ln \left(0\ldotp 9116\right)}=1\ldotp 
% 0805$$
% 
% Then using the fact that the transient response settles out in approximately 
% four time constants
% 
% $$t=4\tau \to 4\left(1\ldotp 0805\right)=4\ldotp 322\;\textrm{seconds}$$
% 
% Thus, the system response will take about $4\ldotp 322$ seconds to reach steady-state
% 
% *(d.)* Simulate the system to verify the results in parts (b) and (c). 

% Use MATLAB to simulate system and verify parts (b) and (c)
T = 0.1; tau = -T/log(0.9116)
b = [0.187 0.176]
a = [1 -1.8056 0.831]
Rz = tf(1.4,1,T)
Cz = tf(b,a,T) * Rz
[ckT,k,x] = step(Cz);
figure
stairs(k,ckT,'LineWidth',1.5),hold on, xline(4*tau,'k--','LineWidth',1.5)
grid on, xlabel('Time (secs)'), ylabel('Amplitude'), title('Unit Step Response')
legend('c(kT)','4\tau','Location','best')
%% 
% From the simulated unit-step response of the system above, we can see that 
% the system's steady state value settles around $20$, and the calculated value 
% of the time constant $\tau =1\ldotp 0805$ was used to calculate the time of 
% which the system would reach a steady-state. This value should be about four 
% times the time constant, so $4\times \tau \approx 4\ldotp 322\;\;\textrm{secs}$. 
% From the plot, we can see the system hasn't fully settled by this time, but 
% the system's transient response has indeed concluded. 
% 
%