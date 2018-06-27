Liste des employés qui travaillent au magasin de Bordeaux (Code postal)

SELECT * FROM Employee, Address, Store WHERE idAddress == idAddressEmployee AND idStore == idAddressStore AND postalStore == 33000;