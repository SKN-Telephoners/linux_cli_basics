# Odczytaj utworzony plik laurDydaktyka.txt, znajdź w nim wszystkie linie zawierające literę "w" (wielką lub małą).

# "grep -i" nie zwraca uwagi na to, czy litera jest wielka czy mała
cat /tmp/laurDydaktyka.txt | grep -i "w"
