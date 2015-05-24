all :
	clean
	link
	post-link

link :
	ln -s ~/vim-dots/vim/vimrc ~/.vimrc
	ln -s ~/vim-dots/vim ~/.vim
post-link :
	chmod +x scriznips/install_neobundle.sh
	./scriznips/install_neobundle.sh
clean :
	rm ~/.vim ~/.vimrc


.PHONY: link post-link clean
