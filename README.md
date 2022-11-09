# A Haskell template on Gitpod

This is a [Haskell](https://haskell.org/) template configured for ephemeral development environments on [Gitpod](https://www.gitpod.io/).

## Next Steps

Click the button below to start a new development environment:

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/iburzynski/EMURGO-Hv4-Env-1)

## Get Started With Your Own Project

### A new project

Click the above "Open in Gitpod" button to start a new workspace. Once you're ready to push your first code changes, Gitpod will guide you to fork this project so you own it.

### An existing project

If you have an existing project and you want to create a gitpod environment for it, you need to follow and take into account these considerations.

- This repo's Dockerfile **completely overwrites** the `cabal` file when building the container. This means, that if you simply copy-paste the `.gitpod.Dockerfile`, your `cabal`/`stack` files will disappear. Follow the instructions within `.gitpod.Dockerfile` to change this behaviour.
- This repo uses `ghcup` to install all the tooling. Alternative installation isn't recommended.