#Readme for run_analysis.R

The script generates the tidy dataset described in CodeBook.md.

## Usage
```
Rscript run_analysis.R
```
The file getdata-projectfiles-UCI HAR Dataset.zip must be in the same folder. The script extracts the file in a folder, and saves its output to file run_analysis.R in the script folder. Output file is created with write.table, and it can be loaded into R with read.table.

## Dependencies
dplyr package has to be installed.
