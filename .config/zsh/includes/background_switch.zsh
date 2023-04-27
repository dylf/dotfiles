function bgswitch() {
  img=$(ls -1 ~/Pictures/Wallpapers | fzf --prompt="Select a wallpaper"  --height=50% --layout=reverse --border --exit-0 )
  echo "Setting wallpaper to $img"
  # Can I automate this?
  echo "Press CTRL+SHIFT+R to reload the terminal"
  ln -sf ~/Pictures/Wallpapers/$img ~/Pictures/termbg.png
}

