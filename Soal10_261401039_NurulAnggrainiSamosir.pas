program Soal10_261401039_NurulAnggrainiSamosir;
uses crt;
//Membuat program untuk menampilkan nama hari berdasarkan angka yang dimasukkan

var 
angka:integer;
begin
    clrscr;

    //Input angka yang akan diubah menjadi nama hari
    writeln('Masukkan angka (1-7): ');
    readln(angka);

    //penamaan hari berdasarkan angka yang dimasukkan
    case angka of
    1:writeln('Hari Senin');
    2:writeln('Hari Selasa');
    3:writeln('Hari Rabu');
    4:writeln('Hari Kamis');
    5:writeln('Hari Jumat');
    6:writeln('Hari Sabtu');
    7:writeln('Hari Minggu');
    else
        writeln('Angka tidak valid');
    end;
end.
