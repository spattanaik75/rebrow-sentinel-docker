oc new-app --name=redis-gui ^
           --image=rhscl/python-36-rhel7:latest ^
            https://github.com/spattanaik75/rebrow-sentinel-docker.git#master ^
           --strategy=source