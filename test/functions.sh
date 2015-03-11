#!/usr/bin/env bash

function _nano_init_rc()
{
  ln -s $PROJ_HOME $HOME/.nano
  ln -s $HOME/.nano/nanorc $HOME/.nanorc
  #ln -s $PROJ_HOME $HOME/.nanorc
}

function _nano_run_sample()
{
  rm -rf $PROJ_HOME/test/.result 2>/dev/null
  echo "" | $(brew --prefix)/bin/nano 2>&1 2> $PROJ_HOME/test/.result | echo ""
  cat $PROJ_HOME/test/.result 2>/dev/null
  [[ -z $(cat $PROJ_HOME/test/.result) ]] && exit 0 || exit 1
}

