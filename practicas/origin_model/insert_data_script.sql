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
  (8, 'Isabel Torres', 'isabel.torres@email.com', '222222222', '1980-04-15', 'Uruguay', 'Particular'),
  (9, 'Fernando Jiménez', 'fernando.jimenez@email.com', '666666666', '1993-11-05', 'Paraguay', 'Empresa'),
  (10, 'Lucía Flores', 'lucia.flores@email.com', '333333333', '1978-07-01', 'Ecuador', 'Particular');

-- Inserciones para la tabla INVOICE
INSERT INTO INVOICE (ID_INVOICE, ID_ANTIVIRUS, ID_CUSTOMER, DATE, SUBTOTAL, TAXES, TOTAL, SATISFACTION_SCORE)
VALUES
  (1, 1, 1, '2023-12-23', 100.00, 15.00, 115.00, 5),
  (2, 2, 2, '2023-12-24', 150.00, 22.50, 172.50, 4),
  (3, 1, 3, '2023-12-25', 200.00, 30.00, 230.00, 3),
  (4, 2, 4, '2023-12-26', 120.00, 18.00, 138.00, 4),
  (5, 1, 5, '2023-12-27', 180.00, 27.00, 207.00, 3),
  (6, 2, 6, '2023-12-28', 90.00, 13.50, 103.50, 5),
  (7, 1, 7, '2023-12-29', 220.00, 33.00, 253.00, 4),
  (8, 2, 8, '2023-12-30', 130.00, 19.50, 149.50, 3),
  (9, 1, 9, '2023-12-31', 160.00, 24.00, 184.00, 5),
  (10, 2, 10, '2024-01-01', 190.00, 28.50, 218.50, 4);

-- Inserciones para la tabla PLAN_ANTIVIRUS
INSERT INTO PLAN_ANTIVIRUS (ID_ANTIVIRUS, NAME, DESCRIPTION, PRICE, DURATION_YEARS, NUMBER_OF_USERS_RANGE, TYPE, TIER, MANTAINANCE_COST)
VALUES
  (1, 'Básico', 'Protección esencial', 50.00, 1, 10, 'Antivirus', 'Nivel1', 10.00),
  (2, 'Avanzado', 'Protección completa', 80.00, 2, 20, 'Antivirus', 'Nivel2', 15.00),
  (3, 'Empresarial', 'Para negocios', 70.00, 1, 15, 'Antivirus', 'Nivel1', 12.00),
  (4, 'Premium', 'La mejor protección', 100.00, 3, 30, 'Antivirus', 'Nivel2', 18.00),
  (5, 'Económico', 'Protección asequible', 60.00, 1, 12, 'Antivirus', 'Nivel1', 11.00),
  (6, 'Total', 'Protección total', 90.00, 2, 25, 'Antivirus', 'Nivel2', 16.00),
  (7, 'PYME', 'Para pequeñas empresas', 75.00, 1, 18, 'Antivirus', 'Nivel1', 13.00),
  (8, 'Corporativo', 'Para grandes empresas', 110.00, 3, 35, 'Antivirus', 'Nivel2', 20.00),
  (9, 'Estándar', 'Protección estándar', 85.00, 1, 20, 'Antivirus', 'Nivel1', 14.00),
  (10, 'Ultra', 'Protección ultramoderna', 120.00, 4, 40, 'Antivirus', 'Nivel2', 22.00);
