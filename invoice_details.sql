set serveroutput on;
CREATE OR REPLACE PROCEDURE select_invoice_line(inv_id NUMBER) IS
inv_cur SYS_REFCURSOR;
inv_type invoice_line.type%TYPE;
inv_amt invoice_line.amount%TYPE;
inv_quant invoice_line.quantity%TYPE;
BEGIN
OPEN inv_cur FOR SELECT type,amount,quantity FROM invoice_line WHERE id=inv_id;
FETCH inv_cur INTO inv_type,inv_amt,inv_quant;
CLOSE inv_cur;
DBMS_OUTPUT.PUT_LINE(inv_type||' '||inv_amt||' '||inv_quant);
END;
/




