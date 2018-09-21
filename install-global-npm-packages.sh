#!/bin/bash
#npm install -g npm@latest

INSTALL_NPM='npm install -g'
#YARN=$(which yarn)
#if [ -n "$YARN" ]
#then
    #INSTALL_NPM="$YARN global add"
#fi

$INSTALL_NPM \
    babel-eslint@latest \
    csscomb@latest \
    eslint@latest \
    eslint-config-airbnb@latest  \
    eslint-plugin-import@latest  \
    eslint-plugin-jsx-a11y@latest  \
    eslint-plugin-react@latest  \
    eslint-plugin-standard@latest  \
    eslint-plugin-graphql \
    graphql \
    serve \
    flow-bin@latest \
    json2yaml@latest \
    jsonlint@latest \
    prettier@latest prettier-eslint@latest prettier-standard@latest \
    standard@latest \
    stylelint@latest \
    gatsby-cli@latest \
    deepl-translator-cli@latest

    # avn avn-nvm \
    #pug-lint@latest \
    #htmlhint@latest \
    #sass-lint@latest \
    #jscs@latest \
    #jshint@latest \
    #grunt-cli@latest \
    #gulp-cli@latest \
    #typescript@latest \
