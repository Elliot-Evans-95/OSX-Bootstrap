# OSX Bootstrap

Creates a development environment in any mac machine just by running one script.

## Purpose of this project?

* Installation and configuration of Homebrew
* Creates Development Folders
* Creates SSH key
* Configurates GitHub
* Installs NVM (for node)
* Updates Ruby to latets version
* Installs and configures Zsh
* Configurates OSX defaults and OSX Security Defaults
* Adds applications to Dock from preference

### How to use this?

Simply Clone / Download the repo and run the setup bash file

### Prefered Setup

1. Move all your existing apps into the applications folder 
2. Download the development tools for terminal
3. Clone this repo:

     ```
     git clone --depth=1 -b master https://github.com/elliot-evans-95/osx-bootstrap.git "$HOME/OSX-Bootstrap"
     ```
     
4. Run the setup script for your machine:

     ```
     cd OSX-Bootstrap
     bash start.bash
     ```

That's it!
