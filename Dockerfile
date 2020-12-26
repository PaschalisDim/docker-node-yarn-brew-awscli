FROM homebrew/brew

RUN brew doctor
RUN brew update
RUN brew install node@12
RUN brew install yarn

RUN yarn add webpack
RUN yarn add webpack-cli

RUN brew tap aws/tap
RUN brew install git
RUN brew install aws/tap/aws-sam-cli

RUN brew tap aws/tap
RUN brew install aws-sam-cli

CMD ["node"]


