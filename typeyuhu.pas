unit typeyuhu;

interface

const
	Nmax= 1000;
	
type
	BahanMentah = record
		nama:string;
		harga:integer;
		exp: integer;
	end;
	
	tabBM = record
		tab: array [1..Nmax] of BahanMentah;
		neff:integer;
	end;
	
	BahanOlahan = record
		nama:string;
		harga:integer; {harus >= dari harga bahan mentah}
		N:integer; {banyak varian}
		bahan: bahanmentah; {bahanmentah.nama}
		exp:integer;
	end;
	
	tabBO = record
		tab: array [1..Nmax] of BahanOlahan;
		neff:integer;
	end;
	
	BahanR = record
		BahanM: BahanMentah; {bahanmentah.nama}
		BahanO: BahanOlahan; {bahanolahan.nama}
	end;
	
	Resep = record
		nama:string;
		HJ:integer; {sum bahan olahan *1.25}
		N:integer;
		BahanResep: BahanR;
	end;
			
	tabR = record
		tab: array [1..Nmax] of Resep;
		neff:integer;
	end;		
	
	Tanggal = record
		d:integer; {day}
		m:integer; {month}
		y:integer; {year}
	end;
	
	InventoriBM = record {inventori bahan mentah}
		nama: BahanMentah;
		tgl: tanggal;
		jumlah:integer;
	end;
	
	tabInvBM = record {tab inventori Bahan Mentah}
		tab: array [1..Nmax] of InventoriBM;
		neff:integer;
	end;
	
	InventoriBO = record
		nama: BahanOlahan;
		tgl: tanggal;
		jumlah:integer;
	end;
	
	tabInvBO = record {tab inventori Baham Olahan}
		tab: array [1..Nmax] of InventoriBO;
		neff:integer;
	end;
	
	FileSimulasi = record
		nSim:integer; {nomor simulasi}
		tanggal0: tanggal; {tanggal awal dilakukannya simulasi}
		nHidup:integer;
		nEnergi:integer;
		nKapasitasMax:integer; {kapasitas max inventori}
		nTotalBMb:integer; {jumlah total Bahan Mentah yang DIBELI}
		nTotalBOj:integer; {jumlah total Bahan Olahan yang DIJUAL}
		nTotalRj:integer; {jumlah total resep yang DIJUAL}
		nTotalIncome: integer; {total pemasukan}
		nTotalOutcome: integer; {total pengeluaran}
		nTotalUang: integer; {total uang yang dimiliki chef (Pemasukan - Pengurangan)}
	end;

implementation


end.
