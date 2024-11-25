# Poszukaj w katalogu `/etc` plików ze słowem "network" w nazwie. Z wyniku wyświetl tylko pliki mające w nazwie rozszerzenie ".conf" Nie wyświetlaj błędów.

# *network* znaczy tyle co jakikolwiek plik z network w nazwie
# przekierowanie błędów do /dev/null musi być przed grepem, 
# podając tekst do grepa zamienia sie w całości w stdout, 
# nie będzie możliwe wycięcie z niego błędów w ten sposób.
find /etc -type f -name "*network*" 2> /dev/null | grep ".conf"
