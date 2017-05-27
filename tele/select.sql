--          1. Wyświetl imie i nazwisko klientów którzy podpisali kiedykolwiek
--          umowę w sieci.
SELECT DISTINCT imie, nazwisko
    FROM klient, umowa
    WHERE klient.pesel=umowa.klient_pesel
    ORDER BY nazwisko
;

--          1.5 to samo, tylko INNER JOIN
SELECT DISTINCT imie, nazwisko
    FROM klient INNER JOIN umowa
    ON klient.pesel=umowa.klient_pesel
    ORDER BY nazwisko
;

--          2. Osoby, które mają aktywną umowę w sieci + ich pesel i numer
--          zakupionej oferty
SELECT imie, nazwisko, pesel, oferta_nr
    FROM klient, umowa
    WHERE klient.pesel=umowa.klient_pesel AND CURRENT_DATE < data_zakonczenia
;
--          3. Jaki klient zakupił jaki telefon
SELECT imie, nazwisko, producent, model
    FROM ((
            klient INNER JOIN umowa
            ON klient.pesel = umowa.klient_pesel )
        INNER JOIN egzemplarz
        ON umowa.egzemplarz_imei = egzemplarz.imei )
    INNER JOIN telefon
    ON egzemplarz.telefon_kod = telefon.kod
    ORDER BY imie, nazwisko
;

--          4. Jakie marki telefonów są w ofercie(kolejność alfabetyczna)?
SELECT DISTINCT producent FROM telefon
    ORDER BY producent
;

--          5. Telefony, których nikt nie zakupił
SELECT producent, model
    FROM telefon
    WHERE kod NOT IN (
        SELECT telefon_kod
        FROM egzemplarz )
;

--          6. Telefony i ich IMEI
SELECT producent, model, imei
    FROM telefon, egzemplarz
    WHERE telefon.kod=egzemplarz.telefon_kod
;

--          7. Klienci i wybrane przez nich oferty wraz z ceną. (od najdroższej)
SELECT imie, nazwisko, oferta_nr, cena_zł
    FROM klient, umowa, oferta
    WHERE klient.pesel=umowa.klient_pesel AND umowa.oferta_nr=oferta.nr
    ORDER BY cena_zł DESC
;

--          8. Pracownicy, ich stanowiska i miejsce zatrudnienia.
SELECT imie, nazwisko, S.nazwa AS stanowisko, numer, O.nazwa
    FROM (
        oddzial O INNER JOIN pracownik P
        ON O.numer = P.oddzial_numer )
    INNER JOIN stanowisko S
    ON P.stanowisko_id = S.id
    ORDER BY nazwa;
;

--          9. Koszt utrzymania poszczególnych stanowisk w całym kraju
SELECT S.nazwa AS stanowisko, count(id) AS ilosc_wakatów, pensja_zł,
sum(pensja_zł) AS suma
    FROM stanowisko S INNER JOIN pracownik P
    ON P.stanowisko_id = S.id
    GROUP BY id ORDER BY id ASC
;

--          10. Znajdź telefony, które posiadaja dowolny CPU Snapdragon.
SELECT *
    FROM telefon
    WHERE cpu LIKE '_napdragon%'
;
--          10,5. Znajdź ofertę, w której mamy wszystko nielimitowane
SELECT *
    FROM oferta
    WHERE internet_mb LIKE '%NO-LIMIT%'
       AND minuty_min LIKE '%NO-LIMIT%'
       AND pakiet_sms LIKE '%NO-LIMIT%'
;
--          11. Sprawdzenie, która umowa była zawarta bez telefonu.
SELECT *
    FROM umowa
    WHERE egzemplarz_imei IS NULL
;

--          11,5. Wypisanie osoby, która wzięła umowę bez telefonu + extras
SELECT pesel, imie, nazwisko, id AS id_umowy, typ AS rodzaj_umowy
    FROM (
        klient K INNER JOIN umowa U
        ON K.pesel = U.klient_pesel AND U.egzemplarz_imei IS NULL )
    INNER JOIN oferta O
    ON U.oferta_nr = O.nr
;

--          12. Pracownik, który nie zawarł żadnej umowy z klientami.
SELECT imie, nazwisko, nazwa AS stanowisko
    FROM pracownik P, stanowisko S
    WHERE P.stanowisko_id = S.id
    AND P.pesel NOT IN (
        SELECT pracownik_pesel
        FROM umowa )
;

--          13. Klient, który nie zawarł jeszcze żadnej umowy.
SELECT imie, nazwisko, pesel
    FROM klient K
    WHERE NOT EXISTS (
        SELECT *
        FROM umowa U
        WHERE k.pesel = U.klient_pesel
    )
;
--          14. CREATE VIEW + zliczanie umów na pracownika
CREATE VIEW pracownik_umowy AS (
SELECT imie, nazwisko, pracownik_pesel, count(pracownik_pesel) AS ilość_umów
    FROM umowa U, pracownik P
    WHERE U.pracownik_pesel = P.pesel
    GROUP BY p.imie, p.nazwisko, pracownik_pesel
    ORDER BY ilość_umów DESC )
;

--          15. Usuwanie niewybieranych ofert.
DELETE FROM oferta
    WHERE nr NOT IN (SELECT oferta_nr FROM umowa)
;

--          16. Zmniejszenie ceny wszystkich abonamentów o 10%
UPDATE oferta SET cena_zł = cena_zł*0.9
    WHERE typ LIKE 'abonament'
;
