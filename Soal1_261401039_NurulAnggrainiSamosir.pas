program Soal1_261401039_NurulAnggrainiSamosir;
uses crt;
//Membuat program perhitungan total belanjaan

var 
i, n: integer;
harga, total, diskon: real;

begin
    clrscr;
    total:=0;

    //Memasukkan jumlah barang yang dibeli
    write('Masukkan jumlah barang yang dibeli: ');
    readln (n);

    //Menghitung total harga belanjaan
    for i:=1 to n do 
    begin
        write('Masukkan harga barang ke-', i, ': ');
        readln(harga);

        total := total + harga;
    end;

    writeln('Harga Awal: ', total:2:0);

    //Perdiskonan
    //total<100000 diskon 0%
    //100000<=total<500000 diskon 10%
    //total>=500000 diskon 20%
    if (total < 100000) then
    begin
        diskon := total * 0;
        total := total - diskon;
        writeln('Diskon: ', diskon:2:0);
        writeln('Total yang harus dibayar: ', total:2:0);
    end

    else if (total >= 100000) and (total < 500000) then
    begin
        diskon := total * 0.1;
        total := total - diskon;
        writeln('Diskon: ', diskon:2:0);
        writeln('Total yang harus dibayar: ', total:2:0);
    end

    else if (total >= 500000) then
    begin
        diskon := total * 0.2;
        total := total - diskon;
        writeln('Diskon: ', diskon:2:0);
        writeln('Total yang harus dibayar: ', total:2:0);
    end;
end.