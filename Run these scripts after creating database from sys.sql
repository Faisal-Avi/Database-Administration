GRANT EXECUTE ON dbms_crypto TO PUBLIC;
GRANT EXECUTE ON dbms_sqlhash TO PUBLIC;
GRANT EXECUTE ON dbms_obfuscation_toolkit TO PUBLIC;
GRANT EXECUTE ON dbms_obfuscation_toolkit_ffi TO PUBLIC;
GRANT EXECUTE ON dbms_crypto_ffi TO PUBLIC;
GRANT EXECUTE ON dbms_crypto TO foodv2win;
GRANT SELECT ON v_$session TO foodv2win;
GRANT SELECT ON v_$mystat TO foodv2win;
GRANT CREATE JOB TO foodv2win;
GRANT EXECUTE ON DBMS_LOCK TO foodv2win;


