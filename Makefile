.PHONY: clean link post-link

TIMESTAMP := $(shell date +"%Y%m%d_%H%M%S")

clean:	save
	rm ~/.vim ~/.vimrc

save:
	cp -r ~/.vim /tmp/.vim-$(TIMESTAMP)
	cp ~/.vimrc /tmp/.vimrc-$(TIMESTAMP)

link:	
	ln -s ~/vim-dots/vim/vimrc ~/.vimrc
	ln -s ~/vim-dots/vim ~/.vim

post-link:
	chmod +x scriznips/install_neobundle.sh
	# ./scriznips/install_neobundle.sh
	curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh


