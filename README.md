# Telefon Rehberi ve Mesajlaşma Sistemi

Bu proje, bir telefon rehberi ve mesajlaşma sistemi sağlar. Telefon rehberinde kullanıcı bilgilerini saklayabilir, güncelleyebilir ve silebilir, aynı zamanda telefon numaraları arasında mesaj gönderebilirsiniz.

## Özellikler

- **Telefon Rehberi Yönetimi**:
  - İsim ve telefon numaralarına göre kayıt ekleme.
  - Kayıtları güncelleme ve silme.
  - Belirli bir isme ait kaydı sorgulama.

- **Mesajlaşma Sistemi**:
  - Telefon numarasına bağlı mesaj gönderme.
  - Gönderilmiş mesaj geçmişini sorgulama.

## Kullanılan Teknolojiler

- **Motoko**: Internet Computer (IC) üzerinde çalışan güçlü bir programlama dili.
- **HashMap**: Verilerin hızlı erişimi ve yönetimi için kullanıldı.

## Fonksiyonlar

### Telefon Rehberi Fonksiyonları

- **`insert(name: Name, entry: Entry): async ()`**
  - Yeni bir kayıt ekler.
  - **Parametreler**:
    - `name`: Kişinin adı.
    - `entry`: Telefon numarası ve açıklama bilgileri.

- **`getPhone(name: Name): async ?Entry`**
  - Belirli bir isme ait telefon rehberi kaydını getirir.
  - **Dönüş**: Kayıt bulunursa `Entry`, aksi takdirde `null`.

- **`updatePhone(name: Name, newPhone: Phone, newDesc: Text): async Bool`**
  - Kayıtlı bir kişinin telefon numarasını ve açıklamasını günceller.
  - **Dönüş**: Güncelleme başarılıysa `true`, aksi takdirde `false`.

- **`deleteEntry(name: Name): async Bool`**
  - Telefon rehberinden bir kaydı siler.
  - **Dönüş**: Silme başarılıysa `true`, aksi takdirde `false`.

### Mesajlaşma Fonksiyonları

- **`sendMessage(senderPhone: Phone, message: Message): async ()`**
  - Telefon numarası ile mesaj gönderir.

- **`getMessage(senderPhone: Phone): async ?Message`**
  - Belirli bir numaraya ait mesaj geçmişini getirir.
  - **Dönüş**: Mesaj geçmişi varsa `Message`, aksi takdirde `null`.
    
![ss](https://github.com/user-attachments/assets/04fbc720-51b2-40e3-8c4d-f331d33c52a1)
