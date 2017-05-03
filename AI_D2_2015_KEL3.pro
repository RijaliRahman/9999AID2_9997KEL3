domains	
	dataxxx = orang(Nama,Leptop)
	Nama,Leptop=string
	kondisi = cond*
	cond = string

facts
	datax(kondisi)
	false(cond)
	
predicates
	nondeterm dataxx(Nama,Leptop)
	nondeterm lihat(kondisi)
	nondeterm mulai
	nondeterm pilx0(char)
	nondeterm pilx1(char)
	nondeterm pilx2(char)
	nondeterm pilx3(char)
	nondeterm pilx4(char)
	nondeterm pilx5(char)
	nondeterm pilx6(char)
	nondeterm pil1(char)
	nondeterm pil3(char)
	nondeterm pil4(char)
	nondeterm pil5(char)
	nondeterm pil6(char)
	nondeterm pil7(char)
	nondeterm pil8(char)
	nondeterm pil9(char)
	nondeterm pil10(char)
	nondeterm per2
	nondeterm per3
	nondeterm per4
	nondeterm per5	
	nondeterm per6	
	nondeterm per7	
	nondeterm per8
	nondeterm per9
	nondeterm sol0	
	nondeterm sol1	
	nondeterm sol2	
	nondeterm sol3	
	nondeterm sol4
	nondeterm sol5
	nondeterm sol6
	xxx
	exitx
	ans(char,char)
clauses
ans(Y,Y):-!.
ans(_,_):-fail.
	datax(["\t\t\t\t         1. ","Muhammad Rijali Rahman","1515015187\n","\t\t\t\t         2. ","Arief Syam katni","1515015188\n","\t\t\t\t         3. ","Imamul Muttaqim Hamdi","1515015198"]).
	mulai:-
	nl,nl,
			write("				-----------------------------------------------------------------------------------"),nl,
                        write("				|					   |"),nl,
                        write("				|					   |"),nl,
                        write("				|		WELCOME		   |"),nl,
                        write("				|	KELOMPOK 3 KELAS D2 2015	   |"),nl,
                        write("				|					   |"),nl,
  			write("				-----------------------------------------------------------------------------------"),nl,
  			datax(Kelompok),
			lihat(Kelompok),
  			nl,nl,
  			write("\t\t\t\t =========================================="),nl,
  			write("Masukkan Nama Anda = "),
  			readln(Nama),					%fungsi untuk menginputkan nilai string
  			write("Masukkan Merek Leptop Anda = "),
  			readln(Leptop),nl,  				%fungsi untuk menginputkan nilai string
  			dataxx(Nama,Leptop),nl,
  			write("apakah data sedah benar Y/T?"),
 			readchar(A),pil1(A).				%akan membaca karakter dari variabel A jika bernilai Y/y makan akan mengarahkan ke fact per2 jika selain itu akan berulang
  			pil1(A):-ans(A,'Y'),per2.
  			pil1(A):-ans(A,'y'),per2.  			
  			
  			pil1(_):-xxx,mulai.				%jila inputannya selain Y/y itu akan menggulang ke session fact mulai.
  	
  	lihat([H|T]):-							%fact yng berisi List yg memiliki head dan tail
	not(false(H)),							%false akan bernilai salah jika ada nilai head
	write(H),							%akan menampilkan nlai H
	lihat(T).							%akan kembali ke T
	
	lihat([H|_]):-
	assertz(false(H)).
  		
  	dataxx(Nama,Leptop):-
	write(Nama,Leptop).
	
	per2:-
	nl,nl,	
	write("Apakah monitor anda tidak menyala? Y/T"),
	readchar(A), pil3(A).						%akan membeca nilai dari variabel A dan nilaikn akan di masukkan ke fact pil3
	pil3(A):-ans(A,'Y'),per3.					%jika pil3 bernilai Y/y makan akan mengarahkan ke fact per3
	pil3(A):-ans(A,'y'),per3.
	pil3(A):-ans(A,'t'),per9.					%jika pil3 bernilai T/t makan akan mengarahkan ke fact per9
	pil3(A):-ans(A,'T'),per9.
	pil3(_):-xxx,per2.						%jika pil3 bernilai selai Y/y dan T/t makan akan mengulang ke fact per2

	per3:-
	nl,nl,
	write("Apakah ELD pada komputer tidak menyala? Y/T"),		
	readchar(A), pil4(A).						%akan membeca nilai dari variabel A dan nilaikn akan di masukkan ke fact pil4
	pil4(A):-ans(A,'Y'),per4.					%jika pil4 bernilai Y/y makan akan mengarahkan ke fact per4
	pil4(A):-ans(A,'y'),per4.					
	pil4(A):-ans(A,'t'),per6.					%jika pil4 bernilai T/t makan akan mengarahkan ke fact per6
	pil4(A):-ans(A,'T'),per6.					

	pil4(_):-xxx,per3.						%jika pil4 bernilai selai Y/y dan T/t makan akan mengulang ke fact per3
	
	per4:-
	nl,nl,
	write("Komponen tidak merespon pada saat tombol power di nyalakan? Y/T"),	
	readchar(A), pil5(A).								%akan membeca nilai dari variabel A dan nilaikn akan di masukkan ke fact pil5
	pil5(A):-ans(A,'Y'),per5.
	pil5(A):-ans(A,'y'),per5.							%jika pil5 bernilai Y/y makan akan mengarahkan ke fact per5
	pil5(A):-ans(A,'T'),sol0.
	pil5(A):-ans(A,'t'),sol0.							%jika pil5 bernilai T/t makan akan mengarahkan ke fact sol0
	pil5(_):-xxx,per4.								%jika pil5 bernilai selai Y/y dan T/t makan akan mengulang ke fact per4
	
	per5:-
	nl,nl,
	write("Kipas pada power supplly tidak menyala dengan semestinya? Y/T"),
	readchar(A), pil6(A).								%akan membeca nilai dari variabel A dan nilaikn akan di masukkan ke fact pil6
	pil6(A):-ans(A,'Y'),sol1.							%jika pil6 bernilai Y/y makan akan mengarahkan ke fact sol1
	pil6(A):-ans(A,'y'),sol1.	
	pil6(A):-ans(A,'T'),sol0.
	pil6(A):-ans(A,'t'),sol0.						
	pil6(_):-xxx,per5.								%jika pil6 bernilai selai Y/y dan T/t makan akan mengulang ke fact per5
	
	per6:-
	nl,nl,
	write("Tidak ada gambar pada monitor saat di nyalakan dan lampu LED berkedip? Y/T"),
	readchar(A), pil7(A).								%akan membeca nilai dari variabel A dan nilaikn akan di masukkan ke fact pil7
	pil7(A):-ans(A,'Y'),per7.							%jika pil7 bernilai Y/y makan akan mengarahkan ke fact per7
	pil7(A):-ans(A,'y'),per7.							
	pil7(A):-ans(A,'T'),per8.							%jika pil7 bernilai T/t makan akan mengarahkan ke fact per8
	pil7(A):-ans(A,'t'),per8.
	pil7(_):-xxx,per6.								%jika pil7 bernilai selai Y/y dan T/t makan akan mengulang ke fact per6
	
	per7:-
	nl,nl,
	write("Tidak terdengar suara 'beep' saat di nyalakan? Y/T"),
	readchar(A), pil8(A).								%akan membeca nilai dari variabel A dan nilaikn akan di masukkan ke fact pil8
	pil8(A):-ans(A,'Y'),sol2.							%jika pil8 bernilai Y/y makan akan mengarahkan ke fact sol2
	pil8(A):-ans(A,'y'),sol2.
	pil8(A):-ans(A,'T'),sol3.							%jika pil8 bernilai T/t makan akan mengarahkan ke fact sol2
	pil8(A):-ans(A,'t'),sol3.
	pil8(_):-xxx,per7.								%jika pil8 bernilai selai Y/y dan T/t makan akan mengulang ke fact per7
	
	per8:-
	nl,nl,
	write("Gambar menunjukkan bayangan yang mengganggu pemandangan seperti berwarna warna warni? Y/T"),
	readchar(A), pil9(A).								%akan membeca nilai dari variabel A dan nilaikn akan di masukkan ke fact pil9
	pil9(A):-ans(A,'Y'),sol4.							%jika pil9 bernilai Y/y makan akan mengarahkan ke fact sol4
	pil9(A):-ans(A,'y'),sol4.
	pil9(A):-ans(A,'T'),sol0.
	pil9(A):-ans(A,'t'),sol0.
	pil9(_):-xxx,per8.								%jika pil9 bernilai selai Y/y dan T/t makan akan mengulang ke fact sol4
	
	per9:-
	nl,nl,
	write("Terdapat 'Oprating system not found'? Y/T"),
	readchar(A), pil10(A).								%akan membeca nilai dari variabel A dan nilaikn akan di masukkan ke fact pil10
	pil10(A):-ans(A,'Y'),sol5.							%jika pil10 bernilai Y/y makan akan mengarahkan ke fact sol5
	pil10(A):-ans(A,'y'),sol5.
	pil10(A):-ans(A,'T'),sol6.							%jika pil10 bernilai T/t makan akan mengarahkan ke fact sol5
	pil10(A):-ans(A,'t'),sol6.
	pil10(_):-xxx,per9.								%jika pil10 bernilai selai Y/y dan T/t makan akan mengulang ke fact per9
	
	sol0:-
	nl,nl,
	write("KERUSAKAN PADA KOMPUTER ANDA ADALAH \n =TIDAK DI KETAHUI= "),nl,nl,nl,
	write("APAKAH ANDA INGIN MENULANG PROGRAM INI KEMBALI Y/T"),
	readchar(A), pilx1(A).								%akan membeca nilai dari variabel A dan nilaikn akan di masukkan ke fact pilx1
	pilx1(A):-ans(A,'Y'),mulai.							%jika pilx1 bernilai Y/y makan akan mengarahkan ke fact mulai
	pilx1(A):-ans(A,'y'),mulai.
	pilx1(A):-ans(A,'T'),exitx.							%jika pilx1 bernilai T/t makan akan mengarahkan ke fact exit
	pilx1(A):-ans(A,'t'),exitx.
	pilx1(_):-xxx,sol0.								%jika pilx1 bernilai selai Y/y dan T/t makan akan mengulang ke fact sol0
	
	sol1:-
	nl,nl,
	write("KERUSAKAN PADA KOMPUTER ANDA ADALAH"),nl,
	write("=Kesalahan pada powor suplay="),nl,nl,
	write("SOLUSINYA ADALAH"),nl,
	
	write("Pastikan kabel powersupplay terhubung dengan baik ke socket Motherboard dan tombol ON-OFF dalam keadaan ON."),nl,
	write("jika semua masih dalam keadaan normal cobalah untuk mengganti kabel yang terhubung langsung dengan listrik dengan"),nl,
	write("kabel komputer lainnya yang masih baik. jika masih tidak menyala anda diharuskan mengganti power suplay yang baru."),nl,
	write(""),nl,nl,nl,
	write("APAKAH ANDA INGIN MENULANG PROGRAM INI KEMBALI Y/T"),
	readchar(A), pilx0(A).								%akan membeca nilai dari variabel A dan nilaikn akan di masukkan ke fact pilx0
	pilx0(A):-ans(A,'Y'),mulai.							%jika pilx0 bernilai Y/y makan akan mengarahkan ke fact mulai
	pilx0(A):-ans(A,'y'),mulai.
	pilx0(A):-ans(A,'T'),exitx.							%jika pilx0 bernilai T/t makan akan mengarahkan ke fact exit
	pilx0(A):-ans(A,'t'),exitx.
	pilx0(_):-xxx,sol1.								%jika pilx0 bernilai selai Y/y dan T/t makan akan mengulang ke fact sol1
	
	sol2:-
	nl,nl,
	write("KERUSAKAN PADA KOMPUTER ANDA ADALAH"),nl,
	write("=kerusakan pada motherboard="),nl,nl,
	write("SOLUSINYA ADALAH"),nl,
	write("Lepaskan semua kabel yang berhubungan dengan arus listrik seperti kabel power supplay dan monitor, kemudian bukalah casing CPU,"),nl,
	write("anda dan lepaskan kabel yang menghubungkan dengan motherboard bawa ke tempaat yang terang lalu Cek dan perhatikan bagian dari Chip IC,"),nl,
	write("Transistor,Elko,Bios CMOS dan komponen yang ada di situ, perhatikan apakah ada tanda bercak Hitam atau putih, umumnya kerusakan yang terjadi"),nl,
	write("pada motherboad adalah terjadinya Aus atau bisa juga terbakarnya komponen kecil yang telah disebutkan beberapa diantaranya diatas."),nl,
	write(""),nl,nl,nl,
	write("APAKAH ANDA INGIN MENULANG PROGRAM INI KEMBALI Y/T"),
	readchar(A), pilx2(A).								%akan membeca nilai dari variabel A dan nilaikn akan di masukkan ke fact pilx2
	pilx2(A):-ans(A,'Y'),mulai.							%jika pilx2 bernilai Y/y makan akan mengarahkan ke fact mulai
	pilx2(A):-ans(A,'y'),mulai.
	pilx2(A):-ans(A,'T'),exitx.							%jika pilx2 bernilai T/t makan akan mengarahkan ke fact exit
	pilx2(A):-ans(A,'t'),exitx.
	pilx2(_):-xxx,sol2.								%jika pilx2 bernilai selai Y/y dan T/t makan akan mengulang ke fact sol2
	
	sol3:-
	nl,nl,
	write("KERUSAKAN PADA KOMPUTER ANDA ADALAH"),nl,
	write("=kerusakan pada bios="),nl,nl,
	write("SOLUSINYA ADALAH"),nl,
	write("Terkadang dapat terjadi kegagalan pada proses update BIOS. pada motherboard tertentu dapat melakukan backup pada BIOS sehingga dapat melakukan"),nl,
	write("restore apabila terjadi error yang disebabkan oleh gagal update. Anda bisa mencabut batrai BIOS terlebih dahulu untuk mereser BIOS,"),nl,
	write("pada tipe motherboard tertentu tidak dapat melakukan restore BIOS sehingga anda perlu membawanya ke vendor untuk memperbaikinya."),nl,
	write(""),nl,nl,nl,
	write("APAKAH ANDA INGIN MENULANG PROGRAM INI KEMBALI Y/T"),
	readchar(A), pilx3(A).								%akan membeca nilai dari variabel A dan nilaikn akan di masukkan ke fact pilx3
	pilx3(A):-ans(A,'Y'),mulai.							%jika pilx3 bernilai Y/y makan akan mengarahkan ke fact mulai
	pilx3(A):-ans(A,'y'),mulai.
	pilx3(A):-ans(A,'T'),exitx.							%jika pilx3 bernilai T/t makan akan mengarahkan ke fact exit
	pilx3(A):-ans(A,'t'),exitx.	
	pilx3(_):-xxx,sol3.								%jika pilx3 bernilai selai Y/y dan T/t makan akan mengulang ke fact sol3
	
	sol4:-	
	nl,nl,
	write("KERUSAKAN PADA KOMPUTER ANDA ADALAH"),nl,
	write("=kerusakan pada VGA Card="),nl,nl,
	write("SOLUSINYA ADALAH"),nl,
	write("Ganti VGA Card anda"),nl,
	write(""),nl,nl,nl,
	write("APAKAH ANDA INGIN MENGULANG PROGRAM INI KEMBALI Y/T"),
	readchar(A), pilx4(A).								%akan membeca nilai dari variabel A dan nilaikn akan di masukkan ke fact pilx4
	pilx4(A):-ans(A,'Y'),mulai.							%jika pilx4 bernilai Y/y makan akan mengarahkan ke fact mulai
	pilx4(A):-ans(A,'y'),mulai.							
	pilx4(A):-ans(A,'T'),exitx.							%jika pilx4 bernilai T/t makan akan mengarahkan ke fact exit
	pilx4(A):-ans(A,'t'),exitx.
	pilx4(_):-xxx,sol4.								%jika pilx4 bernilai selai Y/y dan T/t makan akan mengulang ke fact sol4
	
	sol5:-
	nl,nl,
	write("KERUSAKAN PADA KOMPUTER ANDA ADALAH"),nl,
	write("=terjadi badsector pada hdd / sistem operasi corrup="),nl,nl,
	write("SOLUSINYA ADALAH"),nl,
	write("terjadi badsector pada hdd / sistem operasi corrup kemungkinan terjad kerusakan pada operating "),nl,
	write("system PC anda, biasanya sering terjadi file corupt, lakukan Repair dengan CD/DVD windows yang telah ada."),nl,
	write("Jika sudah di repair tapi tetap muncul Operating System not Found berarti terjadi Bad sector pada hdd jdi harus beli hdd baru"),nl,
	write(""),nl,nl,nl,
	write("APAKAH ANDA INGIN MENULANG PROGRAM INI KEMBALI Y/T"),
	readchar(A), pilx5(A).								%akan membeca nilai dari variabel A dan nilaikn akan di masukkan ke fact pilx5
	pilx5(A):-ans(A,'Y'),mulai.							%jika pilx5 bernilai Y/y makan akan mengarahkan ke fact mulai
	pilx5(A):-ans(A,'y'),mulai.							
	pilx5(A):-ans(A,'T'),exitx.							%jika pilx5 bernilai T/t makan akan mengarahkan ke fact exit
	pilx5(A):-ans(A,'t'),exitx.							
	pilx5(_):-xxx,sol5.								%jika pilx5 bernilai selai Y/y dan T/t makan akan mengulang ke fact sol5
	
	sol6:-
	nl,nl,
	write("KERUSAKAN PADA KOMPUER ATAS NAMA DENGAN MEREK ADALAH"),nl,
	write("=TIDAK ADA="),nl,
	write(""),nl,nl,nl,
	write("APAKAH ANDA INGIN MENULANG PROGRAM INI KEMBALI Y/T"),
	readchar(A), pilx5(A).								%akan membeca nilai dari variabel A dan nilaikn akan di masukkan ke fact pilx6
	pilx6(A):-ans(A,'Y'),mulai.							%jika pilx6 bernilai Y/y makan akan mengarahkan ke fact mulai
	pilx6(A):-ans(A,'y'),mulai.
	pilx6(A):-ans(A,'T'),exitx.							%jika pilx6 bernilai T/t makan akan mengarahkan ke fact exit
	pilx6(A):-ans(A,'t'),exitx.
	pilx6(_):-xxx,sol6.								%jika pilx6 bernilai selai Y/y dan T/t makan akan mengulang ke fact sol6
	
	xxx:-
	write("\n INPUTAN ANDA SALAH").
	
	exitx:-
	nl,nl,nl,
	write("TERIMA KASIH TELAH MENGGUNAKAN PROGRAM KAMI UNTUK MENDETEKSI KERUSAKAN \n HARDWARE KOMPUTER PADA KOMPUTER ANDA :)"),exit.
goal
mulai.