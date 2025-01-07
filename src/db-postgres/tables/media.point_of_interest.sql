CREATE TABLE IF NOT EXISTS media.point_of_interest (
    location_id UUID NOT NULL,
    type TEXT NOT NULL,
    name TEXT NOT NULL

    CONSTRAINT pk_media_point_of_interest
    PRIMARY KEY (location_id, type),

    CONSTRAINT fk_media_point_of_interest$media_location
    FOREIGN KEY (location_id)
    REFERENCES media.location(id)
);

GRANT SELECT, INSERT, DELETE
ON media.point_of_interest
TO maw_api;
