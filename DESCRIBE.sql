DESCRIBE tbl_paciente;
DESCRIBE tbl_paciente_bkp;

DELETE FROM tbl_paciente WHERE cod_paciente = 3;
SELECT * FROM tbl_paciente;                                                                                         
SELECT * FROM tbl_paciente_bkp;
SELECT * FROM tbl_agenda;