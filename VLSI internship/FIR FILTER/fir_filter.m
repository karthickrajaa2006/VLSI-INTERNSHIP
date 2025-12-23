x = [1 2 3 4 5 6];
h = [0.2 0.2 0.2 0.2 0.2];

y = conv(x,h);

stem(y);
title('FIR Filter Output');
xlabel('n');
ylabel('Amplitude');
