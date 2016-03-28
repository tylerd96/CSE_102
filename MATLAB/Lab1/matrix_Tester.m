a = ones(3);
b = [1 2 3;2 3 4;3 4 5];
disp(a);
disp(b);
disp(a+b);
disp(a-b);
disp(a*b);
disp(a/b);
c = eye(5);
disp(c);
disp(a(3,3)-b(3,3));
for x = 1:3
    for y = 1:3
        z(x,y) = rand();
    end
end
disp(z);