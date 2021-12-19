CREATE VIEW KortelesGaliojimas
        (Kortele, Galiojimas)
AS SELECT Nr, AGE(Galiojimas, CURRENT_DATE)
    FROM Bank.Kortele

-- SELECT * FROM KortelesGaliojimas


CREATE VIEW SebSaskaitos
AS SELECT *
FROM Bank.Saskaita
WHERE bankas = 1

-- SELECT * FROM SebSaskaitos






CREATE MATERIALIZED VIEW VisuSaskaituBalansas AS
    SELECT Vardas, COUNT(*) AS "Saskaitu sk", SUM(Balansas) AS "Turtas"
    FROM Bank.Vartotojas JOIN Bank.Saskaita
        ON Vartotojas.id = Saskaita.Vartotojas
    GROUP BY Vartotojas.id
    ORDER BY SUM(Balansas) DESC
WITH NO DATA;

REFRESH MATERIALIZED VIEW VisuSaskaituBalansas

-- SELECT * FROM VisuSaskaituBalansas

-- SELECT * 
-- FROM Bank.Vartotojas JOIN Bank.Saskaita
--     ON Vartotojas.id = Saskaita.Vartotojas









CREATE INDEX indexPaslauga
ON Bank.Paslauga(Pavadinimas)

-- EXPLAIN SELECT * FROM Bank.Paslauga
-- WHERE Pavadinimas='Akciju pirkimas'

--DROP INDEX indexPaslauga


CREATE INDEX indexVardas
ON Bank.Vartotojas(Vardas)

-- EXPLAIN SELECT * FROM Bank.Vartotojas
-- WHERE Vardas='Jonas'

--DROP INDEX indexVardas




-- SELECT 
--     tablename, 
--     indexname, 
--     indexdef 
-- FROM 
--     pg_indexes 
-- WHERE 
--     tablename = 'kortele';

CREATE UNIQUE INDEX BankoPavadinimas
    ON Bank.Paslauga(Pavadinimas); 

-- DROP CONSTRAINT PaslaugosVardas;
-- ALTER TABLE Bank.Paslauga
--     DROP CONSTRAINT PaslaugosVardas;

-- DROP INDEX PaslaugosVardas;
