CREATE TRIGGER AFTER INSERT ON command
FOR EACH ROW
BEGIN
    UPDATE product SET NUMBERSTOCK = NUMBERSTOCK - :new.NUMBERSTOCK WHERE IDPRODUCT = :new.IDPRODUCT;
END;
