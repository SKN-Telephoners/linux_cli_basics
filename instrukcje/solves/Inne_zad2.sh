# Wyszukaj wszystkie pliki o rozszerzeniu .log w katalogu /var/log (używając komendy find) i przekieruj wyniki wyszukiwania do pliku log_files.txt. Sprawdź, czy zawiera wpisy zawierające słowo "error". Jeśli tak, wyciągnij te linie do pliku error_logs.txt. Usuń wpisy z pliku error_logs.txt, które zawierają słowo "debug". Wyświetl zawartość pliku error_logs.txt.

# Wyszukiwanie plików .log i zapis do log_files.txt
find /var/log -type f -name "*.log" 2> /dev/null > log_files.txt

# Filtrowanie plików zawierających "error" do error_logs.txt
grep "error" log_files.txt > error_logs.txt

# Usuwanie linii zawierających "debug" z error_logs.txt
sed -i '/debug/d' error_logs.txt

# Wyświetlanie zawartości error_logs.txt
cat error_logs.txt
