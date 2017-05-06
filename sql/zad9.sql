SET client_encoding='utf-8';
/* z tabel klientów, zamówienień i ich pozycji oblicz zysk 
   na poszczególnych towarach dla poszczególnych klientów
*/
SELECT imie, nazwisko, opis, ilosc,
       ilosc * (cena - koszt) AS zysk
   FROM  (( klient 
             INNER JOIN zamowienie 
                ON klient.nr = zamowienie.klient_nr
          ) INNER JOIN pozycja
              ON zamowienie.nr = pozycja.zamowienie_nr
         ) INNER JOIN towar 
           ON pozycja.towar_nr = towar.nr
;

-- zad P9: uporządkuj powyższy wydruk w/g klientów
-- odrzuć wiersze, dla których nie da się określić zysku.

SELECT imie, nazwisko, opis, ilosc,
       ilosc * (cena - koszt) AS zysk 
   FROM  (( klient 
             INNER JOIN zamowienie 
                ON klient.nr = zamowienie.klient_nr
          ) INNER JOIN pozycja
              ON zamowienie.nr = pozycja.zamowienie_nr
         ) INNER JOIN towar 
           ON pozycja.towar_nr = towar.nr
WHERE ilosc * (cena - koszt) >= 0.00
ORDER BY imie, nazwisko
;
