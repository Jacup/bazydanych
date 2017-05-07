-- 1.
-- 2.
INSERT INTO dziennikarz (id, imie, nazwisko, plec)
VALUES ('NOWAK', 'Jan', 'Nowak', 'M');
INSERT INTO dziennikarz (id, imie, nazwisko, plec)
VALUES ('BEKSA', 'Karol', 'Beksinski', 'M');

INSERT INTO artykul (tytul, nr, kod_dz, dlug)
VALUES ('Wielkie Zarcie', 16, 'REDD', 2850);
INSERT INTO artykul (tytul, nr, kod_dz)
VALUES ('Myslenie owiec', 15, 'BEKSA');

-- 3.
ALTER TABLE artykul
    ADD COLUMN data_publikacji DATE,
    ADD COLUMN dlugosc_zalacznikow INT NULL;

-- 4.
SELECT nr FROM artykul
INNER JOIN dziennikarz ON artykul.kod_dz = dziennikarz.id
WHERE nazwisko LIKE 'Beksinski' GROUP BY nr ORDER BY nr DESC;

-- 5.
SELECT nazwisko FROM dziennikarz WHERE NOT EXISTS (SELECT * FROM artykul WHERE artykul.kod_dz = dziennikarz.id);

-- 6.
SELECT MAX(dlug)
FROM artykul INNER JOIN dziennikarz
ON artykul.kod_dz = dziennikarz.id
WHERE dziennikarz.plec = 'M';


-- 7.
SELECT tytul FROM artykul
WHERE dlug IN
(
    SELECT MAX(dlug)
    FROM artykul INNER JOIN dziennikarz
    ON artykul.kod_dz = dziennikarz.id
    WHERE dziennikarz.plec = 'M'
);

-- 8.
SELECT tytul, nr, nazwisko
FROM artykul INNER JOIN dziennikarz
ON artykul.kod_dz = dziennikarz.id
WHERE tytul IN
(
    SELECT tytul as ilosc FROM artykul
    GROUP BY tytul
    HAVING COUNT(*) > 1
);
