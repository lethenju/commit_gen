# Commit gen script

Hi, this is a very simple script to automate good commit messages.

## Usage 

Simply execute the script in a already created git repository.
It will automatically commit your modifications with the formatted commit message.

If you want a custom type, just type it in the type input.

```
$:> ./commit_gen.sh

Enter type of commit
 1: Doc (Documentation only changes)
 2: Feat (Feature implementation)
 3: Fix (Fixes a bug)
 4: Style (Formatting, white-spaces..)
 5: Refactor (Changes that neither fixes a bug or adds a feature)
 6: Perf (Performance improvement)
 7: Test (Adding missing tests)
 8: Chore (changes in build process or auxilliary tools) : 
2
Enter a small commit message. Try to not repeat the type
Add the commit gen script       
Final message : [Feat] Add the commit gen script
Is it ok? (y/n)
y
commiting..
[master (root-commit) a19c303] [Feat] Add the commit gen script
 1 file changed, 62 insertions(+)
 create mode 100755 commit_gen.sh
done..
exiting.
```
