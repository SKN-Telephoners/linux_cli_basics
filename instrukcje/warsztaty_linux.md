# Instrukcja

Poniżej plan poszczególnych ćwiczeń.

## Operacje na plikach

Linux oferuje wiele możliwości operacji na plikach. Zapoznaj się z najważniejszymi 
komendami i wykonaj ćwiczenia. 

> Jeśli masz problem, pamiętaj o `man` <*nazwa_komendy*>. Znajduję się tam
> kompletna dokumentacja wybranej przez Ciebie komendy.

### touch, echo

Komenda `echo` służy do wyświetlania linii tekstu. Każdy tekst jest przesyłany do
**standard output**, który następnie przesyłany jest w wybrane miejsce (np. terminal).

> Wyświetl na terminalu napis "**Hello World!**".

Komenda `touch` służy do tworzenia nowych plików (ale nie tylko) z poziomu CLI.

> **Utwórz plik `plik.txt`**

Zauważ, że utworzony plik jest domyślnie pusty.

> Znajdź sposób, w jaki można połączyć komendy `echo` i `touch`, aby utworzyć plik `hello_world.txt` z napisem "**Hello world**" w środku.

Komenda `touch` służy nie tylko do tworzenia nowych plików. Wpisz `man touch` i sprawdź do czego jeszcze można ją wykorzystać.

> Wyświetl informacje o plikach w obecnym directory używając `ls -l`. Jaka data widnieje przy pliku `hello_world.txt`?
>
> Używając `touch` (z odpowiednią flagą) zmień datę ostatniej modyfikacji `hello_world.txt` na pełną datę twoich urodzin (np. "1 January 2003"). Ponownie użyj komendy `ls -l`. Czy data została prawidłowo zmieniona?

### cp

W systemie Linux, `cp` służy do kopiowania plików oraz katalogów. Sprawdź składnię komendy w zakładce **SYNOPSIS**, używając `man cp`.

> Utwórz nowy katalog wpisując `mkdir my_dir`. Skopiuj plik `hello_world.txt` do nowo utworzonego katalogu. Sprawdź czy plik został skopiowany używając komendy `ls my_dir`.

Co w przypadku kiedy potrzebujemy skopiować kilka plików na raz? Używając `man cp` przeczytaj o fladze **-t**.

> Używając `cp` tylko raz skopiuj pliki `plik.txt` i `hello_world.txt` do katalogu `my_dir`. Potwierdź powodzenie operacji komendą `ls`.
>
> Teraz spróbuj skopiować katalog `my_dir` do `my_dir_copy`. Jakiej flagi musisz użyć aby komenda zadziałała? Pamiętaj, że nie musisz wcześniej ręcznie tworzyć `my_dir_copy`. Komenda `cp` automatycznie utworzy docelowy katalog, jeśli takowy nie istnieje.

Na koniec usuń katalog `my_dir_copy` za pomocą komendy `rm -rf my_dir_copy` i raz jeszcze skopiuj `my_dir` do `my_dir_copy`, ale tym razem dodaj też flagę **-v**. Co się dzieje?

### mv

Kolejną komendą której się przyjrzymy jest `mv`. Służy ona do przenoszenia plików i katalogów z jednej lokacji do drugiej. Składnia komendy jest bardzo podobna do `cp`.

> Utwórz nowy katalog komendą `mkdir new_dir`. Przenieś `plik.txt` do nowo utworzonego katalogu. Sprawdź czy plik znajduje się w katalogu, a następnie przenieś plik z powrotem do katalogu domowego.

Załóżmy, że chcemy zmienić nazwę pliku `plik.txt` na `file.txt`. W jaki sposób możemy to zrobić z wykorzystaniem `mv`?

> Zmień nazwę `plik.txt` na `file.txt`.

### rm

Komenda `rm` służy do usuwania plików i katalogów.

> Usuń plik `file.txt`. Następnie spróbuj usunąć katalog `new_dir` używając tej samej komendy. Jaki komunikat pojawia się na konsoli? Poszukaj w `man rm` jakiej flagi należy użyć aby usunąć katalog.

### cat