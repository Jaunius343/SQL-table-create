INSERT INTO Bank.Vartotojas (Vardas, Pavarde, Gimimo_data) VALUES ('Jonas', 'Jonaitis', '2001-01-01');
INSERT INTO Bank.Vartotojas (Vardas, Pavarde, Gimimo_data) VALUES ('Petras', 'Petraitis', '2002-02-02');
INSERT INTO Bank.Vartotojas (Vardas, Pavarde, Gimimo_data) VALUES ('Ona', 'Onaityte', '2000-10-10');
INSERT INTO Bank.Vartotojas (Vardas, Pavarde, Gimimo_data) VALUES ('Tadas', 'Onaitis', '2001-03-03');
INSERT INTO Bank.Vartotojas (Vardas, Pavarde, Gimimo_data) VALUES ('Maryte', 'Grazulyte', '2001-04-04');

INSERT INTO Bank.Bankas (Pavadinimas, Kapitalas, Adresas, Reitingas) VALUES ('SEB', 0, 'adresas1', '4');
INSERT INTO Bank.Bankas (Pavadinimas, Kapitalas, Adresas, Reitingas) VALUES ('SWED', 0, 'adresas2', '4');
INSERT INTO Bank.Bankas (Pavadinimas, Kapitalas, Adresas, Reitingas) VALUES ('Luminor', 0, 'adresas3', '3');
INSERT INTO Bank.Bankas (Pavadinimas, Kapitalas, Adresas) VALUES ('Siauliu', 0, 'adresas4');

INSERT INTO Bank.Paslauga VALUES (1, 'Paskola', 5);
INSERT INTO Bank.Paslauga VALUES (2, 'Kaupimas');
INSERT INTO Bank.Paslauga VALUES (3, 'Akciju pirkimas', 10);

INSERT INTO Bank.BankoPaslaugos VALUES (1, 1);
INSERT INTO Bank.BankoPaslaugos VALUES (1, 2);
INSERT INTO Bank.BankoPaslaugos VALUES (1, 3);
INSERT INTO Bank.BankoPaslaugos VALUES (2, 1);
INSERT INTO Bank.BankoPaslaugos VALUES (2, 2);
INSERT INTO Bank.BankoPaslaugos VALUES (2, 3);
INSERT INTO Bank.BankoPaslaugos VALUES (3, 2);

INSERT INTO Bank.Saskaita (Vartotojas, Balansas, Bankas) VALUES (100, 0, 1);
INSERT INTO Bank.Saskaita (Vartotojas, Balansas, Bankas, Tipas) VALUES (100, 1000, 1, 'kaupiamoji');
INSERT INTO Bank.Saskaita (Vartotojas, Balansas, Bankas) VALUES(101, 0, 1);
INSERT INTO Bank.Saskaita (Vartotojas, Balansas, Bankas) VALUES(101, 0, 2);
INSERT INTO Bank.Saskaita (Vartotojas, Balansas, Bankas) VALUES(101, 0, 3);
INSERT INTO Bank.Saskaita (Vartotojas, Balansas, Bankas) VALUES(102, 0, 4);
INSERT INTO Bank.Saskaita (Vartotojas, Balansas, Bankas, Tipas) VALUES(102, 0, 1, 'kaupiamoji');
INSERT INTO Bank.Saskaita (Vartotojas, Balansas, Bankas, Tipas) VALUES(103, 0, 2, 'kreditine');

INSERT INTO Bank.Kortele VALUES (555544440001, 1000, '2023-12-04');
INSERT INTO Bank.Kortele VALUES (555544440002, null, '2025-12-04');
INSERT INTO Bank.Kortele VALUES (555544440003, null, '2024-12-04');

INSERT INTO Bank.KortelesSaskaita VALUES (555544440001, 10000);
INSERT INTO Bank.KortelesSaskaita VALUES (555544440002, 10001);
INSERT INTO Bank.KortelesSaskaita VALUES (555544440003, 10002);



-- trigger test
-- INSERT INTO Bank.Saskaita (Vartotojas, Balansas, Bankas) VALUES(101, 0, 4);

-- UPDATE Bank.Saskaita
-- SET Vartotojas = 101
-- WHERE Vartotojas = 103

-- SELECT * FROM Bank.Saskaita


-- UPDATE Bank.Kortele
-- SET galiojimas = '2025-01-01'
-- WHERE nr = 555544440001
