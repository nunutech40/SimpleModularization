
- App utama adalah App
- Common adalah framework/lib/module

## Hal yang perlu diperhatikan dari arhcitecture modular, yaitu komunikasi antar module dan komunikasi module ke App utama.

- Komunikasi module dengan app utama, seperti app utaman mengakses common
- Misal kita menambahkan module product dan cart, cart harus bisa mengakses product, dan product harus bisa mengakses cart, gunakan aplikasi utama untuk komunikasi antar cart dan module. Supaya Product dan Cart independen berdiri sendiri-sendiri.

- Product maupun Cart independen, karena tidak dependency ke class atau module manapun. CartView dan ProductView adalah sebuah class yang dibuat menggunakan Destination yang dynamic

## Assets-assets yang bersifat general dan banyak digunakan di halaman-halaman framework / modul, bisa di taruh di common. Dan assets-assets yang berhubungan dengan informasi aplikasi bisa di taruh di dalam App utama.

### Assets di App Utama biasanya:
* Logo Aplikasi
* Font Aplikasi
* Informasi akses API seperti Client Id, Client Secret, dan EndPoint URL

### Assets di Common biasanya:
* Icon-icon yang umum digunakan di banyak halaman, misal icon ChekBox, Icon Search 
* Icon-icon yang hanya dibutuhkan dalam framework tertentu, misal Voucher,
* Localization


## Seting Localization
* Ada di edit scheme dan project info -> localization
