build PKG:
  cd packages/{{PKG}} && makepkg

update-srcinfo PKG:
  cd packages/{{PKG}} && makepkg --printsrcinfo > .SRCINFO

gen-checksums:
  cd packages/{{PKG}} && makepkg -g

publish PKG:
  git subrepo push packages/{{PKG}}
