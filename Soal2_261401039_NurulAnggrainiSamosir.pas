program Soal2_261401039_NurulAnggrainiSamosir;
uses crt;
//Membuat sistem verifikasi kata sandi

var
    password : string;
    salah : integer;

begin
    clrscr;
    salah := 0;

    repeat
    //Kata sandi yang akan digunakan: PraktekEuy
        write('Masukkan password: ');
        readln(password);

        //Membuat batasan input password
        if password <> 'PraktekEuy' then
        begin
            salah := salah + 1;
            writeln('Password salah.');

            if salah = 3 then
            begin
                writeln('Akses ditolak! Akun terkunci.');
                break;
            end;
        end;

    until password = 'PraktekEuy';

    //Hasil jikalau password benar
    if password = 'PraktekEuy' then
    begin
        writeln('Login Berhasil!');
        writeln('Selamat Datang.');
    end;
end.