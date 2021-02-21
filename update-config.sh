
#!/bin/bash

rm -rf $HOME/.config/nvim

rsync -r ./nvim $HOME/.config/

