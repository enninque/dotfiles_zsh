CONFIG_DIR = $(shell pwd)
all: clean install

clean:
	@rm -rfv ~/.zshrc ~/.zshenv ~/.zsh

install:
	mkdir -p ~/.zsh/.conf | true
	git clone https://github.com/zplug/zplug ~/.zsh/.conf/.zplug | true
	cp -v  $(CONFIG_DIR)/src/.zshrc ~
	cp -v  $(CONFIG_DIR)/src/.zshenv ~
	cp -Rv $(CONFIG_DIR)/src/.zsh ~

test:
