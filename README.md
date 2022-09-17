1. install ansible
```
brew install ansible
```

2. install xcode from app store
```
xcode-select --install
```

```
sudo xcodebuild -license accept
```

3. configs
3.1 install nvim 
Plug:
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

```
python3 -m pip install --user --upgrade pynvim
```
j

4. install mit scheme on mac silicon
https://kennethfriedman.org/thoughts/2021/mit-scheme-on-apple-silicon/