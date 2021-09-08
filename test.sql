-- Esse teste é para avaliar noções básicas de banco de dados e consultas 
-- SQL. Podem usar o padrão SQL ANSI ou qualquer termos específicos de 
-- qualquer DBMS (MySql, Oracle, etc). Todos os itens podem ter mais de uma 
-- resposta correta, todas serão aceitas, mas as que tiverem maior 
-- preocupação com performance terão melhor avaliação.
-- As questões começam mais fáceis e o nível de dificuldade aumenta 
-- gradativamente. Preferimos tentativas erradas do que respostas em branco.

-- Dado o modelo DER no arquivo test.png:

-- Escrever a consulta SQL para recuperar as seguintes informações:

-- Buscar os nomes de todos os alunos que frequentam alguma turma do 
-- professor 'JOAO PEDRO'.
-- Buscar os dias da semana que tenham aulas da disciplina 'MATEMATICA'.
-- Buscar todos os alunos que frequentem aulas de 'MATEMATICA' e também 
-- 'FISICA'.
-- Buscar as disciplinas que não tenham nenhuma turma.
-- Buscar os alunos que frequentem aulas de 'MATEMATICA' exceto os que 
-- frequentem 'QUIMICA'.


-- 1
SELECT A.Nome FROM ALUNO A
JOIN ALUNO_TURMA A_T
ON A.id = A_T.aluno_id
JOIN TURMA T
ON  A_T.turma_id = T.id 
JOIN PROFESSOR P
ON P.nome = 'JOAO PEDRO';


-- 2
SELECT T.dia_da_semana FROM TURMA T
JOIN DISCIPLINA D
ON D.nome = 'MATEMATICA'


-- 3
SELECT A.Nome FROM ALUNO A
JOIN ALUNO_TURMA A_T
ON A.id = A_T.aluno_id
JOIN TURMA T
ON  A_T.turma_id = T.id 
JOIN DISCIPLINA D
ON D.nome = 'MATEMATICA' AND D.nome = 'FISICA'


-- 4
SELECT D.nome FROM DISCIPLINA D
JOIN TURMA T
ON T.id = NULL


-- 5
SELECT A.Nome FROM ALUNO A
JOIN ALUNO_TURMA A_T
ON A.id = A_T.aluno_id
JOIN TURMA T
ON  A_T.turma_id = T.id 
JOIN DISCIPLINA D
ON D.nome = 'MATEMATICA' AND D.nome <> 'QUIMICA'
