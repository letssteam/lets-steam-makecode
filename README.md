# MakeCode editor for the Let's STEAM Project

This is an experimental code editor for STM32 boards.

## Who is this for?

This editor is meant for STM32 micro-controllers that are friendly to breadboarding. The editor is based on [Microsoft MakeCode](https://makecode.com).

## Codespaces

Edit this project directly from your browser using GitHub Codespaces. If you have access to them,

* open project in a new codespace
* launch the server

```
yarn serve
```

* click on the generated URL in the terminal output and voila!

## Local Dev Server

The local server lets you to run the editor and serve the documentation from your own computer.

### Setup

- Install [Node.js](https://nodejs.org/) 8.9.4 or higher.
- Install [Docker](https://www.docker.com/) if you are going to edit any `.cpp` files.

- If you are on Linux, you need to install the package `libudev-dev` for support USB.

- Clone this repository

```sh
git clone --recurse-submodules https://github.com/letssteam/makecode-lets-steam.git
```

- Install the pxt CLI :

```sh
npm install -g pxt
```

- Run the install script :

```sh
cd makecode-lets-steam
scripts/setup.sh
```

- Run the local server :

```sh
scripts/serve.sh
```

### CODAL changes

If you need to do changes to CODAL itself, follow these steps.

- create a new project in the web editor, then close the web server. Select the hardware you want to work with.
- using a command prompt, open the `projects` folder and find the subfolder with your new project
- open the folder in Visual Studio Code

```sh
code .
```

- open `pxt.json` and edit the dependencies to use
  the `file:...` path instead of `*`

- from the command line, set the `PXT_NODOCKER` environment variable to `1`

```sh
export PXT_NODOCKER=1
```

- run a local build that will create a CODAL checkout automatically.
  If you are missing tools, you will be notified by the build script.

```sh
pxt buildtarget --localbuild --force
```

- go to the `built/dockercodal` folder and open all CODAL in a new Visual Studio Code instance

```sh
cd built/dockercodal
code libraries/*
```

- go to the Git tab in VS Code, and change the branch of the CODAL repository to work on to `master`. You can create a new branch to start doing your work and pull requests.

- to build CODAL directly, run `built/codal`

```sh
python build.py
```

- to rebuild your project from pxt, run `pxt buildtarget --localbuild --force` from the project folder

### Running

Run this command from inside `pxt-lets-steam` to open a local web server

```sh
pxt serve
```

If the local server opens in the wrong browser, make sure to copy the URL containing the local token.
Otherwise, the editor will not be able to load the projects.

If you need to modify the `.cpp` files (and have installed yotta), enable yotta compilation using the `--localbuild` flag:

```sh
pxt serve --localbuild
```

### Updates

Make sure to pull changes from all repos regularly. More instructions are at https://github.com/microsoft/pxt#running-a-target-from-localhost
