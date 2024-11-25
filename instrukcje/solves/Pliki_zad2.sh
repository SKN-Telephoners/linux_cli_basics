# Stwórz katalog data. Stwórz w nim 3 pliki tekstowe: data1.txt, data2.txt, data3.txt. Zarchiwizuj katalog data do pliku data_backup.tar. Rozpakuj archiwum do katalogu restored_data.

# Tworzenie katalogu data
mkdir data

# Tworzenie plików data1.txt, data2.txt, data3.txt 
touch data/data1.txt
touch data/data2.txt
touch data/data3.txt

# Archiwizacja katalogu data
tar -cf data_backup.tar data

# Rozpakowanie archiwum do katalogu restored_data
mkdir restored_data
tar -xf data_backup.tar -C restored_data
