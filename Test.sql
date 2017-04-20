SELECT DISTINCT
    (SELECT 
            COUNT(lw_message.DIRECTION)
        FROM
            lw_message
        WHERE
            lw_message.DIRECTION = 'I') AS I,
    (SELECT 
            COUNT(lw_message.DIRECTION)
        FROM
            lw_message
        WHERE
            lw_message.DIRECTION = 'O') AS O
FROM
    lw_message;

SELECT DISTINCT
    lw_message.DIRECTION AS DIRECTION,
    COUNT(lw_message.DIRECTION) AS COUNT
FROM
    lw_message
GROUP BY lw_message.DIRECTION;

SELECT 
    COUNT(*)
FROM
    lw_message;

SELECT DISTINCT
    lw_document.SOURCE_ID, lw_document.SOURCE_NAME
FROM
    lw_document;
    
    SELECT DISTINCT
    lw_document.SOURCE_ID,
    lw_document.SOURCE_NAME,
    COUNT(lw_document.SOURCE_ID) AS COUNT
FROM
    lw_document
GROUP BY lw_document.SOURCE_ID;
    
SELECT 
    COUNT(lw_document.STANDARD) AS X12
FROM
    lw_document
WHERE
    lw_document.STANDARD = 'X12';

SELECT 
    COUNT(lw_document.STANDARD) AS EDIFACT
FROM
    lw_document
WHERE
    lw_document.STANDARD = 'EDIFACT';

SELECT DISTINCT
    lw_document.STANDARD AS STANDARD,
    COUNT(lw_document.STANDARD) AS COUNT
FROM
    lw_document
GROUP BY lw_document.STANDARD;
