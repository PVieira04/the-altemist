FROM gitpod/workspace-full

USER gitpod

# Install curl
RUN sudo apt-get update \
    && sudo apt-get install -y curl

# Install Node.js using NVM
ENV NVM_DIR="/home/gitpod/.nvm"
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash \
    && \. "$NVM_DIR/nvm.sh" \
    && nvm install --lts

# Set default Node.js version
RUN \. "$NVM_DIR/nvm.sh" \
    && nvm alias default node

# Add Node.js and NPM binaries to the PATH
ENV PATH="${NVM_DIR}/versions/node/$(nvm version)/bin:${PATH}"

# Install dfx
RUN curl -fsSL https://sdk.dfinity.org/install.sh | sh \
    && echo 'export PATH="$HOME/bin:$PATH"' >> ~/.bashrc