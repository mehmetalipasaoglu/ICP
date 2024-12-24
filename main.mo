import Map "mo:base/HashMap";
import Text "mo:base/Text";

actor {
  type Name = Text;
  type Phone = Text;

  type Entry = {
    desc: Text;
    phone: Phone;
  };

  type Message = {
    receiver: Text;
    mess: Text;
  };

  let phoneBook = Map.HashMap<Name, Entry>(0, Text.equal, Text.hash);
  let MessageHistory = Map.HashMap<Phone, Message>(0, Text.equal, Text.hash);

  public func insert(name: Name, entry: Entry): async () {
    phoneBook.put(name, entry);
  };

  public func sendMessage(senderPhone: Phone, message: Message): async () {
    MessageHistory.put(senderPhone, message);
  };

  public func getPhone(name: Name): async ?Entry {
    phoneBook.get(name);
  };

  public func getMessage(senderPhone: Phone): async ?Message {
    MessageHistory.get(senderPhone);
  };

  // Telefon numarasını ve açıklamayı güncelleyen fonksiyon
  public func updatePhone(name: Name, newPhone: Phone, newDesc: Text): async Bool {
    switch (phoneBook.get(name)) {
      case (?Entry) {
        phoneBook.put(name, {desc = newDesc; phone = newPhone});
        true; // Güncelleme başarılı
      };
      case null false; // Kayıt bulunamadı
    };
  };

  // Telefon rehberinden kayıt silen fonksiyon
  public func deleteEntry(name: Name): async Bool {
    switch (phoneBook.remove(name)) {
      case (?_) true; // Silme başarılı
      case null false; // Silinecek kayıt bulunamadı
    };
  };
};
