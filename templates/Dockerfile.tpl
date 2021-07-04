FROM ghcr.io/unfor19/release-action:{{.LangName}}-{{.LangVersion}}
RUN go get -u github.com/jstemmer/go-junit-report
RUN go get -u github.com/vakenbolt/go-test-report
WORKDIR /code/
COPY ./src/ .
ENTRYPOINT ["/code/entrypoint.sh"]
