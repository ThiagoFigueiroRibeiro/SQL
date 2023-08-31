/*

0002 - Emp. This is the second exercise from my database class. In this assignment we had several
questions to the emp database and we had to create our sql queries to answer them.

*/

-- 1.	Crie uma consulta para exibir o nome e o salário dos funcionários que recebam mais de US$1200.
select ename, sal
from emp
where sal > 1200

--2.	Crie uma consulta para exibir o nome do funcionário e o número do departamento relativos ao número de funcionário 7521.
select ename, deptno
from emp
where empno = 7521


--3.	Exiba o nome e o salário de todos os funcionários cujo salário não esteja na faixa de US$ 500 a US$ 1200. 
select ename, sal
from emp
where sal < 500 or sal > 1200

--4.	Exiba o nome e o número do departamento de todos os funcionários nos departamentos 20 e 30 em ordem alfabética de nome.
select ename, deptno
from emp
where  deptno = 20 or deptno = 30
order by ename

--5.	Elabore uma consulta para listar o nome e o salário dos funcionários que ganhem entre US$ 500 a US$ 1200 e estejam no departamento 20 ou 30. Denomine as colunas como Empregados e Salário do Mês, respectivamente.
select ename as "Empregados", sal as "Salário do Mês" 
from emp
where  (sal >= 500 and sal <= 1200) and (deptno = 20 or deptno = 30)

--6.	Exiba o nome e a data de admissão de cada funcionário admitido em 1987.
select ename, hiredate
from emp
where hiredate like '%87'

--7.	Exiba o nome e o cargo de todos os funcionários que não tenham um gerente.
select ename, job
from emp
where mgr is null

--8.	Exiba o nome, o salário e a comissão de todos os funcionários que recebam comissões. Classifique os dados em ordem decrescente de salário e comissões.
select ename, sal, comm
from emp
where comm is not null
order by comm desc

--9.	Exiba os nomes de todos os funcionários que tenham um A como a terceira letra de seus nomes.
select ename
from emp
where ename like '__A%'

--10.	Exiba os nomes de todos os funcionários que tenham um A e um E em seus nomes.
select ename
from emp
where ename like '%A%E%'

--11.	Exiba o nome, o cargo, e o salário de todos os funcionários cujo cargo seja de vendedor (SALESMAN)ou de funcionário de estoque (CLERK) e cujo salário não seja igual a US$ 950, US$ 1250 ou US$ 1500.
select ename, job, sal
from emp
where (job = 'SALESMAN' or job = 'CLERK') and sal != 950 and sal != 1250 and sal != 1500