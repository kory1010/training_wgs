require_relative 'player'
class Menu
	pilihan = 0
	while(pilihan != "3")
		puts"#==============================================#"
		puts"#           Welcome to Battle Arena            #"
		puts"#----------------------------------------------#"
		puts"#Description :                                 #"
		puts"#1. ketik `1` untuk membuat karakter           #"
		puts"#2. ketik `2` untuk memulai pertarungan        #"
		puts"#2. ketik `3` untuk Keluar                     #"
		puts"#----------------------------------------------#"
		instance_player = Players.new
		instance_player.current_players
		puts"#*max player 2 atau 3                          #"
		puts"#==============================================#"
		print "Pilih Menu : "
		STDOUT.flush
		pilihan = gets.chomp
		puts "\n"
	
		#cek pilihan menu
		case pilihan
		when "1" then instance_player.add_player
		when "2" then instance_player.battle_on
		when "3" then Kernel.exit(true) 
		else puts "Tidak terdapat menu #{pilihan}!!!"
		end
	end
end
