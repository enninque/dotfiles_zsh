## install

Install this configuration.

```bash
rm -rfv ~/.zshrc ~/.zshenv ~/.zsh

mkdir -p ~/.zsh/.conf | true
git clone https://github.com/zplug/zplug ~/.zsh/.conf/.zplug | true
cp -v  ./src/.zshrc ~
cp -v  ./src/.zshenv ~
cp -Rv ./src/.zsh ~
```
