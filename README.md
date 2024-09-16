# Guía de Instalación de Laravel backend

## Requisitos Previos

- PHP >= 7.3
- Composer
- MySQL

## Pasos de Instalación

1. **Clonar el Repositorio**

    ```bash
    git clone https://github.com/darwin-dh/prueba-tecnica
    cd tu-repositorio
    ```

2. **Instalar Dependencias**

    ```bash
    composer install
    ```

3. **Configurar el Archivo `.env`**

    Copia el archivo `.env.example` a `.env` y actualiza las siguientes variables:
    o importar el archivo sql db_prueba
    o ejecuar php artisan migrate,
    php artisan db:seed
    asegurase de configurar el archivo .env correctamente
    ```env
    DB_DATABASE=db_prueba
    DB_USERNAME=tu_usuario
    DB_PASSWORD=tu_contraseña
    ```

4. **Generar la Clave de la Aplicación**

    ```bash
    php artisan key:generate
    ```

5. **Migrar la Base de Datos**

    ```bash
    php artisan migrate
    ```
6. **Iniciar el Servidor de Desarrollo**

    ```bash
    php artisan serve
    ```

    Ahora puedes acceder a la aplicación en `http://127.0.0.1:8000`.
 


 # Guía de Instalación de react js frontend


1. **Instalar reactjs**
   ```Ingresar a la carpeta frontend
        instalar yarn o npm
        ejecutar en la raiz del proyecto yarn dev o npm run dev
    ```
2.  **Usuario de Prueba**    
    ``` email:example1@gmail.com
        password:1234
        rol:Operativo
    ```
    ``` email:example@gmail.com
        password:1234
        rol:Admin
    ```
