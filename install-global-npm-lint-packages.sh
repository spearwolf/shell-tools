#!/bin/bash
npm install -g npm@latest

INSTALL_NPM='npm install -g'
#YARN=$(which yarn)
#if [ -n "$YARN" ]
#then
    #INSTALL_NPM="$YARN global add"
#fi

$INSTALL_NPM \
    babel-eslint@latest  \
    csscomb@latest  \
    eslint-config-airbnb@latest  \
    eslint-plugin-import@latest  \
    eslint-plugin-jsx-a11y@latest  \
    eslint-plugin-react@latest  \
    eslint@latest  \
    flow-bin@latest  \
    grunt-cli@latest  \
    gulp-cli@latest  \
    htmlhint@latest  \
    jscs@latest  \
    jshint@latest  \
    json2yaml@latest  \
    jsonlint@latest  \
    pug-lint@latest  \
    sass-lint@latest  \
    standard@latest  \
    stylelint@latest  \
    typescript@latest  \
    prettier@latest \
    prettier-eslint@latest \
    prettier-standard@latest
