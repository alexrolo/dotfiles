{#
 # pgAdmin 4 - PostgreSQL Tools
 #
 # Copyright (C) 2013 - 2017, The pgAdmin Development Team
 # This software is released under the PostgreSQL Licence
 #}
SELECT
    db.oid AS did, db.datname AS name, db.dattablespace AS spcoid,
    spcname, datallowconn, pg_encoding_to_char(encoding) AS encoding,
    pg_get_userbyid(datdba) AS datowner, datcollate, datctype, datconnlimit,
    has_database_privilege(db.oid, 'CREATE') AS cancreate,
    current_setting('default_tablespace') AS default_tablespace,
    descr.description AS comments, db.datistemplate AS is_template,
    {### Default ACL for Tables ###}
    (SELECT array_to_string(ARRAY(
        SELECT array_to_string(defaclacl::text[], ', ')
            FROM pg_default_acl
        WHERE defaclobjtype = 'r' AND defaclnamespace = 0::OID
    ), ', ')) AS tblacl,
    {### Default ACL for Sequnces ###}
    (SELECT array_to_string(ARRAY(
        SELECT array_to_string(defaclacl::text[], ', ')
            FROM pg_default_acl
        WHERE defaclobjtype = 'S' AND defaclnamespace = 0::OID
    ), ', ')) AS seqacl,
    {### Default ACL for Functions ###}
    (SELECT array_to_string(ARRAY(
        SELECT array_to_string(defaclacl::text[], ', ')
            FROM pg_default_acl
        WHERE defaclobjtype = 'f' AND defaclnamespace = 0::OID
    ), ', ')) AS funcacl,
    {### Default ACL for Type ###}
    (SELECT array_to_string(ARRAY(
        SELECT array_to_string(defaclacl::text[], ', ')
            FROM pg_default_acl
        WHERE defaclobjtype = 'T' AND defaclnamespace = 0::OID
    ), ', ')) AS typeacl,
    (SELECT array_agg(provider || '=' || label) FROM pg_shseclabel sl1 WHERE sl1.objoid=db.oid) AS seclabels,
    array_to_string(datacl::text[], ', ') AS acl
FROM pg_database db
    LEFT OUTER JOIN pg_tablespace ta ON db.dattablespace=ta.OID
    LEFT OUTER JOIN pg_shdescription descr ON (
        db.oid=descr.objoid AND descr.classoid='pg_database'::regclass
    )
WHERE {% if oid %}
db.oid = {{ oid|qtLiteral }}::OID{% else %}{% if name %}
db.datname = {{ name|qtLiteral }}::text{% else %}
db.oid > {{ last_system_oid|qtLiteral }}::OID
{% endif %}{% endif %}

ORDER BY datname;