% Code written by Ian McDowell
function digitM = get_digit(digit)
    load('number_system.mat');
    digitM = digits_0_to_9(1:25,(25*(digit)+1):(25*(digit+1)));
end