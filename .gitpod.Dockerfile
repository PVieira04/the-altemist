FROM gitpod/workspace-full

USER gitpod

# Install dfx
RUN curl -fsSL https://sdk.dfinity.org/install.sh | sh \
    && echo 'export PATH="$HOME/bin:$PATH"' >> ~/.bashrc

# Install Node.js
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash \
    && source ~/.nvm/nvm.sh \
    && nvm install --lts