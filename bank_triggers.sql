-- CREATE OR REPLACE FUNCTION MaxSaskaituSkaicius()
-- RETURNS TRIGGER AS $$
-- BEGIN
-- IF (SELECT COUNT(*) FROM Bank.Saskaita
--     WHERE Saskaita.Vartotojas = NEW.Vartotojas) >= 3
-- THEN 
--     RAISE EXCEPTION 'Virsytas saskaitu limitas';
-- END IF;
-- RETURN NEW;
-- END;$$
-- LANGUAGE plpgsql;


CREATE TRIGGER MaxSaskaituSkaicius
BEFORE INSERT OR 
       UPDATE OF Vartotojas ON Bank.Saskaita
FOR EACH ROW
EXECUTE PROCEDURE MaxSaskaituSkaicius();





-- SELECT COUNT(*) FROM Bank.Saskaita
--     WHERE Saskaita.Vartotojas = 101

-- INSERT INTO Bank.Saskaita (Vartotojas, Balansas, Bankas) VALUES(101, 0, 4);






-- CREATE OR REPLACE FUNCTION KortelesGaliojimoKeitimasLog()
-- RETURNS TRIGGER AS $$
-- BEGIN
-- IF 
--     NEW.Galiojimas <> OLD.Galiojimas
-- THEN
--     INSERT INTO Bank.KortelesGaliojimoKeitimas VALUES(OLD.Nr, OLD.Galiojimas, NEW.Galiojimas, now());
-- END IF;
-- RETURN NEW;
-- END;$$
-- LANGUAGE plpgsql;

CREATE TRIGGER KortelesGaliojimoKeitimas
BEFORE UPDATE ON Bank.Kortele
FOR EACH ROW 
EXECUTE PROCEDURE KortelesGaliojimoKeitimasLog();
