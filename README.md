## Rekomendasi sebelum penggunaan

# Gunakan PYTHON 3.10 - 3.11.5

## Fitur
| Fitur                                                        | Didukung |
|--------------------------------------------------------------|:--------:|
| Multithreading                                               |        |
| Pengikatan proxy ke sesi                                     |        |
| Klik koin otomatis, Klaim dan konversi                       |        |
| Tentukan jumlah ketukan                                      |        |
| Klaim hadiah squad otomatis                                  |        |
| Mulai otomatis, periksa otomatis dan klaim tugas otomatis    |        |
| Beli kartu Upgrade otomatis                                  |        |
| REF otomatis                                                 |        |
| Dukungan untuk tdata / pyrogram .session / telethon .session |        |

## [Pengaturan](https://github.com/DeltaUniverse/Cexio-bot/blob/main/.env-example)
| Pengaturan | Deskripsi |
|----------------------------|:-------------------------------------------------------------------------------------------------------------:|
| **API_ID / API_HASH**      | Data platform dari mana menjalankan sesi Telegram (default - android)                                         |
| **REF_LINK**               | pendaftaran otomatis dengan link ref Anda (default: link ref saya)                                            |
| **AUTO_TAP**               | Ketukan otomatis (mis. True) PENTING jangan buka aplikasi saat Anda menjalankan bot dengan opsi ini dan hanya aktifkan opsi ini jika wifi Anda bagus |
| **RANDOM_TAPS_COUNT**      | Berapa banyak ketukan yang akan diklik (mis. [25, 75])                                                        |
| **SLEEP_BETWEEN_TAPS**     | Jeda acak antara ketukan (mis. [25, 35])                                                                      |
| **AUTO_CONVERT**           | Konversi otomatis saldo BTC ke koin (mis. True)                                                               |
| **MINIMUM_TO_CONVERT**     | Saldo BTC minimum untuk dikonversi (mis. 0.1)                                                                 |
| **AUTO_BUY_UPGRADE**       | Upgrade otomatis kartu yang paling menguntungkan (mis. True)                                                  |
| **AUTO_TASK**              | Tugas otomatis (satu kali) ((mis. True))                                                                      |
| **AUTO_CLAIM_SQUAD_BONUS** | Klaim bonus otomatis dari ref (satu kali) ((mis. False))                                                      |
| **USE_PROXY_FROM_FILE**    | Apakah menggunakan proxy dari file bot/config/proxies.txt (True / False)                                      |

## Mulai Cepat 

Untuk menginstal pustaka dan menjalankan bot - buka run.bat di Windows

## Prasyarat
Sebelum memulai, pastikan Anda telah menginstal hal berikut:
- [Python](https://www.python.org/downloads/) **versi 3.10 - 3.11.5**

## Mendapatkan API Keys
1. Buka my.telegram.org dan masuk menggunakan nomor telepon Anda.
2. Pilih "API development tools" dan isi formulir untuk mendaftarkan aplikasi baru.
3. Catat API_ID dan API_HASH yang diberikan setelah mendaftarkan aplikasi Anda di file .env.

## Instalasi
Anda dapat mengunduh [**repository**](https://github.com/DeltaUniverse/Cexio-bot) dengan mengklonnya ke sistem Anda dan menginstal dependensi yang diperlukan:
```shell
git clone https://github.com/DeltaUniverse/Cexio-bot.git
cd Cexio-bot
```

Kemudian Anda dapat melakukan instalasi otomatis dengan mengetik:

Windows:
```shell
run.bat
```

Linux:
```shell
run.sh
```

# Instalasi manual Linux
```shell
python3 -m venv venv
source venv/bin/activate
pip3 install -r requirements.txt
cp .env-example .env
nano .env  # Di sini Anda harus menentukan API_ID dan API_HASH Anda, sisanya diambil secara default
python3 main.py
```

Anda juga dapat menggunakan argumen untuk mulai cepat, misalnya:
```shell
~/Cexio-bot >>> python3 main.py --action (1/2)
# Atau
~/Cexio-bot >>> python3 main.py -a (1/2)

# 1 - Jalankan clicker
# 2 - Membuat sesi
```

# Instalasi manual Windows
```shell
python -m venv venv
venv\Scripts\activate
pip install -r requirements.txt
copy .env-example .env
# Di sini Anda harus menentukan API_ID dan API_HASH Anda, sisanya diambil secara default
python main.py
```

Anda juga dapat menggunakan argumen untuk mulai cepat, misalnya:
```shell
~/Cexio-bot >>> python main.py --action (1/2)
# Atau
~/Cexio-bot >>> python main.py -a (1/2)

# 1 - Jalankan clicker
# 2 - Membuat sesi
```
### Kontak

Untuk dukungan atau pertanyaan, Anda dapat menghubungi saya [![Static Badge](https://img.shields.io/badge/Telegram-Channel-Link?style=for-the-badge&logo=Telegram&logoColor=white&logoSize=auto&color=blue)](https://t.me/deltaxsupports)
