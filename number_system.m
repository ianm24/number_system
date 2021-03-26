% Code written by Ian McDowell
clear all; close all; clc;
load('number_system.mat');

% ten thousand
im = image(255*ten_k); axis off; colormap gray;
title = sprintf('./number_images/%d.png',10000);
saveas(im,title);
for i = 1:1:10
    % digits
    im = image(255*digits_0_to_9(1:25,(25*(i-1)+1):(25*(i)))); axis off; colormap gray;
    title = sprintf('./number_images/%d.png',i-1);
    saveas(im,title);
    
    if i == 10
        return;
    end
    
    % tens
    im = image(255*tens(1:25,(25*(i-1)+1):(25*(i)))); axis off; colormap gray;
    title = sprintf('./number_images/%d.png',10*i);
    saveas(im,title);
    im = image(255*nonzero_tens(1:25,(25*(i-1)+1):(25*(i)))); axis off; colormap gray;
    title = sprintf('./number_images/nonzero_%d.png',10*i);
    saveas(im,title);
    
    % hundreds
    im = image(255*hundreds(1:25,(25*(i-1)+1):(25*(i)))); axis off; colormap gray;
    title = sprintf('./number_images/%d.png',100*i);
    saveas(im,title);
    im = image(255*nonzero_hundreds(1:25,(25*(i-1)+1):(25*(i)))); axis off; colormap gray;
    title = sprintf('./number_images/nonzero_%d.png',100*i);
    saveas(im,title);
    
    % thousands
    im = image(255*thousands(1:25,(25*(i-1)+1):(25*(i)))); axis off; colormap gray;
    title = sprintf('./number_images/%d.png',1000*i);
    saveas(im,title);
    im = image(255*nonzero_thousands(1:25,(25*(i-1)+1):(25*(i)))); axis off; colormap gray;
    title = sprintf('./number_images/nonzero_%d.png',1000*i);
    saveas(im,title);
end

clear i; clear im; clear title;
close all;