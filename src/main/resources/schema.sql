create table if not exists event(
    id integer PRIMARY KEY AUTO_INCREMENT,
    name varchar(250),
    date DATE
);
create table if not exists sponsor(
    id integer PRIMARY KEY AUTO_INCREMENT,
    name varchar(250),
    industry varchar(250)
);
create table if not exists event_sponsor(
    sponsorid integer,
    eventid integer,
    PRIMARY KEY(sponsorid,eventid),
    Foreign key(sponsorid) REFERENCES sponsor(id),
    Foreign key(eventid) REFERENCES event(id)
);