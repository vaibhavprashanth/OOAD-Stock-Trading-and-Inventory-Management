CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INTEGER NOT NULL,
    share_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES register(userid),
    FOREIGN KEY (share_id) REFERENCES share(id)
);