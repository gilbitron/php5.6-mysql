# Docker PHP 5.6 & MySQL

This is a Docker container intended to be used to run your [PHPUnit](https://phpunit.de/) tests on PHP 5.6.

## Build

```
docker build -t {image_name} .
```

## Run

```
docker run -v /path/to/your/app:/pp {image_name}
```

Note: This image assumes you have `phpunit/phpunit` included in your `composer.json`.
