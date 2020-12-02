#!/bin/sh
echo "starting deploy process"
git remote add gigalixir https://borsa.dado%40gmail.com:624f88ba-6c4b-44a0-96d4-c7d89f9e2ac0@git.gigalixir.com/elixir-pro-blog.git
BRANCH=$(if [ "$TRAVIS_PULL_REQUEST" == "false" ]; then echo $TRAVIS_BRANCH; else echo $TRAVIS_PULL_REQUEST_BRANCH; fi)
echo "TRAVIS_BRANCH=$TRAVIS_BRANCH, PR=$PR"
echo "------------------------------------"
echo "BRANCH=$BRANCH"
if [ "$BRANCH" == "master" ]; then
  echo "Pushing HEAD to master branch on Gigalixir."
  git push gigalixir HEAD:master
  echo "Deploy completed."
fi
echo "Exiting."
