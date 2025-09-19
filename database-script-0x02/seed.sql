INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES (UUID(), 'Brian', 'Miano', 'brianmiano1@gmail.com', 'some_hashed_password', '1234', 'admin');

INSERT INTO properties (property_id, host_id, name, description, location, pricepernight, created_at, updated_at)
VALUES(UUID(), '9764c25a-94f8-11f0-bf8e-f8cab830fd14', 'Ebenezer', 'A modern and spacious apartment located in the heart of the city, perfect for a peaceful getaway.', 'Nairobi', 2000.00);

INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES (UUID(), '77f41af8-94f9-11f0-bf8e-f8cab830fd14', '9764c25a-94f8-11f0-bf8e-f8cab830fd14', '2025-09-20', '2025-09-25', 10000.00, 'confirmed');

INSERT INTO payments (payment_id, booking_id, amount, payment_method)
VALUES (UUID(), 'a22158cf-94fa-11f0-bf8e-f8cab830fd14', 10000.00, 'credit_card');

INSERT INTO reviews (review_id, property_id, user_id, rating, comment)
VALUES (UUID(), '77f41af8-94f9-11f0-bf8e-f8cab830fd14', '9764c25a-94f8-11f0-bf8e-f8cab830fd14', 5, 'The apartment was amazing and the location was perfect. The host was very friendly.');

INSERT INTO messages (message_id, sender_id, recipient_id, message_body)
VALUES (UUID(), '9764c25a-94f8-11f0-bf8e-f8cab830fd14', '88412f61-94fb-11f0-bf8e-f8cab830fd14', 'Hello, I am interested in booking your property.');