function result = plot_error()
%newsmat2----------------
X = [500,1000,1500,3028];
O1 = [18.54];
O2 = [15.42];
O3 = [13.58];
O4 = [10.36];

A1 = [19.34];
A2 = [14.33];
A3 = [14.43];
A4 = [13.49];

OP1 = [14.38];
OP2 = [12.64];
OP3 = [12.39];
OP4 = [10.76];

AP1 = [14.38];
AP2 = [12.79];
AP3 = [12.59];
AP4 = [11.20];

B1 = [23.00];
B2 = [15.77];
B3 = [17.40];
B4 = [14.43];


O = [mean(O1), mean(O2), mean(O3), mean(O4)];
A = [mean(A1), mean(A2), mean(A3), mean(A4)];
OP = [mean(OP1), mean(OP2), mean(OP3), mean(OP4)];
AP = [mean(AP1), mean(AP2), mean(AP3), mean(AP4)];
B = [mean(B1), mean(B2), mean(B3), mean(B4)];
%e = [std(Y1) std(Y2) std(Y3) std(Y4)];
result = plot(X,O,'--r',X,A, '--y',X, OP, '--g',X,AP,'--c',X,B,'--b');
%red = Online Perceptron 1
%yellow = Average Perceptron 1
%green = Online Perceptron 5
%cyan = Average Perceptron 5
%blue = BNB
%errorbar(X, Y, e);
%newsmat3---------------------------
X = [500,1000,1500,3523];
O1 = [16.81];
O2 = [16.09];
O3 = [11.23];
O4 = [11.74];

A1 = [15.06];
A2 = [13.83];
A3 = [10.77];
A4 = [10.47];

OP1 = [15.19];
OP2 = [15.11];
OP3 = [12.13];
OP4 = [9.79];

AP1 = [14.43];
AP2 = [13.74];
AP3 = [11.87];
AP4 = [10.47];

B1 = [30.47];
B2 = [26.00];
B3 = [21.96];
B4 = [19.06];


O = [mean(O1), mean(O2), mean(O3), mean(O4)];
A = [mean(A1), mean(A2), mean(A3), mean(A4)];
OP = [mean(OP1), mean(OP2), mean(OP3), mean(OP4)];
AP = [mean(AP1), mean(AP2), mean(AP3), mean(AP4)];
B = [mean(B1), mean(B2), mean(B3), mean(B4)];
%e = [std(Y1) std(Y2) std(Y3) std(Y4)];
result1 = plot(X,O,'--r',X,A, '--y',X, OP, '--g',X,AP,'--c',X,B,'--b');
end
