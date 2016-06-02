function hough_lines_draw(img, centers, radii)
    % Draw lines found in an image using Hough transform.
    %
    % img: Image on top of which to draw lines
    % centers: each row of centers represents the center point of a circle
    % radii: each row of radii represents the corresponding radius for the circle center
    figure();
    imshow(img);
    hold on;
    for i = 1 : size(centers, 1)
        r = radii(i);
        center_x = centers(i, 2);
        center_y = centers(i, 1);
        theta = linspace(0, 2 * pi, 360);
        xx = center_x + r * cos(theta);
        yy = center_y + r * sin(theta);
        plot(xx, yy,'g', 'LineWidth', 2);
    end
end
