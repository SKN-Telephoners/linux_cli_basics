# Stwórz plik info.txt w bieżącym katalogu. Zapisz w nim listę wszystkich plików w bieżącym katalogu, w tym ukrytych. Stwórz nowy katalog archive. Skopiuj do niego plik info.txt. Przenieś katalog archive do /tmp.

# Tworzenie pliku info.txt
touch info.txt

# Zapisanie listy plików do info.txt
ls -a > info.txt

# Tworzenie katalogu archive
mkdir archive

# Kopiowanie pliku info.txt do archive
cp info.txt archive/

# Przeniesienie katalogu archive do /tmp
mv archive /tmp/
