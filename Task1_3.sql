SELECT 
    LW_DOCUMENT.*, LW_MESSAGE.*
FROM
    LW_DOCUMENT
        INNER JOIN
    LW_MESSAGE ON LW_DOCUMENT.OUT_WFID = LW_MESSAGE.WFID;