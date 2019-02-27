# Tests for rebrow

This folder should contain, at one point, automated tests for rebrow. Currently it serves the purpose to deterministically create redis content as a basis for manual tests and development.

## Running the test setup

helm is used here to setup the redis cluster

```
$ helm install --name my-release stable/redis
```

No reach rebrow via `http://<your-docker-ip>:5001/redis:0/`.

## Adding tests

You can simply add test datasets to `fillredis/fill.sh` via Pull Requests.
