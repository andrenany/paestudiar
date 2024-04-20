--VARIABLES BIND
VAR B_ESPECIALIDAD1 NUMBER
EXEC :B_ESPECIALIDAD1:= 1200;

VAR B_ESPECIALIDAD2 NUMBER
EXEC :B_ESPECIALIDAD2:= 1300;

VAR B_ESPECIALIDAD3 NUMBER
EXEC :B_ESPECIALIDAD3:= 1700;

VAR B_ESPECIALIDAD4 NUMBER
EXEC :B_ESPECIALIDAD4:= 1900;

VAR B_ESPECIALIDAD5 NUMBER
EXEC :B_ESPECIALIDAD5:= 1100;

VAR B_ESPECIALIDAD6 NUMBER
EXEC :B_ESPECIALIDAD6:= 2000;

VAR B_ESPECIALIDAD7 NUMBER
EXEC :B_ESPECIALIDAD7:= 2300;

DECLARE
    -- Declaración de cursores
    CURSOR cur_atenciones IS
    SELECT PA.FECHA_PAGO, E.ESP_ID, A.ATE_ID
    FROM PAGO_ATENCION PA
    INNER JOIN ATENCION A 
    ON PA.ATE_ID = A.ATE_ID
    INNER JOIN ESPECIALIDAD E ON A.ESP_ID = E.ESP_ID
    WHERE extract(year from pa.fecha_pago) = extract(year from sysdate) -1
    ORDER by 1;

    -- Declaración de variables
    v_multa NUMBER;
    v_descuento NUMBER;
    v_edad NUMBER;
BEGIN
    -- Truncar la tabla PAGO_MOROSO
    EXECUTE IMMEDIATE 'TRUNCATE TABLE PAGO_MOROSO';

    -- Bucle para procesar las atenciones médicas
    FOR ATE_ID IN cur_atenciones LOOP
        -- Cálculo de la multa
        -- Calcular la multa basada en la especialidad del paciente
    IF ATENCION.ESP_ID= 100 OR ATENCION.ESP_ID= 300 THEN
        v_multa := :B_ESPECIALIDAD1;
           DBMS_OUTPUT.PUT_LINE(v_multa);
    ELSIF ATENCION.ESP_ID= 2000 THEN
        v_multa := :B_ESPECIALIDAD2;
    ELSIF ATENCION.ESP_ID= 400 OR ATENCION.ESP_ID= 900 THEN
        v_multa := :B_ESPECIALIDAD3;
    ELSIF ATENCION.ESP_ID= 500 OR ATENCION.ESP_ID= 600 THEN
        v_multa := :B_ESPECIALIDAD4;
    ELSIF ATENCION.ESP_ID= 700 THEN
        v_multa := :B_ESPECIALIDAD5;
    ELSIF ATENCION.ESP_ID= 1100 THEN
        v_multa := :B_ESPECIALIDAD6;
    ELSIF ATENCION.ESP_ID= 1400 OR ATENCION.ESP_ID= 1800 THEN
        v_multa := :B_ESPECIALIDAD7;
    ELSE
        v_multa := 0; -- Especialidad no especificada
    END IF;

        -- Aplicar descuento para pacientes de tercera edad
        -- Calcular la edad del paciente
         SELECT TRUNC(MONTHS_BETWEEN(SYSDATE, FECHA_NACIMIENTO) / 12) INTO v_edad
         FROM PACIENTE
         WHERE paciente_id = rec_atencion.paciente_id;


        -- Calcular multa final
        v_multa := v_multa - v_descuento;

        -- Insertar en la tabla PAGO_MOROSO
      /*  INSERT INTO PAGO_MOROSO (paciente_id, apellido_paterno, fecha_venc_pago, fecha_pago, multa)
        VALUES (rec_atencion.paciente_id, rec_atencion.apellido_paterno, rec_atencion.fecha_vencimiento, rec_atencion.fecha_pago, v_multa);
    END LOOP;*/
END LOOP;
    -- Commit para confirmar los cambios en la tabla
    COMMIT;
END;
