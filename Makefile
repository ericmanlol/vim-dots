.PHONY: clean link post-link

TIMESTAMP:=$(shell date +"%Y%m%d_%H%M%S")
VIM_RC:=$(HOME)/.vimrc
VIM_DIR:=$(HOME)/.vim
TMP_RC:=/tmp/.vimrc-$(TIMESTAMP)
TMP_DIR:=/tmp/.vim-$(TIMESTAMP)

clean:
	@echo "-> " $@
	@if [ -f $(VIM_RC) ]; then \
		echo "\t -> Backing up + removing  $(VIM_RC)" ; \
		cp $(VIM_RC) $(TMP_RC) || (echo "Did not backup $(VIM_RC)") ; \
		rm $(VIM_RC) ; \
		cp -r $(VIM_DIR) $(TMP_DIR) || echo "Did not backup $(VIM_DIR)" ; \
		rm $(VIM_DIR) ; \
	fi

save:
	@echo "-> " $@
	cp -r ~/.vim /tmp/.vim-$(TIMESTAMP)
	cp ~/.vimrc /tmp/.vimrc-$(TIMESTAMP)

link:	
	@echo "-> " $@
	ln -s ~/vim-dots/vim/vimrc ~/.vimrc
	ln -s ~/vim-dots/vim ~/.vim

post-link: clean link
	@echo "-> " $@
	curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh


