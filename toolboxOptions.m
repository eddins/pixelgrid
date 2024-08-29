function opts = toolboxOptions

    toolbox_folder = "toolbox";

    % The following identifier was automatically generated
    % and should remain unchanged for the life of the toolbox.
    identifier = "3e089b61-b957-408a-ab22-7c2eb8406875";

    opts = matlab.addons.toolbox.ToolboxOptions(toolbox_folder,identifier);

    opts.ToolboxName = "Pixel Grid";

    % Version number of the toolbox. Use semantic version numbers of the
    % form MAJOR.MINOR.PATCH, such as "2.0.1". Increment the MAJOR version
    % when you make incompatible API changes. Increment the MINOR version
    % when you add functionality in a backward compatible manner. Increment
    % the PATCH version when you make backward compatible bug fixes.
    
    opts.ToolboxVersion = "2.0.1";

    % Folders to add to MATLAB path during toolbox installation, specified
    % as a string vector. When specifying ToolboxMatlabPath, include the
    % relative or absolute paths to the folders.

    opts.ToolboxMatlabPath = "toolbox";

    % Path to the toolbox Getting Started Guide, specified as a string. The
    % Getting Started Guide is a MATLAB code file (.m, .mlx) containing a
    % quick start guide for your toolbox. The path can be a relative path
    % or an absolute path.

    opts.ToolboxGettingStartedGuide = fullfile("toolbox",...
        "gettingStarted.mlx");

    % Path to the toolbox output file, specified as a string. The path can
    % be a relative path or an absolute path. If the file does not have a
    % .mltbx extension, MATLAB appends the extension automatically when it
    % creates the file.

    opts.OutputFile = fullfile("release","pixelgrid");
    
    % Latest MATLAB release that the toolbox is compatible with, specified
    % as a string using the format RXXXXx, for example, "R2023a". If there
    % is no maximum restriction, specify MaximumMatlabRelease as empty
    % ("").

    opts.MaximumMatlabRelease = "";

    % Earliest MATLAB release that the toolbox is compatible with,
    % specified as a string using the format RXXXXx, for example, "R2020a".
    % If there is no minimum restriction, specify MinimumMatlabRelease as
    % empty ("").

    opts.MinimumMatlabRelease = "R2019b";

    % Supported platforms

    platforms.Win64        = true;
    platforms.Glnxa64      = true;
    platforms.Maci64       = true;
    platforms.MatlabOnline = true;
    opts.SupportedPlatforms = platforms; 

    opts.Description = "The MATLAB function pixelgrid superimposes a " + ...
        "grid of pixel edges on an image. If the image is zoomed in " + ...
        "so that individual pixels are sufficiently large, then the " + ...
        "pixel grid automatically becomes visible. The grid can " + ...
        "be useful for determining where each pixel is located, " + ...
        "especially in regions where pixels have the same or " + ...
        "very similar colors.";

    opts.Summary = "The MATLAB function pixelgrid shows the edges " + ...
        "of image pixels.";

    opts.AuthorName = "Steve Eddins";

    % opts.AuthorEmail =

    % opts.AuthorCompany =

    % Path to the toolbox image file. Can be specified as a relative or
    % absolute path.
    %
    opts.ToolboxImageFile = "misc/pixel-grid-screenshot.png";

    % Files to be packaged in the toolbox, string vector. By default,
    % ToolboxFiles contains the list of all files in toolboxFolder.
    %
    % When specifying ToolboxFiles, include the relative or absolute paths
    % to the files. If you specify a folder, MATLAB adds all of the files
    % in the folder to ToolboxFiles.
    %
    % opts.ToolboxFiles = 

    % Toolbox apps gallery files, specified as a string vector. Apps
    % gallery files are MATLAB executable files (.m, .mex, .mlx, .mlapp,
    % .p) to add to apps gallery during toolbox installation. When
    % specifying AppGalleryFiles, include the relative or absolute paths to
    % the files.
    %
    % Files included in AppGalleryFiles must also be included in
    % ToolboxFiles.
    %
    % opts.AppGalleryFiles = 

    % Files to add to the Java class path during toolbox installation,
    % specified as a string vector. When specifying ToolboxJavaPath,
    % include the relative or absolute paths to the files.

    % opts.ToolboxJavaPath = 

    % Required add-ons to be downloaded and installed during toolbox
    % installation, specified as a struct vector. See the doc for
    % matlab.addons.toolbox.ToolboxOptions for more information.

    imzm_addon.Name = "Image Zoom Level and Pan Utilities";
    imzm_addon.Identifier = "5f282b56-740d-4296-8a73-c75e61f8c6e0";
    imzm_addon.EarliestVersion = "1.0.0";
    imzm_addon.LatestVersion = "1.0.0";
    imzm_addon.DownloadURL = "https://www.mathworks.com/matlabcentral/mlc-downloads/downloads/5f282b56-740d-4296-8a73-c75e61f8c6e0/e66c4b14-2069-45e2-8060-ab4d289ae2e5/packages/mltbx";
    opts.RequiredAddons = imzm_addon;

    % Additional required software packages to be downloaded and installed
    % during toolbox installation, specified as a struct vector. See the
    % doc for matlab.addons.toolbox.ToolboxOptions for more information.

    % opts.RequiredAdditionalSoftware = 
end
