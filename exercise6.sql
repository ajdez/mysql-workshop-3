

SELECT Phone.content
    FROM Phone
    JOIN Entry ON Phone.entryId = Entry.id
    WHERE Entry.lastName = "Jenkins"
    AND Entry.firstName = "Charlotte";