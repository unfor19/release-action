FROM ghcr.io/unfor19/release-action:{{.LangName}}-{{.LangVersion}}
ENV LANG_NAME="{{.LangName}}" LANG_VERSION="{{.LangVersion}}"
WORKDIR /code/
COPY ./src/ .
ENTRYPOINT ["/code/entrypoint.sh"]
