# Docker PHP 5.6 & MySQL

This is a Docker container intended to be used to run your tests on PHP 5.6. It assumes you will be attaching your app as a volume to `/app` and has the following requirements:

* Your app has a `run.sh` file in the root that runs `composer install` and `phpunit` (or any tests you have)

## Build

```
docker build -t {image_name} .
```

## Run

```
docker run -v /path/to/your/app:/app {image_name}
```
