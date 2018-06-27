Proc�dures stock�es KCREA :

DECLARE
  -- Quelques variables
  v_nbClients   INTEGER;

BEGIN
  -- Compte le nombre de clients
  SELECT COUNT(*) INTO v_nbClients FROM Client;

  -- Affichage des r�sultats
  DBMS_OUTPUT.PUT_LINE ('Nombre de clients : ' || v_nbClients);

  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE ('Probl�me rencontr� lors de la requ�te');

END;
/


DECLARE
  -- Quelques variables
  v_nbClientsCarte INTEGER;

BEGIN
  -- Compte le nombre de clients qui ont une carte membre
  SELECT COUNT(*) INTO v_nbClientsCarte FROM CustomerCard, Customer WHERE idCardCustomer = idCustomerCard;

  -- Affichage des r�sultats
  DBMS_OUTPUT.PUT_LINE ('Nombre de clients qui ont une carte membre: ' || v_nbClientsCarte);

  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE ('Probl�me rencontr� dans la proc�dure');

END;
/

