function [mask, height, width, x_start, y_start] = feature_case(help, feature)


switch feature 
    case 'forehead'
        [mask, height, width, x_start, y_start] = forehead(help);
    case 'eyes_nose'
        [mask, height, width, x_start, y_start] = eyes_nose(help);
    case 'lips'
        [mask, height, width, x_start, y_start] = lips(help);
    case 'nostril'
        [mask, height, width, x_start, y_start] = nostril(help);
    case 'lips_2'
        [mask, height, width, x_start, y_start] = lips_2(help);
     case 'fit1'
        [mask, height, width, x_start, y_start] = fit1(help);
    case 'fit2'
        [mask, height, width, x_start, y_start] = fit2(help);
    case 'fit3'
        [mask, height, width, x_start, y_start] = fit3(help);
    case 'fit4'
        [mask, height, width, x_start, y_start] = fit4(help);
end



end

