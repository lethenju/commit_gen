#!/bin/sh
# Small commit generator script to automate good commits
# Julien LE THENO
# (c) MIT License

echo "Enter type of commit"
echo " 1: Doc (Documentation only changes)"
echo " 2: Feat (Feature implementation)"
echo " 3: Fix (Fixes a bug)"
echo " 4: Style (Formatting, white-spaces..)"
echo " 5: Refactor (Changes that neither fixes a bug or adds a feature)"
echo " 6: Perf (Performance improvement)"
echo " 7: Test (Adding missing tests)"
echo " 8: Chore (changes in build process or auxilliary tools) : "
read type


case $type in
1)
    type="Doc"
    ;;
2)
    type="Feat"
    ;;
3)
    type="Fix"
    ;;
4)
    type="Style"
    ;;
5)
    type="Refactor"
    ;;
6)
    type="Perf"
    ;;
7)
    type="Test"
    ;;
8)
    type="Chore"
    ;;
*)
    echo "Not recognized ! Using your input.."
    ;;
esac

echo "Enter a small commit message. Try to not repeat the type"
read message
message="[$type] $message"

echo "Final message : $message"
echo "Is it ok? (y/n)"
read ok
if [[ $ok == y ]]; then
    echo "commiting.."
    git commit -m "$message"
    echo "done.."
fi
echo "exiting."