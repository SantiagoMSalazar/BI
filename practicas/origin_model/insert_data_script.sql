-- Insertar datos en la tabla CUSTOMER
INSERT INTO CUSTOMER (ID_CUSTOMER, NAME, EMAIL, PHONE_NUMBER, BIRTH, COUNTRY, TYPE)
VALUES
  (1, 'John Doe', 'john.doe@email.com', '123-456-7890', NULL, 'United States', 'Corporate'),
  (2, 'Alice Johnson', 'alice.j@email.com', '987-654-3210', '1990-02-28', 'Canada', 'Individual'),
  (3, 'Mark Smith', 'mark.smith@email.com', '555-123-4567', NULL, 'United Kingdom', 'Corporate'),
  (4, 'Laura Davis', 'laura.d@email.com', '111-222-3333', '1995-07-20', 'Australia', 'Individual'),
  (5, 'Carlos Rodriguez', 'carlos.r@email.com', '999-888-7777', '1980-12-01', 'Spain', 'Individual');

-- Insertar datos en la tabla PLAN_ANTIVIRUS
INSERT INTO PLAN_ANTIVIRUS (ID_ANTIVIRUS, NAME, DESCRIPTION, MONTHLY_PRICE, DURATION_YEARS, NUMBER_OF_USERS_RANGE, TYPE, TIER)
VALUES
  (1, 'Business Security', 'Complete security solution for enterprises', 99.99, 1, 4, 'Business', 'Premium'),
  (2, 'Home Protection', 'Basic antivirus protection for home users', 29.99, 1, 3, 'Home', 'Standard'),
  (3, 'Advanced Threat Defense', 'Advanced security features for corporate clients', 149.99, 2, 4, 'Corporate', 'Advanced'),
  (4, 'Personal Plus', 'Enhanced protection for individual users', 49.99, 1, 1, 'Individual', 'Plus'),
  (5, 'Small Business Suite', 'Security suite for small businesses', 79.99, 1, 4, 'Business', 'Basic');

-- Insertar datos en la tabla INVOICE
INSERT INTO INVOICE (ID_CUSTOMER, ID_INVOICE, ID_ANTIVIRUS, DATE, SUBTOTAL, TAXES, TOTAL)
VALUES
  (1, 1, 2, '2023-01-15', 99.99, 10.00, 109.99),
  (2, 2, 4, '2023-02-20', 149.99, 15.00, 164.99),
  (3, 3, 1, '2023-03-25', 99.99, 10.00, 109.99),
  (4, 4, 2, '2023-04-30', 49.99, 5.00, 54.99),
  (5, 5, 3, '2023-05-05', 79.99, 8.00, 87.99);