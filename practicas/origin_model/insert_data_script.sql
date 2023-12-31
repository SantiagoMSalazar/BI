-- Inserciones para la tabla CUSTOMER
INSERT INTO CUSTOMER (ID_CUSTOMER, NAME, EMAIL, PHONE_NUMBER, BIRTH, COUNTRY, TYPE)
VALUES
  (1, 'Juan Pérez', 'juan.perez@email.com', '123456789', '1990-01-01', 'México', 'Empresa'),
  (2, 'María García', 'maria.garcia@email.com', '987654321', '1985-05-15', 'España', 'Particular'),
  (3, 'Carlos Rodríguez', 'carlos.rodriguez@email.com', '555555555', '1988-08-08', 'Argentina', 'Empresa'),
  (4, 'Laura Martínez', 'laura.martinez@email.com', '111111111', '1975-12-25', 'Colombia', 'Particular'),
  (5, 'Roberto Gómez', 'roberto.gomez@email.com', '999999999', '1995-03-10', 'Chile', 'Empresa'),
  (6, 'Ana López', 'ana.lopez@email.com', '444444444', '1982-06-30', 'Perú', 'Particular'),
  (7, 'Pedro Sánchez', 'pedro.sanchez@email.com', '777777777', '1998-09-20', 'Venezuela', 'Empresa'),
  (8, 'Isabel Torres', 'isabel.torres@email.com', '222222222', '1980-04-15', 'Uruguay', 'Particular');

-- Inserciones para la tabla PLAN_ANTIVIRUS
INSERT INTO PLAN_ANTIVIRUS (ID_ANTIVIRUS, NAME, DESCRIPTION, PRICE, DURATION_YEARS, NUMBER_OF_USERS_RANGE, TYPE, TIER, MANTAINANCE_COST)
VALUES
  (1, 'Kaspersky Standard Antivirus', 'Protección esencial', 50.00, 1, 10, 'Hogar', 'Nivel1', 10.00),
  (2, 'Kaspersky Plus Internet Security', 'Protección completa', 80.00, 2, 20, 'Hogar', 'Nivel2', 15.00),
  (3, 'Kaspersky Total Security', 'Para negocios', 70.00, 1, 15, 'Hogar', 'Nivel2', 12.00),
  (4, 'Kaspersky Safe Kids', 'La mejor protección', 100.00, 3, 30, 'Hogar', 'Nivel1', 18.00),
  (5, 'Kaspersky Small Office Security', 'Protección asequible', 60.00, 1, 12, 'Empresa', 'Nivel1', 11.00),
  (6, 'Kaspersky Endpoint Security Cloud', 'Protección total', 90.00, 2, 25, 'Empresa', 'Nivel2', 16.00),
  (7, 'Kaspersky Endpoint Security for Business', 'Para pequeñas empresas', 75.00, 1, 18, 'Empresa', 'Nivel2', 13.00),
  (8, 'Kaspersky Security for Microsoft Office 365', 'Para grandes empresas', 110.00, 3, 35, 'Empresa', 'Nivel1', 20.00);


-- Inserciones para la tabla INVOICE
INSERT INTO INVOICE (ID_INVOICE, ID_ANTIVIRUS, ID_CUSTOMER, DATE, SUBTOTAL, TAXES, TOTAL, SATISFACTION_SCORE)
VALUES
  (1, 1, 1, '2023-12-23', 50.00, 7.50, 57.50, 1),
  (2, 2, 2, '2023-01-24', 80.00, 12.00, 92.00, 2),
  (3, 3, 3, '2023-02-25', 70.00, 10.50, 80.50, 3),
  (4, 4, 4, '2023-02-26', 100.00, 15.00, 115.00, 4),
  (5, 5, 5, '2023-02-27', 60.00, 9.00, 69.00, 3),
  (6, 6, 6, '2023-03-28', 90.00, 13.50, 103.50, 2),
  (7, 7, 7, '2023-05-29', 75.00, 11.25, 86.25, 4),
  (8, 8, 8, '2023-05-30', 110.00, 16.50, 126.50, 3),
  (9, 2, 2, '2023-05-31', 80.00, 12.00, 92.00, 1),
  (10, 2, 8, '2023-06-01', 80.00, 12.00, 92.00, 4),
  (11, 4, 1, '2023-06-23', 100.00, 15.00, 115.00, 1),
  (12, 7, 2, '2023-07-24', 75.00, 11.25, 86.25, 2),
  (13, 1, 3, '2023-08-25', 50.00, 7.50, 57.50, 3),
  (14, 2, 4, '2023-09-26', 80.00, 12.00, 92.00, 3),
  (15, 3, 5, '2023-10-27', 70.00, 10.50, 80.50, 3),
  (16, 2, 6, '2023-10-28', 80.00, 12.00, 92.00, 2),
  (17, 6, 7, '2023-10-29', 90.00, 13.50, 103.50, 3),
  (18, 8, 8, '2023-10-30', 110.00, 16.50, 126.50, 5),
  (19, 8, 1, '2023-10-31', 110.00, 16.50, 126.50, 5),
  (20, 2, 6, '2024-01-01', 80.00, 12.00, 92.00, 5);