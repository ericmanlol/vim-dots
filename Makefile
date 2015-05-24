all: clean link post-link

clean :
	rm ~/.vim ~/.vimrc

link :
	ln -s ~/vim-dots/vim/vimrc ~/.vimrc
	ln -s ~/vim-dots/vim ~/.vim

post-link:
	chmod +x scriznips/install_neobundle.sh
	./scriznips/install_neobundle.sh

.PHONY: clean link post-link
