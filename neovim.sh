ls -l "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim || sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

conda list --name nvim || conda create --name nvim --yes
conda install --name nvim --yes -c conda-forge nodejs
conda install --name nvim --yes python=3.10
conda activate nvim
npm install --global neovim
npm install --global yarn
python3 -m pip install --user --upgrade pynvim
conda deactivate

/opt/homebrew/bin/nvim +PlugInstall +qall

