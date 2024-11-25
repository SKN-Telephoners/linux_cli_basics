# Pobierz plik z adresu https://pastebin.com/raw/XQ12Fx4u, odczytując go i zamieniając wszystkie wystąpienia słowa "wimir" na słowo "wiet". 
curl https://pastebin.com/raw/XQ12Fx4u > wiet

# Sed: (s) zastąp wystąpienia (/) wimir (/) slowem wiet (/) (g) wszystkie, nie tylko pierwsze w linii
cat wiet | sed 's/wimir/wiet/g'
