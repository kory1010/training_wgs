class Players
#inisiasi variable grobal
	@@jumlah_player = -1
	@@name = []
	@@manna = []
	@@blood = []

	attr_accessor:name, :manna, :blood

	def initialize
	end	
#penambahkan pemain
	def add_player
		system("clear")
		if @@jumlah_player > 1
			puts "Pemain hanya boleh sampai 3!!!"
		else
			print "Masukkan Nama Player : "
			STDOUT.flush
			nama_player = gets.chomp
			#Panggil Method cek pemain
			exist = cek_pemain(nama_player)
			if exist == false
				@@name = @@name.push(nama_player)
				@@manna = @@manna.push(40)
				@@blood = @@blood.push(100)
				@@jumlah_player +=1
				
			else
				puts "\nATTENTION : Nama #{name} Player Sudah Ada!!!\n"
			end
		end
	end
#untuk memeriksa current players
	def current_players
		count_player = 1
		count_player = count_player+@@jumlah_player
		#menampilkan current players
		puts "Current Player : "+count_player.to_s
		#apabila belum terdapat pemain
		if @@jumlah_player < 0
			puts "#----------------------------------------------#"
		#apabila sudah terdapat pemain
		else
			puts "Nama Pemain, Mana/HP"
			for i in 0..@@jumlah_player
			puts "#{@@name[i]}, #{@@manna[i]} / #{@@blood[i]} \n"		
			end	
		end
	end
#memeriksa nama pemain
	def cek_pemain nama_player
		if @@name.include?(nama_player)
			return true
		else
			return false
		end
	end
#method untuk penyerangan
	def battle_on
		system("clear")
		print "Masukkan Nama Penyerang : "
		STDOUT.flush
		nama_penyerang = gets.chomp

		print "Masukkan Nama Korban : "
		STDOUT.flush
		nama_diserang = gets.chomp
		if cek_pemain(nama_penyerang) == false
			puts "Nama Pemain Untuk Penyerang Tidak Terdaftar!!!"
		elsif cek_pemain(nama_diserang) == false
			puts "Nama Pemain Untuk Korban Tidak Terdaftar!!!"
		elsif is_mana_enough(nama_penyerang) == false
			puts "MP Tidak Cukup!!!"
		elsif is_darah_enough(nama_penyerang) == false
			puts "Darah Si Penyerang 0, Game Over!!!"		
		elsif is_darah_enough(nama_diserang) == false
			puts "Darah Si Korban 0, Game Over!!!"
		elsif nama_penyerang == nama_diserang
			puts "Tidak Bisa Serang Diri Sendiri!!!"
		else
			function_battle(nama_penyerang, nama_diserang)
		end		
	end
#untuk memerikasa darah pemain
	def is_darah_enough nama_player
		index_player = @@name.index(nama_player)
		if @@blood[index_player] > 0
			return true
		else
			return false
		end
	end
#memeriksa nama pemain
	def is_mana_enough nama_player
		index_player = @@name.index(nama_player)
		if @@manna[index_player] >= 20
			return true
		else
			return false
		end
	end
#untuk penyerangan
	def function_battle nama_penyerang, nama_diserang
		system("clear")
		index_penyerang = @@name.index(nama_penyerang)
		index_diserang = @@name.index(nama_diserang)

		puts "#{@@name[index_penyerang]} melakukan serangan kepada #{@@name[index_diserang]}\n"
			
		mana_penyerang = @@manna[index_penyerang]-20
		@@manna[index_penyerang] = mana_penyerang

		darah_diserang = @@blood[index_diserang]-20
		@@blood[index_diserang] = darah_diserang

		puts "Description : "	
		puts "#{@@name[index_penyerang]} :  Mana = #{@@manna[index_penyerang]}, Darah = #{@@blood[index_penyerang]}"
		puts "#{@@name[index_diserang]} :  Mana = #{@@manna[index_diserang]}, Darah = #{@@blood[index_diserang]}"
	end
end
