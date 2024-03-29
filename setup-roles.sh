main_template=$(cat <<-END
- app: "Installing {{app}}"
  community.general.homebrew_cask:
    app: '{{app}}'
    state: present
    update_homebrew: no

END
)

apps=(1password
      raycast
      rancher
      lunar
      bartender
      mirrordisplays
      gifox
      keepingyouawake
      microsoft-office
      skype
      topnotch
      wechat)

for app in $apps ; do
  mkdir -p roles/$app/tasks
  echo $main_template | sed "s/{{app}}/$app/g" > roles/$app/tasks/main.yaml
done

