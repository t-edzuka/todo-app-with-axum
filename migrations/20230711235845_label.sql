-- Add migration script here
-- Created by `sqlx migrate add label`

-- Up
create table labels
(
    id   serial primary key,
    name text not null
);


-- Up
create table todos_labels
(
    todo_id  int not null,
    label_id int not null,
    primary key (todo_id, label_id),
    foreign key (todo_id) references todos (id) deferrable initially deferred,
    foreign key (label_id) references labels (id) deferrable initially deferred
);

