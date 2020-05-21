# PixelCade plugin for AttractMode front end

## DESCRIPTION:

Pixelcade plugin is for the [AttractMode](http://attractmode.org) front end that communicates with the [Pixelcade Marquee](http://pixelcade.org). It will fade the screen when transitioning to and from a game.


## Prerequisites
* Pixelcade web listener installed
* curl installed and avaiable in $PATH

## Paths

You may need to change file paths and scripts as necessary as each platform (windows, mac, linux) has a slightly different directory structure.
This project was developed on a Ubuntu platfrom, so it probably will work on a Raspberry Pi.

## Install Files

1. Copy Pixelcade folder to `$HOME/.attract/plugins/`
2. Copy the files in the script folder to some path and remember it, as you will need it for plugin configuration

## Usage

You can enable the Pixelcade plugin by running Attract Mode and pressing the tab key to enter the configure menu. Navigate to `Plug-ins -> Pixelcade -> Enabled`. Enable the plugin and set the **Script path** to where you copied the helper scripts to. Also, set the **Front End Text** to the text you want to scroll while you are not playing a game. (e.g "Tony's Arcade")

## Notes

More functionality is expected as it meets my needs. If you have an idea of something to add that might benefit a wide range of layout developers, please join the AttractMode forum and send me a message, or file an issue or submit a PR here.
