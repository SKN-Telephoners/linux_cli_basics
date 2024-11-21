# Nawigacja - pierwsze kroki

#### Komendy
- struktura systemu plików na linuksie (Case Sensitive!)
- `pwd` - Pokaż ścieżkę katalogu w którym jesteś
- `cd` - Przejdź do katalogu
- `cd .` - Wejdź do katalogu w którym jesteś
- `cd ..` - Wyjdź z obecnego katalogu
- `cd ~` - Wejdź do katalogu domowego
- `cd -` - Cofnij się do poprzedniego katalogu
- `bash` - Uruchom nową sesje basha
- `exit`- Wyjdź z basha

#### Wybrane foldery na Linuxie
- **`/`**: Główny katalog (root) – baza całego systemu plików.  
- **`/bin`**: Podstawowe programy i polecenia (np. `ls`, `cp`).  
- **`/dev`**: Urządzenia systemowe jako pliki (np. dyski, drukarki).  
- **`/etc`**: Pliki konfiguracyjne systemu i usług.  
- **`/home`**: Katalogi użytkowników (np. `/home/user`).  
- **`/proc`**: Informacje o procesach i systemie (wirtualny system plików).  
- **`/root`**: Katalog domowy superużytkownika (root).  
- **`/tmp`**: Pliki tymczasowe (usuwane przy restarcie).  
- **`/usr`**: Aplikacje użytkownika i dokumentacja (np. `/usr/bin`, `/usr/lib`).

Further reading: 
- https://dev.to/softwaresennin/linux-directory-structure-simplified-a-comprehensive-guide-3012
- https://help.ubuntu.com/kubuntu/desktopguide/C/directories-file-systems.html

### Zadania
##### Zad. 1
Wejdź do katalogu /etc, wyświetl ścieżkę, następnie wejdź do katalogu domowego i wyświetl ścieżkę.

Komendy: `cd`, `pwd`
##### Zad. 2
Wejdź do katalogu /usr, wyświetl ścieżkę, następnie w jednej komendzie wyjdź z niego i wejdź do katalogu /home. Wyświetl ścieżkę.

Komendy: `cd`, `pwd`

# Przetwarzanie potokowe - get piped

#### Komendy 
- `echo` - Wywołaj tekst do wyjścia standardowego
- `find` - Znajdź plik, użyteczne argumenty `-t` i `-name`
- `grep` - Wyszukaj tekst w podanym na wejściu standardowym tekście
- `sed` - Edytor strumieniowy do przetwarzania tekstu

Further reading: 
- https://www.grymoire.com/Unix/Sed.html

#### Operatory
- `>` - Nadpisz (przekaż) zawartość pliku wyjściem standardowym. 
- `>>` - Dopisz na końcu pliku wyjście standardowe
- `<` - Odczytaj z pliku i podaj na wejście standardowe do programu.
- `2>` - Przekaż wyjście na błędy do pliku.
- `|` - Pipe, podaj wyjście standardowe dalej.
- `|&` - Skrót od `2>&1 |`, po ludzku to samo co pipe tylko uwzględniając wyjście na błędy (stderr)
- Operator `*`
- Operator `&`

#### Inne
- `/dev/null` - Czarna dziura

### Zadania
##### Zad 1
Stwórz w katalogu /tmp plik "laurDydaktyka" i wpisz do niego imię swojego ulubionego prowadzącego.

Komendy: echo, touch
##### Zad 2
Przejdź do katalogu domowego, nie używając edytorów tekstowych i nie zmieniając katalogu, dopisz do pliku "laurDydaktyka" imiona dwóch innych ulubionych prowadzących.

Komendy: echo
##### Zad 3
Odczytaj utworzony plik "laurDydaktyka", znajdź w nim wszystkie linie zawierające literę "w".

Komendy: cat, grep (-i)
##### Zad 4
Poszukaj w katalogu /etc plików ze słowem "network" w nazwie. Z wyniku wyświetl tylko pliki mające w nazwie rozszerzenie ".conf" Nie wyświetlaj błędów.

Komendy: find, grep

# Scripting i inne
#### Komendy
- `wget` - Pobieranie plików z sieci
- `curl` - Prosty klient HTTP
- `apt` - Instalowanie i aktualizowanie oprogramowania (pakietów) na dystrybucjach takich jak Debian. Odpowiedniki na innych systemach: flatpak, pacman, rpm 
- zmienna środowiskowa PATH
- `alias` - Stwórz komendę z innej komendy. Pseudonim.
- `source` - Wykonaj skrypt w bieżącej powłoce, bez tworzenia nowej.

### Zadania
##### Zadanie 1
Napisz skrypt pobierający plik z adresu {INSERTLINK}, odczytujący go zamieniając wszystkie wystąpienia słowa "wimir" na słowo "wiet". Uruchom go.

Komendy: nano/vim, chmod, wget, sed, cat
