# OSX Bootstrap

Creates a Javascript and Go development environment on a mac.

<p align="center">
 <a href="https://www.buymeacoffee.com/elliotevans">
   <img width="450" height="225" src="https://i.imgur.com/urT5zdX.png">
 </a>
</p>

## Purpose of this project?

* Installation and configuration of Homebrew
* Creates Development Folders
* Sets up GitHub (mostly)**
* Updates Ruby and Python to the latest versions
* Installs and configures Fish
* Configures OSX defaults and OSX Security Defaults
* Adds applications to Dock from preference

### Homebrew list
- brew packages
- cask for apps
- mas for app store apps

### How to use

Clone the repo and run the setup bash file

### Setup

1. Clone this repo:

     ```
     git clone --depth=1 -b master https://github.com/elliot-evans-95/osx-bootstrap.git "$HOME/OSX-Bootstrap"
     ```
     
2. Run the setup script for your machine:

     ```
     bash $HOME/OSX-Bootstrap/start.bash
     ```

### Contributing

Open an issue with your recommendation or Make a pull request

### Special thanks
A Thank you to [kcrawford](https://github.com/kcrawford) for creating [dockutil](https://github.com/kcrawford/dockutil) 
so the dock can be configured
