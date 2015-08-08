# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'EMPTY THE MONGODB DATABASE'
::Mongoid::Sessions.default.drop

puts 'SETTING UP DEFAULT USER LOGIN'
id3 = Id3.create! title: '蝴蝶', artist: '刘若英', album: '我的失败和伟大'
puts 'New id3 created: ' << id3.title

music1 = Uriinfo.create! name: '蝴蝶', uri: 'http://yinyueshiting.baidu.com/data2/music/64095815/111112990000128.mp3?xcode=9c2f788efb00e0ee471987f4830588b834b2a22da6d65275', originurl: 'http://music.baidu.com/song/1111129'
puts 'New game created: ' << music1.name
id3.uriinfos.push(music1)
id3.save

music2 = Uriinfo.create name: 'Hudie', uri: 'http://id3tag.orangez.cc/proxy/baidu/1111129', originurl: 'http://music.baidu.com/song/1111129/520610f4590854dca4d3', id3s: [id3]
puts 'Second game created: ' << music2.name

admin = User.create username: "admin", password: "ZXC142857"
puts 'admin created: ' << admin.username
