
SELECT Phone.subtype, COUNT(*)
    FROM Entry
    JOIN Phone ON Phone.entryId = Entry.id
    WHERE birthday > "1950-10-01 00:00:00"
    AND birthday < "1960-10-01 00:00:00"
    GROUP BY subtype;
    
SELECT Phone.subtype, COUNT(Entry.id)
    FROM Entry
    JOIN Phone ON Phone.entryId = Entry.id
    WHERE (birthday between "1950-10-01 00:00:00" and "1960-10-01 00:00:00")
    GROUP BY subtype;