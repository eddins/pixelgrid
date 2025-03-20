# Pixel Grid: Release Notes

## Version 2.0.4

Removed the add-on dependency information from toolboxOptions.m because the intended workflow is not clear.

## Version 2.0.3

There are no code or functional changes in this release. It is only for resolving an issue with the File Exchange connection.

## Version 2.0.2

**Live scripts.** Previously, when running inside a live script, the pixel grid visibility did not automatically update in response to zooming operations using the axes toolbar. This limitation still exists, and the documentation now includes tips for working around it. *#limitation*

**Pixel size threshold.** The pixel size threshold for grid visibility is now 0.25 inches, up from the previous value of 0.2 inches. *#compatibility-issue*

**Dependency change.** Pixel Grid now requires version 2.0.2 of the [Image Zoom Level and Pan Utilities add-on](https://www.mathworks.com/matlabcentral/fileexchange/167316-image-zoom-level-and-pan-utilities). *#compatibility-issue*


## Version 2.0.1

**Dependency check.** Pixel Grid now checks for the required version of the [Image Zoom Level and Pan Utilities add-on](https://www.mathworks.com/matlabcentral/fileexchange/167316-image-zoom-level-and-pan-utilities). An error message is issued of the add-on is not present.

## Version 2.0.0

**Automatic grid visibility**. The pixel grid automatically becomes visible whenever the pixel size goes above a certain threshold (0.2 inches). It automatically becomes invisible again when the pixel size drops below that threshold. *#compatibility-issue*

**Grid appearance.** The line widths, styles, and colors of the pixel grid have been been changed to improve the overall appearance. *#compatibility-issue*
