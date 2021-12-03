function fish_prompt

  # Separator
  set_color --bold brmagenta
  for i in (seq $COLUMNS)[2..-1]
    echo -n '─'
  end
  set_color normal
  printf "\n"

  # Git Branch
  set git_status (command git status 2>/dev/null | tail -n 2)

  # Directory
  set_color --background normal
  set_color black
  echo -n (prompt_pwd)
  # echo -n (pwd|sed "s=$HOME=~=")

  echo -n ' '

  if test -n "$git_status"
    set git_branch (command git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
    set git_tag (command git describe --tags --abbrev=0 2>/dev/null)
    #set git_status_last (command git status 2>/dev/null | tail -n 1)
    #set git_files_changed (command git diff --numstat | wc -l | tr -d '[:space:]')

    # Tag
    if test -n "$git_tag"
      set_color brmagenta
      echo -n ""
      set_color --background brmagenta
      set_color black
      echo -n " "
      echo -n $git_tag
      set_color --background normal
      set_color brmagenta
      echo -n ""
      set_color --foreground normal
      echo -n " "
    end

    set_color brmagenta
    echo -n ""
    set_color --background brmagenta
    set_color black
    echo -n " "
    echo -n $git_branch

    ## │┃
    #if test -n "$git_tag"
    #  echo -n " "
    #  echo -n " "
    #  echo -n $git_tag
    #end

    set_color --background normal
    set_color brmagenta
    echo -n ""
    set_color --foreground normal
  end

  echo -n ' '

  set_color -o white
  echo -n "∴ "
end
