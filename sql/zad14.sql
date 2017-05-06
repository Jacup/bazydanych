SET client_encoding='utf-8';

-- zwiększ cenę towarów o 1, ale tylko tych o znanej cenie,
-- do opisu dodaj słowa 'nowa cena'
UPDATE towar SET cena = cena+1, opis = opis||'; nowa cena'
  WHERE cena IS NOT NULL
;
-- towarom o nieznanej cenie wpisz cenę 0,
-- do opisu dodaj słowa 'cena nieznana'
UPDATE towar SET cena = 0, opis = opis||'; cena nieznana'
  WHERE cena IS NULL
;
-- towarom niezamawianym wpisz koszt minimalny spośród wszystkich kosztów
UPDATE towar SET koszt=( SELECT min(koszt) FROM towar )
  WHERE nr NOT IN (
    SELECT towar_nr FROM pozycja
  )
;
-- towarom zamawianym zwiększ cenę o 5%
UPDATE towar SET cena = cena*1.05
  WHERE EXISTS ( 
    SELECT 1 FROM pozycja WHERE towar_nr=nr 
  )
;

-- zad 14: towarom nie mającym kody kreskowego dodaj do opisu słowa 'brak kodu', 


UPDATE towar SET opis=opis||' -brak kodu-'
 WHERE NOT EXISTS ( 
    SELECT 0 FROM kod_kreskowy WHERE towar_nr=nr 
  )
;

-- towarom mającym kod dodaj słowo 'KOD'
UPDATE towar SET opis=opis||' -KOD-'
 WHERE EXISTS ( 
    SELECT 1 FROM kod_kreskowy WHERE towar_nr=nr 
  )
;

-- towarom, które nie mają ceny wstaw cenę średnią z tabeli

UPDATE towar SET cena=( SELECT avg(cena) FROM towar)
   WHERE cena IS NULL
;

