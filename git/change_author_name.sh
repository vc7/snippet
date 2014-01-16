git checkout target-branch
git reset --hard abc123 # 'abc123' is the commit hash
git commit --amend --author 'Vincent Chen <vince78718@gmail.com>'
git cherry-pick abc123 origin/target-branch
git push -f
