USE inventory;

/* Stores */
INSERT INTO stores (name, address) VALUES ('Tienda principal', 'Calle Ríos #32');
INSERT INTO stores (name, address) VALUES ('La tienda de Jorge', 'Calle Astros #64');

/* Employees */
INSERT INTO employees
  (store_id, name, address, phone, email, password, genre)
  VALUES
  (1, 'Katherine', '1865 Wakefield Street', '2154168916', 'KatherineRPrice@rhyta.com', 'secret_password', 1),
  (1, 'Marian', '2683 Clousson Road', '7129434334', 'MarianKWorth@armyspy.com', 'secret_password', 1),
  (1, 'Chad', '3333 Railroad Street', '9049660036', 'ChadLKemp@teleworm.us', 'secret_password', 0),
  (1, 'Wilfred', '910 Hannah Street', '8283121646', 'WilfredAColeman@jourrapide.com', 'secret_password', 0),
  (1, 'Mona', '2229 Tea Berry Lane', '7157330513', 'MonaDFisher@armyspy.com', 'secret_password', 1),
  (2, 'Yolanda', '4982 Fairfax Drive', '9088878306', 'YolandaBHawkins@rhyta.com', 'secret_password', 1),
  (2, 'Cleveland', '4355 Turkey Pen Lane', '3345593168', 'ClevelandEBrown@rhyta.com', 'secret_password', 0),
  (2, 'William', '1695 Stonepot Road', '9084521302', 'WilliamCGeary@dayrep.com', 'secret_password', 0),
  (2, 'Joy', '2123 Hayhurst Lane', '2487978517', 'JoyCEngland@dayrep.com', 'secret_password', 1),
  (2, 'Evelyn', '4251 Doctors Drive', '3103958742', 'EvelynRLogan@rhyta.com', 'secret_password', 1);

/* Departments */
INSERT INTO departments
  (name)
  VALUES
  ('Baterías y Percusión'),
  ('Guitarras'),
  ('Instrumentos de viento'),
  ('Accesorios');
INSERT INTO departments
  (name)
  VALUES
  ('Pianos'),
  ('Amplificadores');

/* Products */
INSERT INTO products
  (store_id, department_id, name, brand, description, stock)
  VALUES
  (1, 1, 'Batería', 'Yamaha', 'Batería profesional', 3),
  (1, 2, 'Guitarra', 'Some brand', 'Guitarra profesional', 1),
  (1, 3, 'Trompeta', 'Some other brand', 'Tromepta profesional', 2),
  (1, 4, 'Plumilla', 'Some brand', 'Plumilla para guitarra', 10),
  (1, 2, 'Guitarra eléctrica', 'Yamaha', 'Guitarra eléctrica profesional', 2),
  (1, 4, 'Micrófono', 'Yamaha', 'Micrófono profesional', 4),
  (1, 4, 'Pedal', 'Yamaha', 'Pedal para guitarra', 5);

INSERT INTO products
  (store_id, department_id, name, brand, description, stock)
  VALUES
  (2, 1, 'Batería', 'Yamaha', 'Batería para niño', 3),
  (2, 2, 'Guitarra', 'Some brand', 'Guitarra acústica', 1),
  (2, 3, 'Trompeta', 'Some other brand', 'Tromepta de entrenamiento', 2),
  (2, 4, 'Plumilla', 'Some brand', 'Partituras', 10),
  (2, 2, 'Guitarra eléctrica', 'Yamaha', 'Bajo profesional', 2),
  (2, 4, 'Micrófono', 'Yamaha', 'Micrófono de estudio', 4),
  (2, 4, 'Pedal', 'Yamaha', 'Pedal para guitarra', 5);