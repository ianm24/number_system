% Code written by Ian McDowell
function hundredsM = get_hundreds_negative(hundreds,nonzero)
    num = hundreds/100;
    load('number_system.mat');
    if(nonzero)
       hundredsM = double(~nonzero_hundreds(1:25,(25*(num-1)+1):(25*(num)))); 
    else
       hundredsM = double(~hundreds(1:25,(25*(num-1)+1):(25*(num))));
    end
end