
class Players
      def initialize
puts"#==============================================#"
puts"#           Welcome to Battle Arena            #"
puts"#----------------------------------------------#"
puts"#Description :                                 #"
puts"#1. ketik ``new`` untuk membuat karakter       #"
puts"#2. ketik ``start`` untuk memulai pertarungan  #"
puts"#----------------------------------------------#"
puts"#Masukan Nama Player :     <nama_player>       #"
puts"#          -                                   #"
puts"#*max player 2 atau 3                          #"
puts"#==============================================#"
print "Masukan Nama Player: "

	  @name = gets
          @blood = 100
          @manna = 40
      end
 
      def arbo
          puts "#{@name} "
          puts "#{@blood} \n"
          puts "#{@manna} \n"
      end
  end
 
  # initializes an instance of Boogy
  b = Players.new
 
  # prints "15 ha"
  b.arbo
