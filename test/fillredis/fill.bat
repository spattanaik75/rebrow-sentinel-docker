# Simple strings
SET string_01 "Simple value"
SET string_02/a "Simple value of a key containing a forward slash"
SET string_03 1
SET string_04 1.1

# Strings with expiry
SETEX string_05 10 "String expiring 10 seconds after creation"
SETEX string_06 100 "String expiring 100 seconds after creation"
SETEX string_07 1000 "String expiring 1000 seconds after creation"
SETEX string_08 10000 "String expiring 10000 seconds after creation"
SETEX string_09 100000 "String expiring 100000 seconds after creation"

# Lists
RPUSH list_01 "First list value"
RPUSH list_01 "Second list value"
RPUSH list_01 "Third list value"

# Sets
SADD set_01 "First set value"
SADD set_01 "Second set value"
SADD set_01 "Third set value"
SADD set_01 "Fourth set value"
SADD set_01 "Fifth set value"

# Hashes
HSET hash_01 field01 "Value of field_01"
HSET hash_01 field02 "Value of field_02"
HSET hash_01 field03 1234567
HSET hash_01 field04 5.6789
HSET hash_02 field01 "Value of field_01"
HSET hash_02 field02 "Value of field_02"
HSET hash_02 field03 1234567
HSET hash_02 field04 5.6789

# Sorted Sets
ZADD zset_01 1 "First zset member"
ZADD zset_01 2 "Second zset member"
ZADD zset_01 3 "Third zset member"
ZADD zset_01 4 "Fourth zset member"
ZADD zset_01 5 "Fifth zset member"

