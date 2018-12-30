--.........................BASE DE DATOS CICLISMO......................--
--Ciclismo 1
SELECT *
FROM BDA.MAILLOT
;
--Ciclismo 2
SELECT dorsal, nombre
FROM BDA.CICLISTA
WHERE EDAD <= 25
;
--Ciclismo 3
SELECT nompuerto, altura
FROM BDA.PUERTO
WHERE CATEGORIA = 'E'
;
--Ciclismo 4
SELECT netapa
FROM BDA.ETAPA
WHERE salida = llegada
;
--Ciclismo 5
SELECT COUNT(*)
FROM BDA.CICLISTA
;
--Ciclismo 6
SELECT COUNT(*)
FROM BDA.CICLISTA
WHERE EDAD > 25
;
--Ciclismo 7
SELECT COUNT(*)
FROM BDA.EQUIPO
;
--Ciclismo 8
SELECT AVG(EDAD)
FROM BDA.CICLISTA
;
--Ciclismo 9
SELECT MIN(altura), MAX(altura)
FROM BDA.PUERTO
;
--Ciclismo 10
SELECT nompuerto, categoria
FROM BDA.PUERTO P, BDA.CICLISTA C
WHERE P.dorsal = C.DORSAL AND C.NOMEQ = 'Banesto'
;
--Ciclismo 11
SELECT nompuerto, E.netapa, E.km
FROM BDA.PUERTO P, BDA.ETAPA E
WHERE P.NETAPA = E.NETAPA
;
--Ciclismo 12
SELECT DISTINCT E.nomeq, director
FROM BDA.EQUIPO E, BDA.CICLISTA C
WHERE E.nomeq = C.nomeq
AND C.edad > 33;
--Ciclismo13
SELECT  DISTINCT nombre, color
FROM BDA.MAILLOT M, BDA.LLEVAR L, BDA.CICLISTA C
WHERE C.dorsal = L.dorsal
AND L.codigo = M.codigo
ORDER BY C.nombre;
--Ciclista14
SELECT DISTINCT C.nombre, E.netapa
FROM BDA.MAILLOT M, BDA.LLEVAR L, BDA.CICLISTA C, BDA.ETAPA E
WHERE E.dorsal = C.dorsal
AND C.dorsal = L.dorsal
AND L.codigo = M.codigo
AND M.color = 'Amarillo'
ORDER BY C.nombre;
--Ciclista15
SELECT E2.netapa
FROM BDA.ETAPA E1, BDA.ETAPA E2
WHERE E1.netapa = E2.netapa - 1
AND E2.salida <> E1.llegada;
--Ciclista16
SELECT netapa, salida
FROM BDA.ETAPA E1
WHERE netapa NOT IN(SELECT netapa
                    FROM BDA.PUERTO);
--Ciclista17
SELECT AVG(edad)
FROM BDA.CICLISTA
WHERE dorsal IN (SELECT dorsal FROM etapa);
--Ciclista18
SELECT nompuerto
FROM BDA.PUERTO
WHERE altura > (SELECT AVG(altura) FROM BDA.PUERTO);
--Ciclista19
SELECT salida, llegada
FROM BDA.ETAPA 
WHERE netapa IN (SELECT P.netapa 
                    FROM puerto P  
                    WHERE pendiente = (SELECT MAX(pendiente) 
                                            FROM BDA.PUERTO));
--Ciclista20
SELECT nombre, dorsal
FROM BDA.CICLISTA
WHERE dorsal IN (SELECT dorsal 
                FROM PUERTO 
                WHERE altura = (SELECT MAX(altura)
                                FROM BDA.PUERTO));
--Ciclista21
SELECT nombre
FROM BDA.ciclista
where edad = (select min(edad)
                from bda.ciclista);
--Ciclista22
SELECT nombre
FROM ciclista
WHERE dorsal IN (SELECT dorsal
                 FROM etapa) AND edad = (SELECT MIN(edad)
                                         FROM ciclista
                                         WHERE dorsal IN (SELECT dorsal
                                                          FROM etapa));
--Ciclismo23
select nombre
from bda.ciclista c
where 1 < (select count(nompuerto)
           from bda.puerto
           where dorsal = c.dorsal);
           
--Ciclismo24
select netapa
from etapa e
where not exists(
    SELECT *
    from puerto
    where netapa = e.netapa
    and altura <=700
    )  and exists (
    select *
    from puerto
    where e.netapa = netapa)
    order by netapa
;
--Ciclismo25
select nomeq, director
from equipo e
where not exists(
    select *
    from ciclista c
    where c.nomeq = e.nomeq 
    AND c.edad<=25)
    and exists(
    select *
    from ciclista c
    where c.nomeq = e.nomeq)
    order by nomeq
;
--Ciclismo26
select dorsal, nombre
from ciclista c
where not exists(
    select *
    from etapa
    where c.dorsal = dorsal
    and
    km<=170)
    and exists(
    select *
    from etapa
    where c.dorsal = dorsal)
    order by dorsal;

--Ciclismo27
select nombre
from ciclista c
where c.dorsal in(
    
    select dorsal
    from etapa e
    where not exists(
    select *
    from puerto p
    where e.dorsal <> p.dorsal
    and e.netapa = p.netapa)
    and exists(
    select *
    from puerto p
    where e.netapa = p.netapa)
    );

--Ciclismo28
select eq.nomeq
from equipo eq
where not exists(
    select *
    from ciclista c
    where c.dorsal not in(
        select dorsal
        from llevar) and dorsal not in(select dorsal from puerto) 
                     and eq.nomeq = c.nomeq)
            and exists(
                select *
                from ciclista c
                where c.nomeq = eq.nomeq);
    
--Ciclismo29
SELECT codigo, color
FROM maillot
WHERE codigo IN (
    SELECT codigo
    FROM llevar
    WHERE dorsal IN (
        SELECT dorsal
        FROM ciclista c
        WHERE NOT EXISTS (
            SELECT *
            FROM ciclista
            WHERE dorsal IN (
                SELECT dorsal
                FROM llevar
                WHERE codigo = maillot.codigo
            ) AND nomeq <> c.nomeq
        )
    )
);

--Ciclismo30
SELECT nomeq
FROM equipo
WHERE NOT EXISTS (
    SELECT *
    FROM ciclista
    WHERE nomeq = equipo.nomeq
    AND dorsal IN (
        SELECT dorsal
        FROM puerto
        WHERE categoria <> '1'
    )
) AND EXISTS (
    SELECT * 
    FROM ciclista
    WHERE nomeq = equipo.nomeq
    AND dorsal IN (
        SELECT dorsal
        FROM puerto
    )
);
--Ciclismo31
select netapa, count(nompuerto)
from etapa join puerto using(netapa)
group by netapa;

--.......................BASE DE DATOS BIBLIOTECA.................--
--Biblioteca1--
select nombre
from autor
where nacionalidad = 'Argentina';
--Biblioteca2--
select titulo
from obra o
where o.titulo like '%mundo%';
--Biblioteca3--
select id_lib, num_obras
from libro
where año < 1990 AND num_obras >1;
--Biblioteca4--
select count(*)
from libro
where año is not null;
--Biblioteca5--
select count(*)
from libro
where num_obras > 1;
--Biblioteca6--
select id_lib
from libro
where titulo is null and año = 1997;
--Biblioteca7--
select titulo
from libro
where titulo is not null
order by titulo desc;
--Biblioteca8--
select sum(num_obras)
from libro
where año between 1990 and 1999;
--Biblioteca9--
SELECT COUNT(DISTINCT autor_id)
FROM escribir
WHERE cod_ob IN (
    SELECT cod_ob
    FROM obra
    WHERE titulo LIKE '%ciudad%');
--Biblioteca10
SELECT titulo
FROM obra
WHERE cod_ob IN(
    SELECT cod_ob
    FROM escribir
    WHERE autor_id IN(
            SELECT autor_id
            FROM autor
            WHERE nombre = 'Camús, Albert')
            );
--Biblioteca11
SELECT nombre
FROM autor
WHERE autor_id IN(SELECT autor_id
    FROM escribir
    WHERE cod_ob IN(
            SELECT cod_ob
            FROM obra
            WHERE titulo = 'La tata')
);
--Biblioteca12
SELECT nombre
FROM amigo
WHERE num IN (
    SELECT num
    FROM leer
    WHERE cod_ob IN (
        SELECT cod_ob
        FROM escribir
        WHERE autor_id = 'RUKI'
    )
);
--Biblioteca13
SELECT id_lib, titulo
FROM libro
WHERE titulo IS NOT NULL
AND 1 < (
    SELECT COUNT(cod_ob)
    FROM esta_en
    WHERE libro.id_lib = id_lib
);
--Biblioteca14
SELECT titulo, nombre
FROM autor, obra
WHERE nacionalidad = 'Francesa'
AND cod_ob IN (
    SELECT cod_ob
    FROM escribir
    WHERE autor_id = autor.autor_id
    AND cod_ob NOT IN (
        SELECT cod_ob
        FROM escribir
        WHERE autor_id <> autor.autor_id
    )
);
--Bilbioteca15
SELECT COUNT(autor_id) SIN_OBRA
FROM autor
WHERE autor_id NOT IN (
    SELECT autor_id
    FROM escribir
);
--Biblioteca16
SELECT nombre
FROM autor
WHERE autor_id NOT IN (
    SELECT autor_id
    FROM escribir
);
--Biblioteca17
SELECT a.nombre
from autor a
where a.nacionalidad = 'Española'
and 2<=(select count(*)
        from escribir
        where a.autor_id = autor_id);
--Biblioteca18
