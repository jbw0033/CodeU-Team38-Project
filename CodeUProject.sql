drop table if exists string;
drop table if exists sets;
drop table if exists setValues;
drop table if exists list;
drop table if exists listValues;
drop table if exists hash;
drop table if exists hashField;
drop table if exists hashValues;

create table string (
  stringID text,
  value text,
  primary key (stringID)
);

create table sets (
  setID text,
  primary key (setID)
);

create table setValues (
  setID text,
  value text,
  primary key (setID, value),
  foreign key(setID) references sets (setID)
    on delete cascade
);

create table list (
  listID text,
  primary key (listID)
);

create table listValues (
  listID text,
  value text,
  primary key (listID, value),
  foreign key (listID) references list (listID)
    on delete cascade
);

create table hash (
  hashID text,
  primary key (hashID)
);

create table hashField (
  hashID text,
  fieldID text UNIQUE,
  primary key (hashID),
  foreign key (hashID) references hash (hashID)
    on delete cascade
);

create table hashValues (
  hashID text,
  fieldID text,
  value text,
  primary key (hashID, fieldID),
  foreign key (hashID) references hash (hashID)
    on delete cascade,
  foreign key (fieldID) references hashField (fieldID)
    on delete cascade
);

insert into hash values
  ('TermCounter:google.com'),
  ('TermCounter:wiki.com');

insert into hashField values
  ('TermCounter:google.com', 'word'),
  ('TermCounter:wiki.com', 'the');

insert into hashValues values
  ('TermCounter:google.com', 'word', '300'),
  ('TermCounter:wiki.com', 'word', '246'),
  ('TermCounter:google.com', 'the', '400'),
  ('TermCounter:wiki.com', 'the', '250');
