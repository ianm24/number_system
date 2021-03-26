% Code written by Ian McDowell
function tensM = get_tens(tens,nonzero)
    num = tens/10;
    load('number_system.mat');
    if(nonzero)
       tensM = nonzero_tens(1:25,(25*(num-1)+1):(25*(num))); 
    else
       tensM = tens(1:25,(25*(num-1)+1):(25*(num)));
    end
end