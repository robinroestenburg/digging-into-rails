CREATE TABLE forests (id serial, name varchar, PRIMARY KEY(id));
CREATE TABLE trees (id serial, type varchar, forest_id integer, PRIMARY KEY(id));
