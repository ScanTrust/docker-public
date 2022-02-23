# ScanTrust Postgres Image for CircleCI

This is a customized image based on the default `circleci:postgres` image (currently 9.6.6)
which makes working with django+postgres easier.

 * Updates `template1` and `$POSTGRES_DB` databases
  * Adds extension `uuid-ossp`
  * Adds extension `hstore`

The database `template1` is copied when creating a new database.  Django creates the database
name by appending `_test` to whatever database name you are currently using.  This means that
you normally need to be careful with your connection if you want to match what circleci creates
for you.  With these changes you no longer need to worry about what datbase Django uses for tests.

CircleCI sets the user to `root` and the database to `circle_test` by default.  These two are
created by postgres on initialization, and so would not normally have the extensions installed
even if you managed to get them into `template1`.  If you do end up using that database (by
judicious naming), the extensions are there too.

#### Links

 * [This Image](https://github.com/scantrust/public-images/tree/master/ci/circleci/postgres/)
 * [Postgres Image (well documented)](https://hub.docker.com/_/postgres/)
 * [CircleCI Base Images](https://github.com/circleci/circleci-images/tree/master/postgres)
  * To see the details, download and run the `generate-images.sh` in the postgres directory

#### Pushing to Dockerhub

Documentation for the forgeful amongst us:

```sh
export CI_PG_IMAGE=scantrust/ci-circleci-postgres:<VERSION>
docker build -t ${CI_PG_IMAGE} .
docker push     ${CI_PG_IMAGE}

# run locally to test
docker run -it ${CI_PG_IMAGE}
```