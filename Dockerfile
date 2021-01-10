FROM golang:1.15.6

RUN apt update \
  && apt install -y vim \
  python3 \
  python3-pip \
  nodejs \
  npm \
  && pip3 install -U pip \
  && pip3 install online-judge-tools \
  && npm install -g atcoder-cli \
  && acc config default-test-dirname-format test \
  && acc config default-task-choice all \
  # コマンドアライアス
  && echo 'alias ojgo="oj t -c \"go run ./main.go\" -d test/"' >> ~/.bashrc \
  && echo 'alias addgo="cp /go/src/work/template.go ./main.go"' >> ~/.bashrc


ENV GO111MODULE on
WORKDIR /go/src/work

# install go tools
RUN go get github.com/uudashr/gopkgs/v2/cmd/gopkgs \
  github.com/ramya-rao-a/go-outline \
  github.com/nsf/gocode \
  github.com/acroca/go-symbols \
  github.com/fatih/gomodifytags \
  github.com/josharian/impl \
  github.com/haya14busa/goplay/cmd/goplay \
  github.com/go-delve/delve/cmd/dlv \
  golang.org/x/lint/golint \
  golang.org/x/tools/gopls
