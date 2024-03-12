CREATE VIEW listagem_geral_medico AS
SELECT * FROM tbl_medico;

SELECT * FROM listagem_geral_medico
WHERE cod_medico = 1;



##### LISTAGEM MÉDICO/ESPECIALIDADE #####
CREATE VIEW listagem_medico_especialidade AS
SELECT
	tm.nome_medico, tm.telefone_medico, tm.celular_medico, tm.email_medico,
	te.nome_especialidade
FROM tbl_medico AS tm
INNER JOIN tbl_especialidade te
ON te.cod_especialidade = tm.cod_especialidade;


##### LISTAGEM SALA/ESPECIALIDADE #####
CREATE VIEW listagem_sala_especialidade AS
SELECT
	ts.numero_sala,
	te.nome_especialidade
FROM tbl_sala AS ts
INNER JOIN tbl_especialidade AS te
ON te.cod_especialidade = ts.cod_especialidade;


##### LISTAGEM AGENDA #####
CREATE VIEW listagem_agenda AS
SELECT
	ta.data_cirurgia, ta.status_cirurgia,
	ts.numero_sala,
    tm.nome_medico, tm.celular_medico,
    tp.nome_paciente, tp.celular_paciente,
    tp.nome_responsavel, tp.telefone_responsavel
FROM tbl_agenda AS ta
INNER JOIN tbl_sala AS ts
ON ta.cod_sala = ts.cod_sala
INNER JOIN tbl_medico AS tm
ON ta.cod_medico = tm.cod_medico
INNER JOIN tbl_paciente AS tp
ON ta.cod_paciente = tp.cod_paciente;


##### TESTE DE VIEWS #####
SELECT * FROM listagem_medico_especialidade;
SELECT * FROM listagem_sala_especialidade;
SELECT * FROM listagem_agenda;


##### EXCLUSÃO DE VIEWS #####
DROP VIEW listagem_medico_especialidade;
DROP VIEW listagem_sala_especialidade;
DROP VIEW listagem_agenda;