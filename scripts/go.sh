test -d "${GOPATH}" || mkdir "${GOPATH}"
test -d "${GOPATH}/src/github.com" || mkdir -p "${GOPATH}/src/github.com"

# Install shiori bookmark manager
go get -u -v github.com/go-shiori/shiori
