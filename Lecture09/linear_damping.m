% Linear damping mass-spring-damper example solved using Euler Cromer
% With zero external force
function linear_damping()
    mu = 0.5;
    g = 9.81;
    k_s = 1;
    
    s_f = @(u) k_s*u;
    om = 0.9;
    A = 0.5;
    F = @(t) A * sin(om * t);
    m = 1;
    c_f = @(v) sign(v) * mu * m * g;
    
    U_0 = 1;
    V_0 = 0;
    T = 120*pi;
    dt = T/5000;
    [t, u, v] = EulerCromer(c_f, s_f, F, m, T, U_0, V_0, dt);
%     plot(t, u, t, v);
    plot(t, u);
end