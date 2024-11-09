SELECT 
    e.Event_id,
    e.Duration,
    s.Name AS Status_Name
FROM 
    Event e
INNER JOIN 
    Status s
ON 
    e.Status_code = s.Status_code;



SELECT 
    Reason_code,
    Name AS Reason_Name,
    'Ready' AS Reason_Type
FROM 
    Ready_Reason
UNION
SELECT 
    Reason_code,
    Name AS Reason_Name,
    'Delay' AS Reason_Type
FROM 
    Delay_Reason;



SELECT 
    e.Event_id,
    e.Duration,
    r.Reason_code,
    r.Reason_Name,
    r.Reason_Type
FROM 
    Event e
LEFT JOIN 
    (SELECT 
         Reason_code,
         Name AS Reason_Name,
         'Ready' AS Reason_Type
     FROM 
         Ready_Reason
     UNION
     SELECT 
         Reason_code,
         Name AS Reason_Name,
         'Delay' AS Reason_Type
     FROM 
         Delay_Reason) r
ON 
    e.Reason_code = r.Reason_code;
