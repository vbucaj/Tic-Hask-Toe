FROM gitpod/workspace-base

# Install dependencies
ENV BOOTSTRAP_HASKELL_MINIMAL=1
RUN sudo apt-get install -y build-essential curl libffi-dev libffi7 libgmp-dev libgmp10 libncurses-dev libncurses5 libtinfo5

# ghcup is a replacement for the haskell platform. It manages the development env easily.
# We use the official instalation script
RUN sudo curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh

# Add ghcup to path
ENV PATH=${PATH}:${HOME}/.ghcup/bin

# Set up the environment. This will install the default versions of every tool.
RUN ghcup install ghc 8.10.7
RUN ghcup install hls
RUN ghcup install cabal
