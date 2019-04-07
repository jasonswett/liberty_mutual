CREATE TABLE cabinet_members (
  id bigserial PRIMARY KEY,
  president_id bigint references presidents (id) NOT NULL,
  first_name varchar(50) NOT NULL,
  last_name varchar(50) NOT NULL
);
