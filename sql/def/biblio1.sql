SET client_encoding='utf-8';

CREATE TABLE książka
(
  nr_inw      char(6)      not null,
  tytuł       varchar(32)  not null,
  wydawnictwo varchar(32)  not null,
  cena        char(6)      not null,
  rok         char(4)      not null,
  autor_nazw  varchar(32)  not null,
  autor_imie  varchar(32)  not null,
  CONSTRAINT  książka_pk   PRIMARY KEY(nr_inw)
);
CREATE TABLE czytelnik
(
  nr_karty    int          not null,
  imię        varchar(32)  not null,
  nazwisko    varchar(32)  not null,
  CONSTRAINT  czytelnik_pk PRIMARY KEY(nr_karty)
);
CREATE TABLE wypożycza
(
  data            date,
  nr_inw          char(6)     not null,
  nr_karty        int         not null,
  CONSTRAINT       wypożycza_nr_inw_fk FOREIGN KEY(nr_inw)
                      REFERENCES książka(nr_inw)
                      ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT       wypożycza_nr_karty_fk FOREIGN KEY(nr_karty)
                      REFERENCES czytelnik(nr_karty)
                      ON UPDATE CASCADE ON DELETE CASCADE
);
