classdef pixelgrid_test < matlab.unittest.TestCase
    methods (Test)
        % Test methods

        function pixelgridCreation(test_case)
            fig = figure;
            addTeardown(test_case,@() close(fig));

            ax = axes(Parent = fig);
            im = imshow(ones(100,100), Parent = ax);
            pixelgrid(im);

            grp = findobj(ax,Type = "hggroup", Tag = "pixelgrid");
            test_case.verifyNotEmpty(grp);
        end

        function pixelgridVisibility(test_case)
            fig = figure;
            addTeardown(test_case,@() close(fig));

            ax = axes(Parent = fig);
            im = imshow(ones(100,100), Parent = ax);
            pixelgrid(im);
            grp = findobj(ax, Type = "hggroup", Tag = "pixelgrid");
            
            pixel_extent = getImagePixelExtentInches(im);
            image_zoom_level = getImageZoomLevel(im);

            r = 0.2 / min(pixel_extent);
            setImageZoomLevel(image_zoom_level * 2 * r,im);
            drawnow
            test_case.verifyTrue(grp.Visible);

            setImageZoomLevel(image_zoom_level / (2*r),im);
            drawnow
            test_case.verifyFalse(grp.Visible);
        end

        function outputArgument(test_case)
            fig = figure;
            addTeardown(test_case,@() close(fig));
            ax = axes(Parent = fig);
            im = imshow(ones(3,3),Parent = ax);

            grp = pixelgrid(im);
            test_case.verifyClass(grp,"matlab.graphics.primitive.Group")
        end

        function deletedImage(test_case)
            % Verify that the axes listener fires harmlessly, without
            % error, if the image is deleted.
            fig = figure;
            addTeardown(test_case,@() close(fig));
            ax = axes(Parent = fig);
            im = imshow(ones(3,3),Parent = ax);

            pixelgrid(im);
            drawnow;

            % Delete the image object and then resize the figure. Should
            % execute without error.
            delete(im);
            fig.Position = [1 1 1.1 1] .* fig.Position;
            drawnow
        end

        function createAnotherPixelGrid(test_case)
            % Create a pixel grid. Delete the image out of the axes and add
            % another image to it. Create a pixel grid again. Verify that
            % there is only one pixel grid present and that it is the
            % second one created.

            fig = figure;
            addTeardown(test_case,@() close(fig));
            ax = axes(Parent = fig);
            im1 = image(ax,ones(3,3));
            pixelgrid(im1);
            drawnow

            delete(im1)
            drawnow

            im2 = image(CData = ones(4,4), Parent = ax);
            grid2 = pixelgrid(im2);
            drawnow

            grids = findobj(ax, Type = "hggroup", Tag = "pixelgrid");
            test_case.verifyEqual(grids,grid2);
        end

        function noImageInFigure(test_case)
            fig = figure;
            addTeardown(test_case,@() close(fig));

            test_case.verifyError(@() pixelgrid(fig), ...
                "pixelgrid:ImageNotFoundInTarget")
        end

        function invalidTarget(test_case)
            test_case.verifyError(@() pixelgrid(5), ...
                "pixelgrid:InvalidTarget");
        end
    end

end
