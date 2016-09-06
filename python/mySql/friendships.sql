SELECT users.first_name  as first_name, users.last_name as last_name, user2.first_name as friend_first_name, user2.last_name as friend_last_name
from users
LEFT JOIN friendships ON users.id = friendships.user_id
LEFT JOIN users as user2 ON friendships.friend_id=user2.id