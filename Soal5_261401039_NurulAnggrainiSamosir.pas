program Soal5_261401039_NurulAnggrainiSamosir;
uses crt;
//Membuat program untuk menghitung rata-rata nilai mahasiswa dan menentukan kelulusan

var
    M,N,i,j:integer;
    nilai,totalnilai,ratarata:real;
    lulus,tidaklulus:integer;

begin
    clrscr;

    //Input jumlah mahasiswa dan jumlah tugas
    write('Masukkan jumlah mahasiswa: ');
    readln(M);
    write('Masukkan jumlah tugas: ');
    readln(N);

    lulus := 0;
    tidaklulus := 0;

    //Perulangan perhitungan nilai tiap-tiap mahasiswa sesuai banyaknya mahasiswa
    for i := 1 to M do
    begin
        totalnilai := 0;

        writeln;
        writeln('Mahasiswa ke-',i);

        for j := 1 to N do
        begin
            write('Masukkan nilai tugas ke-',j,': ');
            readln(nilai);

            totalnilai := totalnilai + nilai;
        end;

        ratarata := totalnilai / N;
            writeln('Rata-rata = ',ratarata:0:2);

        //Penentuan kelulusan berdasarkan rata-rata nilai
        if ratarata >= 65 then
        begin
            writeln('LULUS');
            lulus := lulus + 1;
        end
        else
        begin
            writeln('TIDAK LULUS');
            tidaklulus := tidaklulus + 1;
        end;
    end;

    writeln;
    writeln('=== HASIL AKHIR ===');
    writeln('Jumlah mahasiswa LULUS = ',lulus);
    writeln('Jumlah mahasiswa TIDAK LULUS = ',tidaklulus);
end.