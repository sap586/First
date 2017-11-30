function [x,y,z]=forwardkinematics (a1,a2,d1,d2,theta1,theta2)
A1 = [cos(theta1) -sin(theta1) 0.0 a1*cos(theta1);
    sin(theta1) cos(theta1) 0.0 a1*cos(theta1);
    0 0 1 d1
    0 0 0 1];
A2=[cos(theta2) -sin(theta2) 0 a2*cos(theta2);
    sin(theta2) cos(theta2) 0 a2*cos(theta2);
    0 0 1 d2
    0 0 0 1];
A=A1*A2;
x= A(1,4);
y=A(2,4);
z=A(3,4);
disp('abc');

end
