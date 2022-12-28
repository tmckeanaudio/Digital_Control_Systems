%% Digital Control Systems Homework #3
%% Problem 1
% *(a)* Find $e\left(0\right),e\left(1\right),$ and $e\left(10\right)$ for
% 
% $$E\left(z\right)=\frac{0\ldotp 1}{z\left(z-0\ldotp 9\right)}$$
% 
% using the inversion formula
% 
% Inversion Formula: $\frac{1}{2\pi j}\oint E\left(z\right)z^{k-1} \textrm{dz}$
% 
% The Inversion formula can be rewritten as the sum of the residues because 
% of the property of complex functions
% 
% $$e\left(k\right)=\sum_{\textrm{at}\;\textrm{poles}\;\left\lbrack E\left(z\right)z^{k-1} 
% \right\rbrack } \textrm{Residues}\;\textrm{of}\;\frac{0\ldotp 1z^{k-1} }{z\left(z-0\ldotp 
% 9\right)}$$
% 
% For $e\left(0\right),$
% 
% $$e\left(0\right)=\sum_{z=0,0\ldotp 9} \textrm{residues}\;\textrm{of}\;\frac{0\ldotp 
% 1}{z^2 \left(z-0\ldotp 9\right)}\;$$
% 
% $$\;\;\;\;\;\;\;\;=$$ $$\frac{0.1}{(z-0.9)}\Big|_{z=0} + \frac{0.1}{z}\Big|_{z=0.9}$$ 
% $$=-\frac{0\ldotp 1}{0\ldotp 9}+\frac{0\ldotp 1}{0\ldotp 9}$$ $$=0$$
% 
% Thus, $e\left(0\right)=0$
% 
% For $e\left(1\right)$,
% 
% $$e\left(k\right)=\sum_{\textrm{at}\;\textrm{poles}\;\left\lbrack E\left(z\right)z^{k-1} 
% \right\rbrack } \textrm{Residues}\;\textrm{of}\;\frac{0\ldotp 1z^{k-1} }{z\left(z-0\ldotp 
% 9\right)}$$
% 
% $$e\left(1\right)=$$ $$(z-0.9) \frac{0.1}{z(z-0.9)}z^{k-1} \Big|_{z=0.9} $$
% 
% $$\;\;\;\;\;\;\;\;=$$ $$\frac{0.1}{(0.9)^2}(0.9)^k$$ $$\to$$ $$\frac{0.1}{(0.9)^2}(0.9)^1$$ 
% $$=\frac{0\ldotp 1\times 0\ldotp 9}{0\ldotp 81}=\frac{0\ldotp 09}{0\ldotp 81}$$ 
% $$=\frac{1}{9}\;\textrm{or}\;0\ldotp 1111$$
% 
% Thus, $e\left(1\right)=0\ldotp 1111$
% 
% For $e\left(10\right),$
% 
% $$e\left(10\right)$$$$=$$ $$\frac{0.1}{(0.9)^2}(0.9)^k$$ $$\to$$ $$\frac{0.1}{(0.9)^2}(0.9)^{10}$$$$\to 
% 0\ldotp 1{\left(0\ldotp 9\right)}^8 =0\ldotp 043$$
% 
% Thus, $e\left(10\right)=0\ldotp 043$
% 
% *(b)* Check the value of $e\left(0\right)$ using the initial-value property
% 
% The initial-value property states:
% 
% $$e\left(0\right)=\lim_{z\to \infty } E\left(z\right)$$
% 
% So,
% 
% $$e\left(0\right)=\lim_{z\to \infty } \frac{0\ldotp 1}{z\left(z-0\ldotp 9\right)}=\frac{0\ldotp 
% 1}{\infty \left(\infty -0\ldotp 9\right)}=0$$
% 
% Thus, the initial-value property states that $e\left(0\right)=0,$ which was 
% derived in part (a) as well. 
% 
% *(c)* Check the values calculated in part (a) using partial fractions
% 
% In order to break $E\left(z\right)$ into partial fractions, we use the formula
% 
% $$\frac{E\left(z\right)}{z}=\frac{0\ldotp 1}{z^2 \left(z-0\ldotp 9\right)}$$
% 
% $$\frac{E\left(z\right)}{z}=\frac{A_0 }{z}+\frac{A_1 }{z^2 }+\frac{A_2 }{z-0\ldotp 
% 9}$$
% 
% $$\frac{0\ldotp 1}{z^2 \left(z-0\ldotp 9\right)}=\frac{A_0 }{z}+\frac{A_1 
% }{z^2 }+\frac{A_2 }{z-0\ldotp 9}$$
% 
% Multiplying the right-hand side by the denominator of $\frac{E\left(z\right)}{z}$, 
% we get:
% 
% $$0\ldotp 1=A_0 z\left(z-0\ldotp 9\right)+A_1 \left(z-0\ldotp 9\right)+A_2 
% z^2$$
% 
% Start by plugging in the value for $z=0$
% 
% $0\ldotp 1=A_0 \left(0\right)\left(0-0\ldotp 9\right)+A_1 \left(0-0\ldotp 
% 9\right)+A_2 0^2$,  which simplifies to
% 
% $$0\ldotp 1=-0\ldotp 9A_1$$
% 
% Thus, $A_1 =-\frac{1}{9}$
% 
% Using this value fo $A_1$ and now plugging in value for $z=0\ldotp 9$
% 
% $0\ldotp 1=A_0 \left(0\ldotp 9\right)\left(0\ldotp 9-0\ldotp 9\right)-\frac{1}{9}\left(0\ldotp 
% 9-0\ldotp 9\right)+A_2 {\left(0\ldotp 9\right)}^2$,  which simplifies to:
% 
% $$0\ldotp 1={0\ldotp 81A}_2$$
% 
% Thus, $A_2 =\frac{0\ldotp 1}{0\ldotp 81}=\frac{10}{81}$
% 
% Now solving for $A_0$
% 
% $$0\ldotp 1=z^2 \left(A_0 +\frac{10}{81}\right)-z\left(0\ldotp 9A_0 +\frac{1}{9}\right)+0\ldotp 
% 1$$
% 
% $$z^2 \left(A_0 +\frac{10}{81}\right)-z\left(0\ldotp 9A_0 +\frac{1}{9}\right)=0$$
% 
% Solve for $-0\ldotp 9A_0 -\frac{1}{9}=0$
% 
% Thus, $A_0 =-\frac{1/9}{0\ldotp 9}=-\frac{10}{81}$
% 
% Putting all the coefficients together and multiplying by $z$
% 
% $$E\left(z\right)=-\frac{10}{81}-\frac{1}{9}z^{-1} +\frac{10}{81}\frac{z}{z-0\ldotp 
% 9}$$
% 
% Using some common $z$-transform pairs we solve for $e\left(k\right)$
% 
% $$e\left(k\right)=-\frac{10}{81}\delta \left(k\right)-\frac{1}{9}\delta \left(k-1\right)+\frac{10}{81}{\left(0\ldotp 
% 9\right)}^k$$
% 
% Now that we have $e\left(k\right)$ we solve for $e\left(0\right),e\left(1\right),\textrm{and}\;e\left(10\right)$
% 
% $$e\left(0\right)=-\frac{10}{81}\delta \left(0\right)-\frac{1}{9}\delta \left(0-1\right)+\frac{10}{81}{\left(0\ldotp 
% 9\right)}^0 \;$$
% 
% $$e\left(0\right)=-\frac{10}{81}+\frac{10}{81}=0\;$$
% 
% $$e\left(1\right)=-\frac{10}{81}\delta \left(1\right)-\frac{1}{9}\delta \left(1-1\right)+\frac{10}{81}{\left(0\ldotp 
% 9\right)}^1 \;$$
% 
% $$e\left(1\right)=\frac{10}{81}\left(0\ldotp 9\right)=\frac{9}{81}=\frac{1}{9}$$
% 
% $$e\left(10\right)=-\frac{10}{81}\delta \left(10\right)-\frac{1}{9}\delta 
% \left(10-1\right)+\frac{10}{81}{\left(0\ldotp 9\right)}^{10} \;$$
% 
% $$e\left(10\right)=\frac{10}{81}{\left(0\ldotp 9\right)}^{10} =0\ldotp 043\;$$
% 
% Thus, the values for $e\left(0\right),e\left(1\right),\textrm{and}\;e\left(10\right)$ 
% match the values calculated in part (a)
% 
% *(d)* Find $e\left(k\right)$ for $k=0,1,2,3,4$ if $Z\left\lbrack e\left(k\right)\right\rbrack$ 
% is given by
% 
% $$E\left(z\right)=\frac{1\ldotp 98z}{\left(z^2 -0\ldotp 9z+0\ldotp 9\right)\left(z-0\ldotp 
% 8\right)\left(z^2 -1\ldotp 2z+0\ldotp 27\right)}$$
% 
% using MATLAB to calculate the roots of the polynomials in the denominator, 
% we find:

a1 = [1 -0.9 0.9]; a2 = [1 -0.8]; a3 = [1 -1.2 0.27];
roots(a1)
roots(a3)
%% 
% Thus, 
% 
% $$E\left(z\right)=\frac{1\ldotp 98z}{\left(z-0\ldotp 45+\textrm{j0}\ldotp 
% 835\right)\left(z-0\ldotp 45-\textrm{j0}\ldotp 835\right)\left(z-0\ldotp 8\right)\left(z-0\ldotp 
% 9\right)\left(z-0\ldotp 3\right)}$$
% 
% $$\frac{E\left(z\right)}{z}=\frac{1\ldotp 98}{\left(z-0\ldotp 45+\textrm{j0}\ldotp 
% 835\right)\left(z-0\ldotp 45-\textrm{j0}\ldotp 835\right)\left(z-0\ldotp 8\right)\left(z-0\ldotp 
% 9\right)\left(z-0\ldotp 3\right)}$$
% 
% Then, using MATLAB to solve for the Partial Fraction Expansion, we get

denom = conv(a1,a2); denom = conv(denom,a3);
num = 1.98;
[R,P,K] = residue(num,denom)
%% 
% So, from these vectors of the residues and poles, we have
% 
% $$\frac{E\left(z\right)}{z}=\frac{1\ldotp 23-\textrm{j1}\ldotp 064}{z-0\ldotp 
% 45+\textrm{j0}\ldotp 835}+\frac{1\ldotp 23+\textrm{j1}\ldotp 064}{z-0\ldotp 
% 45-\textrm{j0}\ldotp 835}+\frac{36\ldotp 67}{z-0\ldotp 9}-\frac{48\ldotp 3}{z-0\ldotp 
% 8}+\frac{9\ldotp 17}{z-0\ldotp 3}$$
% 
% Then multiplying $z$ back to the right-hand side we get:
% 
% $$E\left(z\right)=\frac{1\ldotp 23-\textrm{j1}\ldotp 064z}{z-0\ldotp 45+\textrm{j0}\ldotp 
% 835}+\frac{1\ldotp 23+\textrm{j1}\ldotp 064z}{z-0\ldotp 45-\textrm{j0}\ldotp 
% 835}+\frac{36\ldotp 67z}{z-0\ldotp 9}-\frac{48\ldotp 3z}{z-0\ldotp 8}+\frac{9\ldotp 
% 17z}{z-0\ldotp 3}$$

R_mag = abs(R(1:2))
R_deg = angle(R(1:2))*180/pi
P_mag = abs(P)
P_deg = angle(P)*180/pi
%% 
% Or expressed in Polar form:
% 
% $$E\left(z\right)=\frac{1\ldotp 67e^{-\textrm{j40}\ldotp {87}^{\circ } } z}{z-0\ldotp 
% 95e^{\textrm{j61}\ldotp 7^{\circ } } }+\frac{1\ldotp 67e^{\textrm{j40}\ldotp 
% {87}^{\circ } } z}{z-0\ldotp 95e^{-\textrm{j61}\ldotp 7^{\circ } } }+\frac{36\ldotp 
% 67z}{z-0\ldotp 9}-\frac{48\ldotp 3z}{z-0\ldotp 8}+\frac{9\ldotp 17z}{z-0\ldotp 
% 3}$$
% 
% Then using common transform pairs, we solve for $e\left(k\right)$ and get:
% 
% $$e\left(k\right)=\left(1\ldotp 23-\textrm{j1}\ldotp 064\right){\left(0\ldotp 
% 45+\textrm{j0}\ldotp 835\right)}^k +\left(1\ldotp 23+\textrm{j1}\ldotp 064\right){\left(0\ldotp 
% 45-\textrm{j0}\ldotp 835\right)}^k +36\ldotp 67{\left(0\ldotp 9\right)}^k -48\ldotp 
% 3{\left(0\ldotp 8\right)}^k +9\ldotp 17{\left(0\ldotp 3\right)}^k$$
% 
% Then, solving for $e\left(k\right)\;\textrm{for}\;k=0,1,2,3,4\;$

e0 = (1.23-1i*1.064)*(0.45+1i*0.835)^0 + (1.23+1i*1.064)*(0.45-1i*0.835)^0 + 36.67*(0.9)^0 - 48.3*(0.8)^0 + 9.17*(0.3)^0
%% 
% Thus, $e\left(0\right)\approx 0$

e1 = (1.23-1i*1.064)*(0.45+1i*0.835) + (1.23+1i*1.064)*(0.45-1i*0.835) + 36.67*(0.9) - 48.3*(0.8) + 9.17*(0.3)
%% 
% $$e\left(1\right)=-2\ldotp 1\times {10}^{-3}$$

e2 = (1.23-1i*1.064)*(0.45+1i*0.835)^2 + (1.23+1i*1.064)*(0.45-1i*0.835)^2 + 36.67*(0.9)^2 - 48.3*(0.8)^2 + 9.17*(0.3)^2
%% 
% $$e\left(2\right)=-1\ldotp 8\times {10}^{-3}$$

e3 = (1.23-1i*1.064)*(0.45+1i*0.835)^3 + (1.23+1i*1.064)*(0.45-1i*0.835)^3 + 36.67*(0.9)^3 - 48.3*(0.8)^3 + 9.17*(0.3)^3
%% 
% $$e\left(3\right)=-3\ldotp 27\times {10}^{-4}$$

e4 = (1.23-1i*1.064)*(0.45+1i*0.835)^4 + (1.23+1i*1.064)*(0.45-1i*0.835)^4 + 36.67*(0.9)^4 - 48.3*(0.8)^4 + 9.17*(0.3)^4
%% 
% And lastly, $e\left(4\right)=1\ldotp 98$
% 
% *(e)* A continuous time function $e\left(t\right),$ when sampled at a rate 
% of $10\;\textrm{Hz}\;\left(T=0\ldotp 1s\right),$ has the following $z$-transform 
% $E\left(z\right)=\frac{2z}{z-0\ldotp 8}$. Find function $e\left(t\right)$.
% 
% $$E\left(z\right)=\frac{2z}{z-0\ldotp 8}$$
% 
% Using the transform pair: $\left(\frac{z}{z-a}\right)\leftrightarrow a^k$, 
% we find that $e\left(t\right)$ is:
% 
% $$e\left(t\right)=2{\left(0\ldotp 8\right)}^k$$
% 
% Then unsing the fact that $t=\textrm{kT}$ and rearranging, we find that $k=\frac{t}{T}$ 
% with $T=0\ldotp 1$ and substituting, we get $k=\frac{t}{0\ldotp 1}=10t$
% 
% Thus, $e\left(t\right)=2{\left(0\ldotp 8\right)}^{10t}$ 
% 
% *(f)* Repeat part (e) for $E\left(z\right)=\frac{2z}{z+0\ldotp 8}$.
% 
% Repeating the steps of part (e), we find that
% 
% $$e\left(t\right)=2{\left(-0\ldotp 8\right)}^{10t}$$
% 
% *(g)* From parts (e) and (f), what is the effect on the inverse $z$-transform 
% of changing the sign on a real pole? 
% 
% We observe that $e_1 \left(k\right)=2{\left(0\ldotp 8\right)}^k \;\textrm{and}\;e_2 
% \left(k\right)=2{\left(-0\ldotp 8\right)}^k$
% 
% Investigating further into $e_2 \left(k\right)$, we find:
% 
% $$\begin{array}{l}e_2 \left(k\right)=2{\left(-0\ldotp 8\right)}^k \\\;\;\;\;\;\;\;\;\;\;=2{\left(-1\right)}^k 
% {\left(0\ldotp 8\right)}^k \\\;\;\;\;\;\;\;\;\;\;={\left(-1\right)}^k e_1 \left(k\right)\end{array}$$
% 
% Thus, the effect of changing the sign of the real pole translates to a factor 
% of ${\left(-1\right)}^k$ being multiplied by the inverse $z$-transform which 
% then oscillates between positive and negative values as the sequence goes on 
% until infinity.
%% Problem 2
% Consider the system described by 
% 
% $$x\left(k+1\right)=\left\lbrack \begin{array}{cc}0 & 1\\0 & 3\end{array}\right\rbrack 
% x\left(k\right)+\left\lbrack \begin{array}{c}1\\1\end{array}\right\rbrack u\left(k\right),$$
% 
% $$y\left(k\right)=\left\lbrack \begin{array}{cc}-2 & 1\end{array}\right\rbrack 
% x\left(k\right)$$
% 
% *(a)*  Find the transfer function $Y\left(z\right)/U\left(z\right)$
% 
% From this system we observe that
% 
% $\textbf{A}$$=\left\lbrack \begin{array}{cc}0 & 1\\0 & 3\end{array}\right\rbrack 
% ;$ $\textbf{B}$$=\left\lbrack \begin{array}{c}1\\1\end{array}\right\rbrack ;$ 
% $\textbf{C}$$=\left\lbrack \begin{array}{cc}-2 & 1\end{array}\right\rbrack ;$ 
% and $\textbf{D}$$=0$
% 
% We then solve for the characteristic equation of the matrix $\textbf{A}$ and 
% the characteristic values of the matrix by 
% 
% $$\big|z\textbf{I}-\textbf{A}\big| $$ $$=z\left\lbrack \begin{array}{cc}1 
% & 0\\0 & 1\end{array}\right\rbrack -\left\lbrack \begin{array}{cc}0 & 1\\0 & 
% 3\end{array}\right\rbrack =\left\lbrack \begin{array}{cc}z & 0\\0 & z\end{array}\right\rbrack 
% -\left\lbrack \begin{array}{cc}0 & 1\\0 & 3\end{array}\right\rbrack =\left\lbrack 
% \begin{array}{cc}z & -1\\0 & z-3\end{array}\right\rbrack$$
% 
% Taking the determinant of this matrix we find:
% 
% $\big|z\textbf{I}-\textbf{A}\big| $ = $z\left(z-3\right)-\left(-1\right)\left(0\right)=z^2 
% -3z$
% 
% Then, we define the transpose of the coefficient matrix $Cof\big|z\textbf{I}-\textbf{A}\big|^T$ 
% as
% 
% $$\left[Cof|z\textbf{I}-\textbf{A}|\right]^T$$$$=\left\lbrack \begin{array}{cc}z-3 
% & 1\\0 & z\end{array}\right\rbrack$$
% 
% Then the Inverse of the characteristic matrix $\big|z\textbf{I}-\textbf{A}\big| 
% ^{-1}$ is 
% 
% $$\big|z\textbf{I}-\textbf{A}\big| ^{-1} = \frac{\left[Cof|z\textbf{I}-\textbf{A}|\right]^T}{|z\textbf{I}-\textbf{A}|}$$ 
% $$\;=\frac{\left\lbrack \begin{array}{cc}z-3 & 1\\0 & z\end{array}\right\rbrack 
% }{z^2 -3z}$$
% 
% The transfer function for the system can be described by the equation:
% 
% $$G(z) = \textbf{C}\left[z\textbf{I}-\textbf{A}\right]^{-1}\textbf{B} + \textbf{D}$$
% 
% and now filling in the corresponding matrices and vectors, we get:
% 
% $$G\left(z\right)=\left\lbrack \begin{array}{cc}-2 & 1\end{array}\right\rbrack 
% \frac{\left\lbrack \begin{array}{cc}z-3 & 1\\0 & z\end{array}\right\rbrack }{z^2 
% -3z}\left\lbrack \begin{array}{c}1\\1\end{array}\right\rbrack +0$$
% 
% $$\;\;\;\;\;\;\;\;\;=\left(\frac{1}{z^2 -3z}\right)\left\lbrack \begin{array}{cc}-2 
% & 1\end{array}\right\rbrack \left\lbrack \begin{array}{cc}z-3 & 1\\0 & z\end{array}\right\rbrack 
% \left\lbrack \begin{array}{c}1\\1\end{array}\right\rbrack$$
% 
% $$\;\;\;\;\;\;\;\;\;=\left(\frac{1}{z^2 -3z}\right)\left\lbrack \begin{array}{cc}-2z+6 
% & -2+z\end{array}\right\rbrack \left\lbrack \begin{array}{c}1\\1\end{array}\right\rbrack$$
% 
% $$\;\;\;\;\;\;\;\;\;=\left(\frac{1}{z^2 -3z}\right)\left(-2z+6-2+z\right)$$
% 
% $$\;\;\;\;\;\;\;\;\;=\left(\frac{-z+4}{z^2 -3z}\right)$$
% 
% Thus, the transfer function $G\left(z\right)=\frac{Y\left(z\right)}{U\left(z\right)}=\frac{-z+4}{z\left(z-3\right)}$
% 
% *(b)* Using any similarity transformation, find a different state model for 
% this system
% 
% Choosing any arbitrary linear transformation matrix $\textbf{P}$ $=\left\lbrack 
% \begin{array}{cc}1 & -1\\1 & 1\end{array}\right\rbrack$
% 
% The inverse of this matrix $\textbf{P}^{-1} =  \frac{\left[Cof\left[\textbf{P}]\right]^T}{|\textbf{P}|}$
% 
% where, $Cof\left[\textbf{P}]$ $=\left\lbrack \begin{array}{cc}1 & -1\\1 & 
% 1\end{array}\right\rbrack$and $|\textbf{P}| = (1)(1)-(-1)(1) = 2$
% 
% Thus, $\textbf{P}^{-1} $$=\frac{{\left\lbrack \begin{array}{cc}1 & -1\\1 & 
% 1\end{array}\right\rbrack }^T }{2}=\left\lbrack \begin{array}{cc}1/2 & 1/2\\-1/2 
% & 1/2\end{array}\right\rbrack$
% 
% Now, that we have our values for $\textbf{P} \text{ and } \textbf{P}^{-1}$, 
% we can alter the other matrices and vectors of the system to complete the linear 
% transformation to the state model with a state vector $w\left(k+1\right)\;\textrm{and}\;w\left(k\right)$
% 
% $$\textbf{A}_w = \textbf{P}^{-1}\textbf{A}\textbf{P}$$
% 
% $$\;\;\;\;\;\;=\left\lbrack \begin{array}{cc}1/2 & 1/2\\-1/2 & 1/2\end{array}\right\rbrack 
% \left\lbrack \begin{array}{cc}0 & 1\\0 & 3\end{array}\right\rbrack \left\lbrack 
% \begin{array}{cc}1 & -1\\1 & 1\end{array}\right\rbrack$$
% 
% $$\;\;\;\;\;\;=\left\lbrack \begin{array}{cc}1/2 & 1/2\\-1/2 & 1/2\end{array}\right\rbrack 
% \left\lbrack \begin{array}{cc}0 & 1\\0 & 3\end{array}\right\rbrack$$
% 
% $$\textbf{A}_w$$$$=\left\lbrack \begin{array}{cc}2 & 2\\1 & 1\end{array}\right\rbrack$$
% 
% $$\textbf{B}_w = \textbf{P}^{-1}\textbf{B}$$
% 
% $$\;\;\;\;\;\;=\left\lbrack \begin{array}{cc}1/2 & 1/2\\-1/2 & 1/2\end{array}\right\rbrack 
% \left\lbrack \begin{array}{c}1\\1\end{array}\right\rbrack$$
% 
% $$\textbf{B}_w$$ $$=\left\lbrack \begin{array}{c}1\\0\end{array}\right\rbrack$$
% 
% $$\textbf{C}_w = \textbf{C}\textbf{P}$$
% 
% $$\;\;\;\;\;\;=\left\lbrack \begin{array}{cc}-2 & 1\end{array}\right\rbrack 
% \left\lbrack \begin{array}{cc}1 & -1\\1 & 1\end{array}\right\rbrack$$
% 
% $$\textbf{C}_w$$ $$=\left\lbrack \begin{array}{cc}-1 & 3\end{array}\right\rbrack$$

% Calculate with MATLAB
A = [0 1; 0 3]; B = [1; 1]; C = [-2 1]; 
P = [1 -1; 1 1]; 
invP = inv(P);
Aw = invP*A*P
Bw = invP * B
Cw = C*P
%% 
% Thus, the transformed state model can be defined by the new state equations: 
% 
% $$w\left(k+1\right)=\left\lbrack \begin{array}{cc}2 & 2\\1 & 1\end{array}\right\rbrack 
% w\left(k\right)+\left\lbrack \begin{array}{c}1\\0\end{array}\right\rbrack u\left(k\right),$$
% 
% $$y\left(k\right)=\left\lbrack \begin{array}{cc}-1 & 3\end{array}\right\rbrack 
% w\left(k\right)$$
% 
% *(c)* Find the transfer function of the system from the transformed state 
% equations
% 
% To find the transfer function of the transformed system, we follow the steps 
% as in part (a)
% 
% From this transformed system we observe that
% 
% $\textbf{A}_w$$=\left\lbrack \begin{array}{cc}2 & 2\\1 & 1\end{array}\right\rbrack 
% ;$ $\textbf{B}_w$$=\left\lbrack \begin{array}{c}1\\0\end{array}\right\rbrack 
% ;$ $\textbf{C}_w$$=\left\lbrack \begin{array}{cc}-1 & 3\end{array}\right\rbrack 
% ;$ and $\textbf{D}_w$$=0$
% 
% We then solve for the characteristic equation of the matrix $\textbf{A}$ and 
% the characteristic values of the matrix by 
% 
% $$\big|z\textbf{I}-\textbf{A}_w\big| $$ $$=z\left\lbrack \begin{array}{cc}1 
% & 0\\0 & 1\end{array}\right\rbrack -\left\lbrack \begin{array}{cc}2 & 2\\1 & 
% 1\end{array}\right\rbrack =\left\lbrack \begin{array}{cc}z & 0\\0 & z\end{array}\right\rbrack 
% -\left\lbrack \begin{array}{cc}2 & 2\\1 & 1\end{array}\right\rbrack =\left\lbrack 
% \begin{array}{cc}z-2 & -2\\-1 & z-1\end{array}\right\rbrack$$
% 
% Taking the determinant of this matrix we find:
% 
% $\big|z\textbf{I}-\textbf{A}_w\big| $ = $\left(z-2\right)\left(z-1\right)-\left(-2\right)\left(-1\right)\;=z^2 
% -3z+2-2=z^2 -3z$
% 
% Then, we define the transpose of the coefficient matrix $Cof\big|z\textbf{I}-\textbf{A}_w\big|$ 
% and its transpose as
% 
% $$Cof\left[z\textbf{I}-\textbf{A}_w\left]$$ $$=\left\lbrack \begin{array}{cc}z-1 
% & 1\\2 & z-2\end{array}\right\rbrack$$
% 
% $$\left[Cof|z\textbf{I}-\textbf{A}_w|\right]^T$$$$=\left\lbrack \begin{array}{cc}z-1 
% & 2\\1 & z-2\end{array}\right\rbrack$$
% 
% Then the Inverse of the characteristic matrix $\big|z\textbf{I}-\textbf{A}\big| 
% ^{-1}$ is 
% 
% $$\big|z\textbf{I}-\textbf{A}_w\big| ^{-1} = \frac{\left[Cof|z\textbf{I}-\textbf{A}_w|\right]^T}{|z\textbf{I}-\textbf{A}_w|}$$ 
% $$\;=\frac{\left\lbrack \begin{array}{cc}z-1 & 2\\1 & z-2\end{array}\right\rbrack 
% }{z^2 -3z}$$
% 
% The transfer function for the system can be described by the equation:
% 
% $$G_w(z) = \textbf{C}_w\left[z\textbf{I}-\textbf{A}_w\right]^{-1}\textbf{B}_w 
% + \textbf{D}_w$$
% 
% and now filling in the corresponding matrices and vectors, we get:
% 
% $$G\left(z\right)=\left\lbrack \begin{array}{cc}-1 & 3\end{array}\right\rbrack 
% \frac{\left\lbrack \begin{array}{cc}z-1 & 2\\1 & z-2\end{array}\right\rbrack 
% }{z^2 -3z}\left\lbrack \begin{array}{c}1\\0\end{array}\right\rbrack +0$$
% 
% $$\;\;\;\;\;\;\;\;\;=\left(\frac{1}{z^2 -3z}\right)\left\lbrack \begin{array}{cc}-1 
% & 3\end{array}\right\rbrack \left\lbrack \begin{array}{cc}z-1 & 2\\1 & z-2\end{array}\right\rbrack 
% \left\lbrack \begin{array}{c}1\\0\end{array}\right\rbrack$$
% 
% $$\;\;\;\;\;\;\;\;\;=\left(\frac{1}{z^2 -3z}\right)\left\lbrack \begin{array}{cc}-1 
% & 3\end{array}\right\rbrack \left\lbrack \begin{array}{c}z-1\\1\end{array}\right\rbrack$$
% 
% $$\;\;\;\;\;\;\;\;\;=\left(\frac{1}{z^2 -3z}\right)\left(-z+1+3\right)$$
% 
% $$\;\;\;\;\;\;\;\;\;=\left(\frac{-z+4}{z^2 -3z}\right)$$
% 
% Thus, the transfer function $G_w \left(z\right)=\frac{Y_w \left(z\right)}{U_w 
% \left(z\right)}=\frac{-z+4}{z\left(z-3\right)}$
% 
% which is still the same transform function as before we conducted the linear 
% transformation to the state model.
%% Problem 3
% Given the MATLAB program

clear all;
m_old = zeros(11,1); % vector to store all values of m(k)
s1 = 0;
e = 0;  % input signal e(0)
for k = 0:10
    s2 = e - s1;
    m = 0.5*s2 - s1; % output signal m(k)
    s1 = s2;
    [k,m,s1]
    e = e + 1; % input signal e(k)
    m_old(k+1,:) = m;
end
%% 
% that solves the difference equation of a digital controller.
% 
% *(a)* Find the transfer function of the controller from input $e\left(\ldotp 
% \right)$ to output $m\left(\ldotp \right)$.
% 
% From the first several lines of the code, we can see that
% 
% $$e\left(0\right)=0,{\;s}_1 \left(0\right)=0,\textrm{and}\;m\left(k\right)=\frac{1}{2}s_2 
% \left(k\right)-s_1 \left(k\right)$$
% 
% Then, the future value of $s_1$ is assigned from the present value of $s_2$ 
% or simply $\to s_1 \left(k+1\right)=s_2 \left(k\right)$
% 
% Using this information, we can make a substitution into $m\left(k\right)$:
% 
% $$m\left(k\right)=\frac{1}{2}s_1 \left(k+1\right)-s_1 \left(k\right)$$
% 
% Observing that the present value of $s_2 \left(k\right)=e\left(k\right)-s_1 
% \left(k\right)$ can now be updated from previous findings, such that:
% 
% $s_1 \left(k+1\right)=e\left(k\right)-s_1 \left(k\right)$ or rearranging, 
% $e\left(k\right)=s_1 \left(k+1\right)+s_1 \left(k\right)$
% 
% Now adding together definitions of $m\left(k\right)\;\textrm{and}\;e\left(k\right)$ 
% we find:
% 
% $$m\left(k\right)+e\left(k\right)=\frac{1}{2}s_1 \left(k+1\right)-s_1 \left(k\right)+s_1 
% \left(k+1\right)+s_1 \left(k\right)$$
% 
% $m\left(k\right)+e\left(k\right)=\frac{3}{2}s_1 \left(k+1\right)$ or rearranging 
% in terms of $s_1$
% 
% $$s_1 \left(k+1\right)=\frac{2}{3}\left(m\left(k\right)+e\left(k\right)\right)$$
% 
% then we can substitute $k$ for $k-1$
% 
% $$s_1 \left(k\right)=\frac{2}{3}\left(m\left(k-1\right)+e\left(k-1\right)\right)$$
% 
% Then using the previous definitions of $s_1 \left(k\right)\;\textrm{and}\;s_1 
% \left(k+1\right)$, we get:
% 
% $s_1 \left(k+1\right)=e\left(k\right)-s_1 \left(k\right)\to \frac{2}{3}\left(m\left(k\right)+e\left(k\right)\right)=e\left(k\right)-\frac{2}{3}\left(m\left(k-1\right)+e\left(k-1\right)\right)$ 
% , and then lastly we arrange the equation in terms of the output $m\left(k\right)$:
% 
% $$m\left(k\right)=\frac{3}{2}e\left(k\right)-e\left(k\right)-e\left(k-1\right)-m\left(k-1\right)$$
% 
% $$m\left(k\right)=\frac{1}{2}e\left(k\right)-e\left(k-1\right)-m\left(k-1\right)$$
% 
% Now, gathering like-terms on each side and taking the z-transform we find 
% the tranfer function to be:
% 
% $$m\left(k\right)+m\left(k-1\right)=\frac{1}{2}e\left(k\right)-e\left(k-1\right)$$
% 
% $$\begin{array}{l}M\left(z\right)\left(1+z^{-1} \right)=E\left(z\right)\left(\frac{1}{2}-z^{-1} 
% \right)\\\frac{M\left(z\right)}{E\left(z\right)}=\frac{{1/2-z}^{-1} }{1+z^{-1} 
% }\;\textrm{or}\;\frac{1/2z-1}{z+1}\end{array}$$
% 
% *(b)* Find the $z$-transform of the controller input $\{e(k)\}_{k=0}^{\infty}$
% 
% Since the sequence $e\left(k\right)$ increased linearly with each value of 
% $k$
% 
% $$e\left(k\right)=k$$
% 
% which, we can use the common transform pair  $k\leftrightarrow \frac{z}{{\left(z-1\right)}^2 
% }$. So,
% 
% $$E\left(z\right)=\frac{z}{{\left(z-1\right)}^2 }$$
% 
% *(c)* Use the results of parts (a) and (b) to find the inverse $z$-transform 
% of the controller output.
% 
% $$M\left(z\right)=E\left(z\right)\left(\frac{1/2z-1}{z+1}\right)\to \frac{z}{{\left(z-1\right)}^2 
% }\frac{1/2z-1}{z+1}\to \frac{z\left(1/2z-1\right)}{{\left(z-1\right)}^2 \left(z+1\right)}$$
% 
% Then we can use Partial Fraction Expansion of the rational function:
% 
% $$\begin{array}{l}\frac{M\left(z\right)}{z}=\frac{\left(1/2z-1\right)}{{\left(z-1\right)}^2 
% \left(z+1\right)}\\\;\frac{M\left(z\right)}{z}=\frac{A_0 }{\left(z-1\right)}+\frac{A_1 
% }{{\left(z-1\right)}^2 }+\frac{A_2 }{\left(z+1\right)}\end{array}$$
% 
% Using MATLAB to solve for the poles and corresponding residues:

b = [1/2 -1]; a = conv([1 -2 1],[1 1])
[R,P,K] = residue(b,a)
%% 
% We find that the Z-Transform of the Output is: 
% 
% $$\frac{M\left(z\right)}{z}=\frac{3/8}{\left(z-1\right)}-\frac{1/4}{{\left(z-1\right)}^2 
% }-\frac{3/8}{\left(z+1\right)}\;$$
% 
% $$M\left(z\right)=\frac{3/8z}{\left(z-1\right)}-\frac{1/4z}{{\left(z-1\right)}^2 
% }-\frac{3/8z}{\left(z+1\right)}\;$$
% 
% Then, again using commons transform pairs: $k\leftrightarrow \frac{z}{{\left(z-1\right)}^2 
% },\;1\leftrightarrow \frac{z}{z-1},a^k \leftrightarrow \frac{z}{z-a}$
% 
% $m\left(k\right)=\frac{3}{8}-\frac{1}{4}k-\frac{3}{8}{\left(-1\right)}^k$ 
% or simplifying like terms:
% 
% $$m\left(k\right)=\frac{3}{8}\left(1-{\left(-1\right)}^k \right)-\frac{1}{4}k$$
% 
% *(d)* Run the program to check the results of part (c). Attach results to 
% report.

syms k0
mk = (3/8) * (1-(-1)^k0) - (1/4)*k0
m_new = zeros(11,1);
for k = 0:10 
m_new(k+1,:) = subs(mk,k0,k);
end
disp(m_old)
disp(m_new)
%% 
% After storing the original values of the output $m\left(k\right)$ for $k=0$ 
% to $10$, and comparing them to the calculated output, we can see that all the 
% values match. 
% 
% Thus, the results from part (c) are equivalent to all the original program 
% values for $m\left(k\right)$
%% Problem 4
% A sinusoid is applied to a sampler/zero-order-hold device, with a distorted 
% sine wave appearing at the output, as shown in Fig. 3-15
% 
% 
% 
% *(a)* With the sinusoid of unity amplitude and frequency $2\;\textrm{Hz},$ 
% and with $f_s =12\;\textrm{Hz},$ find the amplitude and phase of the component 
% in the output at $f_1 =2\;\textrm{Hz}\ldotp$
% 
% Magnitude and Phase Responses for Zero-Order Hold are:
% 
% $\Big|G_{h0}(j\omega)\Big| = T\bigg|\frac{\sin(\pi\omega/\omega_s)}{\pi\omega/\omega_s}\bigg|$ 
% and $\angle G_{\textrm{h0}} \left(j\omega \right)=-\frac{\pi \omega }{\omega_s 
% }+\theta$     
% 
% Substituting values for $T=1$ (unity), $\omega =2\pi \left(2\;\textrm{Hz}\right)=4\pi 
% ,$ and $\omega_s =2\pi \left(12\;\textrm{Hz}\right)=24\pi$, we get:
% 
% $$\Big|G_{h0}(j\omega)\Big| = \bigg|\frac{\sin(\pi(4\pi)/(24\pi))}{\pi(4\pi)/(24\pi)}\bigg| 
% =   \bigg|\frac{\sin(\pi/6)}{\pi/6}\bigg|$$ $$=0\ldotp 955$$
% 
% $$\angle G_{\textrm{h0}} \left(j\omega \right)=-\frac{\pi \omega }{\omega_s 
% }+\theta$$
% 
% To evaluate the value of $\theta$, we check that when 
% 
% $$\sin \left(\frac{\pi \omega }{\omega_s }\right)>0\to \theta =0$$
% 
% $$\sin \left(\frac{\pi \omega }{\omega_s }\right)<0\to \theta =\pi$$
% 
% Evaluating $\sin \left(\frac{\pi \omega }{\omega_s }\right)\;\textrm{we}\;\textrm{get}:$
% 
% $\sin \left(\frac{\pi \left(4\pi \right)}{\left(24\pi \right)}\right)=\sin 
% \left(\frac{\pi }{6}\right)=\frac{1}{2}>0\;,$ Thus, $\theta =0$
% 
% Using all this information, we find the phase response of the distorted sine 
% wave to be: 
% 
% $$\angle G_{\textrm{h0}} \left(j\omega \right)=-\frac{\pi \omega }{\omega_s 
% }+\theta$$
% 
% $$\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;=-\frac{\pi \left(4\pi \right)}{\left(24\pi 
% \right)}+0$$
% 
% $$\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;=-\frac{\pi }{6}$$
% 
% $$\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;=-{30}^{\circ }$$
% 
% Thus, the magnitude and phase response of the distorted sine wave is: $0\ldotp 
% 955\angle -{30}^{\circ }$

%Prove with MATLAB
fs = 12; f1 = 2; T = 1;
ws = 2*pi*fs; w1 = 2*pi*f1;
Gh0_mag = T*abs((sin(pi*w1/ws)/(pi*w1/ws)))
if (sin(pi*w1/ws) > 0)
    theta = 0
else
    theta = pi
end
Gh0_deg = - ((pi*w1/ws) + theta)*(180/pi)
%% 
% *(b)* Repeat part (a) for the component in the output at $\left(f_s -f_1 \right)=10\;\textrm{Hz}$.
% 
% $\Big|G_{h0}(j\omega)\Big| = T\bigg|\frac{\sin(\pi\omega/\omega_s)}{\pi\omega/\omega_s}\bigg|$ 
% and $\angle G_{\textrm{h0}} \left(j\omega \right)=-\frac{\pi \omega }{\omega_s 
% }+\theta$     
% 
% Substituting values for $T=1$ (unity), $\omega =2\pi \left(12-2\right)=20\pi 
% ,$ and $\omega_s =2\pi \left(12\;\textrm{Hz}\right)=24\pi$, we get:
% 
% $$\Big|G_{h0}(j\omega)\Big| = \bigg|\frac{\sin(\pi(20\pi)/(24\pi))}{\pi(20\pi)/(24\pi)}\bigg| 
% =   \bigg|\frac{\sin(\pi(5/6)}{\pi(5/6)}\bigg|$$ $$=0\ldotp 191$$
% 
% $$\angle G_{\textrm{h0}} \left(j\omega \right)=-\frac{\pi \omega }{\omega_s 
% }+\theta$$
% 
% To evaluate the value of $\theta$, we check that when 
% 
% $$\sin \left(\frac{\pi \omega }{\omega_s }\right)>0\to \theta =0$$
% 
% $$\sin \left(\frac{\pi \omega }{\omega_s }\right)<0\to \theta =\pi$$
% 
% Evaluating $\sin \left(\frac{\pi \omega }{\omega_s }\right)\;\textrm{we}\;\textrm{get}:$
% 
% $\sin \left(\frac{\pi \left(20\pi \right)}{\left(24\pi \right)}\right)=\sin 
% \left(\pi \left(5/6\right)\right)=\frac{1}{2}>0\;,$ Thus, $\theta =0$
% 
% Using all this information, we find the phase response of the distorted sine 
% wave to be: 
% 
% $$\angle G_{\textrm{h0}} \left(j\omega \right)=-\frac{\pi \omega }{\omega_s 
% }+\theta$$
% 
% $$\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;=-\frac{\pi \left(20\pi \right)}{\left(24\pi 
% \right)}+0$$
% 
% $$\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;=-\pi \left(\frac{5}{6}\right)$$
% 
% $$\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;\;=-{150}^{\circ }$$
% 
% Thus, the magnitude and phase response of the component in the output at $\left(f_s 
% -f_1 \right)=10\;\textrm{Hz}$ is: $0\ldotp 191\angle -{150}^{\circ }$

%Prove with MATLAB
fs = 12; f2 = fs - f1; T = 1;
ws = 2*pi*fs; w2 = 2*pi*f2;
Gh0_mag = T*abs((sin(pi*w2/ws)/(pi*w2/ws)))
if (sin(pi*w2/ws) > 0)
    theta = 0
else
    theta = pi
end
Gh0_deg = - ((pi*w2/ws) + theta)*(180/pi)
%% 
% *(c)* Repeat parts (a) and (b) for a sampler-first-order-hold device.
% Magnitude Response of First-Order Hold:
% $$|G_{\textrm{h1}} \left(j\omega \right)|=T\sqrt{1+\frac{4\pi^2 \omega^2 }{\omega_s^2 
% }}{\left\lbrack \frac{\sin \left(\pi \omega /\omega_s \right)}{\pi \omega /\omega_s 
% }\right\rbrack }^2$$
% Phase Response of First-Order Hold:
% $$\angle G_{\textrm{h1}} \left(j\omega \right)=\tan^{-1} \left(\frac{2\pi 
% \omega }{\omega_s }\right)-\frac{2\pi \omega }{\omega_s }$$

% Calculate part (a) specifications using First-Order-Hold with MATLAB
fs = 12; f1 = 2; T = 1;
ws = 2*pi*fs; w1 = 2*pi*f1;
Gh1_mag = T*sqrt(1 + (4*pi^2*w1^2)/(ws^2))*(sin(pi*w1/ws)/(pi*w1/ws))^2
Gh1_deg = (atan(2*pi*w1/ws) - (2*pi*w1/ws))*(180/pi)
%% 
% Thus, the magnitude and phase response of the distorted sine wave using First-Order-Hold 
% is: $1\ldotp 32\angle -{13\ldotp 7}^{\circ }$

% Calculate part (b) specifications using First-Order-Hold with MATLAB
fs = 12; f2 = fs - f1; T = 1;
ws = 2*pi*fs; w2 = 2*pi*f2;
Gh1_mag = T*sqrt(1 + (4*pi^2*w2^2)/(ws^2))*(sin(pi*w2/ws)/(pi*w2/ws))^2
Gh1_deg = (atan(2*pi*w2/ws) - (2*pi*w2/ws))*(180/pi)
%% 
% Thus, the magnitude and phase response of the component in the output at $\left(f_s 
% -f_1 \right)=10\;\textrm{Hz}$ using First-Order-Hold is: $0\ldotp 194\angle 
% -{220\ldotp 8}^{\circ }$
% 
% *(d)* Comment on the distortion in the data-hold output for the cases considered 
% in parts (a), (b), and (c). 
% 
% For the frequency of the component at $f_s -f_1 =10\;\textrm{Hz}$ the magnitude 
% response of both the Zero-Order-Hold and First-Order Hold are about equal with 
% different phases. 
% 
% However, when analyzing the frequency component at $f_1 =2\;\textrm{Hz}$, 
% the Zero-Order-Hold yielded a magnitude response of $0\ldotp 955$ and the First-Order-Hold 
% yielded a magnitude response of $1\ldotp 32$, which shows that the Zero-Order-Hold 
% was more consistent in the case for lower frequency components.