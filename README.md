# Expiriment using opcache in docker

During an online session at #onlinephpconference a question came up if opcache could be used to 
create a compiled version of the application using `opcache.file_cache` and removing the sources. 

This would allow one to create a binary form of your application in a static state. Unfortunatly I couldn't get it
working properly.

The dockerfile in this repo contains all ingredents. to get things working. Symfony provides a default way of
preloading classes in your project. Files that do not contain classed are not preloaded. 

```
    opcache_compile_file(__DIR__ . '/../../../vendor/autoload.php');
    opcache_compile_file(__DIR__ . '/../../../config/bootstrap.php');
    opcache_compile_file(__DIR__ . '/../../../config/bundles.php');
    opcache_compile_file(__DIR__ . '/../../../public/index.php');
```

What is needed is a way to warm the opcache during the docker build. I could not find out how to do this in a decent way.
