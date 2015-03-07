function [mask, height, width, x_start, y_start, x_end, y_end] = feature_case(help, feature)


switch feature 
    case 'forehead'
        [mask, height, width, x_start, y_start, x_end, y_end] = forehead(help);
    case 'eyes_nose'
        [mask, height, width, x_start, y_start, x_end, y_end] = eyes_nose(help);
    case 'lips'
        [mask, height, width, x_start, y_start, x_end, y_end] = lips(help);
    case 'nostril'
        [mask, height, width, x_start, y_start, x_end, y_end] = nostril(help);
    case 'lips_2'
        [mask, height, width, x_start, y_start, x_end, y_end] = lips_2(help);
     case 'fit1'
        [mask, height, width, x_start, y_start, x_end, y_end]= fit1(help);
    case 'fit2'
        [mask, height, width, x_start, y_start, x_end, y_end] = fit2(help);
    case 'fit3'
       [mask, height, width, x_start, y_start, x_end, y_end] = fit3(help);
    case 'fit4'
      [mask, height, width, x_start, y_start, x_end, y_end] = fit4(help);
end



end

