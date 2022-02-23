# ScanTrust Backend Image for CircleCI

This is a simple Python 2 based image with the necessary libs pre-istalled
and is intended for use on circle-ci.  It is based on `circleci/python:3.x-buster`

 * Installs the `postgresql-client-12`
 * Installs scientific libs needed (or helpful for speed)
 * Installs `libgeos`

#### Links

 * [This Image](https://github.com/scantrust/public-images/tree/master/ci/circleci/backend/)
 * [CircleCI Base Images](https://github.com/circleci/circleci-images/tree/master/python/)

#### Pushing to Dockerhub

Documentation for the forgeful amongst us:

```sh
docker login 

export TAG={SET-TAG}
docker build -t scantrust/ci-circleci-backend-py3:${TAG} .
docker push     scantrust/ci-circleci-backend-py3:${TAG}

# run locally to test
docker run --rm -it scantrust/ci-circleci-backend-py3:${TAG}
```