# Year Since Built

Ruichen Yao

84951482

last update: 2023-11-10

## Function Description

This function can add new variable year_since_built to apt_buildings dataset. It can also be edited when the new year comes. For example, just run the function again when the year 2024 arrives and replace the input with 2024.

## Installation

```{r}
library("devtools")
devtools::install_github("stat545ubc-2023/assignment-b2-YRC10")
```

## Example

```{r}
library(datateachr)

Example1 <- add_year_since_built(2023)
Example1
```

```         
## # A tibble: 3,455 × 2
##    year_built year_since_built
##         <dbl>            <dbl>
##  1       1967               56
##  2       1970               53
##  3       1927               96
##  4       1959               64
##  5       1943               80
##  6       1952               71
##  7       1959               64
##  8       1971               52
##  9       1969               54
## 10       1972               51
## # ℹ 3,445 more rows
```

## Reminder
If you want to update any files, always pull from the master branch first!
```
git pull origin main
```

