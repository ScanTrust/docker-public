# ScanTrust Backend Image for CircleCI

This is a simple Python 2 based image with the necessary libs pre-istalled
and is intended for use on circle-ci.  It is based on `circleci/python:2.7.14-stretch`

 * Installs the `postgresql-client-9.6` deb
 * Installs scientific libs needed (or helpful for speed)
 * Installs `libgeos`

#### Links

 * [This Image](https://github.com/scantrust/public-images/tree/master/ci/circleci/backend/)
 * [CircleCI Base Images](https://github.com/circleci/circleci-images/tree/master/python/)

#### Pushing to Dockerhub

Documentation for the forgeful amongst us:

```sh
docker build -t stbe .
docker tag stpg:latest scantrust/ci-circleci-backend-py2:latest
docker push scantrust/ci-circleci-backend-py2:latest

# run locally to test
docker run -it stbe
```