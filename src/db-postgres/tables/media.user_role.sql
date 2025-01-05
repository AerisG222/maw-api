CREATE TABLE IF NOT EXISTS media.user_role (
    user_id UUID NOT NULL,
    role_id UUID NOT NULL,

    CONSTRAINT pk_media_user_role
    PRIMARY KEY (user_id, role_id),

    CONSTRAINT fk_media_user_role$media_user
    FOREIGN KEY (user_id)
    REFERENCES media.user(id),

    CONSTRAINT fk_media_user_role$media_role
    FOREIGN KEY (role_id)
    REFERENCES media.role(id)
);

GRANT SELECT, INSERT, DELETE
ON media.user_role
TO maw_api;
