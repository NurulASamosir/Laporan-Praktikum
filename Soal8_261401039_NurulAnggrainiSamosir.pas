program Soal8_261401039_NurulAnggrainiSamosir;
uses crt;
//Membuat program untuk menghitung gaji karyawan berdasarkan golongan dan jam kerja

var
    golongan: char;
    jam: integer;
    gaji_pokok, lembur, bonus, total: longint;
    //Menggunakan longint karena gaji pokok bisa mencapai 2.500.000

begin
    clrscr;

    //Input golongan dan jam kerja
    write('Masukkan Golongan (A/B/C): ');
    readln(golongan);
    write('Masukkan total jam kerja: ');
    readln(jam);

    case golongan of
        //Input gaji pokok berdasarkan golongan
        //A = 1.500.000, B = 2.000.000, C = 2.500.000
        'A':gaji_pokok := 1500000;
        'B':gaji_pokok := 2000000;
        'C':gaji_pokok := 2500000;            

        else
            gaji_pokok := 0;
    end;

    if (gaji_pokok = 0) then
    begin
        writeln('Golongan tidak valid.');
    end

    else
    //Perhitungan penghasilan yang didapatkan berdasarkan jam lembur
    begin
        if (jam > 40) then
            begin
                lembur := (jam - 40) * 20000;
            end
        else
            begin
                lembur := 0;
            end;

        //Perhitungan bonus khusus golongan C
        if (golongan = 'C') and (jam > 50) then
            begin
                bonus := 100000;
            end
        else
            begin
                bonus := 0;
            end;


        total := gaji_pokok + lembur + bonus;

        writeln;
        writeln('Gaji Pokok: Rp', gaji_pokok);
        writeln('Lembur: Rp', lembur);
        writeln('Bonus: Rp', bonus);
        writeln('Total Gaji: Rp', total);
    end;
end.