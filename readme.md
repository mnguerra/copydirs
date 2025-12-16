# copydirs

## Overview

This little utility copies a list of directories in a specific path. Its purpose is to serve as very little utility of backup, without no complication, time-stamping and so on.

It copies a list of directories (with the same structure they have in its original place, same size - no incremental copy) to a specific path where it adds a new directory with the data of the copy (yyyymmdd).

Having a per data structure allows you to have some sort of backups, ordered by date (of course, if you want more advanced characteristics, as incremental copies and so on, you can use any of the available free and more advanced tools).


## Installation

1. Download copydirs.sh and copydirs_lst.txt wherever you want.
2. `chmod u+x ./copydirs.sh`
3. Update copydirs_lst.txt
4. Execute copydirs.sh

You can also add copydirs to your local path.


## Usage

1. Update file copydir_lst.txt if its required (changes in the list of directories, i.e.)
2. Execute '$ copydirs.sh'


## Structure of the file copydirs_lst.txt

- First line is the destination path
- Rest of the lines are the directories to copy from the local drive


## Copyright and License

Copyright (c) 2024 Manel Guerra (https://www.manelguerra.com)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
