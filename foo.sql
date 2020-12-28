CREATE TABLE t (
   body TEXT,
   d INT GENERATED ALWAYS AS (json_extract(body, '$.d')) VIRTUAL NOT NULL);
insert into t values(json('{"d":"42"}'));
insert into t values(json('{"d":"43"}'));
insert into t values(json('{"d":"44", "x": "y"}'));
