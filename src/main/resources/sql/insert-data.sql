INSERT INTO user(user_id, username, email, pw) VALUES (1, 'GUser001','user001@email.com','$2a$10$IHdRfnhNgQesPFD5hrUcMOvyx5RrRcklkpXfs9YX4j1qXvouEeVIa');
INSERT INTO user(user_id, username, email, pw) VALUES (2, 'GUser002','user002@email.com','$2a$10$NlU0bdBUiegZWZvl6CGpj.wV5YfbDGZ8lYznxWp2NNE4F9cYJJFOe');
INSERT INTO user(user_id, username, email, pw) VALUES (3, 'GUser003','user003@email.com','$2a$10$gwEVdI6lSDrkIkGLrsHTIOzLEgnT3gDUDYMOfxvOdnoqvGpf275fm');
INSERT INTO user(user_id, username, email, pw) VALUES (4, 'GUser004','user004@email.com','$2a$10$W2ZJXI00xhL03vwcy2Y/DeZe.BqMf4dUSP5lxEQFAqV.ocbUAYS4m');
INSERT INTO user(user_id, username, email, pw) VALUES (5, 'GUser005','user005@email.com','$2a$10$Q209gpOY73eZM5/7ix8Hxua/d8cPiV0nhBF.cPgEmtoY.2WN3z/k6');
INSERT INTO user(user_id, username, email, pw) VALUES (6, 'GUser006','user006@email.com','$2a$10$6njApozqiAlwamwi8oqgF.70eeTpgl4Z4SUpKK72AnIhHd3WXK/ei');
INSERT INTO user(user_id, username, email, pw) VALUES (7, 'GUser007','user007@email.com','$2a$10$YQifsq3fEABCJNM.ebxlmuJTNSvtJR72jZWHxLoU8A6Lap1QV/WP6');
INSERT INTO user(user_id, username, email, pw) VALUES (8, 'GUser008','user008@email.com','$2a$10$o0AykWkpgbKak8EyMM/J2.ntdjieJnf6.vgtcQVwnSW6n74YkjQMu');
INSERT INTO user(user_id, username, email, pw) VALUES (9, 'GUser009','user009@email.com','$2a$10$rbDB/WLckQTAO4St9TpMVOzSlJDrx98r2jgt9crwtsy8hCv7wIZkm');
INSERT INTO user(user_id, username, email, pw) VALUES (10, 'GUser010','user010@email.com','$2a$10$rXBPyVPkaD5u7MbDckemPutPT/m.8SylMrI3su26aaV0pxP34kDwa');

INSERT INTO application(application_id , application_status ) VALUES (1, 'IN PROGRESS');


INSERT INTO message(author_id,job, text, pub_date) VALUES (1,'Job1', 'This is a job posted by user user001', TIMESTAMP '2016-11-15 02:00:22');
INSERT INTO message(author_id, job,text, pub_date) VALUES (2,'Job2', 'This is a job posted by user user002', TIMESTAMP '2016-11-15 02:00:22');
INSERT INTO message(author_id,job, text, pub_date) VALUES (3, 'Job3','This is a job posted by user user003', TIMESTAMP '2016-11-15 02:00:22');
INSERT INTO message(author_id,job, text, pub_date) VALUES (4, 'Job4','This is a job posted by user user004', TIMESTAMP '2016-11-15 02:00:22');
INSERT INTO message(author_id, job,text, pub_date) VALUES (5,'Job5', 'This is a job posted by user user005', TIMESTAMP '2016-11-15 02:00:22');
INSERT INTO message(author_id, job,text, pub_date) VALUES (6,'Job6', 'This is a job posted by user user006', TIMESTAMP '2016-11-15 02:00:22');
INSERT INTO message(author_id,job, text, pub_date) VALUES (7,'Job7' ,'This is a job posted by user user007', TIMESTAMP '2016-11-15 02:00:22');
INSERT INTO message(author_id, job,text, pub_date) VALUES (8,'Job8', 'This is a job posted by user user008', TIMESTAMP '2016-11-15 02:00:22');
