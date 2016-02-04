# NPM

*   Install NPM packages globally without requiring sudo. ([source][1])
*   Save exact version instead of a 'loose' version. ([source][2])

Create directory for global packages

`mkdir ~/.npm-packages`

Create a symlink for `.npmrc`

`ln -s npmrc ~/.npmrc`

Shell wizardry

`ln -s npm.zsh ~/.oh-my-zsh/custom/npm.zsh`

[1]: https://github.com/sindresorhus/guides/blob/master/npm-global-without-sudo.md
[2]: https://docs.npmjs.com/misc/config#save-exact
