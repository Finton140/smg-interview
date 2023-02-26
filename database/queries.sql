SELECT e.*
FROM user u
INNER JOIN email_folder ef
	ON u.user_id = ef.user_id
INNER JOIN email e
	ON ef.email_folder_id = e.email_folder_id
WHERE u.user_name = 'Tom' -- More accurate to use the PK, but using name for illustration purposes
AND ef.folder_name = "Tom's Folder 1" -- As above
ORDER BY e.datetime_recieved DESC;