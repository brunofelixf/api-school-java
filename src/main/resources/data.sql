INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Black', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Bootcamp HTML','https://static.vecteezy.com/system/resources/previews/007/559/429/original/wolf-a-wolf-logo-illustration-in-modern-style-free-vector.jpg','https://clipart-library.com/images/gceookAdi.jpg');

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2020-07-13T20:50:07.12345Z', TIMESTAMP WITH TIME ZONE '2021-07-13T20:50:07.12345Z', 1);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2020-07-13T20:51:07.12345Z', TIMESTAMP WITH TIME ZONE '2021-07-13T20:50:07.12345Z', 1);

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Trilha HTML', 'Trilha principal do curso', 1,'https://static.vecteezy.com/system/resources/previews/007/559/429/original/wolf-a-wolf-logo-illustration-in-modern-style-free-vector.jpg' ,1, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Forum', 'Tire suas dúvidas', 2,'https://static.vecteezy.com/system/resources/previews/007/559/429/original/wolf-a-wolf-logo-illustration-in-modern-style-free-vector.jpg' ,1, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Lives', 'Lives exclusivas para a turma', 1,'https://static.vecteezy.com/system/resources/previews/007/559/429/original/wolf-a-wolf-logo-illustration-in-modern-style-free-vector.jpg' ,0, 1);

INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 1', 'Neste capítulo vamos começar', 1, 'https://static.vecteezy.com/system/resources/previews/007/559/429/original/wolf-a-wolf-logo-illustration-in-modern-style-free-vector.jpg', 1, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 2', 'Neste capítulo vamos continuar', 1, 'https://static.vecteezy.com/system/resources/previews/007/559/429/original/wolf-a-wolf-logo-illustration-in-modern-style-free-vector.jpg', 1, 1);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 3', 'Neste capítulo vamos finalizar', 1, 'https://static.vecteezy.com/system/resources/previews/007/559/429/original/wolf-a-wolf-logo-illustration-in-modern-style-free-vector.jpg', 1, 2);

INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2020-07-14T20:50:07.12345Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2020-07-14T21:50:07.12345Z', null, true, false);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 do Cap. 1', 1, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES ( 1,'Material 1', 'https://static.vecteezy.com/system/resources/previews/007/559/429/original/wolf-a-wolf-logo-illustration-in-modern-style-free-vector.jpg');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2 do Cap. 1', 2, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES ( 2,'Material 2', 'https://static.vecteezy.com/system/resources/previews/007/559/429/original/wolf-a-wolf-logo-illustration-in-modern-style-free-vector.jpg');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 3 do Cap. 1', 3, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES ( 3,'Material 3', 'https://static.vecteezy.com/system/resources/previews/007/559/429/original/wolf-a-wolf-logo-illustration-in-modern-style-free-vector.jpg');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 4 do Cap. 1', 4, 1);
INSERT INTO tb_task (id, description, question_Count, approval_Count, weight, due_Date) VALUES ( 4,'Tarefa do Cap.1', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2020-07-25T21:50:07.12345Z');

INSERT INTO tb_lesson_done (lesson_id, user_id, offer_id) VALUES ( 1, 1, 1);
INSERT INTO tb_lesson_done (lesson_id, user_id, offer_id) VALUES ( 2, 1, 1);