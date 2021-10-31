#! /usr/bin/env bash
#mkdir -p ~/.vim/autoload ~/.vim/bundle && \
#curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

FILE=~/.vimrc

#if [[ -f "$FILE" ]]; then
#	echo "vimrc exists. exit"
#	exit 0
#fi

echo "copy vimrc starting..."
cp ./vimrc.txt ~/.vimrc
echo "copy vimrc finished..."

cd ~/.vim/bundle && git clone https://github.com/dense-analysis/ale.git && \
	git clone https://github.com/preservim/nerdtree.git && \
	git clone https://github.com/Valloric/MatchTagAlways.git && \
	git clone https://github.com/wincent/command-t.git && \
	git clone https://github.com/jiangmiao/auto-pairs.git && \
	git clone https://github.com/preservim/nerdcommenter.git && \
	git clone https://github.com/alvan/vim-closetag.git && \
	git clone https://github.com/fatih/vim-go.git && \
	git clone https://github.com/ycm-core/YouCompleteMe.git

# amazonlinux
# sudo yum install -y ruby ruby-devel zlib-devel gcc gcc-c++ ruby-devel rubygems
cd ~/.vim/bundle/command-t/ruby/command-t/ext/command-t && \
    ruby extconf.rb && \
    make
