SELECT PA.FECHA_PAGO, E.ESP_ID, A.ATE_ID
    FROM PAGO_ATENCION PA
    INNER JOIN ATENCION A 
    ON PA.ATE_ID = A.ATE_ID
    INNER JOIN ESPECIALIDAD E ON A.ESP_ID = E.ESP_ID
    WHERE extract(year from pa.fecha_pago) = extract(year from sysdate) -1
    ORDER by 1;
  