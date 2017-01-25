

SELECT Entry.firstName
    FROM Entry
    Join AddressBook on AddressBook.id = Entry.addressBookId
    WHERE AddressBook.name = "Pharetra Ut Limited";


