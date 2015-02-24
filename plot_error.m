function result = plot_error()
X = [500,1000,1500,3028];
O1 = [18.54]
O2 = [15.42]
O3 = [13.58]
O4 = [10.36]

A1 = [19.34]
A2 = [14.33]
A3 = [14.43]
A4 = [13.49]

OP1 = [14.38]
OP2 = [12.64]
OP3 = [12.39]
OP4 = [10.76]

AP1 = [14.38]
AP2 = [12.79]
AP3 = [12.59]
AP4 = [11.20]

B1 = [23.00]
B2 = [15.77]
B3 = [17.40]
B4 = [14.43]


O = [O1, O2, O3, O4];
A = [A1, A2, A3, A4];
OP = [OP1, OP2, OP3, OP4];
AP = [AP1, AP2, AP3, AP4];
B = [B1, B2, B3, B4];
%e = [std(Y1) std(Y2) std(Y3) std(Y4)];
result = plot(X,O,'--r',X,A, '--y',X, OP, '--g',X,AP,'--c',X,B,'--b');
%red = Online Perceptron 1
%yellow = Average Perceptron 1
%green = Online Perceptron 5
%cyan = Average Perceptron 5
%blue = BNB
errorbar(X, Y, e);

end
