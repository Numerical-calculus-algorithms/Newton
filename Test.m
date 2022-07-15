%% Primo test metodo di Newton
f =@(x) x^2 - 2;
df =@(x) 2*x;
tol = 1e-10;
x0 = 1.5;
nitMax = 10;
fprintf("<strong>Passo\t   Valore x \tStima errore\t   Residuo</strong>\n")
Newton(f,df,x0,tol,nitMax);

%% Secondo test metodo di Newton
f =@(x) cos(x) +1;
df =@(x) -sin(x);
tol = 1e-10;
x0 = 3.2;
nitMax = 100;
fprintf("<strong>Passo\t   Valore x \tStima errore\t   Residuo</strong>\n")
Newton(f,df,x0,tol,nitMax);

%% Terzo test metodo di Newton
f =@(x) cos(x);
df =@(x) -sin(x);
tol = 1e-10;
x0 = 1.5;
nitMax = 100;
fprintf("<strong>Passo\t   Valore x \tStima errore\t   Residuo</strong>\n")
Newton(f,df,x0,tol,nitMax);