-- 9. CONSULTA: CLIENTES INADIMPLENTES
SELECT
    Clientes.nome,
    emprestimos.valor,
    emprestimos.status
FROM Clientes
JOIN emprestimos
    ON Clientes.id = emprestimos.cliente_id
WHERE emprestimos.status = 'Inadimplente';

-- 10. CONSULTA: CIDADES COM MAIS CLIENTES INADIMPLENTES
SELECT
    Clientes.cidade,
    COUNT(DISTINCT Clientes.id) AS quantidade_inadimplentes
FROM Clientes
JOIN emprestimos
    ON Clientes.id = emprestimos.cliente_id
WHERE emprestimos.status = 'Inadimplente'
GROUP BY Clientes.cidade
ORDER BY quantidade_inadimplentes DESC;

-- 11. CONSULTA: VALOR TOTAL DOS EMPRESTIMOS INADIMPLENTES
SELECT
    SUM(emprestimos.valor) AS total_inadimplente
FROM emprestimos
WHERE emprestimos.status = 'Inadimplente';
