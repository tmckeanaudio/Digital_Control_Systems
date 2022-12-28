%% Digital Control Systems Homework #1
%% Problem 1
% Calculate the transfer function $\frac{C\left(s\right)}{R\left(s\right)}$ 
% for the following systems
% Part a.)

f = imread('DCS_HW1_P1a.png'); imshow(f);
title('Part A: Block Diagram and Signal Flowgraph')
%% 
% Loops:
%% 
% * $L_1 =-G_1 G_3 H\;\left(\textrm{touching}\right)$
%% 
% Forward Path Gains:
%% 
% * $M_1 =G_2 G_3$
% * $M_2 =G_1 G_3$
%% 
% Then calculate $\Delta$ as:
%% 
% * $\Delta =1-\left(-G_1 G_3 H\right)=1+G_1 G_3 H$
%% 
% Since the only loop in the system touches all common nodes:
%% 
% * $\Delta_1 =\Delta_2 =1$
%% 
% Then, we putting everything together using Mason's Formula, we derive the 
% transfer function to be:
% 
% $$T = \frac{1}{\Delta}\sum_{k=1}^{P}M_k\Delta_k = \frac{1}{\Delta}\left(M_1\Delta_1 
% + M_2\Delta_2\right) = \frac{G_2G_3 + G_1G_3}{1 + G_1G_3H} = \frac{C(s)}{R(s)}$$
% Part b.)

f = imread('DCS_HW1_P1b.png'); imshow(f);
title('Part B: Block Diagram and Signal Flowgraph')
%% 
% Loops:
%% 
% * $L_1 =-G_1 H_2$
% * $L_2 =-G_1 G_2 H_1$
%% 
% Forward Path Gains:
%% 
% * $M_1 =G_1 G_2$
%% 
% Then calculate $\Delta$ as:
%% 
% * $\Delta =1-\left(-G_1 H_2 \right)-\left(-G_1 G_2 H_1 \right)=1+G_1 H_2 +G_1 
% G_2 H_1$
%% 
% Since the only loop in the system touches all common nodes:
%% 
% * $\Delta_1 =1$
%% 
% Then, we putting everything together using Mason's Formula, we derive the 
% transfer function to be:
% 
% $$T = \frac{1}{\Delta}\sum_{k=1}^{P}M_k\Delta_k = \frac{1}{\Delta}\left(M_1\Delta_1\right) 
% = \frac{G_1G_2}{1 + G_1H_2 + G_1G_2H_1} = \frac{C(s)}{R(s)}$$
% Part c.)

f = imread('DCS_HW1_P1c.png'); imshow(f);
title('Part C: Block Diagram and Signal Flowgraph')
%% 
% Loops:
%% 
% * $L_1 =-G_c G_p H$
%% 
% Forward Path Gains:
%% 
% * $M_1 =G_c G_p$
%% 
% Then calculate $\Delta$ as:
%% 
% * $\Delta =1-\left(-G_c G_p H\right)=1+G_c G_p H$
%% 
% Since the only loop in the system touches all common nodes:
%% 
% * $\Delta_1 =1$
%% 
% Then, we putting everything together using Mason's Formula, we derive the 
% transfer function to be:
% 
% $$T = \frac{1}{\Delta}\sum_{k=1}^{P}M_k\Delta_k = \frac{1}{\Delta}\left(M_1\Delta_1\right) 
% = \frac{G_cG_p}{1 + G_cG_pH} = \frac{C(s)}{R(s)}$$
%% Problem 2

f = imread('DCS_HW1_P2_Diagram.png'); imshow(f)
title('Block Diagram of One Joint of Robot Arm')
% Part a.)
% Derive Transfer Functions $\frac{\Theta_a \left(s\right)}{M\left(s\right)}$ 
% and $\frac{\Theta_a \left(s\right)}{E_a \left(s\right)}$
% 
% $$\frac{\Theta_a \left(s\right)}{M\left(s\right)}=K\times \left(\frac{200}{0\ldotp 
% 5s+1}\right)\times \left(\frac{1}{s}\right)\times \left(\frac{1}{100}\right)=\frac{2K}{s\left(0\ldotp 
% 5s+1\right)}$$
% 
% $$\frac{\Theta_a \left(s\right)}{E_a \left(s\right)}=\;$$$$\left(\frac{200}{0\ldotp 
% 5s+1}\right)\times \left(\frac{1}{s}\right)\times \left(\frac{1}{100}\right)=\frac{2}{s\left(0\ldotp 
% 5s+1\right)}$$
% Part b.)
% The Transfer function of just the servomotor can be described as 
% 
% $$\frac{\dot{\Theta}_m(s)}{E_a(s)} = \frac{200}{0.5s+1$$
% 
% Since we are looking for rated rpm of the motor, we need to find the angular 
% velocity of the motor, and move $E_a \left(s\right)=\frac{24}{s}\;$to right-side
% 
% $$\dot{\Theta}_m(s)= \frac{200}{0.5s+1} \times \frac{24}{s} = \frac{4800}{s(0.5s+1)}$$
% 
% simplifying even further we get:
% 
% $$\Theta_m \left(s\right)=\frac{2}{2}\times \frac{4800}{s\left(0\ldotp 5s+1\right)}=\frac{9600}{s\left(s+2\right)}$$

s = tf('s');
Theta_m = 400/(s+2) * 24/s
%% 
% We can then use Partial Fraction Expansion to break up this Transfer Function, 
% and solve for the inverse Laplace 

a = [1,2,0]; b = 9600;
[R,P,K] = residue(b,a)
%% 
% Taking the Partial Fraction Expansion of $\frac{9600}{s\left(s+2\right)}=\frac{4800}{s}-\frac{4800}{s+2}\;$
% 
% Then taking the Laplace Transform of these expressions we get:
% 
% $$\dot{\theta_m } \left(t\right)=\;$$$$L^{-1} \left\lbrace \frac{4800}{s}-\frac{4800}{s+2}\right\rbrace 
% \to 4800u\left(t\right)-48{00e}^{-2t} \;$$ 
% 
% Since $\theta_m$ was given to us in degrees, we manipulate the units to give 
% us rpm (revolutions per minute)
% 
% $$\dot{\theta_m}(t) =  \left(4800 - 4800e^{-2t}\right) \left(\frac{deg}{sec}\right) 
% \times \left(\frac{60secs}{minute}\right) \times \left(\frac{revolutions}{360^{\circ}}\right) 
% = 800 - 800e^{-2t} $$
% 
% Then evaluated at steady state gives: 
% 
% $\dot{\theta_m}(t)|lim_{t\rightarrow\infty} = 800 -800e^{-2\times\infty} = 
% 800 -800(0) \approx  $ *800 rpm*

t = 0:0.1:7;
d_theta_m = 4800 - 4800*exp(-2.*t);
d_theta_m = (60/360).*d_theta_m;
figure
plot(t,d_theta_m,'LineWidth',1.5), title('Rated RPM of Motor')
ylim([0 1000]),yticks(0:200:1000), grid on
xlabel('Time (mins)'), ylabel('Revolutions')
%% 
% 
% Part c.)
% The transfer function between the input voltage $e_a \left(t\right)$ and angle 
% of the robot arm $\theta_a \left(t\right)$can be described as:
% 
% $$\frac{\Theta_a \left(s\right)}{E_a \left(s\right)}=\frac{2}{s\left(0\ldotp 
% 5s+1\right)}$$ 
% 
% Again, we need to apply $e_a \left(t\right)=24u\left(t\right)$ and represent 
% this in the Laplace Domain and simplify the expression above
% 
% $$\Theta_a(s) = \frac{2}{s(0.5s+1)}\times\frac{24}{s} = \frac{96}{s^2(s+2)}$$
% 
% Taking the Partial Fraction Expansion of this term we get:

Theta_a = 96/(s^2*(s+2))
b = 96; a = [1,2,0,0];
[R,P,K] = residue(b,a)
%% 
% Taking the Partial Fraction Expansion of $\frac{96}{s^2 \left(s+2\right)}=\frac{24}{s-\left(-2\right)}-\frac{24}{s-\left(0\right)}+\frac{48}{s^2 
% -\left(0\right)}=\frac{24}{s+2}-\frac{24}{s}+\frac{48}{s^2 }\;$
% 
% Then taking the Laplace Transform of these expressions we get:
% 
% $$\theta_a \left(t\right)=\;$$$$L^{-1} \left\lbrace \frac{24}{s+2}+\frac{48}{s^2 
% }-\frac{24}{s}\right\rbrace \to -24+48t+\textrm{24}e^{-2t} \;$$ 
% 
% Then taking the derivative of this expression we derive the maximum rate of 
% movement for the robot arm:
% 
% $$\frac{d\dot{\theta_a}(t)}{dt} = \frac{d}{dt}\left[-24 + 48t + 24e^{-2t}\right]$$
% 
% $$\dot{\theta_a}(t) = \left[0 + 48 + (-2)24e^{-2t}\right] = 48 - 48e^{-2t}$$
% 
% Then evaluated at steady state gives: 
% 
% $\dot{\theta_a}(t)|lim_{t\rightarrow\infty} =48 - 48e^{-2\times\infty} = 48-0 
% =$*48 degrees/second,* which makes sense because the gears for the robot arm 
% make it 1/100th slower in movement
% *Part d.)*
% Find the time required for the arm to be moving at 99% of maximum rate of 
% movement found in Part b.)
% 
% Find new max value of rate of movement:
% 
% $\dot{\theta_a } \left(t\right)=48\times 0\ldotp 99=\;$47.52 degrees/sec 

ratedRPM = round(48 * 0.99,2) % Convert ratedRPM to 99% of value
%% 
% Substitute the rate of movement for the robot arm and set equivalent to new 
% rotation value
% 
% $$47\ldotp 52\;=48-48e^{-2t} \leftrightarrow 48e^{-2t} =48-47\ldotp 52$$
% 
% $$48e^{-2t} =0\ldotp 48$$
% 
% $$e^{-2t} =\frac{0\ldotp 48}{48}=0\ldotp 01$$
% 
% $$\ln \left(e^{-2t} \right)=\ln \left(0\ldotp 01\right)$$
% 
% $$-2t=-4\ldotp 61$$
% 
% $$t=2\ldotp 303\;\textrm{secs}$$

t = log((48-48*0.99)/48)/-2
%% 
% From these calculations, it is observed that it takes about *2.3 seconds* 
% for the arm to be moving at 99% of maximum rate of movement
% Part e.)
% Suppose the input $m\left(t\right)$ is constrained by system hardware to be 
% $\le 10\;V$. What value should you choose for the gain $K$ and why?
% 
% The transfer function for th Power Amplifier is:
% 
% $$E_a \left(s\right)=K\times M\left(s\right)\to \frac{E_a \left(s\right)}{M\left(s\right)}=K$$
% 
% So, since we want the unit step response for the servomotor to be a value 
% of $24\;V$, then the value of $K$ should be calculated as
% 
% $K=\frac{E_a \left(s\right)}{M\left(s\right)}\to \frac{24\;V}{10\;V}=2\ldotp 
% 4\;V/V$, this will reassure that if the maximum value of the system hardware 
% is used, than the servomotor's rated rpm will not exceed the $24\;V$ input of 
% $e_a \left(t\right)$