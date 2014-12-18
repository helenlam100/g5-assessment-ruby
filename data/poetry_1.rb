

#hard code version this is wrong, but was leading me somewhere

File.open("poem_01.txt", "r") do |f|
  n,h = 0,{}
  f.each_line do |line|
    n += 1
    line =~ /(\d) (.*) at (\d*\.\d*)/

    h[n.to_s] = { :title => "A Drinking Song", :author => "William Butler Yeats", :verses => "The Danann children laugh, in cradles of wrought gold,
    And clap their hands together, and half close their eyes,
    For they will ride the North when the ger-eagle flies,
    With heavy whitening wings, and a heart fallen cold:
    I kiss my wailing child and press it to my breast,
    And hear the narrow graves calling my child and me.
    Desolate winds that cry over the wandering sea;
    Desolate winds that hover in the flaming West;
    Desolate winds that beat the doors of Heaven, and beat
    The doors of Hell and blow there many a whimpering ghost;
    O heart the winds have shaken; the unappeasable host
    Is comelier than candles before Maurya’s feet."}
  end
  puts h
end

p "****************************"

#this just split each line
hash = Hash[*File.read('poem_01.txt').split(/[, \n]+/)]

p hash


# d = Dir.glob("*.txt")
#
# puts d

# f = File.open("poem_01.txt", "r")
#
# f.each do |line|
#   puts line
# end
# 1) first figure out how to go through each file in the data folder and READ it

#after 1 hour I figured out how to print each file, I kept looking up glob as per the link in the README but this didn't allow me to read and print each file.
#now figure out how to parse title, author, and poem into a hash.


#this just prints each line





p "****************************"
f = File.open("poem_02.txt", "r")
f.rewind
f.each do |line|
  puts line
end

f = File.open("poem_03.txt", "r")
f.rewind
f.each do |line|
  puts line
end

f = File.open("poem_04.txt", "r")
f.rewind
f.each do |line|
  puts line
end



#Parse the title, author and verses. Hmm look up JSON.parse
#so didn't finish but am figuring out how to now: (i) parse hash by each line on the txt code rather than each word, or hard coding it which I've done above.
# I didn't have enough time to research.  I  need to find a way to separate each line in the txt file and run the code.

#make everything a hash
