git_repo_url=$1

function parse_repo_name() {
  basename "$git_repo_url" ".git"
}

repo_name=$(parse_repo_name $git_repo_url)
repo_local_path="~/Projects/$repo_name"

if [ -d "$repo_local_path" ]; then
    echo "Directory exists. Opening..."
else
    echo "Directory does not exist. Cloning..."
    git clone "$git_repo_url"
fi

# idea ~/code/applications/$repo_name
idea "$repo_local_path"

echo "Done."
