FROM homebrew/brew

RUN brew doctor
RUN brew update
RUN brew install node@12
RUN brew install yarn

RUN yarn add webpack
RUN yarn add webpack-cli

RUN brew tap aws/tap
RUN brew install git

RUN brew install pyenv
RUN pyenv install 3.8.0
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python3 get-pip.py
RUN pip install awscli --force-reinstall --upgrade
RUN pip install aws-sam-cli

CMD ["node"]


