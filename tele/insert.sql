SET DATESTYLE TO 'European,German';
SET client_encoding='utf-8';

-------------------KLIENT----------------------------------------------------

insert into klient(pesel, imie, nazwisko, kod_pocztowy, miasto, ulica_dom)
    VALUES
    ('00000000000', 'Marcin', 'Nowak', '83-000', 'Gdańsk', 'Główna 22');
INSERT INTO klient(pesel, imie, nazwisko, kod_pocztowy, miasto, ulica_dom)
    VALUES
    ('01111111111', 'Andrzej', 'Maślak', '83-201', NULL, 'Nowa Wieś 10/3');
INSERT INTO klient(pesel, imie, nazwisko, kod_pocztowy, miasto, ulica_dom)
    VALUES
    ('02222222222', 'Zygmunt', 'Stary', '83-200', 'Starogard Gdański', 'Brudna 2');
INSERT INTO klient(pesel, imie, nazwisko, kod_pocztowy, miasto, ulica_dom)
    VALUES
    ('03333333333', 'Kuba', 'Smith', '83-000', 'Gdańsk', 'Morska 7C/13');
INSERT INTO klient(pesel, imie, nazwisko, kod_pocztowy, miasto, ulica_dom)
    VALUES
    ('04444444444', 'Aleksander', 'Świeży', '80-225', NULL, 'Kowale 3');
INSERT INTO klient(pesel, imie, nazwisko, kod_pocztowy, miasto, ulica_dom)
    VALUES
    ('05555555555', 'Władysław', 'Kowalczyk', '55-150', 'Kraków', 'Główna 22');
INSERT INTO klient(pesel, imie, nazwisko, kod_pocztowy, miasto, ulica_dom)
    VALUES
    ('06666666666', 'Marek', 'Nowak', '55-150', 'Kraków', 'Poziomkowa 14');
INSERT INTO klient(pesel, imie, nazwisko, kod_pocztowy, miasto, ulica_dom)
    VALUES
    ('07777777777', 'Zygmunt', 'Stary', '55-155', 'Kraków', 'Malinowa 3');
-------------------TELEFON---------------------------------------------------

INSERT INTO telefon (kod, producent, model, ekran, CPU, RAM_GB, pamiec_GB)
    VALUES
    ('0001', 'Sony', 'XPERIA XZ', '5,2', 'Snapdragon 820', '3', '32');
INSERT INTO telefon (kod, producent, model, ekran, CPU, RAM_GB, pamiec_GB)
    VALUES
    ('0002', 'Samsung', 'Galaxy S8', '5,8', 'Exynos 8895', '4', '64');
INSERT INTO telefon (kod, producent, model, ekran, CPU, RAM_GB, pamiec_GB)
    VALUES
    ('0003', 'Samsung', 'Galaxy S7 Edge', '5,5', 'Exynos 8890', '4', '32');
INSERT INTO telefon (kod, producent, model, ekran, CPU, RAM_GB, pamiec_GB)
    VALUES
    ('0004', 'LG', 'G6', '5,7', 'Snapdragon 821', '4', '32');
INSERT INTO telefon (kod, producent, model, ekran, CPU, RAM_GB, pamiec_GB)
    VALUES
    ('0005', 'Xiaomi', 'Mi5 Pro', '5,15', 'Snapdragon 820', '4', '128');
INSERT INTO telefon (kod, producent, model, ekran, CPU, RAM_GB, pamiec_GB)
    VALUES
    ('0006', 'Xiaomi', 'Mi6', '5,15', 'Snapdragon 835', '6', '128');
INSERT INTO telefon (kod, producent, model, ekran, CPU, RAM_GB, pamiec_GB)
    VALUES
    ('0007', 'Huawei', 'P10 Plus', '5,5', 'Kirin 960', '6', '128');
INSERT INTO telefon (kod, producent, model, ekran, CPU, RAM_GB, pamiec_GB)
    VALUES
    ('0008', 'Huawei', 'P9', NULL, NULL, NULL, NULL);
INSERT INTO telefon (kod, producent, model, ekran, CPU, RAM_GB, pamiec_GB)
    VALUES
    ('0009', 'Huawei', 'P9 Lite', '5,5', NULL, '2', NULL);

-------------------EGZLEMPLARZ-----------------------------------------------

INSERT INTO egzemplarz(IMEI, telefon_kod)
    VALUES
    ('999999999999999', '0008');
INSERT INTO egzemplarz(IMEI, telefon_kod)
    VALUES
    ('999999999999998', '0005');
INSERT INTO egzemplarz(IMEI, telefon_kod)
    VALUES
    ('999999999999997', '0004');
INSERT INTO egzemplarz(IMEI, telefon_kod)
    VALUES
    ('999999999999996', '0006');
INSERT INTO egzemplarz(IMEI, telefon_kod)
    VALUES
    ('999999999999995', '0002');
INSERT INTO egzemplarz(IMEI, telefon_kod)
    VALUES
    ('999999999999994', '0002');
INSERT INTO egzemplarz(IMEI, telefon_kod)
    VALUES
    ('999999999999993', '0001');

-------------------OFERTA----------------------------------------------------

INSERT INTO oferta(nr, cena_zł, typ, internet_MB, minuty_min, pakiet_sms)
    VALUES
    ('01', '29', 'mix', NULL, '1000', '500');
INSERT INTO oferta(nr, cena_zł, typ, internet_MB, minuty_min, pakiet_sms)
    VALUES
    ('02', '49', 'abonament', '2048', 'NO-LIMIT', '2500');
INSERT INTO oferta(nr, cena_zł, typ, internet_MB, minuty_min, pakiet_sms)
    VALUES
    ('03', '15', 'mix', '150', '200', '500');
INSERT INTO oferta(nr, cena_zł, typ, internet_MB, minuty_min, pakiet_sms)
    VALUES
    ('04', '15', 'abonament', '512', null, '200');
INSERT INTO oferta(nr, cena_zł, typ, internet_MB, minuty_min, pakiet_sms)
    VALUES
    ('05', '129', 'abonament', 'NO-LIMIT', 'NO-LIMIT', 'NO-LIMIT');
INSERT INTO oferta(nr, cena_zł, typ, internet_MB, minuty_min, pakiet_sms)
    VALUES
    ('06', '69', 'abonament', 'NO-LIMIT', '250', '500');

    -------------------STANOWISKO----------------------------------------------------

INSERT INTO stanowisko(ID, nazwa, pensja_zł)
    VALUES
    ('100', 'kierownik', '4890');
INSERT INTO stanowisko(ID, nazwa, pensja_zł)
    VALUES
    ('101', 'manager', '3000');
INSERT INTO stanowisko(ID, nazwa, pensja_zł)
    VALUES
    ('102', 'sprzedawca', '1400');
INSERT INTO stanowisko(ID, nazwa, pensja_zł)
    VALUES
    ('103', 'Informatyk', '5020');
INSERT INTO stanowisko(ID, nazwa, pensja_zł)
    VALUES
    ('104', 'Dyrektor', '8400');
-------------------ODDZIAL----------------------------------------------------

INSERT INTO oddzial(numer, nazwa, telefon, kod_pocztowy, miasto, ulica_dom)
    VALUES
    ('5555', 'Sklep Gdańsk', NULL, '83-000', 'Gdańsk', 'Morska 12B');
INSERT INTO oddzial(numer, nazwa, telefon, kod_pocztowy, miasto, ulica_dom)
    VALUES
    ('5556', 'Wioskowo', '123456789', '00-125', NULL, 'Wioska 3');
INSERT INTO oddzial(numer, nazwa, telefon, kod_pocztowy, miasto, ulica_dom)
    VALUES
    ('5557', 'Sklep Warszawa', '147258369', '23-999', 'Warszawa', 'Dziwna 152');

-------------------PRACOWNIK----------------------------------------------------

INSERT INTO pracownik(PESEL, imie, nazwisko, kod_pocztowy, miasto, ulica_dom, stanowisko_ID, oddzial_numer)
    VAlUES
    ('11111111111', 'Andrzej', 'Piwerko', '83-000', 'Gdynia', 'Rynek 1', '100', '5555');
INSERT INTO pracownik(PESEL, imie, nazwisko, kod_pocztowy, miasto, ulica_dom, stanowisko_ID, oddzial_numer)
    VAlUES
    ('12222222222', 'Marian', 'Wódeczka', '23-990', 'Warszawa', 'Rynek 12A', '100', '5557');
INSERT INTO pracownik(PESEL, imie, nazwisko, kod_pocztowy, miasto, ulica_dom, stanowisko_ID, oddzial_numer)
    VAlUES
    ('13333333333', 'Grzegorz', 'Bimberek', '00-124', 'Śląsk', 'Krótka 22', '100', '5556');
INSERT INTO pracownik(PESEL, imie, nazwisko, kod_pocztowy, miasto, ulica_dom, stanowisko_ID, oddzial_numer)
    VAlUES
    ('14444444444', 'Natalia', 'Ogórek', '83-201', NULL, 'Rokocin 1', '102', '5555');
INSERT INTO pracownik(PESEL, imie, nazwisko, kod_pocztowy, miasto, ulica_dom, stanowisko_ID, oddzial_numer)
    VAlUES
    ('15555555555', 'Zenek', 'Martyniuk', '23-990', 'Warszawa', 'Marszałkowska 13', '101', '5557');
INSERT INTO pracownik(PESEL, imie, nazwisko, kod_pocztowy, miasto, ulica_dom, stanowisko_ID, oddzial_numer)
    VAlUES
    ('16666666666', 'Aleksandra', 'Szczupak', '83-000', 'Gdańsk', 'Kościuszki 13', '102', '5555');
INSERT INTO pracownik(PESEL, imie, nazwisko, kod_pocztowy, miasto, ulica_dom, stanowisko_ID, oddzial_numer)
    VAlUES
    ('17777777777', 'Monika', 'Brodka', '00-120', 'Dąbrowa Górnicza', 'Morska 3', '101', '5556');
INSERT INTO pracownik(PESEL, imie, nazwisko, kod_pocztowy, miasto, ulica_dom, stanowisko_ID, oddzial_numer)
    VAlUES
    ('18888888888', 'Paweł', 'Zduński', '23-991', 'Warszawa', 'Gajowa 22A/35', '104', '5557');
INSERT INTO pracownik(PESEL, imie, nazwisko, kod_pocztowy, miasto, ulica_dom, stanowisko_ID, oddzial_numer)
    VAlUES
    ('11333333333', 'Kamil', 'Bednarek', '23-991', 'Warszawa', 'Powstańców 32/1', '103', '5557');
INSERT INTO pracownik(PESEL, imie, nazwisko, kod_pocztowy, miasto, ulica_dom, stanowisko_ID, oddzial_numer)
    VAlUES
    ('11444444444', 'Zbigniew', 'Malanowski', '23-991', 'Warszawa', 'Wolna 1/12', '102', '5557');
INSERT INTO pracownik(PESEL, imie, nazwisko, kod_pocztowy, miasto, ulica_dom, stanowisko_ID, oddzial_numer)
    VAlUES
    ('11555555555', 'Krzysztof', 'Rutkowski', '23-991', 'Warszawa', 'Majowa 13A', '102', '5557');
INSERT INTO pracownik(PESEL, imie, nazwisko, kod_pocztowy, miasto, ulica_dom, stanowisko_ID, oddzial_numer)
    VAlUES
    ('19999999999', 'Marek', 'Mostowiak', '00-124', NULL, 'Dąbrówka 5', '102', '5556');
INSERT INTO pracownik(PESEL, imie, nazwisko, kod_pocztowy, miasto, ulica_dom, stanowisko_ID, oddzial_numer)
    VAlUES
    ('11222222222', 'Hania', 'Mostowiak', '00-124', NULL, 'Dąbrówka 3', '102', '5556');

-------------------UMOWA----------------------------------------------------

INSERT INTO umowa(data_zawarcia, data_zakonczenia, oferta_nr, klient_pesel, pracownik_pesel, egzemplarz_IMEI)
    VALUES
    ('19-12-2013', '19-12-2015', '01', '01111111111', '14444444444', '999999999999993');
INSERT INTO umowa(data_zawarcia, data_zakonczenia, oferta_nr, klient_pesel, pracownik_pesel, egzemplarz_IMEI)
    VALUES
    ('22-05-2014', '22-05-2017', '02', '02222222222', '14444444444', '999999999999994');
INSERT INTO umowa(data_zawarcia, data_zakonczenia, oferta_nr, klient_pesel, pracownik_pesel, egzemplarz_IMEI)
    VALUES
    ('01-05-2017', '01-05-2019', '04', '05555555555', '17777777777', '999999999999995');
INSERT INTO umowa(data_zawarcia, data_zakonczenia, oferta_nr, klient_pesel, pracownik_pesel, egzemplarz_IMEI)
    VALUES
    ('15-03-2017', '15-03-2020', '01', '06666666666', '11222222222', '999999999999996');
INSERT INTO umowa(data_zawarcia, data_zakonczenia, oferta_nr, klient_pesel, pracownik_pesel, egzemplarz_IMEI)
    VALUES
    ('30-06-2016', '30-06-2018', '05', '00000000000', '11555555555', '999999999999997');
INSERT INTO umowa(data_zawarcia, data_zakonczenia, oferta_nr, klient_pesel, pracownik_pesel, egzemplarz_IMEI)
    VALUES
    ('24-11-2014', '24-11-2017', '05', '03333333333', '11222222222', '999999999999999');
INSERT INTO umowa(data_zawarcia, data_zakonczenia, oferta_nr, klient_pesel, pracownik_pesel, egzemplarz_IMEI)
    VALUES
    ('15-12-2013', '15-12-2015', '02', '04444444444', '17777777777', NULL);
INSERT INTO umowa(data_zawarcia, data_zakonczenia, oferta_nr, klient_pesel, pracownik_pesel, egzemplarz_IMEI)
    VALUES
    ('01-01-2016', '01-01-2017', '04', '01111111111', '15555555555', '999999999999998');
