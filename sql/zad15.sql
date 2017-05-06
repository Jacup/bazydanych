SET client_encoding='utf-8';

-- ZAŁOŻENIE: nie ma problemów w integralnością referencyjną
-- tzn. klucze obce mają dodane ON DELETE CASCADE
-- albo usuwamy elementy nie będące adresatem klucza obcego

-- usuń z tabeli towarów wszelkie donice
DELETE FROM towar
  WHERE opis LIKE 'donica%'
;

-- usuń towary niezamawiane
DELETE FROM towar
  WHERE nr NOT IN (
    SELECT towar_nr FROM pozycja
    )
;

-- usuń towary o nieznanej cenie
-- (przedtem być może warto usunąć wszelkie pozycje faktur)
DELETE FROM towar
  WHERE cena IS NULL
;

-- zad 15: usuń klientów z Sopotu,

DELETE FROM klient
   WHERE miasto LIKE 'Sopot'
;

-- usuń klientów, których telefonu nie znamy
	DELETE FROM klient 
	    WHERE telefon IS NULL 
	    OR LENGTH(telefon) <9
	;

-- usuń kody kreskowe nie odpowiadające żadnym towarom
-- usuń klientów, którzy nie złożyli żadnego zamówienia
-- usuń zamówienie, które nie posiada pozycji
-- usuń towary nie posiadające kodu kreskowego
