% Code written by Ian McDowell
function tensM = get_tens_negative(tens,nonzero)
    num = tens/10;
    load('number_system.mat');
    if(nonzero)
       tensM = double(~nonzero_tens(1:25,(25*(num-1)+1):(25*(num)))); 
    else
       tensM = double(~tens(1:25,(25*(num-1)+1):(25*(num))));
    end
end