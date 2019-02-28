#!/bin/sh

for version in */ ; do
    for path in $version/*/ ; do
        slug=${path/\/\//-}
        tag=${slug::-1}
        docker build -t namoshek/php-mssql-workbench:$tag $path
    done
done
