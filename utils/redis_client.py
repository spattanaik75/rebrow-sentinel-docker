import redis
from redis.sentinel import Sentinel

_conn = None


def conn(host, password= None, port=26379, db=0, service_name='mymaster', cluster=True, *args,
         **kwargs):
    """

    :param host: sentinel host
    :param password:
    :param port: sentinel port , default 26379
    :param service_name: "mymaster" by default
    :return: StrictRedis instance
    """
    global _conn
    if cluster:
        try:
            if _conn is None:
                _conn = Sentinel([(host, port)]).master_for(service_name, password=password, db=db)
                _conn.ping()
            else:
                _conn.ping()

            return _conn
        except (redis.exceptions.ConnectionError, redis.exceptions.BusyLoadingError) as e:
            _conn = Sentinel([(host, port)]).master_for(service_name, password=password, db=db)
            _conn.ping()
    else:
        try:
            if _conn is None:
                _conn = redis.StrictRedis(host=host, port=port, db=db, password=password)
                _conn.ping()
            else:
                _conn.ping()

            return _conn
        except (redis.exceptions.ConnectionError, redis.exceptions.BusyLoadingError) as e:
            _conn = redis.StrictRedis(host=host, port=port, db=db, password=password)
            _conn.ping()
