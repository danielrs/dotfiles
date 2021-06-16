function git-prune-delete --description 'Prunes and deletes branches without a remote branch'
    git branch -vv | grep "gone]" | awk '{print $1}' | xargs git branch -D
end

