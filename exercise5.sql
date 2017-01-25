
SELECT Account.email
    FROM Account
    JOIN AddressBook ON AddressBook.accountId = Account.id
    WHERE AddressBook.id = 100;