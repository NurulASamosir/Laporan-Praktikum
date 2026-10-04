program Soal7_261401039_NurulAnggrainiSamosir;
uses crt;
//Membuat program untuk menghitung tarif parkir kendaraan berdasarkan kode kendaraan dan lama parkir

var
    kode: char;
    jam: integer;
    tarif: longint;
    //Menggunakan longint karena tarif parkir bisa mencapai 50000

begin
    clrscr;
    //Input kode kendaraan dan jam
    //M untuk Mobil, K untuk Kereta, B untuk Bus
    write('Masukkan kode kendaraan (M/K/B): ');
    readln(kode);
    write('Masukkan lama parkir (jam): ');
    readln(jam);

    //Perhitungan tarif parkir berdasarkan kode kendaraan dan lama parkir
    case kode of
        'M':
            //jam pertama = 5000, jam berikutnya = 3000
            begin
                if jam <= 1 then
                begin
                    tarif := 5000;
                end
                else
                begin
                    tarif := 5000 + ((jam - 1) * 3000);
                end;
                
                //Karena maksimal adalah 10 jam, maka tarif maksimal adalah 30000
                if tarif > 30000 then
                begin
                    tarif := 30000;
                end;
                writeln('Tarif parkir = Rp', tarif);
            end;

        'K':
            //jam pertama = 2000, jam berikutnya = 1000
            begin
                if jam <= 1 then
                begin
                    tarif := 2000;
                end

                else
                begin
                    tarif := 2000 + ((jam - 1) * 1000);
                end;

                //Karena maksimal adalah 10 jam, maka tarif maksimal adalah 10000
                if tarif > 10000 then
                begin
                    tarif := 10000;
                end;
                writeln('Tarif parkir = Rp', tarif);
            end;

        'B':
            //jam pertama = 10000, jam berikutnya = 5000
            begin
                if jam <= 1 then
                begin
                    tarif := 10000;
                end
                else
                begin
                    tarif := 10000 + ((jam - 1) * 5000);
                end;

                //Karena maksimal adalah 10 jam, maka tarif maksimal adalah 50000
                if tarif > 50000 then
                begin
                    tarif := 50000;
                end;
                writeln('Tarif parkir = Rp', tarif);
            end;

        //Tambahan seandainya kode kendaraan tidak sesuai dengan yang diinputkan
        else
        begin
            clrscr;
            writeln('Kode kendaraan tidak valid.');
        end;
    end;
end.