create table if not exists Genres (
id serial primary key,
name varchar(40) not null
);
create table if not exists Performer (
id serial primary key,
pseudonym varchar(40) not null
);
create table if not exists GenresPerformer (
genres_id integer references Genres(id),
performer_id integer references Performer(id)
);
create table if not exists Album (
id serial primary key,
album_name varchar(40) not null,
year integer not null
);
create table if not exists PerformerAlbum (
performer_id integer references Performer(id),
album_id integer references Album(id)
);
create table if not exists Digest (
id serial primary key,
digest_name varchar(40) not null,
digest_year integer not null
);
create table if not exists Track (
id serial primary key,
album_id integer not null references Album(id),
track_name varchar(40) not null,
duration integer not null
);
create table if not exists TrackDigest (
track_id integer references Track(id),
digest_id integer references Digest(id)
);