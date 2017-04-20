SELECT 
    DATE_FORMAT(LW_DOCUMENT.LAST_DATE_TIME,
            '%Y-%m-%d %k') AS HOUR,
    lw_document.STATUS,
    COUNT(*) AS COUNT
FROM
    lw_document
GROUP BY DATE_FORMAT(LW_DOCUMENT.LAST_DATE_TIME,
        '%Y-%m-%d %k') , LW_DOCUMENT.STATUS
ORDER BY lw_document.LAST_DATE_TIME DESC;

SELECT
lw_document.STATUS,
lw_document.LAST_DATE_TIME
FROM lw_document
WHERE lw_document.STATUS = 'UNSENT'
ORDER BY lw_document.LAST_DATE_TIME DESC;