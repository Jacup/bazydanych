CREATE TABLE klient
(
    PESEL             char(11)        NOT NULL,
    imie              varchar(32)     NOT NULL,
    nazwisko          varchar(32)     NOT NULL,
    kod_pocztowy      char(6)         NOT NULL,
    miasto            varchar(32)             ,
    ulica_dom         varchar(32)     NOT NULL,
    CONSTRAINT          klient_PESEL_pk PRIMARY KEY(PESEL)
);

CREATE TABLE oferta
(
    nr                char(4)        NOT NULL,
    cena              varchar(16)    NOT NULL,
    typ               varchar(16)            ,
    pakiet_internet_MB varchar(16)           ,
    pakiet_minuty_min  varchar(16)           ,
    pakiet_sms        varchar(16)            ,
    CONSTRAINT        oferta_nr_pk  PRIMARY KEY(nr)
);
CREATE TABLE umowa
(
    ID                serial                  ,
    typ               varchar(16)             ,
    data_zawarcia     date                    ,
    data_zakonczenia  date                    ,

    klient_PESEL      char(11)                ,
    oferta_nr         char(4)                 ,
    CONSTRAINT        umowa_ID_pk    PRIMARY KEY(ID),
    CONSTRAINT        klient_fk FOREIGN KEY(klient_PESEL)
                    REFERENCES klient(PESEL),
    CONSTRAINT        oferta_fk FOREIGN KEY(oferta_nr)
                    REFERENCES oferta(nr),
    CONSTRAINT        dates CHECK(data_zawarcia<=data_zakonczenia)
);

CREATE TABLE stanowisko
(
    ID              char(2)          NOT NULL,
    nazwa           varchar(32)     NOT NULL,
    pensja          char(32)                ,
    CONSTRAINT      stanowisko_ID_pk    PRIMARY KEY(ID)
);

CREATE TABLE oddzial
(
    numer           char(4)          NOT NULL,
    nazwa           varchar(32)             ,
    telefon         varchar(16)             ,
    kod_pocztowy    char(6)         NOT NULL,
    miasto          varchar(32)             ,
    ulica_dom       varchar(32)     NOT NULL,
    CONSTRAINT      oddzial_numer_pk PRIMARY KEY(numer)
);

CREATE TABLE pracownik
(
    PESEL           char(11)        NOT NULL,
    imie            varchar(32)     NOT NULL,
    nazwisko        varchar(32)     NOT NULL,
    kod_pocztowy    char(6)         NOT NULL,
    miasto          varchar(32)             ,
    ulica_dom       varchar(32)     NOT NULL,
    stanowisko_ID   char(2)                    ,
    oddzial_numer   char(4)                     ,
    CONSTRAINT      pracownik_PESEL PRIMARY KEY(PESEL),
    CONSTRAINT      stanowisko_fk FOREIGN KEY(stanowisko_ID)
                REFERENCES stanowisko(ID),
    CONSTRAINT      oddzial_fk      FOREIGN KEY(oddzial_numer)
                REFERENCES oddzial(numer)
);
