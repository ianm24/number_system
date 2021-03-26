% Code written by Ian McDowell
function numM = get_number(num)
    load('number_system.mat');
    numM = get_number_negative(num);
    numM = uint8(~numM);
    return;
end