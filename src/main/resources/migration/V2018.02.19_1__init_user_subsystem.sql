CREATE TABLE user (
  user_id      UUID                      NOT NULL,
  first_name VARCHAR(32)  NOT NULL,
  last_name VARCHAR(32)  NOT NULL,
  avatar_url VARCHAR(255)  NOT NULL,
  age   INT NOT NULL,
  e_mail VARCHAR(64)  NOT NULL,
  login VARCHAR(32)  NOT NULL,
  pass VARCHAR(32)  NOT NULL,
  country VARCHAR(32)  NOT NULL,
  city VARCHAR(32)  NOT NULL,
  CONSTRAINT user_pkey PRIMARY KEY (request_id),
);

CREATE TABLE person_to_person(
  user_id UUID NOT NULL;
  relation_user_id UUID NOT NULL:
  CONSTRAINT user_relation_fkey FOREIGN KEY (user_id) REFERENCES user (user_id);
  CONSTRAINT relation_user_relation_fkey FOREIGN KEY (relation_user_id) REFERENCES user (user_id);
)

CREATE TABLE achievement(
  achievement_id UUID NOT NULL,
  text VARCHAR(255) NOT NULL,
  image_url VARCHAR(255) NOT NULL,
  achivement_data DATA NOT NULL DEFAULT now(),
  CONSTRAINT achievement_pkey PRIMARY KEY (achievement_id),
)

CREATE TABLE person_to_achievement(
  user_id UUID NOT NULL;
  achievement_id UUID NOT NULL:
  CONSTRAINT user_achievement_fkey FOREIGN KEY (user_id) REFERENCES user (user_id);
  CONSTRAINT achievement_user_fkey FOREIGN KEY (achievement_id) REFERENCES achievement (achievement_id);
)