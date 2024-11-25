# Ściąga

W tym pliku znajdziesz wszelkie komendy używane podczas warsztatów.

## Nawigacja

- `pwd` - Pokaż ścieżkę katalogu w którym jesteś
- `cd` - Przejdź do katalogu
- `cd .` - Wejdź do katalogu w którym jesteś
- `cd ..` - Wyjdź z obecnego katalogu
- `cd ~` - Wejdź do katalogu domowego
- `cd -` - Cofnij się do poprzedniego katalogu
- `bash` - Uruchom nową sesje terminala bash
- `exit`- Wyjdź z basha

### Wybrane foldery na Linuxie

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

## Operacje na plikach

- `echo` - wywołaj tekst do wyjścia standardowego
- `touch` - utwórz pusty plik lub zmień timestamp
- `cp` - skopiuj plik lub folder do miejsca docelowego
- `mv` - przenieś plik lub folder do miejca docelowego
- `rm` - usuń plik lub folder
- `cat` - wyświetl zawartość pliku
- `ls` - wyświetl zawartość katalogu

## Przetwarzanie potokowe

- `echo` - Wywołaj tekst do wyjścia standardowego
- `less` - "Przewijający się" czytnik do plików i wejścia standardowego.
- `journalctl` - Wyświetl logi systemu.
- `find` - Znajdź plik, użyteczne argumenty `-type` i `-name`
- `grep` - Wyszukaj tekst w podanym na wejściu standardowym tekście
- `sed` - Edytor strumieniowy do przetwarzania tekstu

Further reading:

- https://www.linuxscrew.com/redirect-stdin-stdout-stderr-bash
- https://www.grymoire.com/Unix/Sed.html

### Operatory

- `>` - Nadpisz zawartość pliku wyjściem standardowym.
- `>>` - Dopisz na końcu pliku wyjście standardowe.
- `<` - Odczytaj z pliku i podaj na wejście standardowe do programu.
- `2>` - Przekaż wyjście błędu do pliku.
- `|` - Pipe, podaj wyjście standardowe dalej.
- `|&` - Skrót od `2>&1 |`, po ludzku to samo co pipe tylko uwzględniając wyjście błędu (stderr)
- `*` - Wildcard, bardziej operator plikowy niż potokowy. Można nim zastąpić część lub całą nazwę, zostanie odczytana jako "wszystko".  
- `&` - Wykonaj dwie komendy jednocześnie.

**Ciekawostki:**

- `/dev/null` - "Czarna dziura" na wejście standardowe.

## Root, czyli superuser

- `whoami` - wyświetl nazwę obecnego użytkownika
- `su` - zmień użytkownika

## Prawa dostępu i zarządzenie użytkownikami

- `chmod` - zmień prawa dostępu do danego pliku
- `chgrp` - zmień grupę do której należy plik
- `chown` - zmień właściciela pliku
- `chsh` - zmień shell dla danego użytkownika
- `groupadd` - stwórz nową grupę w systemie
- `groupdel` - usuń grupę z systemu
- `useradd` - stwórz nowego użytkownika w systemie
- `userdel` - usuń użytkownika z systemu
- `passwd` - zmień hasło dla danego użytkownika

## Inne

- `wget` - Pobieranie plików z sieci
- `curl` - Prosty klient HTTP
- `apt` - Instalowanie i aktualizowanie oprogramowania (pakietów) na dystrybucjach takich jak Debian/Ubuntu. Odpowiedniki na innych systemach: flatpak, pacman, rpm
- zmienna środowiskowa PATH
- `alias` - Stwórz komendę z innej komendy. Pseudonim.
