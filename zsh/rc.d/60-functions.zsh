cdgr() {
  local root
  root=$(git rev-parse --show-toplevel 2>/dev/null) || { echo "不在 git 仓库中"; return 1; }
  cd "$root"
}
