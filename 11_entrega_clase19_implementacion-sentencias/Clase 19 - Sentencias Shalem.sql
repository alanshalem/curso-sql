-- Crear usuario con permisos de solo lectura
CREATE USER 'usuario_lectura'@'localhost' IDENTIFIED BY 'password';
-- Asignar permisos de solo lectura a todas las tablas en la base de datos
GRANT SELECT ON InvestingPlatformDB.* TO 'usuario_lectura'@'localhost';
-- Comentar: Creación de usuario con permisos de solo lectura

-- Crear usuario con permisos de lectura, inserción y modificación
CREATE USER 'usuario_modificacion'@'localhost' IDENTIFIED BY 'password';
-- Asignar permisos de lectura, inserción y modificación a todas las tablas en la base de datos
GRANT SELECT, INSERT, UPDATE ON InvestingPlatformDB.* TO 'usuario_modificacion'@'localhost';
-- Comentar: Creación de usuario con permisos de lectura, inserción y modificación

-- Revocar permisos de eliminación a ambos usuarios
REVOKE DELETE ON InvestingPlatformDB.* FROM 'usuario_lectura'@'localhost';
REVOKE DELETE ON InvestingPlatformDB.* FROM 'usuario_modificacion'@'localhost';
-- Comentar: Revocar permisos de eliminación

-- Refrescar los privilegios
FLUSH PRIVILEGES;
