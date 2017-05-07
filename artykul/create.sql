CREATE TABLE dziennikarz
(
    id          varchar(6)      NOT NULL,
    imie        varchar(32)     NOT NULL,
    nazwisko    varchar(32)     NOT NULL,
    plec        char(1)         NOT NULL,
    CONSTRAINT  dziennikarz_pk  PRIMARY KEY(id)
);

CREATE TABLE artykul
(
    id          serial                  ,
    tytul       varchar(32)             ,
    nr          int             NOT NULL,
    kod_dz      varchar(6)              ,
    dlug        int                     ,
    CONSTRAINT  artykul_pk      PRIMARY KEY(id),
    CONSTRAINT  dziennikarz_fk  FOREIGN KEY(kod_dz)
                    REFERENCES dziennikarz(id)
                    ON DELETE SET NULL
                    ON UPDATE CASCADE
)
