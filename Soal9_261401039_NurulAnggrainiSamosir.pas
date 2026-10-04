program Soal9_261401039_NurulAnggrainiSamosir;
uses crt;
//Membuat program untuk menghitung jumlah hari dalam tiap bulan pada tahun tertentu

var
    tahun, bulan, jumlah_hari: integer;

begin
    clrscr;

    //Input tahun dan bulan
    write('Masukkan tahun: ');
    readln(tahun);
    write('Masukkan bulan (1-12): ');
    readln(bulan);

    //Menghitung jumlah hari dalam tiap bulan 
    case bulan of
        1,3,5,7,8,10,12:jumlah_hari := 31;
        4,6,9,11:jumlah_hari := 30;
        2: 
        //Menghitung jumlah hari pada bulan Februari dengan mengecek tahun kabisat atau tidak
            begin
                if ((tahun mod 400 = 0) or
                    ((tahun mod 4 = 0) and (tahun mod 100 <> 0))) then
                    begin
                        jumlah_hari := 29
                    end
                else
                    begin
                        jumlah_hari := 28;
                    end;
            end;

        else
            begin
                jumlah_hari := 0;
            end;
    end;

    if jumlah_hari = 0 then
        begin
            writeln('Bulan tidak valid.')
        end
    else
        begin
            writeln('Jumlah hari: ', jumlah_hari);
        end;
end.