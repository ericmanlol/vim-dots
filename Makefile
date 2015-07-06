.PHONY: clean link post-link

TIMESTAMP := $(shell date +"%Y%m%d_%H%M%S")


clean:	save 
	@echo '==> ' $@
	rm -rf ~/.vim ~/.vimrc

save:	
	@echo '==> ' $@
	cp -r ~/.vim /tmp/.vim-$(TIMESTAMP)
	cp ~/.vimrc /tmp/.vimrc-$(TIMESTAMP)

link:
	@echo '==> ' $@
	ln -s ~/vim-dots/vim/vimrc ~/.vimrc
	ln -s ~/vim-dots/vim ~/.vim

post-link:
	@echo '==> ' $@
	curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh


