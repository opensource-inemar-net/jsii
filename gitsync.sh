git config --global user.email "opensource@inemar.net"
git config --global user.name "Oliver Schnabl"
git remote add upstream https://github.com/aws/jsii.git
git fetch upstream
git checkout master
git merge upstream/master

