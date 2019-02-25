# Commit gen script

Hi, this is a very simple script to automate good commit messages.

## Usage 

Help message :
```
> ./commit_gen.sh help
Usage :
./commit_gen.sh [OPTION] [MESSAGE]

Options available :
 D: Doc (Documentation only changes)
 F: Feat (Feature implementation)
 X: Fix (Fixes a bug)
 S: Style (Formatting, white-spaces..)
 R: Refactor (Changes that neither fixes a bug or adds a feature)
 P: Perf (Performance improvement)
 T: Test (Adding missing tests)
 C: Chore (changes in build process or auxilliary tools) : 
 help : Shows this help message
 (default) : Use custom commit type
```

### Without arguments
Simply execute the script in a already created git repository.
It will automatically commit your modifications with the formatted commit message.

If you want a custom type, just type it in the type input.

```sh
> ./commit_gen.sh
Enter type of commit
 D: Doc (Documentation only changes)
 F: Feat (Feature implementation)
 X: Fix (Fixes a bug)
 S: Style (Formatting, white-spaces..)
 R: Refactor (Changes that neither fixes a bug or adds a feature)
 P: Perf (Performance improvement)
 T: Test (Adding missing tests)
 C: Chore (changes in build process or auxilliary tools) : 

D

Enter a small commit message. Try to not repeat the type
Better readme

Final message : [Doc] Better readme
Is it ok? (y/n)
y
commiting..
[master 3606d8c] [Doc] Better readme
 1 file changed, 36 insertions(+)
 create mode 100644 README.md
done..
exiting.
```

### With arguments

You can actually go a lot faster by putting the letter corresponding to the type of commit as an argument :

```sh
> ./commit_gen.sh F

Enter a small commit message. Try to not repeat the type
Managing arguments

Final message : [Feat] Managing arguments
Is it ok? (y/n)
y
commiting..
[master f901e31] [Feat] Managing arguments
 1 file changed, 53 insertions(+), 23 deletions(-)
done..
exiting.
```

You also can directly put your message in the 2nd argument like so :


```sh
> ./commit_gen.sh D "add argument explanation"

Final message : [Doc] add argument explanation
Is it ok? (y/n)
y
commiting..
[master 72fc7ae] [Doc] add argument explanation
 1 file changed, 55 insertions(+), 16 deletions(-)
done..
exiting.
```
