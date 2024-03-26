USE centro_cirurgico_bd;

#CRIAÇÃO DO DELIMITADOR DE INÍCIO DA TRIGGER
DELIMITER $

#DECLARAÇÃO DO CORPO DA TRIGGER
CREATE TRIGGER trg_delete_paciente BEFORE DELETE ON tbl_paciente

FOR EACH ROW #NA LINHA QUE SOFRE A AÇÃO DE DELETE
	BEGIN
		INSERT INTO tbl_paciente_bkp
		SET
		cod_paciente = OLD.cod_paciente,
		nome_paciente = OLD.nome_paciente,
		telefone_paciente = OLD.telefone_paciente,
		celular_paciente = OLD.celular_paciente,
		email_paciente = OLD.email_paciente,
		nome_responsavel = OLD.nome_responsavel,
		telefone_responsavel = OLD.telefone_responsavel,
		date_delete = now();
	END #CRIAÇÃO DO DELIMITADOR DO FIM DA TRIGGER
$