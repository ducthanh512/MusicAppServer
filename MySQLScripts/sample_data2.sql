

/* album table */

insert into album set id = 1, name = 'Taylor Swift',singer ='Taylor Swift',
image ='https://farm1.staticflickr.com/838/28271260637_32979ef46a_b.jpg';

insert into album set id = 2, name = 'Christina Aguilera',singer ='Christina Aguilera',
image ='https://farm1.staticflickr.com/914/29269097078_c6e3c9eda6_b.jpg';


insert into album set id = 3, name = 'Avril Lavigne',singer ='Avril Lavigne',
image ='https://farm2.staticflickr.com/1769/29269117538_0cdc3cfe06_b.jpg';

insert into album set id = 4, name = 'Justin Bieber',singer ='Justin Bieber',
image ='https://farm1.staticflickr.com/834/29269083328_2ef9f8ccd0_b.jpg';



/* topic table */
insert into topic set id = 1, name = 'Acoustic',
image ='https://farm2.staticflickr.com/1781/28212008917_1348c70f48_b.jpg';

insert into topic set id = 2, name = 'Party Songs',
image ='https://farm1.staticflickr.com/845/28213753327_f5f7e8934c_b.jpg';

insert into topic set id = 3, name = 'RockBalad',
image ='https://farm2.staticflickr.com/1782/28213780367_42fefd5df4_b.jpg';

insert into topic set id = 4, name = 'Free music',
image ='https://farm1.staticflickr.com/835/29210723408_3cfb355733_b.jpg';


/* genre table */
insert into genre set id = 1, idTopic=1, name = 'Taylor',
image ='https://farm1.staticflickr.com/925/28213797297_011cab48ab_b.jpg';

insert into genre set id = 2, idTopic=1, name = 'Top songs 2018',
image ='https://farm1.staticflickr.com/922/43032355642_cb36c3c699_b.jpg';

insert into genre set id = 3, idTopic=1, name = 'Rainy songs',
image ='https://farm2.staticflickr.com/1807/43032359632_e948a0ae0f_b.jpg';

insert into genre set id = 4, idTopic=1, name = 'Love songs',
image ='https://farm2.staticflickr.com/1787/43032362732_7d4b40502e_b.jpg';





/* playlist table */

insert into playlist set id = 1,name = 'Today''s Top Hits',
image ='https://farm1.staticflickr.com/836/42176571285_21e1c8b6ef_b.jpg',
icon ='https://farm1.staticflickr.com/840/42362267854_be4a07dcda_b.jpg';


insert into playlist set id = 2,name = '2018 Billboard Music Awards Winners',
image ='https://farm2.staticflickr.com/1790/29209062508_fd34b25d0d_b.jpg',
icon ='https://farm2.staticflickr.com/1825/29209066138_58fe9437ed_b.jpg';


insert into playlist set id = 3,name = 'The Best Classical Music Ever!',
image ='https://farm2.staticflickr.com/1807/29209071218_f6d09b54e8_b.jpg',
icon ='https://farm2.staticflickr.com/1830/43030747122_dbf0b28755_b.jpg';

insert into playlist set id = 4,name = 'TOP 100 POP Songs',
image ='https://farm2.staticflickr.com/1823/41269740920_9796e62af6_b.jpg',
icon ='https://farm2.staticflickr.com/1765/42362254514_d089ddbb55_b.jpg';



/* song table */
/*songs in album*/
insert into song set id = 11,idAlbum=1, idGenre=0,idPlayList=0,
 name = 'Back To December',singer ='Taylor Swift', likeNo =0,
image ='https://farm2.staticflickr.com/1784/42614699544_3d815e9870_b.jpg',
link = 'https://s3.amazonaws.com/musicappsongs512/Taylor+Swift/Back+To+December+-+Taylor+Swift+-+Speak+Now+-+Taylor+Swift+-+Album+320+lossless.MP3';

insert into song set id = 12,idAlbum=1, idGenre=0,idPlayList=0,
 name = 'Mine',singer ='Taylor Swift', likeNo =0,
image ='https://farm2.staticflickr.com/1790/43282290612_c343e25f9f_b.jpg',
link = 'https://s3.amazonaws.com/musicappsongs512/Taylor+Swift/Mine+-+Taylor+Swift+-+Speak+Now+-+Taylor+Swift+-+Album+320+lossless.MP3';


insert into song set id = 13,idAlbum=1, idGenre=0,idPlayList=0,
 name = 'Speak Now ',singer ='Taylor Swift', likeNo =0,
image ='https://farm1.staticflickr.com/833/28463241607_8fdecd4f4c_b.jpg',
link = 'https://s3.amazonaws.com/musicappsongs512/Taylor+Swift/Speak+Now+-+Taylor+Swift+-+Speak+Now+-+Taylor+Swift+-+Album+320+lossless.MP3';


insert into song set id = 14,idAlbum=1, idGenre=0,idPlayList=0,
 name = 'Stay Beautiful',singer ='Taylor Swift', likeNo =0,
image ='https://farm1.staticflickr.com/843/42428470575_1057d1815c_b.jpg',
link = 'https://s3.amazonaws.com/musicappsongs512/Taylor+Swift/Stay+Beautiful+-+Taylor+Swift+-+Taylor+Swift+(Deluxe+Edition)+-+Taylor+Swift+-+Album+320+lossless.MP3';


insert into song set id = 15,idAlbum=1, idGenre=0,idPlayList=0,
 name = 'Tim McGraw',singer ='Taylor Swift', likeNo =0,
image ='https://farm1.staticflickr.com/835/41522754620_d6bb3ffffc_b.jpg',
link = 'https://s3.amazonaws.com/musicappsongs512/Taylor+Swift/Tim+McGraw+-+Taylor+Swift+-+Taylor+Swift+(Deluxe+Edition)+-+Taylor+Swift+-+Album+320+lossless.MP3';


/*songs in genre*/
insert into song set id = 16,idAlbum=0, idGenre=1,idPlayList=0,
 name = 'Chia Xa',singer ='Tuấn Hưng', likeNo =0,
image ='https://farm2.staticflickr.com/1810/42176611905_ed7f1a858d_b.jpg',
link = 'https://musicappstore.000webhostapp.com/Songs/Chia%20Xa%20-%20Tu%E1%BA%A5n%20H%C6%B0ng%20-%20K%C3%BD%20%E1%BB%A8c%20V-Pop%20-%20Various%20Artists%20-%20Album%20320%20lossless.MP3';

/*songs in Playlist*/
insert into song set id = 17,idAlbum=0, idGenre=0,idPlayList=4,
 name = 'Nơi Này Có Anh',singer ='Sơn Tùng M-TP', likeNo =0,
image ='https://farm1.staticflickr.com/914/42176615325_0aae01ea6d_b.jpg',
link = 'https://musicappstore.000webhostapp.com/Songs/Noi-Nay-Co-Anh-Son-Tung-M-TP.mp3';


insert into song set id = 7,idAlbum=0, idGenre=0,idPlayList=1,
 name = 'I Said Hi',singer ='Amy Shark', likeNo =0,
image ='https://farm2.staticflickr.com/1781/29461927138_67f6fbe937_b.jpg',
link = 'https://s3.amazonaws.com/musicappsongs512/I+Said+Hi+-+Amy+Shark+-+B%C3%A0i+h%C3%A1t%2C+lyrics.MP3';


insert into song set id = 8,idAlbum=0, idGenre=0,idPlayList=1,
 name = 'No Tears Left To Cry',singer ='Ariana Grande', likeNo =0,
image ='https://farm2.staticflickr.com/1806/28462871117_ecd2272fe2_b.jpg',
link = 'https://s3.amazonaws.com/musicappsongs512/No+Tears+Left+to+Cry+-+Ariana+Grande+-+B%C3%A0i+h%C3%A1t%2C+lyrics.MP3';


insert into song set id = 9,idAlbum=0, idGenre=0,idPlayList=1,
 name = 'These Days',singer ='Jess Glynne, Macklemore & Dan Caplen', likeNo =0,
image ='https://farm2.staticflickr.com/1805/41522337610_bdbd1dcbc3_b.jpg',
link = 'https://s3.amazonaws.com/musicappsongs512/These+Days+-+Nhi%E1%BB%81u+ngh%E1%BB%87+s%C4%A9+-+B%C3%A0i+h%C3%A1t%2C+lyrics.MP3';


insert into song set id = 10,idAlbum=0, idGenre=0,idPlayList=1,
 name = 'Girls Like You',singer ='Maroon 5', likeNo =0,
image ='https://farm1.staticflickr.com/925/43282181862_90600aafb7_b.jpg',
link = 'https://s3.amazonaws.com/musicappsongs512/Maroon+5+-+Girls+Like+You+ft.+Cardi+B.mp3';



/*songs in advert*/
insert into song set id = 4,idAlbum=0, idGenre=0,idPlayList=1,
 name = 'Shape Of You',singer ='Ed Sheeran', likeNo =0,
image ='https://farm2.staticflickr.com/1821/42427830145_9cfc372128_b.jpg',
link = 'https://s3.amazonaws.com/musicappsongs512/Shape+Of+You+-+Ed+Sheeran+-+B%C3%A0i+h%C3%A1t%2C+lyrics.MP3';

insert into song set id = 5,idAlbum=0, idGenre=0,idPlayList=1,
 name = 'Solo',singer ='Clean Bandit, Demi Lovato', likeNo =0,
image ='https://farm2.staticflickr.com/1787/41269924760_e31711aafb_b.jpg',
link = 'https://s3.amazonaws.com/musicappsongs512/Solo+-+Clean+Bandit%2C+Demi+Lovato+-+B%C3%A0i+h%C3%A1t%2C+lyrics.MP3';

insert into song set id = 6,idAlbum=0, idGenre=0,idPlayList=1,
 name = 'FRIENDS',singer ='Marshmello, Anne-Marie', likeNo =0,
image ='https://farm1.staticflickr.com/834/41522108140_7728810359_b.jpg',
link = 'https://s3.amazonaws.com/musicappsongs512/FRIENDS+-+Marshmello%2C+Anne-Marie+-+B%C3%A0i+h%C3%A1t%2C+lyrics.MP3';


/* advert table */

insert into advert set id = 1,idSong=5, content = 'Teen Choice Award for Choice EDM Song',
image ='https://farm2.staticflickr.com/1822/29209147968_a0192f6f8b_b.jpg';

insert into advert set id = 2,idSong=4, content = 'Magic Piano Remix',
image ='https://farm1.staticflickr.com/834/42427805275_9da578275a_b.jpg';

insert into advert set id = 3,idSong=6, content = 'Speak Your Mind (Deluxe)',
image ='https://farm2.staticflickr.com/1803/43331506911_055404e79a_b.jpg';


