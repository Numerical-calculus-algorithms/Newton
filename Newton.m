% Newton's method for root-finding

function[x, nit, res]=Newton(f, df, x0, tol, maxIter)

for nit = 1:maxIter

    fx = f(x0); % Function evaluation
    dfx = df(x0); % First derivate evaluation

    if dfx == 0 % Simple zero check
        return
    end

    x = x0 - fx/dfx; % Iteration formula

    err = abs(-fx/dfx); % Relative error calculation

    if err < tol
        return
    end

    res(end + 1, 1) = abs(fx);
    fprintf('%i \t%1.10f \t  %.2e \t  %.2e\n', nit, x, err, res(end))
    x0 = x;

end