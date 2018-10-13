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
    eslint-plugin-graphql@latest graphql@^0.13 \
    eslint-plugin-typescript@latest \
    gatsby-cli@latest \
    postcss@latest \
    typescript@latest typescript-eslint-parser@latest tslint@latest \
    serve@latest \
    flow-bin@latest \
    json2yaml@latest \
    jsonlint@latest \
    prettier@latest prettier-eslint@latest prettier-standard@latest \
    standard@latest \
    stylelint@latest \
    lerna@latest \
    tern@latest \
    deepl-translator-cli@latest

    # avn avn-nvm \
    # pug-lint@latest \
    # htmlhint@latest \
    # sass-lint@latest \
    # jscs@latest \
    # jshint@latest \
    # grunt-cli@latest \
    # gulp-cli@latest \
