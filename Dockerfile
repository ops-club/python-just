FROM python:3.12-bookworm

RUN mkdir -p ~/bin \
    && curl --proto '=https' --tlsv1.2 -sSf https://just.systems/install.sh | bash -s -- --to ~/bin \
    && mv ~/bin/just /usr/local/bin/just \
    && rm -rf ~/bin \
    && chmod +x /usr/local/bin/just
