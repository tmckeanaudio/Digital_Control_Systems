%%  Digital Control Systems Homework #4
%% Problem 1
% Problem 4.5-1 (d) and (f) 
% 
% Find the modified $z$-transform of the following functions
% 
% (d) $E\left(s\right)=\frac{s+2}{s^2 \left(s+1\right)}$
% 
% Start by solving the partial fraction expansion
% 
% $$E\left(s\right)=\frac{A_1 }{s}+\frac{A_2 }{s^2 }+\frac{A_3 }{s+1}$$
% 
% $$\frac{s+2}{s^2 \left(s+1\right)}=\frac{A_1 s\left(s+1\right)+A_2 \left(s+1\right)+A_3 
% s^2 }{s^2 \left(s+1\right)}$$
% 
% $$s+2=A_1 s\left(s+1\right)+A_2 \left(s+1\right)+A_3 s^2 \;$$
% 
% Substitute for $s=0$
% 
% $$2=A_1 \left(0\right)\left(0+1\right)+A_2 \left(0+1\right)+A_3 {\left(0\right)}^2$$
% 
% $$2=A_2$$
% 
% Thus, $A_2 =2$
% 
% Substitute for $s=-1$
% 
% $$-1+2=A_1 \left(-1\right)\left(-1+1\right)+A_2 \left(-1+1\right)+A_3 {\left(-1\right)}^2$$
% 
% $$1=A_3$$
% 
% Thus, $A_3 =1$
% 
% Use previous values to solve for $A_1$by expanding and combing like terms
% 
% $$s+2=A_1 s^2 +2s+2+s^2$$
% 
% $$s=s^2 \left(A_1 +1\right)+s\left(A_1 +2\right)$$
% 
% Solve for $A_1 +2=1$
% 
% $$s\left(A_1 +2\right)=s$$
% 
% $$A_1 +2=1$$
% 
% $$A_1 =-1$$
% 
% Thus, the partial fraction expansion of $E\left(s\right)$ is: 
% 
% $$E\left(s\right)=-\frac{1}{s}+\frac{2}{s^2 }+\frac{1}{s+1}$$
% 
% Verify Partial Fraction Expansion using MATLAB residue() function

num = [1 2];
den = [1 1 0 0];
[R,P,K] = residue(num,den);
R', P'
syms s
Es = R(1)/(s - P(1)) + R(2)/(s - P(2)) + R(3)/(s^2 - P(3))
%% 
% Now using the modified $z$-transform tables and using common pairs: 
% 
% $$\frac{1}{s}\to \frac{1}{z-1}$$
% 
% $$\frac{1}{s^2 }\to \frac{\textrm{mT}}{z-1}+\frac{T}{{\left(z-1\right)}^2 
% }$$
% 
% $$\frac{1}{s+a}\to \frac{\varepsilon^{-\textrm{amT}} }{z-\varepsilon^{-\textrm{aT}} 
% }$$
% 
% We find that the modified $z$-transform for the following function is: 
% 
% $$E\left(z,m\right)=-\frac{1}{z-1}+\frac{2\textrm{mT}}{z-1}+\frac{2T}{{\left(z-1\right)}^2 
% }+\frac{\varepsilon^{-\textrm{mT}} }{z-\varepsilon^{-T} }$$
% 
% $$\;\;\;\;\;\;\;\;\;\;\;\;\;\;=\frac{2\textrm{mT}-1}{z-1}+\frac{2T}{{\left(z-1\right)}^2 
% }+\frac{\varepsilon^{-\textrm{mT}} }{z-\varepsilon^{-T} }$$
% 
% 
% 
% (f) $E\left(s\right)=\frac{2}{s^2 +2s+5}$$\;$
% 
% After examining this function we see that we can represent it as: 
% 
% $$E\left(s\right)=\frac{2}{s^2 +2s+1+4}\to 2\frac{1}{{\left(s+1\right)}^2 
% +2^2 }$$
% 
% Which this function has a common modified $z$-transform pair: 
% 
% $$\frac{1}{{\left(s+a\right)}^2 +b^2 }\to$$$$\frac{1}{b}\Big[\frac{\varepsilon^{-amT}[z\sin{bmT}+\varepsilon^{-aT}\sin{(1-m)bT}]}{z^2-2z\varepsilon^{-aT}\cos{bT}+\varepsilon^{-2aT}}\Big]$$
% 
% where in our case, $a=1$ and $b=2$. So filling in the correct values, we get
% 
% $$E(z,m) = \Big[\frac{\varepsilon^{-mT}[z\sin{2mT}+\varepsilon^{-T}\sin{(1-m)2T}]}{z^2-2z\varepsilon^{-T}\cos{2T}+\varepsilon^{-2T}}\Big]$$
%% Problem 2
% Problem 4.3-10 (a) and (b)
% 
% Given in Fig. P4.3-10 is the block diagram of a rigid-body satellite. The 
% control signal is the voltage $e\left(t\right)\ldotp$ The zero-order hold output 
% $m\left(t\right)$ is converted into a torque $\tau \left(t\right)$ by an amplifier 
% and the thrusters (see Section 1.4). The system output is the attitude angle 
% $\theta \left(t\right)$ of the satellite. 
% 
% 
% 
% (a) Find the transfer function $\frac{\Theta \left(z\right)}{E\left(z\right)}$.
% 
% Here we define the pulse transfer function from the data hold and amplifier, 
% and transfer function of the satellite as: 
% 
% $$G_1 \left(s\right)=\frac{K\left(1-\varepsilon^{-\textrm{Ts}} \right)}{s}$$
% 
% $$G_2 \left(s\right)=$$$$\frac{1}{Js^2}$$
% 
% The output $\Theta \left(z\right)$ can be defined as; 
% 
% $$\Theta \left(z\right)=\bar{G_1 G_2 } \left(z\right)E\left(z\right)$$
% 
% $$\frac{\Theta \left(z\right)}{E\left(z\right)}=\bar{G_1 G_2 } \left(z\right)\;$$
% 
% where $\bar{G_1 G_2 } \left(z\right)=z\left\lbrace G_1 \left(s\right)G_2 \left(s\right)\right\rbrace$
% 
% Solving for the $z$-transform of the product of the two transfer functions, 
% we get: 
% 
% $$\bar{G_1 G_2 } \left(z\right)=z\left\lbrace \left(K\left(1-\varepsilon^{-\textrm{Ts}} 
% \right)\right)\left(\frac{1}{{\textrm{Js}}^3 }\right)\right\rbrace$$
% 
% Using the $z$-transform pairs for the data-hold and the satellite transfer 
% function: 
% 
% $$z\left\lbrace \left(1-\varepsilon^{-\textrm{Ts}} \right)\right\rbrace \to 
% 1-z^{-1} =\frac{z-1}{z}$$
% 
% $$z\left\lbrace \frac{1}{s^3 }\right\rbrace =\frac{T^2 z\left(z+1\right)}{{2\left(z-1\right)}^3 
% }$$
% 
% Then evaluating with these transform pairs we find that the transfer function 
% of the system is: 
% 
% $$\frac{\Theta \left(z\right)}{E\left(z\right)}=\frac{K}{J}\frac{T^2 z\left(z+1\right)}{{2\left(z-1\right)}^3 
% }\frac{z-1}{z}$$
% 
% $$\frac{\Theta \left(z\right)}{E\left(z\right)}=\frac{KT^2 \left(z+1\right)}{2J{\left(z-1\right)}^2 
% }$$
% 
% (b) Use the results of part (a) to find the system's unit-step response, that 
% is, the response with $e\left(t\right)=u\left(t\right)$. 
% 
% Here, we make the substitution for $e\left(t\right)=u\left(t\right)\to E\left(z\right)=\frac{z}{z-1}$, 
% and solve for $\Theta \left(z\right)$
% 
% $$\Theta \left(z\right)=\frac{KT^2 \left(z+1\right)}{2J{\left(z-1\right)}^2 
% }E\left(z\right)$$
% 
% $$\;\;\;\;\;\;\;\;\;=\frac{KT^2 \left(z+1\right)}{2J{\left(z-1\right)}^2 }\frac{z}{z-1}$$
% 
% $$\;\;\;\;\;\;\;\;\;=\frac{KT^2 z\left(z+1\right)}{2J{\left(z-1\right)}^3 
% }$$
% 
% Then converting back to the time-domain using the transform pair table, we 
% solve for $\theta \left(t\right)$:
% 
% $$\theta \left(t\right)=\frac{K}{J}\frac{t^2 }{2}$$
%% Problem 3
% Problem 4.10.1
% 
% (Hint: use MATLAB commands tf2ss, c2d, and ss2tf)
% 
% 
% 
% Consider the system in Fig. P4.10-1. The plant is described by the first-order 
% differential equation
% 
% $$\frac{\textrm{dy}\left(t\right)}{\textrm{dt}}+0\ldotp 05y\left(t\right)=0\ldotp 
% 1m\left(t\right)$$
% 
% Let $T=2\;\textrm{secs}$.
% 
% (a) Find the system transfer function $Y\left(z\right)/E\left(z\right)$
% 
% First we solve for the plant transfer function in the $s$-domain
% 
% $$G_p \left(s\right)\to Y\left(s\right)\left(s+0\ldotp 05\right)=M\left(s\right)\left(0\ldotp 
% 1\right)$$
% 
% $$G_p \left(s\right)=\frac{Y\left(s\right)}{M\left(s\right)}=\frac{0\ldotp 
% 1}{s+0\ldotp 05}$$
% 
% Then the system's transfer function can be described as the pulse transfer 
% function: 
% 
% $$\frac{Y\left(z\right)}{E\left(z\right)}=z\left\lbrace \frac{\left(1-\varepsilon^{-\textrm{Ts}} 
% \right)}{s}G_p \left(s\right)\right\rbrace$$
% 
% $$\;\;\;\;\;\;\;\;\;=z\left\lbrace \frac{\left(1-\varepsilon^{-\textrm{Ts}} 
% \right)}{s}\frac{0\ldotp 1}{s+0\ldotp 05}\right\rbrace$$
% 
% $$\;\;\;\;\;\;\;\;\;=1-z^{-1} \;z\left\lbrace \frac{0\ldotp 1}{s\left(s+0\ldotp 
% 05\right)}\right\rbrace$$
% 
% Here, we can factor out a value of 2 from the numerator of $G_p \left(s\right)$ 
% and use the transform pair: 
% 
% $$\frac{a}{s\left(s+a\right)}\leftrightarrow \frac{z\left(1-\varepsilon^{-\textrm{aT}} 
% \right)}{\left(z-1\right)\left(z-\varepsilon^{-\textrm{aT}} \right)}$$
% 
% where $a=0\ldotp 05\;\textrm{and}\;T\;=\;2\;\textrm{secs}\ldotp$ Substituting 
% and evaluating, we find:
% 
% $$\frac{Y\left(z\right)}{E\left(z\right)\;}=2\left(\frac{z-1}{z}\right)\left(\frac{z\left(1-\varepsilon^{-0\ldotp 
% 1} \right)}{\left(z-1\right)\left(z-\varepsilon^{-0\ldotp 1} \right)}\right)$$
% 
% $$\;\;\;\;\;\;\;\;\;\;=2\frac{\left(1-0\ldotp 905\right)}{\left(z-0\ldotp 
% 905\right)}$$
% 
% $$\;\;\;\;\;\;\;\;\;\;=\frac{0\ldotp 1903}{z-0\ldotp 905}$$
% 
% Thus, the discrete transfer function for this system is 
% 
% $$\frac{Y\left(z\right)}{E\left(z\right)\;}=\frac{0\ldotp 1903}{z-0\ldotp 
% 905}$$ 

% Verify with MATLAB
syms z
T = 2; a = 0.05;
num = 2*(1-exp(-a*T))
den = z - round(exp(-a*T), 3)
den = z - 0.905
%% 
% (b) Draw a discrete simulation diagram, using the results of part (a), and 
% give the state equations for this diagram.
% 
% 
% 
% (c) Draw a continuous-time simulation diagram for $G_p \left(s\right)$, and 
% given the state equations for this diagram.
% 
% 
% 
% (d) Use the state-variable model of part (c) to find a discrete state model 
% for the system. The state vectors of the discrete system and the continuous-time 
% system are to be the same. 
% 
% The continuous-time state model can be decribed by 
% 
% $$\dot{x}(t) = \textbf{A}_cx(t) + \textbf{B}_ce(t) $$
% 
% $$y(t)=\textbf{C}_cx(t) +D_ce(t) $$
% 
% Here, the state model has only one state variable $x\left(t\right),\;$so the 
% matrix notation does not apply, as we are only dealing with a scalar state variable. 
% 
% We wish to find the discrete state model for the system, which will be described 
% by the following state model: 
% 
% $$x(k+1) = \textbf{A}x(k) + \textbf{B}e(k)$$
% 
% $$y(k)=\textbf{C}x(k)+De(k)$$
% 
% From the continuous-time state model, we state the known variables that will 
% be used to convert to a discrete state model:
% 
% $$A_c =-0\ldotp 05$$
% 
% $$B_c =0\ldotp 1$$
% 
% $$C_c =1$$
% 
% We must next solve for the state-transition matrix $\textbf{\Phi}_c(t)$ which 
% will gives the discrete-system $\textbf{A} \text{ and } \textbf{B} $ matrices
% 
% $$\textbf{A} = \textbf{\Phi}_c(t) = L^{-1}[[s\textbf{I}-\textbf{A}_c]^{-1}]$$
% 
% $$\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;=L^{-1} \left\lbrace {\left(s-\left(-0\ldotp 
% 05\right)\right)}^{-1} \right\rbrace$$
% 
% $$\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;=L^{-1} \left\lbrace \frac{1}{s+0\ldotp 
% 05}\right\rbrace$$
% 
% Using the transform pair to solve for $ \textbf{\Phi}_c(t)$:
% 
% $$\frac{1}{s+a}\leftrightarrow \varepsilon^{-\textrm{at}}$$
% 
% $$ \textbf{\Phi}_c(t) = \varepsilon^{-0.05t}$$
% 
% Then, solving for $ \textbf{\Phi}_c(T)$ at the sampling instants
% 
% $$\textbf{A} = \textbf{\Phi}_c(T)|_{T = 2} = \varepsilon^{-0.05(2)} = 0.9048$$
% 
% Now, solving the discrete $\textbf{B}$ matrix, we use the definition:
% 
% $$\textbf{B} = \Big[\int_0^T\textbf{\Phi}_c(\tau)d\tau\Big]\textbf{B}_c$$
% 
% $$\;\;\;=$$$$\Bigg[\int_0^2\varepsilon^{-0.05t}d\tau\Bigg](0.1)$$
% 
% $$\;\;\;=-\frac{0\ldotp 1}{0\ldotp 05}\left\lbrack \varepsilon^{-0\ldotp 05\left(2\right)} 
% -\varepsilon^{-0\ldotp 05\left(0\right)} \right\rbrack$$
% 
% $$\;\;\;=-2\left\lbrack 0\ldotp 9048-1\right\rbrack$$
% 
% $$\textbf{B} = 0.1903$$
% 
% Then, using all the discrete matrices solved above, we find the discrete state 
% model to be described by:
% 
% $$x\left(k+1\right)=0\ldotp 9048x\left(k\right)+0\ldotp 1903e\left(k\right)$$
% 
% $$y\left(k\right)=x\left(k\right)$$

% Verify results using MATLAB
T = 2;
Ac = -0.05;
Bc = 0.1;
C = 1;
D = 0;
[A,B] = c2d(Ac,Bc,T)
[numz,denz] = ss2tf(A,B,C,D)
Gz = tf(numz,denz,T)
%% 
% Thus, both calculations are the same. 
% 
% (e) Draw a simulation diagram for the discrete state model in part (d)
% 
% 
% 
% (f) Use Mason's gain formula to find the transfer function in part (e), which 
% must be the same as found in part (a).
% 
% First, we draw a signal flowgraph, and then we can evaluate the Forward Path 
% Gains, and Loops of the discrete state model. 
% 
% 
% 
% If we evaluate the transfer function discovered using Mason's Formula further, 
% we find
% 
% $$T=\frac{0\ldotp 1903z^{-1} }{1-0\ldotp 905z^{-1} }\to \frac{0\ldotp 1903}{z-0\ldotp 
% 905}$$
% 
% which is what we found in part (a). 
%% Problem 4
% Problem 5.3-1
% 
% For each of the systems of Fig. P5.3-1, express $C\left(z\right)$ as a function 
% of the input and the transfer functions shown. 
% 
% 
% 
% 
% 
% 
% 
% 
% 
%