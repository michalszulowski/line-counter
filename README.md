# Line Counter
Simple Python script counting lines in files.

## Installation
Download **install-line-counter.sh** and run it.

## Usage 
Pass each directory you want to count lines in as a script parameter.

```bash
count_lines dir1 dir2 ...
```

Put expected extensions in extensions.txt file. If you want to ignore files with certain words, put those words in excluded_words.txt. The configuration files are stored in /usr/local/src/line-counter.