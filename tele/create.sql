SET client_encoding='utf-8';
SET DATESTYLE TO 'European,German';


CREATE TABLE klient(
    pesel               char(11)        NOT NULL,
    imie                varchar(32)     NOT NULL,
    nazwisko            varchar(32)     NOT NULL,
    kod_pocztowy        char(6)         NOT NULL,
    miasto              varchar(32)             ,
    ulica_dom           varchar(32)     NOT NULL,
    CONSTRAINT          klient_PESEL_pk PRIMARY KEY(PESEL)
);

CREATE TABLE telefon(
    kod                 varchar(4)      NOT NULL,
    producent           varchar(32)     NOT NULL,
    model               varchar(32)     NOT NULL,
    ekran               varchar(4)              ,
    CPU                 varchar(32)             ,
    RAM_GB              char(3)                 ,
    pamiec_GB           char(3)                 ,
    CONSTRAINT          telefon_pk      PRIMARY KEY(kod)
);

CREATE TABLE egzemplarz(
    IMEI                numeric(15)             ,
    telefon_kod         varchar(16)     NOT NULL,
    CONSTRAINT          egzemplarz_pk   PRIMARY KEY(IMEI),
    CONSTRAINT          telefon_fk      FOREIGN KEY(telefon_kod)
                    REFERENCES telefon(kod)
);

CREATE TABLE oferta(
    nr                  char(2)         NOT NULL,
    cena_zł             numeric(3)      NOT NULL,
    typ                 varchar(16)     NOT NULL,
    internet_MB         varchar(16)             ,
    minuty_min          varchar(16)             ,
    pakiet_sms          varchar(16)             ,
    CONSTRAINT          oferta_nr_pk    PRIMARY KEY(nr)
);

CREATE TABLE stanowisko(
    ID                  char(3)         NOT NULL,
    nazwa               varchar(32)     NOT NULL,
    pensja_zł           numeric                 ,
    CONSTRAINT          stanowisko_ID_pk    PRIMARY KEY(ID)
);

CREATE TABLE oddzial(
    numer               char(4)         NOT NULL,
    nazwa               varchar(32)     NOT NULL,
    telefon             varchar(16)             ,
    kod_pocztowy        char(6)         NOT NULL,
    miasto              varchar(32)             ,
    ulica_dom           varchar(32)     NOT NULL,
    CONSTRAINT          oddzial_numer_pk    PRIMARY KEY(numer)
);

CREATE TABLE pracownik(
    pesel               char(11)        NOT NULL,
    imie                varchar(32)     NOT NULL,
    nazwisko            varchar(32)     NOT NULL,
    kod_pocztowy        char(6)         NOT NULL,
    miasto              varchar(32)             ,
    ulica_dom           varchar(32)     NOT NULL,
    stanowisko_ID       char(3)                 ,
    oddzial_numer       char(4)                 ,
    CONSTRAINT          pracownik_PESEL PRIMARY KEY(pesel),
    CONSTRAINT          stanowisko_fk   FOREIGN KEY(stanowisko_ID)
                    REFERENCES stanowisko(ID),
    CONSTRAINT          oddzial_fk      FOREIGN KEY(oddzial_numer)
                    REFERENCES oddzial(numer)
);

CREATE TABLE umowa(
    ID                  serial                  ,
    data_zawarcia       date            NOT NULL,
    data_zakonczenia    date            NOT NULL,
    oferta_nr           char(4)         NOT NULL,
    klient_pesel        char(11)        NOT NULL,
    pracownik_pesel     char(11)        NOT NULL,
    egzemplarz_IMEI     numeric(15)             ,
    CONSTRAINT          umowa_ID_pk     PRIMARY KEY(ID),
    CONSTRAINT          oferta_fk       FOREIGN KEY(oferta_nr)
                    REFERENCES oferta(nr),
    CONSTRAINT          klient_fk       FOREIGN KEY(klient_pesel)
                    REFERENCES klient(pesel),
    CONSTRAINT          pracownik_fk    FOREIGN KEY(pracownik_pesel)
                    REFERENCES pracownik(pesel),
    CONSTRAINT          egzemplarz_fk   FOREIGN KEY(egzemplarz_IMEI)
                    REFERENCES egzemplarz(IMEI),
    CONSTRAINT          dates CHECK(data_zawarcia<=data_zakonczenia)
);
