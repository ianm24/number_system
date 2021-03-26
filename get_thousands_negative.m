% Code written by Ian McDowell
function thousandsM = get_thousands_negative(thousands,nonzero)
    num = thousands/1000;
    load('number_system.mat');
    if num == 10
        thousandsM = double(~ten_k);
    else if nonzero
       thousandsM = double(~nonzero_thousands(1:25,(25*(num-1)+1):(25*(num)))); 
    else
       thousandsM = double(~thousands(1:25,(25*(num-1)+1):(25*(num))));
    end
end