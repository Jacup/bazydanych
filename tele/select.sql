-- 1. Wyświetl imie i nazwisko klientów którzy podpisali kiedykolwiek
--   umowę w sieci.
SELECT DISTINCT imie, nazwisko
    FROM klient, umowa
    WHERE klient.pesel=umowa.klient_pesel;
    ORDER BY nazwisko
;
-- 1.5 to samo, tylko INNER JOIN
SELECT DISTINCT imie, nazwisko
    FROM klient INNER JOIN umowa
    ON klient.pesel=umowa.klient_pesel
    ORDER BY nazwisko
;

-- Osoby, które mają aktywną umowę w sieci
SELECT imie, nazwisko FROM klient
  WHERE pesel IN (
    SELECT klient_pesel FROM umowa
    WHERE CURRENT_DATE-data_zakonczenia < 1 )
    ORDER BY nazwisko;

-- Jaki klient zakupił jaki telefon
-- jaka umowa ma jaki telefon
