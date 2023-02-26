INSERT INTO user (user_name) VALUES ('Tom');
INSERT INTO user (user_name) VALUES ('Dick');
INSERT INTO user (user_name) VALUES ('Harry');
COMMIT;

INSERT INTO email_folder (user_id, folder_name) VALUES (1, "Tom's Folder 1");
INSERT INTO email_folder (user_id, folder_name) VALUES (1, "Tom's Folder 2");
INSERT INTO email_folder (user_id, folder_name) VALUES (1, "Tom's Folder 3");

INSERT INTO email_folder (user_id, folder_name) VALUES (2, "Dick's Folder 1");
INSERT INTO email_folder (user_id, folder_name) VALUES (2, "Dick's Folder 2");

INSERT INTO email_folder (user_id, folder_name) VALUES (3, "Harry's Folder 1");
COMMIT;

INSERT INTO email (email_folder_id, email_title, email_body, datetime_recieved) VALUES (1, "Spam 1", "This is spam", TIMESTAMP('2022-12-01 23:59:59'));
INSERT INTO email (email_folder_id, email_title, email_body, datetime_recieved) VALUES (1, "Spam 2", "This is more spam", TIMESTAMP('2022-12-01 11:59:59'));
INSERT INTO email (email_folder_id, email_title, email_body, datetime_recieved) VALUES (1, "Spam 3", "This is even more spam", TIMESTAMP('2022-11-25 04:23:45'));

INSERT INTO email (email_folder_id, email_title, email_body, datetime_recieved) VALUES (2, "Family 1", "From Mum", TIMESTAMP('2022-12-25 11:00:59'));
INSERT INTO email (email_folder_id, email_title, email_body, datetime_recieved) VALUES (2, "Family 2", "From Dad", TIMESTAMP('2022-12-25 11:01:00'));

INSERT INTO email (email_folder_id, email_title, email_body, datetime_recieved) VALUES (3, "Work 1", "Time to work", TIMESTAMP('2022-06-12 09:01:02'));

INSERT INTO email (email_folder_id, email_title, email_body, datetime_recieved) VALUES (4, "Entertainment 1", "Theatre tickets", TIMESTAMP('2022-07-15 19:23:42'));
INSERT INTO email (email_folder_id, email_title, email_body, datetime_recieved) VALUES (4, "Entertainment 2", "Robux", TIMESTAMP('2022-08-14 17:05:31'));
INSERT INTO email (email_folder_id, email_title, email_body, datetime_recieved) VALUES (4, "Entertainment 3", "Dinner reservation", TIMESTAMP('2022-07-16 18:12:45'));

INSERT INTO email (email_folder_id, email_title, email_body, datetime_recieved) VALUES (5, "Subscriptions 1", "Newsletter", TIMESTAMP('2022-5-29 10:32:07'));

INSERT INTO email (email_folder_id, email_title, email_body, datetime_recieved) VALUES (6, "Misc 1", "Writing code", TIMESTAMP('2022-02-01 08:16:42'));
INSERT INTO email (email_folder_id, email_title, email_body, datetime_recieved) VALUES (6, "Misc 2", "Anything in my inbox", TIMESTAMP('2022-01-29 21:24:29'));
INSERT INTO email (email_folder_id, email_title, email_body, datetime_recieved) VALUES (6, "Misc 3", "Because I'm too busy", TIMESTAMP('2022-01-29 21:24:30'));
INSERT INTO email (email_folder_id, email_title, email_body, datetime_recieved) VALUES (6, "Misc 4", "I don't organise", TIMESTAMP('2022-01-29 20:01:07'));
COMMIT;