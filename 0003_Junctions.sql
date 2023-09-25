Exercício 3 de SQL

1. Qual é o comando que informa a data do sistema?
SELECT SYSDATE
FROM DUAL

2. Crie uma consulta que exiba os nomes, os comprimentos dos nomes de todos os funcionários que comecem com a letra J, A ou M.
Select ename, length (ename)
from emp
where ename like 'J%' or ename like 'A%' or ename like 'M%' 

3. Elabore um comando que mostre a quantidade de semanas trabalhadas para os funcionários do departamento 10.
Select ename, hiredate, SYSDATE, ROUND (((SYSDATE - hiredate)/7),0)
from emp
where deptno = 10

TERMINAR DE FAZER - 4. Elabore um comando que mostre a data de hoje no formato Picture. Idem para a hora atual. 
Select to_char(Sysdate, 'Day,DDTh, Month, yyyy')
from dual

5. Usando a função DECODE, crie uma consulta que exiba a classificação de todos os funcionários com base no valor da coluna JOB, de acordo com os seguintes dados:

JOB GRADE

PRESIDENT A

MANAGER B

ANALYST C

SALESMAN D

CLERK E

NENHUM

DOS ITENS 0

SELECT job,
DECODE (job,'PRESIDENT','A',
            'MANAGER', 'B',
            'ANALYST', 'C',
            'SALESMAN', 'D',
            'CLERK', 'E',
                    '0') "GRADE"
From emp


1. Qual é a função dos apelidos de tabela nas junções de tabelas.
Resposta: Facilitar escrever o código do query. Ao invés de se escrever um nome logo de vários caracteres, se pode dar um
apelido ('Alias') para de poucos caracteres para uma table.

2. Crie uma consulta para exibir o nome, o número do departamento e o nome do departamento de todos os funcionários.
Select emp.ename, emp.deptno, dept.dname
from emp, dept
where emp.deptno = dept.deptno

3. Crie uma listagem exclusiva de todos os cargos existentes no departamento 30. Inclua o local do departamento na saída.
Select emp.deptno, emp.job, dept.loc
from emp, dept
where emp.deptno = 30 and emp.deptno = dept.deptno

4. Crie uma consulta para exibir o nome, o nome do departamento, e o local de todos os funcionários que recebam uma comissão.
Select emp.ename, dept.dname, dept.loc, emp.comm
from emp, dept
where emp.deptno = dept.deptno and comm is not null

5. Exiba o nome e o nome do departamento de todos os funcionários que tenham uma A em seus nomes.
Select emp.ename, dept.dname
from emp, dept
where emp.deptno = dept.deptno and ename like '%A%'

6. Mostre um exemplo de produto cartesiano.
Select emp.ename, dept.deptno
from emp, dept

7. Mostre um exemplo de junções externas.
SELECT e.ename, e.comm, d.dname
FROM emp e, dept d
WHERE e.deptno(+) = d.deptno

8. Mostre o resultado da execução do script union.
select ename,job,comm, deptno
from emp
where comm is not null
union
select ename,job,comm, deptno
from emp
where deptno = 10

9. Mostre o resultado da execução do script intersect
select ename,job,comm, deptno
from emp
where comm is not null
intersect
select ename,job,comm, deptno
from emp
where ename like 'A%'

10. Mostre o resultado da execução do script minus.
select ename,job,comm, deptno
from emp
where comm is not null
minus
select ename,job,comm, deptno
from emp
where ename like 'A%'

11. Mostre um exemplo de junção utilizando o query builder.
