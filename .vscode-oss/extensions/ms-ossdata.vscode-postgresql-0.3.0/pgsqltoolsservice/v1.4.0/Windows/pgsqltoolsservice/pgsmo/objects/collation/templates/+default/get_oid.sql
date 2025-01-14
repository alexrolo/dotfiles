{#
 # pgAdmin 4 - PostgreSQL Tools
 #
 # Copyright (C) 2013 - 2017, The pgAdmin Development Team
 # This software is released under the PostgreSQL Licence
 #}
{# Below will provide oid for newly created collation #}
{% if data is defined %}
SELECT c.oid
FROM pg_collation c, pg_namespace n
WHERE c.collnamespace=n.oid AND
    n.nspname = {{ data.schema|qtLiteral }} AND
    c.collname = {{ data.name|qtLiteral }}
{% elif coid  %}
SELECT
    c.collnamespace as scid
FROM
    pg_collation c
WHERE
    c.oid = {{coid}}::oid;
{% endif %}
