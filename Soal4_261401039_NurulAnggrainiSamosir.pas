program Soal4_261401039_NurulAnggrainiSamosir;
uses crt;
//Membuat kalkulator sederhana dengan 6 operasi dasar

var
    pilihan, a, b: integer;
    lagi: char;

begin
    clrscr;

    repeat
        //Input pemilihan operasi yang akan digunakan
        writeln('=== KALKULATOR SEDERHANA ===');
        writeln('1. Penjumlahan');
        writeln('2. Pengurangan');
        writeln('3. Perkalian');
        writeln('4. Pembagian');
        writeln('5. DIV');
        writeln('6. MOD');
        write('Pilih operasi: ');
        readln(pilihan);

        //Input 2 angka sebagai operand
        write('Masukkan angka pertama: ');
        readln(a);
        write('Masukkan angka kedua: ');
        readln(b);

        //Operasi beserta perhitungan hasilnya
        case pilihan of
            //Penjumlahan
            1:
                begin
                    writeln(a,' + ',b,' = ', a+b);
                end;

            //Pengurangan
            2:
                begin
                    writeln(a,' - ',b,' = ', a-b);
                end;

            //Perkalian
            3:
                begin
                    writeln(a,' * ',b,' = ', a*b);
                end;

            //Pembagian
            4:
                begin
                   writeln(a,'/',b,' = ', a/b:0:2);
                end;

            //DIV
            5:
                begin
                    writeln(a,' DIV ',b,' = ', a div b);
                end;

            //MOD
            6:
                begin
                    writeln(a,' MOD ',b,' = ', a mod b);
                end;

            else
                writeln('Pilihan tidak valid.');
        end;

        //Penentuan perulangan
        writeln;
        write('Apakah ingin melakukan perhitungan lagi? (Y/T): ');
        readln(lagi);
        writeln;

    until (lagi = 'T');

end. 