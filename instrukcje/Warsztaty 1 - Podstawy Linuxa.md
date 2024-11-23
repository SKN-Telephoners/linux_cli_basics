# Nawigacja - pierwsze kroki
Struktura plików na Linuxie, choć koncepcyjnie zbliżona do systemów takich jak Windows, diametralnie się różni. Zapoznaj się z podstawowymi różnicami.
#### Windows vs Linux
- Folder = Katalog, koncepcyjnie to samo, różnica w nazwie.
- Wszystkie ścieżki zaczynają się w `/`, niezależnie od tego do którego dysku prowadzą. np. `/mnt/c/users` =  `C:\Users`
- Linux używa forward slashes (`/`) zamiast backslashes (`\`) jak Windows do zapisywania ścieżek. (Przykład wyżej)
- Wszystkie nazwy plików i katalogów są <ins>case-sensitive</ins>, to znaczy, że czymś innym jest np. `Plik` i `plik`
- Na Windowsie, podstawowym terminalem jest CMD (Batch), (powoli zastępuje go PowerShell), na Linuxie podstawowym terminalem jest Bash. Istnieją też jego zamienniki takie jak Zsh czy Fish.
#### cd, pwd
Poruszanie się między katalogami realizuje komenda `cd` (identycznie jak w Windowsowym CMD). Jej składnia jest bardzo prosta: `cd {katalog*}`

\* *Na Linuxie są pewne specjalne "katalogi" dające inne sposoby poruszania, np. `~` oznaczające nasz katalog domowy użytkownika, `..` oznaczające wyjdź z tego katalogu czy `-` oznaczające cofnij się do poprzedniego katalogu.*
> Spróbuj przejść do katalogu /etc komendą `cd etc`, w czym tkwi problem? Użyj komendy `cd /etc` i sprawdź czy zadziałała.

Komenda `pwd` pozwala na wypisanie ścieżki katalogu w którym obecnie się znajdujemy. 
> Spróbuj użyć komendy `pwd` do wypisania obecnej ścieżki.

#### bash, exit
Bash jest podstawowym wierszem poleceń na Linuxie, dzisiaj będziemy się zajmować właśnie nim. Nie będziemy wchodzić w jego szczegóły, o tych opowiemy na następnych warsztatach.
> Spróbuj stworzyć nową sesje wiersza poleceń, wpisz w terminalu komendę `bash`, przejdź do innego katalogu, a następnie wpisz `exit` by zamknąć sesje. Sprawdź obecną ścieżkę komendą `pwd`. Co zauważasz?

## Ściąga
#### Komendy
- `pwd` - Pokaż ścieżkę katalogu w którym jesteś
- `cd` - Przejdź do katalogu
- `cd .` - Wejdź do katalogu w którym jesteś
- `cd ..` - Wyjdź z obecnego katalogu
- `cd ~` - Wejdź do katalogu domowego
- `cd -` - Cofnij się do poprzedniego katalogu
- `bash` - Uruchom nową sesje terminala bash
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

## Zadania
##### Zad. 1
Znajdując się w katalogu domowym, wejdź do katalogu /etc, wyświetl ścieżkę, następnie wejdź spowrotem do katalogu domowego i wyświetl ścieżkę.
Komendy: `cd`, `pwd`
##### Zad. 2
Wejdź do katalogu /usr, wyświetl ścieżkę, następnie w jednej komendzie wyjdź z niego i wejdź do katalogu /home. Wyświetl ścieżkę.
Komendy: `cd`, `pwd`

# Przetwarzanie potokowe - get piped
Wielką zaletą terminala w Linuxie jest przetwarzanie potokowe. Tłumacząc na ludzki, jest to łączenie ze sobą komend poprzez wzajemne przekazywanie sobie wyników swojej pracy i robienie z nim coś dalej. Na tych warsztatach jedynie "liźniemy" te zagadnienie, dalsza jego część będzie realizowana w ramach następnych warsztatów.

"Potok" komend tworzymy poprzez połączenie ich operatorami, tworząc długą linijkę przeplatających się komend i operatorów (`komenda operator komenda` itd.) 
Komendy przekazują sobie informacje na wejściu standardowym, wyjściu standardowym i wyjściu błędu (stdin, stdout, stderr). 
Zapoznaj się z częścią podstawowych operatorów.

#### less
"Przewijający się czytnik". Czytanie bardzo długich plików komendą `cat` może być dość skomplikowane, less pozwala na wyświetlanie tekstu po którym można poruszać się bardzo prosto i intuicyjnie klawiaturą.
> Stwórz jakikolwiek plik z tekstem. Otwórz go komendą `less nazwapliku`.

#### Operator Pipe `|`
Jeśli połączymy dwie komendy tym operatorem, jedna komenda przekaże drugiej wynik swojej pracy. Można to zrozumieć jako zamontowanie na wyjściu pierwszego programu "rury" kierującej się do wejścia drugiego programu.
> Komenda `journalctl` służy do wyświetlania logów systemowych. Wpisz komendę `jounalctl | less` by odczytać je przez czytnik less.

#### find
Komenda służąca do szukania plików lub katalogów w systemie. W najbardziej podstawowej formie wymaga podania ścieżki pod którą komenda ma szukać i użycia argumentu `-name` definiującego nazwę (bądź jej część) szukanego pliku/katalogu. Innym użytecznym argumentem jest `-t` (type) do którego można podać m.in "f" (file) lub "d" (directory) oznaczający typ szukanego elementu.
> Spróbuj wyszukać katalog domowy komendą `find / -name home -t d`, obserwujesz błędy?

#### Operatory std redirect `1>, 2>`
Pozwalają na przekierowanie konkretnego wyjścia/wejścia. Uprzednio poznałeś operator `>` nadpisujący zawartość pliku wyjściem standardowym z komendy. Oznacza on to samo co `1>` (1=stdout). Bardzo użyteczny jest również operator `2>` (2=stderr) działający w ten sam sposób, jednak pozwalający na przekierowanie wyjścia błędów.
> Plik `/dev/null` to specjalny plik działający jak czarna dziura na wejście standardowe. Ponownie wykonaj komendę find, jednak tym razem przekierowując jej wyjście błędu do /dev/null, `find / -name home -t d 2> /dev/null`, co obserwujesz?

#### grep
Wyszukiwanie w tekście. Najczęściej używane z operatorem pipe. Domyślnie wyciąga z tekstu linijki zawierające wyszukiwany tekst. Można nim wyszukiwać również wyrażenia regularne.
> Spróbuj użyć komendy `journalctl | grep "start"`. Komenda wyrzuciła masę tekstu na wyjściu standardowym, co można zrobić, by łatwiej go było odczytać? Wypróbuj tą samą komendę z opcją grep'a `-i`.

#### sed
Strumieniowy edytor tekstu przystosowany do przetwarzania potokowego. Niezwykle potężny (i skomplikowany). Szerzej zajmiemy się nim na następnych warsztatach. 

## Ściąga
#### Komendy 
- `echo` - Wywołaj tekst do wyjścia standardowego
- `less` - "Przewijający się" czytnik do plików i wejścia standardowego.
- `journalctl` - Wyświetl logi systemu.
- `find` - Znajdź plik, użyteczne argumenty `-t` i `-name`
- `grep` - Wyszukaj tekst w podanym na wejściu standardowym tekście
- `sed` - Edytor strumieniowy do przetwarzania tekstu
Further reading: 
- https://www.linuxscrew.com/redirect-stdin-stdout-stderr-bash
- https://www.grymoire.com/Unix/Sed.html

#### Operatory
- `>` - Nadpisz zawartość pliku wyjściem standardowym. 
- `>>` - Dopisz na końcu pliku wyjście standardowe.
- `<` - Odczytaj z pliku i podaj na wejście standardowe do programu.
- `2>` - Przekaż wyjście błędu do pliku.
- `|` - Pipe, podaj wyjście standardowe dalej.
- `|&` - Skrót od `2>&1 |`, po ludzku to samo co pipe tylko uwzględniając wyjście błędu (stderr)
- Operator `*` - Wildcard, bardziej operator plikowy niż potokowy. Można nim zastąpić część lub całą nazwę, zostanie odczytana jako "wszystko".  
- Operator `&` - Wykonaj dwie komendy jednocześnie.

#### Inne
- `/dev/null` - "Czarna dziura" na wejście standardowe. 

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

# Inne
Do zarządzania systemem Linux warto znać też inne komendy.
#### apt
Najbardziej podstawowym sposobem instalowania oprogramowania na systemach Linux są menedżery pakietów (programów). Najpopularniejszym obecnie, działającym na większości dystrybucji pokroju Ubuntu czy Debiana jest `apt`. Menedżer ten też służy do aktualizowania oprogramowania i całego systemu. Naturalnie, wymaga uprawnień root'a do działania. Składnia: `apt OPCJA NAZWA_PAKIETU`
> Pobierz pakiet `tree` komendą `sudo apt install tree`. Spróbuj go uruchomić komendą `tree`.

#### wget
Bardzo prosty program służący do pobierania plików z internetu. Składnia: `wget ARGUMENTY ADRES_URL_PLIKU`.

#### curl
Podstawowy klient HTTP pozwalający wchodzić w interakcję ze stronami internetowymi. 
> Spróbuj użyć komendy `curl google.com`.

#### alias
Utworzenie własnej komendy. Pozwala na przypisanie do dowolnie długiej komendy jednego słowa kluczowego, które gdy zostanie wykonane wywoła zdefiniowaną komendę.
> Wywołaj komendę `alias la="ls -la`, spróbuj wykonać komendę `la`. Zrestartuj terminal. Czy dalej możesz ją wykonać?

#### .bashrc
Skrypt w katalogu domowym, uruchamiający się przy każdym starcie sesji basha. Użyteczne do uruchamiania programów takich jak Neofetch lub permanentnego definiowania własnych aliasów.
> Otwórz plik .bashrc w dowolnym edytorze tekstowym, dodaj do niego na końcu linijkę `alias la="ls -la"`, otwórz nową sesje basha i spróbuj użyć komendy `la`.


## Ściąga
#### Komendy
- `wget` - Pobieranie plików z sieci
- `curl` - Prosty klient HTTP
- `apt` - Instalowanie i aktualizowanie oprogramowania (pakietów) na dystrybucjach takich jak Debian/Ubuntu. Odpowiedniki na innych systemach: flatpak, pacman, rpm 
- zmienna środowiskowa PATH
- `alias` - Stwórz komendę z innej komendy. Pseudonim.

### Zadania
##### Zadanie 1
Pobierz plik z adresu {INSERTLINK}, odczytując go i zamieniając wszystkie wystąpienia słowa "wimir" na słowo "wiet". Uruchom go.
Komendy: nano/vim, chmod, wget, sed, cat
