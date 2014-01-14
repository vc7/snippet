//
//  update_submodule_commit.sh
//
//  The way to update commit point of submodule
//  http://stackoverflow.com/a/8191413
//

//  1. Go to the folder of submodule to pull the newest commit of it

cd path/to/submodule
git pull origin master

//  2. commit the update

git add path/to/submodule
git commit -m "the submodule updated"


