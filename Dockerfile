FROM ubuntu:20.04

RUN apt update && apt install -y ruby-full build-essential zlib1g-dev git openssh-client build-essential
WORKDIR /root
RUN echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc && echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc && echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc && . ~/.bashrc
RUN gem install jekyll bundler
COPY . .
RUN chmod +x ./run.sh
RUN gem install webrick
RUN bundle --full-index
CMD ["./run.sh"]
