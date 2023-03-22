# User Manual
This is a simple project for automatic macOS devices setup. It installs applications from homebrew and also configs some of them to suit my needs.

[//]: # (### Install xcode)

[//]: # (```bash)

[//]: # (xcode-select --Install)

[//]: # (```)

[//]: # ()
[//]: # (```bash)

[//]: # (sudo xcodebuild -license accept)

[//]: # (```)

[//]: # ()

### Install homebrew
#### Command
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
**Note:** Remember to add Homebrew to PATH

### Install ansible
```bash
brew Install ansible
```

### Clone this repo to ~/Projects
```bash
mkdir ~/Projects
git clone git@github.com:ArtieLiu/init-osx.git ~/Projects
```

### Run playbook
```bash
bash run.sh
```

Note: In order to run the specialized version for work, run:
```bash
bash run-work-related.sh
```