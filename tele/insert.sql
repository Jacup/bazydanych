SET DATESTYLE TO 'European,German';
SET client_encoding='utf-8';

insert into klient(pesel, imie, nazwisko, kod_pocztowy, miasto, ulica_dom)
    VALUES
    ('92012125658', 'Marcin', 'Nowak', '83-000', 'Gdańsk', 'Główna 22');
INSERT INTO klient(pesel, imie, nazwisko, kod_pocztowy, miasto, ulica_dom)
    VALUES
    ('95122559559', 'Andrzej', 'Maślak', '83-201', NULL, 'Nowa Wieś 10/3');
INSERT INTO klient(pesel, imie, nazwisko, kod_pocztowy, miasto, ulica_dom)
    VALUES
    ('70051156774', 'Zygmunt', 'Stary', '83-200', 'Starogard Gdański', 'Brudna 2');



INSERT INTO oferta(nr, cena, typ, internet_MB, minuty_min, pakiet_sms)
    VALUES
    ('01', '29 zł', 'mix', NULL, '1000', '500');
INSERT INTO oferta(nr, cena, typ, internet_MB, minuty_min, pakiet_sms)
    VALUES
    ('02', '49 zł', 'abonament', '2048', 'nonlimit', '2500');
INSERT INTO oferta(nr, cena, typ, internet_MB, minuty_min, pakiet_sms)
    VALUES
    ('03', '69 zł', 'abonament', '7168', 'nonlimit', 'nonlimit');



-- INSERT INTO umowa(data_zawarcia, data_zakonczenia, klient_pesel, oferta_nr)
--     VALUES
--         ('19-12-2013', "19-12-2015", '95122559559', '02');
-- INSERT INTO umowa(data_zawarcia, data_zakonczenia, klient_pesel, oferta_nr)
--     VALUES
--     ('09-01-2016', "09-01-2018", '92012125658', '03');
-- INSERT INTO umowa(data_zawarcia, data_zakonczenia, klient_pesel, oferta_nr)
--     VALUES
--     ('30-05-2015', "30-05-2017", '70051156774', '01');


INSERT INTO stanowisko(ID, nazwa, pensja)
    VALUES
    ('100', 'kierownik', '4890zł');
INSERT INTO stanowisko(ID, nazwa, pensja)
    VALUES
    ('101', 'manager', '3000zł');
INSERT INTO stanowisko(ID, nazwa, pensja)
    VALUES
    ('102', 'sprzedawca', '1400zł');



INSERT INTO oddzial(numer, nazwa, telefon, kod_pocztowy, miasto, ulica_dom)
    VALUES
    ('5555', 'Sklep Gdańsk', NULL, '83-000', 'Gdańsk', 'Morska 12B');
INSERT INTO oddzial(numer, nazwa, telefon, kod_pocztowy, miasto, ulica_dom)
    VALUES
    ('5556', NULL, '123456789', '00-125', NULL, 'Wioska 3');
INSERT INTO oddzial(numer, nazwa, telefon, kod_pocztowy, miasto, ulica_dom)
    VALUES
    ('5557', 'Sklep Warszawa', '147258369', '23-999', 'Warszawa', 'Dziwna 152');



INSERT INTO pracownik(PESEL, imie, nazwisko, kod_pocztowy, miasto, ulica_dom, stanowisko_ID, oddzial_numer)
    VAlUES
    ('95856566925', 'Andrzej', 'Piwerko', '83-200', 'Starogard Gdański', 'Rynek 1', '102', '5555');
INSERT INTO pracownik(PESEL, imie, nazwisko, kod_pocztowy, miasto, ulica_dom, stanowisko_ID, oddzial_numer)
    VAlUES
    ('78950522111', 'Marian', 'Wódeczka', '23-990', 'Warszawa', 'Rynek 1', '100', '5557');
INSERT INTO pracownik(PESEL, imie, nazwisko, kod_pocztowy, miasto, ulica_dom, stanowisko_ID, oddzial_numer)
    VAlUES
    ('96959488222', 'Grzegorz', 'Bimberek', '00-124', 'Śląsk', 'Krótka 22', '101', '5556');
