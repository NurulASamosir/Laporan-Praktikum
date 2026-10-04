program Soal6_261401039_NurulAnggrainiSamosir;
uses crt;
//Membuat program untuk menghitung nilai akhir mahasiswa dan menentukan kelulusan serta nilai index

var 
    tugas, uts, uas, na:real;
    kehadiran:real;
    poin:char;
begin
    //Input nilai tugas, UTS, UAS, dan persentase kehadiran
    clrscr;
    write('Msukkan nilai tugas: ');
    readln(tugas);
    write('Msukkan nilai UTS : ');
    readln(uts);
    write('Masukkan nilai UAS : ');
    readln(uas);
    write('Masukkan persentase kehadiran : ');
    readln(kehadiran);

    na := tugas * 0.3 + uts * 0.3 + uas * 0.4;

    //Penentuan kelulusan berdasarkan nilai akhir dan persentase kehadiran
    //dengan syarat nilai akhir >= 60 dan persentase kehadiran >= 80%
    if (na>=60) and (kehadiran>=80) then
        begin
            writeln('LULUS');
        end
    else
        begin
            writeln('TIDAK LULUS');
        end;

    //Penentuan nilai index berdasarkan nilai akhir
    if(na>=85)then
        begin
            poin:='A';
        end

    else if (na>=75) and (na<85)then
        begin
            poin:='B';
        end

    else if (na>=60) and (na<75)then
        begin
            poin:='C';
        end

    else if (na>=50) and (na<60)then
        begin
            poin:='D';
        end

    else if (na<50)then
        begin
            poin:='E';
        end;

    writeln;
    writeln('Nilai akhir : ',na:0:2);
    writeln('Nilai index : ',poin);
end.