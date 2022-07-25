# [bash.letcsv.com](http://bash.letcsv.com)

## About


## How to start

    git clone https://github.com/letcsv/bash

or just tag function:

    curl https://bash.letcsv.com/tag.sh

## START

get title tag from file: index.html

```bash
cat index.html | ./tag.sh title
```

OUTPUT:

    Softreck &#124; Leadership Through Software Development


## TODO

w ramach projektu apidsl.com
+ zamiast xpath - ładowanie zalezności przez skrypt github
+ letPath - przygotować
  https://github.com/letcsv/bash


## TEST

```bash
./test.sh
```


```bash
./test.sh headerToLinesInFile.sh
./test.sh headerFromFileToLinesInFile.sh
```


Start tests:
```bash
./test.sh > test1.txt
```

Start tests:
```bash
./test.sh > test2.txt
```

Compare with valid test:
```bash
diff text1.txt test2.txt
```

Check the result:
```bash
cat test2.txt
```

Output:


    # TEST
    FILE: empty_content.sh
    ./tag.sh title
    OUTPUT:
    stdin HTML Content is empty (cat index.html | ./tag.sh title)
    
    # TEST
    FILE: empty_tag.sh
    cat index.html | ./tag.sh
    OUTPUT:
    HTML TAG is empty, (e.g.: title, body, header)
    