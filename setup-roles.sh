main_template=$(cat <<-END
- name: "Installing {{app}}"
  community.general.homebrew_cask:
    name: '{{app}}'
    state: present
    update_homebrew: no
    accept_external_apps: true
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

