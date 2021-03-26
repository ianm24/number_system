% Code written by Ian McDowell
function numM = get_number_negative(num)
    numM = -1;
    if num > 20000
       return;
    end
    
    if num < 10
       numM = get_digit_negative(num);
       return;
    end
    
    if num < 100
        ten = floor(num/10);
        numM = get_tens_negative(ten*10,true) + get_number_negative(num-(ten*10));
        numM(numM~=0) = 1;
        return;
    end
    
    if num < 1000
        hund = floor(num/100);
        numM = get_hundreds_negative(hund*100,true) + get_number_negative(num-(hund*100));
        numM(numM~=0) = 1;
        return;
    end
    
    if num < 10000
        thous = floor(num/1000);
        numM = get_thousands_negative(thous*1000,true) + get_number_negative(num-(thous*1000));
        numM(numM~=0) = 1;
        return;
    end
    
    if num <= 19999
        numM = get_thousands_negative(10000,true) + get_number_negative(num-10000);
        numM(numM~=0) = 1;
        return;
    end
    
    if num == 20000
        numM = get_digit_negative(1) +  get_number_negative(19999);
        numM(numM~=0) = 1;
        return;
    end
end