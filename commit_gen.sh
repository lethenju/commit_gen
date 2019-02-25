#!/bin/sh
# Small commit generator script to automate good commits
# Julien LE THENO
# (c) MIT License

if [[ $# -eq 1 ]]; then # One arg supplied : 
    case $1 in 
    help)
        echo "Usage :"
        echo "./commit_gen.sh [OPTION] [MESSAGE]"
        echo ""
        echo "Options available :"
        echo " D: Doc (Documentation only changes)"
        echo " F: Feat (Feature implementation)"
        echo " X: Fix (Fixes a bug)"
        echo " S: Style (Formatting, white-spaces..)"
        echo " R: Refactor (Changes that neither fixes a bug or adds a feature)"
        echo " P: Perf (Performance improvement)"
        echo " T: Test (Adding missing tests)"
        echo " C: Chore (changes in build process or auxilliary tools) : "  
        echo " help : Shows this help message"
        echo " (default) : Use custom commit type"
        exit
        ;;
    esac
    type=$1
    echo ""
    echo "Enter a small commit message. Try to not repeat the type"
    read message
elif [ $# -eq 2 ]
then # Two args supplied
    type=$1
    message=$2
else
    echo "Enter type of commit"
    echo " D: Doc (Documentation only changes)"
    echo " F: Feat (Feature implementation)"
    echo " X: Fix (Fixes a bug)"
    echo " S: Style (Formatting, white-spaces..)"
    echo " R: Refactor (Changes that neither fixes a bug or adds a feature)"
    echo " P: Perf (Performance improvement)"
    echo " T: Test (Adding missing tests)"
    echo " C: Chore (changes in build process or auxilliary tools) : "  
    echo ""
    read type
    echo ""
    echo "Enter a small commit message. Try to not repeat the type"
    read message
fi

case $type in
D)
    type="Doc"
    ;;
F)
    type="Feat"
    ;;
X)
    type="Fix"
    ;;
S)
    type="Style"
    ;;
R)
    type="Refactor"
    ;;
P)
    type="Perf"
    ;;
T)
    type="Test"
    ;;
C)
    type="Chore"
    ;;
*)
    echo "Not recognized ! Using your input.."
    ;;
esac

message="[$type] $message"

echo ""
echo "Final message : $message"
echo "Is it ok? (y/n)"
read ok
if [[ $ok == y ]]; then
    echo "commiting.."
    git commit -m "$message"
    echo "done.."
fi
echo "exiting."
