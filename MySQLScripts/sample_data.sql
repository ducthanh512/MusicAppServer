

/* album table */
insert into album set id = 1, name = 'Gửi Người Yêu Cũ - Love Songs Collection 3',singer ='Hồ Ngọc Hà',
image ='https://musicappstore.000webhostapp.com/Images/Album/G%E1%BB%ADi%20Ng%C6%B0%E1%BB%9Di%20Y%C3%AAu%20C%C5%A9%20-%20Love%20Songs%20Collection%203.jpg';




/* topic table */
insert into topic set id = 1, name = 'Acoustic',
image ='https://musicappstore.000webhostapp.com/Images/Topic/Acoustic.jpg';

/* genre table */
insert into genre set id = 1, idTopic=1, name = 'Acoustic EDM',
image ='https://musicappstore.000webhostapp.com/Images/Genre/AcousticEDM.jpg';



/* playlist table */
insert into playlist set id = 1,name = 'TOP 100 NHẠC NHẠC TRẺ',
image ='https://musicappstore.000webhostapp.com/Images/PlayList/Top100Korea.jpg',
icon ='https://musicappstore.000webhostapp.com/Images/PlayList/Top100POP.jpg';


insert into playlist set id = 2,name = 'Today''s Top Hits',
image ='https://musicappstore.000webhostapp.com/Images/PlayList/banner3.jpg',
icon ='https://musicappstore.000webhostapp.com/Images/PlayList/top100.jpg';


insert into playlist set id = 3,name = '2018 Billboard Music Awards Winners',
image ='https://musicappstore.000webhostapp.com/Images/PlayList/banner2.jpg',
icon ='https://musicappstore.000webhostapp.com/Images/PlayList/Billboard.jpg';


insert into playlist set id = 4,name = 'The Best Classical Music Ever!',
image ='https://musicappstore.000webhostapp.com/Images/PlayList/banner1.jpeg',
icon ='https://musicappstore.000webhostapp.com/Images/PlayList/classical.jpg';





/* song table */
/*songs in album*/
insert into song set id = 1,idAlbum=1, idGenre=0,idPlayList=0,
 name = 'Gửi Người Yêu Cũ',singer ='Hồ Ngọc Hà', likeNo =0,
image ='https://musicappstore.000webhostapp.com/Images/Album/G%E1%BB%ADi%20Ng%C6%B0%E1%BB%9Di%20Y%C3%AAu%20C%C5%A9%20-%20Love%20Songs%20Collection%203.jpg',
link = 'https://musicappstore.000webhostapp.com/Songs/G%E1%BB%ADi%20Ng%C6%B0%E1%BB%9Di%20Y%C3%AAu%20C%C5%A9%20-%20H%E1%BB%93%20Ng%E1%BB%8Dc%20H%C3%A0%20-%20G%E1%BB%ADi%20Ng%C6%B0%E1%BB%9Di%20Y%C3%AAu%20C%C5%A9%20-%20Love%20Songs%20Collection%203%20-%20H%E1%BB%93%20Ng%E1%BB%8Dc%20H%C3%A0%20-%20Album%20320%20lossless.MP3';


/*songs in genre*/
insert into song set id = 2,idAlbum=0, idGenre=1,idPlayList=0,
 name = 'Chia Xa',singer ='Tuấn Hưng', likeNo =0,
image ='https://musicappstore.000webhostapp.com/Images/Song/Chia%20Xa.jpg',
link = 'https://musicappstore.000webhostapp.com/Songs/Chia%20Xa%20-%20Tu%E1%BA%A5n%20H%C6%B0ng%20-%20K%C3%BD%20%E1%BB%A8c%20V-Pop%20-%20Various%20Artists%20-%20Album%20320%20lossless.MP3';

/*songs in Playlist*/
insert into song set id = 3,idAlbum=0, idGenre=0,idPlayList=1,
 name = 'Nơi Này Có Anh',singer ='Sơn Tùng M-TP', likeNo =0,
image ='https://musicappstore.000webhostapp.com/Images/Song/noi%20nay%20co%20anh.jpg',
link = 'https://musicappstore.000webhostapp.com/Songs/Noi-Nay-Co-Anh-Son-Tung-M-TP.mp3';


/*songs in advert*/
insert into song set id = 4,idAlbum=0, idGenre=0,idPlayList=0,
 name = 'Em Gái Mưa',singer ='Hương Tràm', likeNo =0,
image ='https://musicappstore.000webhostapp.com/Images/Song/Em%20Gai%20Mua.jpg',
link = 'https://musicappstore.000webhostapp.com/Songs/Em%20G%C3%A1i%20M%C6%B0a%20-%20H%C6%B0%C6%A1ng%20Tr%C3%A0m%20-%20Th%E1%BA%BF%20Gi%E1%BB%9Bi%20V-Pop%20Vol%207%20-%20B%C3%ADch%20Ph%C6%B0%C6%A1ng,%20B%E1%BA%A3o%20Anh,%20H%C6%B0%C6%A1ng%20Tr%C3%A0m%20-%20Album%20320%20lossless.MP3';

insert into song set id = 5,idAlbum=0, idGenre=0,idPlayList=0,
 name = 'Solo',singer ='Clean Bandit, Demi Lovato', likeNo =0,
image ='https://musicappstore.000webhostapp.com/Images/Song/Solo.jpg',
link = 'https://musicappstore.000webhostapp.com/Songs/Solo%20-%20Clean%20Bandit,%20Demi%20Lovato%20-%20B%C3%A0i%20h%C3%A1t,%20lyrics.MP3';


/* advert table */
insert into advert set id = 1,idSong=4, content = 'Thế Giới V-Pop Vol 7',
image ='https://musicappstore.000webhostapp.com/Images/Advert/TheGioiVPOP.jpg';

insert into advert set id = 2,idSong=5, content = 'Teen Choice Award for Choice EDM Song',
image ='https://musicappstore.000webhostapp.com/Images/Advert/SoloCleanBandit3.jpg';
