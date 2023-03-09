Cara Menjalankan FORBIDS di Localhost
 
1. Unggah dan Ekstak File Forbids_CI.zip ke folder HTDOCS Xampp

2. Buat Database di Server Mysql

3. Impor file dbforbids.sql ke database baru Anda di phpmyadmin

4. Buka file Application/Config/database.php dan atur database
Contoh :
$db['default'] = array(
	'username' => 'root',
	'password' =>  'kosongkan saja' => 'password_database',
	'database' => 'nama_database yang sudah dibuat di phpmyadmin',
);

5. Buka file Application/Config.config.php
$config['base_url']    = 'http://localhost/atur sesuai nama folder kalian';


Detail Login

Untuk Admin
domain.com/admin ATAU localhost/admin
- Username : admin
- Password : admin

Untuk User
- Email : mycoding@401xd.com
- Password : user
