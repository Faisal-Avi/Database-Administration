CREATE ROLE analyst IDENTIFIED BY analyst;

SET SERVEROUTPUT ON
DECLARE
    CURSOR object_cur
    IS
    SELECT owner, object_type, object_name
    FROM all_objects 
    WHERE owner IN ('BOTTOMERP', 'BOTTOMERP_DS')
    AND object_type NOT IN ('INDEX', 'TRIGGER')
    ORDER BY 1,2,3;
BEGIN
    EXECUTE IMMEDIATE 'GRANT DBA to ANALYST';
    
    FOR object_rec IN object_cur LOOP
        BEGIN
            EXECUTE IMMEDIATE 'GRANT ALL ON ' || object_rec.owner || '.' || object_rec.object_name || ' TO ANALYST';
        EXCEPTION
            WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error ' || object_rec.object_type || ' ' || object_rec.owner || '.' || object_rec.object_name || ': ' || SQLERRM);
            CONTINUE;
        END;
    END LOOP;
END;
/
