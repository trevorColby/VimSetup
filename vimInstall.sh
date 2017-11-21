#!/usr/bin/env bash
pushd . > /dev/null
echo
echo "=============="
echo "Installing vim"
echo "=============="
if [ ! -d "$HOME/src" ]; then
  mkdir "$HOME/src"
fi
cd "$HOME/src"
echo
if [ ! -d "$HOME/src/vim" ]; then
  git clone git@github.com:vim/vim.git
else
  cd "$HOME/src/vim"
  git pull
fi
cd "$HOME/src/vim"
brew update
brew install -y \
  libncurses5-dev \
  libgnome2-dev \
  libgnomeui-dev \
  libgtk2.0-dev \
  libatk1.0-dev \
  libbonoboui2-dev \
  python3-dev \
  libcairo2-dev \
  libx11-dev \
  libxpm-dev \
  libxt-dev \
  python-dev \
  python2.7-dev \
  ruby-dev \
  libperl-dev \
  liblua5.1-0-dev \
  luajit \
  libluajit-5.1-dev

# For odiumediae multi-version python  suggestions follow: https://gist.github.com/odiumediae/3b22d09b62e9acb7788baf6fdbb77cf8
./configure \
   --disable-netbeans \
   --enable-cscope \
   --enable-fail-if-missin \
   --enable-fontset \
   --enable-gui=auto \
   --enable-largefile \
   --enable-luainterp \
   --enable-multibyte \
   --enable-perlinterp=dynamic \
   --enable-pythoninterp \
   --enable-python3interp \
   --enable-pythoninterp \
   --enable-rubyinterp=dynamic \
   --with-compiledby="Darcy Parker & Trevor Colby" \
   --with-features=huge \
   --with-luajit \
   --with-prefix=/usr/local \
   --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu \
   --with-python3-config-dir=/usr/lib/python3.5/config-3.5m-x86_64-linux-gnu \
   --with-ruby-command=/usr/bin/ruby \
   --with-x
make VIMRUNTIMEDIR=/usr/local/share/vim/vim80
make install
popd
