alias g.go.core='cd /d/git/cclcom'
alias g.go.core2='cd /d/git/cclcom2'
alias g.go.ccl.cruise.search='cd /d/git/ccl-cruise-search'
alias g.go.ccl.cruise.search2='cd /d/git/ccl-cruise-search2'
alias g.go.cruise.search='cd /d/git/carnival.cruise.search'
alias g.go.home='cd ~'

alias g.ck='git checkout '
alias g.branch='git branch -v '
alias g.branch.delete='git branch -D '

alias g.fetch='git fetch origin'
alias g.pull='git pull --rebase origin'
alias g.push.force='function _g_push_force() {
	git push -f origin "$(_g_get_current_branch)"
}; _g_push_force'


alias g.update.cmds='. ~/.bashrc'

alias g.r.abort='git rebase --abort'
alias g.st='git status'
alias g.add='git add '
alias g.diff='git diff '
alias g.co='git commit -m '
alias g.amend='git commit --amend '
alias g.lg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

alias g.reset.origin='function _g_reset_origin() {
	
	_g_print "Fetching"
	git fetch origin
	
	_g_print "Reseting"
	git reset --hard origin/$1
	
	_g_print "Pulling"
	git pull origin $1
}; _g_reset_origin '



function _g_print() {
	echo "## $1 ##"
}


function _g_get_current_branch() {
	echo "$(git branch | grep \* | cut -d ' ' -f2)"
}


