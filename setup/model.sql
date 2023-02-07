CREATE DATABASE dtm;

\c dtm;

CREATE TABLE users (
    user_id SERIAL PRIMARY KEY ,
    username VARCHAR(32) NOT NULL UNIQUE,
    gender VARCHAR(7) NOT NULL,
    password VARCHAR(60) NOT NULL,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    deleted_at TIMESTAMPTZ DEFAULT null,
    updated_at TIMESTAMPTZ DEFAULT NOW(),
    region_id INT REFERENCES regions(region_id)
);

CREATE TABLE regions(
    region_id SERIAL PRIMARY KEY,
    region_name VARCHAR(32) NOT NULL
);


CREATE TABLE sciences(
    science_id SERIAL PRIMARY KEY,
    science_name VARCHAR(60) NOT NULL,
    created_at TIMESTAMPTZ DEFAULT NOW(), 
    deleted_at TIMESTAMPTZ DEFAULT null,
    updated_at TIMESTAMPTZ DEFAULT NOW(),
    courseofstudy_id INT REFERENCES courseofstudy(courseofstudy_id)
);


CREATE TABLE courseofstudy(
    courseofstudy_id SERIAL PRIMARY KEY,
    courseofstudy_name VARCHAR(60) NOT NULL
);

-- 1 USERS 
-- 2 REGIONS
-- 3 SCIENCES
-- 4 Course of Study

INSERT INTO users (username, password, gender) VALUES ('Toxirrrr','Toxirrrr','male');
INSERT INTO users (username, password, gender) VALUES ('MuxammadBobur','MuxammadBobur','male');
INSERT INTO users (username, password, gender) VALUES ('Mirmuxsin','Mirmuxsin','male');




INSERT INTO regions (region_name) VALUES ('Andijon viloyati');
INSERT INTO regions (region_name) VALUES ('Buxoro viloyati');
INSERT INTO regions (region_name) VALUES ('Fargʻona viloyati');
INSERT INTO regions (region_name) VALUES ('Jizzax viloyati');
INSERT INTO regions (region_name) VALUES ('Xorazm viloyati');
INSERT INTO regions (region_name) VALUES ('Namangan viloyati');
INSERT INTO regions (region_name) VALUES ('Navoiy viloyati');
INSERT INTO regions (region_name) VALUES ('Qashqadaryo viloyati');
INSERT INTO regions (region_name) VALUES ('Qoraqalpogʻiston Respublikasi');
INSERT INTO regions (region_name) VALUES ('Samarqand viloyati');
INSERT INTO regions (region_name) VALUES ('Sirdaryo viloyati');
INSERT INTO regions (region_name) VALUES ('Surxondaryo viloyati');
INSERT INTO regions (region_name) VALUES ('Toshkent viloyati');
INSERT INTO regions (region_name) VALUES ('Toshkent');



INSERT INTO sciences (science_name) VALUES ('Moliya');
INSERT INTO sciences (science_name) VALUES ('Jahon tili');
INSERT INTO sciences (science_name) VALUES ('Sanat');
INSERT INTO sciences (science_name) VALUES ('Biologiya');

INSERT INTO courseofstudy (courseofstudy_name) VALUES ('Professional taʼlim: tibbiy-pedagogik ish');
INSERT INTO courseofstudy (courseofstudy_name) VALUES ('Professional taʼlim: farmatsiya');
INSERT INTO courseofstudy (courseofstudy_name) VALUES ('Biologiya (turlari bo`yicha)');
INSERT INTO courseofstudy (courseofstudy_name) VALUES ('Tuproqshunoslik');
INSERT INTO courseofstudy (courseofstudy_name) VALUES ('Agrokimyo va agrotuproqshunoslik');
INSERT INTO courseofstudy (courseofstudy_name) VALUES ('Agronomiya (dehqonchilik mahsulotlari turlari bo`yicha)');
INSERT INTO courseofstudy (courseofstudy_name) VALUES ('Agronomiya (yem-xashak ekinlari)');
INSERT INTO courseofstudy (courseofstudy_name) VALUES ('Agronomiya: anorchilik');
INSERT INTO courseofstudy (courseofstudy_name) VALUES ('Agronomiya (sabzavotchilik va polizchilik)');
INSERT INTO courseofstudy (courseofstudy_name) VALUES ('Qishloq xo`jaligi ekinlari seleksiyasi va urug`chiligi (ekin turlari bo`yicha)');
INSERT INTO courseofstudy (courseofstudy_name) VALUES ('Zooinjeneriya: baliqchilik');
INSERT INTO courseofstudy (courseofstudy_name) VALUES ('Zooinjeneriya: asalarichilik');
INSERT INTO courseofstudy (courseofstudy_name) VALUES ('Zooinjeneriya: qorako`lchilik');
INSERT INTO courseofstudy (courseofstudy_name) VALUES ('Zooinjeneriya: yilqichilik va tuyachilik');
INSERT INTO courseofstudy (courseofstudy_name) VALUES ('Ipakchilik va tutchilik');
INSERT INTO courseofstudy (courseofstudy_name) VALUES ('Mevachilik va uzumchilik');
INSERT INTO courseofstudy (courseofstudy_name) VALUES ('Dorivor o`simliklarni yetishtirish va qayta ishlash texnologiyasi');
INSERT INTO courseofstudy (courseofstudy_name) VALUES ('O`simlikshunoslik (yaylov cho`l o`simlikshunosligi)');
INSERT INTO courseofstudy (courseofstudy_name) VALUES ('Sabzavotchilik, polizchilik va kartoshkachilik');