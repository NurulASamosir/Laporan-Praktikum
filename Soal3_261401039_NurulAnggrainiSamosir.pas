program Soal3_261401039_NurulAnggrainiSamosir;
uses crt;
//Membuat deret bilangan ganjil dan genap dengan batas akhir N, serta menghilangkan kelipatan 5

var
    n, angka, pilihan: integer;

begin
    clrscr;
    //Memasukkan batas akhir deret
    write('Masukkan nilai N: ');
    readln(n);

    //Pemilihan kategori deret
    writeln('Pilih kategori deret:');
    writeln('1. Ganjil');
    writeln('2. Genap');
    write('Pilihan: ');
    readln(pilihan);

    angka := 1;

    while angka <= n do
    begin
        //Pengecekan kategori angka dalam deret
        if (pilihan = 1) and (angka mod 2 = 0) then
        begin
            angka := angka + 1;
            continue;
        end;

        if (pilihan = 2) and (angka mod 2 <> 0) then
        begin
            angka := angka + 1;
            continue;
        end;

        //Pengecekan adanya kelipatan 5
        if angka mod 5 = 0 then
        begin
            angka := angka + 1;
            continue;
        end;

        writeln(angka);

        angka := angka + 1;
    end;
end.