# PhantomJS container

Docker image with PhantomJS intended to act as a web testing environment to avoid needing
to install/build web testing tools on your host OS.

NOTE: Building the image takes a long time for PhantomJS compile and I had to increase my Boot2Docker VM memory to 4 gigs to cope.

## Run

Build image:

```
docker build -t stevenalexander/phantomjs .
```

Pull from hub:

```
docker pull stevenalexander/phantomjs
```


Test PhantomJS:

```
docker run -it --rm stevenalexander/phantomjs /phantomjs/bin/phantomjs -v
```

Run with [ghostdriver](https://github.com/detro/ghostdriver) for remote control

```
docker run -it --rm stevenalexander/phantomjs /phantomjs/bin/phantomjs --webdriver=8080

#With selenium grid hub
#docker run -it --rm stevenalexander/phantomjs /phantomjs/bin/phantomjs --webdriver=8080 --webdriver-selenium-grid-hub=http://${HUBIP}:4444
```
