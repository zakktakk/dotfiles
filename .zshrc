# brew setting
typeset -U path PATH
path=(
    /opt/homebrew/bin(N-/)
    /usr/local/bin(N-/)
    $path
)

## use x86 brew command, if arch enable
if [[ "${(L)$( uname -s )}" == darwin ]] && (( $+commands[arch] )); then
    alias brew="arch -arch x86_64 /usr/local/bin/brew"
    alias x64='exec arch -arch x86_64 "$SHELL"'
    alias a64='exec arch -arch arm64e "$SHELL"'
    switch-arch() {
        if  [[ "$(uname -m)" == arm64 ]]; then
            arch=x86_64
        elif [[ "$(uname -m)" == x86_64 ]]; then
            arch=arm64e
        fi
        exec arch -arch $arch "$SHELL"
    }
fi

## complement path
## ref:https://tkng.hatenablog.com/entry/20100712/1278896396
setopt magic_equal_subst
