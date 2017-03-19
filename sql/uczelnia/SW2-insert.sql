SET client_encoding='utf-8';

INSERT INTO nauczyciel (nr_leg, imie, nazwisko)
	VALUES ('L 001', 'Jan', 'Kowalski');
INSERT INTO nauczyciel (nr_leg, imie, nazwisko)
	VALUES ('L 002', 'Marcin', 'Dziwny');
INSERT INTO nauczyciel (nr_leg, imie, nazwisko)
	VALUES ('L 003', 'Adam', 'Małysz');
INSERT INTO nauczyciel (nr_leg, imie, nazwisko)
	VALUES ('L 004', 'Kajtek', 'Majtek');


INSERT INTO student (nr_ind, imie, nazwisko)
	VALUES ('1001', 'Andrzej', 'Kowalski');
INSERT INTO student (nr_ind, imie, nazwisko)
	VALUES ('1002', 'Mateusz', 'Cegła');
INSERT INTO student (nr_ind, imie, nazwisko)
	VALUES ('1003', 'Kuba', 'Lenovo');
INSERT INTO student (nr_ind, imie, nazwisko)
	VALUES ('1004', 'Zbigniew', 'Samotny');
INSERT INTO student (nr_ind, imie, nazwisko)
	VALUES ('1005', 'Dawid', 'Goły');
INSERT INTO student (nr_ind, imie, nazwisko)
	VALUES ('1006', 'Mariusz', 'Ubrany');

INSERT INTO przedmiot (kod, rodzaj, nazwa, godziny, nr_leg)
	VALUES ('10', 'wykład', 'Matematyka dyskretna', '21', 'L 001');
INSERT INTO przedmiot (kod, rodzaj, nazwa, godziny, nr_leg)
	VALUES ('11', 'wykład', 'Podstawy programowania w C', '22', 'L 002');
INSERT INTO przedmiot (kod, rodzaj, nazwa, godziny, nr_leg)
	VALUES ('12', 'wykład', 'Zaawansowane języki skryptowe', '23', 'L 003');
INSERT INTO przedmiot (kod, rodzaj, nazwa, godziny, nr_leg)
	VALUES ('13', 'wykład', 'Bazy danych', '24', 'L 004');


INSERT INTO termin (dzien_tyg, godzina, sala, kod)
	VALUES ('7', '13', 'A1', '10');
INSERT INTO termin (dzien_tyg, godzina, sala, kod)
	VALUES ('6', '12', 'S112', '12');
INSERT INTO termin (dzien_tyg, godzina, sala, kod)
	VALUES ('5', '8', 'A2', '11');
INSERT INTO termin (dzien_tyg, godzina, sala, kod)
	VALUES ('7', '16', 'A3', '13');


INSERT INTO jest_sluchaczem (nr_ind, kod)
	VALUES ('1001', '13');
INSERT INTO jest_sluchaczem (nr_ind, kod)
	VALUES ('1002', '11');
INSERT INTO jest_sluchaczem (nr_ind, kod)
	VALUES ('1003', '12');
INSERT INTO jest_sluchaczem (nr_ind, kod)
	VALUES ('1004', '12');
INSERT INTO jest_sluchaczem (nr_ind, kod)
	VALUES ('1005', '10');
INSERT INTO jest_sluchaczem (nr_ind, kod)
	VALUES ('1006', '10');

