-- RECORDAR QUE PARA INGESTAR EL ULTIMO ARCHIVO HAY QUE ENTRAR COMO:
-- mysql -u username -p --local-infile=1

USE mozo_atr;

SET GLOBAL local_infile = true;

-- CLIENTE 100 records
INSERT INTO CLIENTE
(NOMBRE,TELEFONO,CORREO,FECHA_ALTA,STATUS)
VALUES
('Hollis', '967-706-8224', 'hcordall0@opera.com', '2023-05-25 15:09:04', true),
('Gerta', '163-440-4753', 'gsommerled1@state.gov', '2023-03-02 21:43:40', false),
('Fair', '651-711-7552', 'fcredland2@delicious.com', '2022-10-02 04:41:53', false),
('Chalmers', '166-799-0538', 'crothert3@dyndns.org', '2023-09-23 13:34:24', true),
('Keslie', '250-995-1413', 'ktolan4@telegraph.co.uk', '2023-11-26 14:03:38', false),
('Cathee', '560-931-1161', 'ctesdale5@google.co.jp', '2022-08-25 20:10:39', false),
('Eran', '981-801-5969', 'etumini6@twitter.com', '2023-11-10 05:38:37', false),
('Allard', '216-503-3369', 'agourlie7@t.co', '2024-01-19 13:12:07', false),
('Jordan', '744-376-9717', 'jaird8@lycos.com', '2022-08-27 12:36:29', false),
('Roxi', '701-532-2107', 'rcharleston9@ft.com', '2022-11-21 07:44:28', true),
('Elisabetta', '347-880-1828', 'edoumerquea@cpanel.net', '2024-01-27 03:23:11', true),
('Benetta', '837-178-4468', 'bdigiacomettinob@gmpg.org', '2023-12-04 17:46:20', true),
('Antonietta', '162-167-0920', 'alibbisc@shareasale.com', '2023-04-29 18:32:52', true),
('Jessica', '370-391-8779', 'jgleadled@diigo.com', '2022-11-28 10:42:01', true),
('Gayleen', '466-893-5455', 'gelcockse@moonfruit.com', '2023-03-05 08:30:24', true),
('Andras', '681-620-3777', 'alawlesf@myspace.com', '2023-07-22 20:01:46', false),
('Minne', '514-770-6108', 'mlangsdong@microsoft.com', '2022-11-03 19:34:19', true),
('Sharai', '923-411-5751', 'spettih@desdev.cn', '2023-12-13 11:24:51', false),
('Con', '937-323-1531', 'cdobrowlskii@weebly.com', '2022-11-20 15:53:36', false),
('Leontine', '587-554-6064', 'lgilhouleyj@fotki.com', '2022-10-03 18:54:58', false),
('Trix', '659-248-3079', 'twellingtonk@sogou.com', '2022-07-13 22:19:31', false),
('Virgil', '507-266-3672', 'vbuckinghaml@soup.io', '2022-11-26 23:13:06', true),
('Pip', '268-257-4864', 'plitzmannm@ameblo.jp', '2023-10-02 05:26:51', false),
('Raleigh', '261-748-6146', 'rtoplissn@mail.ru', '2024-03-19 03:27:48', true),
('Corrie', '856-496-8743', 'cswaneo@mozilla.org', '2022-11-24 16:44:02', true),
('Danice', '494-967-9361', 'dauchinleckp@so-net.ne.jp', '2023-03-29 12:30:42', false),
('Cory', '181-736-7732', 'cgavriellyq@wsj.com', '2022-11-11 05:54:10', true),
('Jorey', '622-224-7304', 'jclamptonr@state.gov', '2023-03-20 10:14:15', false),
('Kerstin', '956-218-4236', 'ksayles@shop-pro.jp', '2023-03-25 09:58:11', true),
('Marti', '961-939-1152', 'mmatousekt@canalblog.com', '2023-12-13 19:08:56', true),
('Martainn', '773-432-6945', 'mobyu@go.com', '2023-03-04 19:51:54', true),
('Helena', '132-101-2773', 'hmchalev@tiny.cc', '2022-09-14 20:07:28', false),
('Helen-elizabeth', '802-603-7137', 'hkingsnoadw@shop-pro.jp', '2023-12-12 22:59:19', false),
('Hammad', '983-686-6523', 'hreddellx@blogs.com', '2024-03-08 06:36:28', true),
('Krispin', '208-481-8016', 'klancetty@ed.gov', '2023-08-20 15:43:21', true),
('Rozelle', '856-673-7657', 'rlushz@miitbeian.gov.cn', '2023-11-14 11:59:27', false),
('Cassie', '736-967-4858', 'csuston10@google.ca', '2023-05-15 17:38:45', false),
('Nettie', '612-773-6410', 'nstollen11@bloglovin.com', '2023-09-08 06:48:36', true),
('Cherry', '873-448-0185', 'cbroom12@xrea.com', '2023-08-10 10:54:18', false),
('Reid', '516-263-7551', 'rerwin13@berkeley.edu', '2023-05-21 05:39:48', true),
('Tessy', '809-355-1893', 'tgoldby14@shinystat.com', '2022-07-21 05:28:22', true),
('Renie', '287-265-8345', 'rwhimpenny15@oracle.com', '2023-04-16 05:26:49', false),
('Welch', '614-938-8159', 'wspillard16@japanpost.jp', '2023-10-05 17:44:11', true),
('Dorree', '838-255-6212', 'ddomeney17@who.int', '2024-01-05 12:21:55', true),
('Sharon', '181-660-8004', 'sacton18@redcross.org', '2022-08-15 21:44:40', false),
('Allx', '166-230-5333', 'atoothill19@wp.com', '2022-08-28 21:56:45', false),
('Stirling', '499-323-7336', 'srubenczyk1a@tinyurl.com', '2023-10-25 18:08:27', false),
('Addie', '973-535-0124', 'arooze1b@w3.org', '2023-12-24 14:45:44', true),
('Andrey', '886-392-8009', 'awebben1c@woothemes.com', '2023-05-06 19:14:43', true),
('Cyndia', '647-688-0128', 'cbryan1d@wikimedia.org', '2023-10-01 05:27:23', true),
('Alfonse', '413-437-9061', 'averick1e@state.tx.us', '2024-02-18 01:23:20', false),
('Lib', '845-646-8821', 'lskene1f@prweb.com', '2022-11-19 03:17:45', true),
('Stesha', '474-864-0240', 'sremnant1g@bloglovin.com', '2022-09-18 06:58:36', true),
('Darius', '597-164-6096', 'dfidgin1h@ustream.tv', '2023-08-02 12:01:26', false),
('Kit', '814-582-9009', 'ksteptow1i@spiegel.de', '2024-01-02 02:50:10', true),
('Shaylah', '264-892-6539', 'skristoffersson1j@ameblo.jp', '2022-11-21 22:43:28', true),
('Washington', '884-198-8404', 'wkerin1k@scientificamerican.com', '2022-07-28 17:01:12', false),
('Adi', '588-631-9408', 'alegen1l@exblog.jp', '2023-11-27 22:57:47', false),
('Waldo', '693-510-9224', 'wkrzysztofiak1m@vimeo.com', '2023-12-18 09:26:18', true),
('Babette', '814-821-0090', 'bsurman1n@hexun.com', '2023-10-25 04:56:05', false),
('Obediah', '142-417-2964', 'otewkesbury1o@marriott.com', '2023-01-01 20:06:07', true),
('Rosco', '833-774-8875', 'rchantler1p@microsoft.com', '2022-11-07 10:17:21', true),
('Desiri', '459-153-9267', 'dkemmis1q@bandcamp.com', '2023-06-09 23:44:07', false),
('Alfreda', '816-325-9682', 'alaughren1r@joomla.org', '2023-11-16 23:49:00', false),
('Zorina', '248-643-9420', 'zcorter1s@kickstarter.com', '2023-02-11 16:18:39', true),
('Tommi', '667-921-9397', 'tadin1t@imgur.com', '2022-12-29 05:17:01', false),
('Conrad', '530-864-1907', 'crock1u@tumblr.com', '2023-08-03 03:17:11', true),
('Daniele', '402-560-4693', 'ddikle1v@indiegogo.com', '2023-09-14 13:56:22', true),
('Mateo', '239-206-7675', 'mknappett1w@nasa.gov', '2022-11-24 06:16:19', false),
('Finn', '951-471-1595', 'fgauntley1x@barnesandnoble.com', '2022-11-20 23:18:29', false),
('Heather', '440-249-0486', 'hrogge1y@macromedia.com', '2022-08-05 07:33:25', false),
('Arnie', '826-271-1850', 'agoodger1z@cornell.edu', '2024-03-25 09:47:04', false),
('Marlie', '911-664-5866', 'mmaylard20@hubpages.com', '2024-01-20 16:00:11', false),
('Ronny', '515-715-9328', 'rpinckstone21@elegantthemes.com', '2024-01-23 12:28:32', true),
('Madelin', '169-872-7734', 'mbretton22@cocolog-nifty.com', '2023-03-12 09:07:33', true),
('Heather', '274-770-5455', 'hahrenius23@topsy.com', '2023-12-18 12:00:18', true),
('Billy', '571-951-2483', 'bgudge24@apple.com', '2023-05-06 02:21:53', false),
('Gilligan', '470-683-8412', 'gmackeig25@amazon.co.jp', '2024-02-11 19:02:16', false),
('Giovanni', '752-901-9806', 'gkeen26@intel.com', '2023-10-24 15:02:38', true),
('Karlik', '415-816-3504', 'kludwig27@pbs.org', '2023-03-10 21:01:38', true),
('Natalee', '469-417-8234', 'ntimperley28@tmall.com', '2023-01-01 23:27:13', false),
('Vergil', '408-478-6448', 'vmixhel29@mit.edu', '2024-01-27 19:10:40', false),
('Desiree', '541-981-3978', 'dspofford2a@dagondesign.com', '2022-08-24 03:15:28', true),
('Garrard', '894-193-2184', 'gslym2b@sina.com.cn', '2023-02-05 18:58:04', false),
('Georgia', '555-651-2277', 'gcram2c@ebay.com', '2024-03-09 00:48:34', false),
('Kalli', '375-178-3426', 'kshilliday2d@networkadvertising.org', '2022-09-16 19:12:22', true),
('Esta', '431-316-3059', 'epayler2e@joomla.org', '2023-05-30 17:35:48', false),
('Ollie', '150-286-4029', 'ohealeas2f@addthis.com', '2023-03-19 17:20:02', true),
('Zsa zsa', '985-478-0706', 'ztiuit2g@icio.us', '2023-06-27 14:33:11', false),
('Trula', '764-631-4058', 'thaxley2h@parallels.com', '2023-02-03 22:08:22', false),
('Elene', '701-302-5938', 'egilhouley2i@huffingtonpost.com', '2023-12-29 16:24:03', false),
('Andriette', '822-728-8981', 'amatussow2j@illinois.edu', '2022-07-16 06:22:21', true),
('Lyndel', '275-113-4909', 'ldebruyne2k@google.ru', '2022-11-03 16:11:32', true),
('Valentijn', '883-875-0850', 'vmcgaw2l@seesaa.net', '2023-11-24 17:54:01', true),
('Zabrina', '126-778-3227', 'zlaver2m@flickr.com', '2024-03-05 21:21:30', true),
('Kimmi', '354-843-4212', 'kfeatenby2n@marriott.com', '2022-10-31 08:00:11', false),
('Lanie', '784-900-8555', 'lpaty2o@squarespace.com', '2023-05-31 07:01:08', true),
('Evelyn', '119-776-3352', 'enias2p@shinystat.com', '2022-11-13 19:06:43', false),
('Barbra', '526-956-6146', 'bdepinna2q@mozilla.com', '2023-12-07 02:59:06', false),
('Berni', '602-565-3974', 'bseager2r@newsvine.com', '2024-01-25 07:01:49', false);

-- DUENO 10 records
INSERT INTO DUENO (NOMBRE, CORREO, TELEFONO) VALUES
('Juan Pérez', 'juan@example.com', '1234567890'),
('María Rodríguez', 'maria@example.com', '9876543210'),
('Carlos García', 'carlos@example.com', '5551234567'),
('Ana Martínez', 'ana@example.com', '9998887776'),
('Pedro López', 'pedro@example.com', '1112223334'),
('Laura Sánchez', 'laura@example.com', '4445556668'),
('Javier Hernández', 'javier@example.com', '7778889990'),
('Carmen González', 'carmen@example.com', '2223334441'),
('Alejandro Ruiz', 'alejandro@example.com', '6667778882'),
('Sofía Díaz', 'sofia@example.com', '3334445553');


-- TIPO RESERVA 4 records
INSERT INTO TIPORESERVA (TIPO) VALUES
('Reserva Normal'),
('Reserva VIP'),
('Reserva de Grupo'),
('Reserva de Evento Especial');


-- RESTAURANTE 10 records
-- COSA LOCA Y RARA QUE ME COPO jeje
-- Insertar 10 registros con IDDUENO aleatorio del 1 al 10

INSERT INTO RESTAURANTE (NOMBRE, DIRECCION, TELEFONO, IDDUENO)
SELECT
    CASE 
        WHEN FLOOR(1 + (RAND() * 100))  > 50 THEN "Bandejita Paisa"
        WHEN FLOOR(1 + (RAND() * 100))  < 50 THEN "CevicheLand"
        WHEN FLOOR(1 + (RAND() * 100))  BETWEEN 20 AND 50 THEN "SaySoFun"
        WHEN FLOOR(1 + (RAND() * 100))  BETWEEN 10 AND 20 THEN "DojaCatParty"
    ELSE
        "Paraiso Riojano"
    END
     ,
    CONCAT('Av. San Martin ', FLOOR(1 + (RAND() * 1000)) ),
    CONCAT(FLOOR(1 + (RAND() * 10)) ,'1345678', t.n),
    FLOOR(1 + (RAND() * 10)) AS IDDUENO
FROM (
    SELECT 1 AS n 
    UNION ALL SELECT 2 
    UNION ALL SELECT 3 
    UNION ALL SELECT 4 
    UNION ALL SELECT 5
    UNION ALL SELECT 6 
    UNION ALL SELECT 7 
    UNION ALL SELECT 8 
    UNION ALL SELECT 9 
    UNION ALL SELECT 10
) t;




-- EMPLEADO 100 records
INSERT INTO EMPLEADO 
(NOMBRE,TELEFONO,CORREO,IDRESTAURANTE)
VALUES
('Marijn Salack', '833-314-2801', 'msalack0@intel.com', 2),
('Karry Ramshay', '248-217-0982', 'kramshay1@engadget.com', 2),
('Serge Cowdray', '602-127-6829', 'scowdray2@booking.com', 6),
('Joseph Soden', '582-956-5772', 'jsoden3@vimeo.com', 10),
('Nestor Mapham', '939-190-4158', 'nmapham4@hc360.com', 6),
('Georgia Doonican', '774-523-2081', 'gdoonican5@bloglovin.com', 3),
('Henri Cranstone', '931-325-4309', 'hcranstone6@nydailynews.com', 5),
('Kippar Mighele', '937-677-0111', 'kmighele7@qq.com', 5),
('Cully Broom', '599-522-3766', 'cbroom8@webnode.com', 5),
('Nobe Carluccio', '448-792-0889', 'ncarluccio9@youtube.com', 2),
('Davina Huskinson', '174-385-6156', 'dhuskinsona@godaddy.com', 2),
('Abelard Burds', '601-830-5414', 'aburdsb@toplist.cz', 7),
('Packston O''Dreain', '799-362-1132', 'podreainc@dot.gov', 1),
('Fawne Kew', '795-463-9801', 'fkewd@adobe.com', 9),
('Charmane Stokell', '874-763-7174', 'cstokelle@smugmug.com', 2),
('Maurizio Grigoriev', '374-432-8071', 'mgrigorievf@tinyurl.com', 2),
('Quent Edgeson', '251-952-3110', 'qedgesong@cocolog-nifty.com', 4),
('Leone Woller', '160-695-2487', 'lwollerh@sfgate.com', 8),
('Roanna Lidster', '799-407-8128', 'rlidsteri@canalblog.com', 6),
('Ginny Thom', '440-800-6318', 'gthomj@ovh.net', 6),
('Sapphira Coper', '687-668-0308', 'scoperk@artisteer.com', 3),
('Nicholle Congram', '999-421-0762', 'ncongraml@pbs.org', 2),
('Sigfried Leisman', '928-773-4727', 'sleismanm@mysql.com', 7),
('Alano Gration', '186-255-4156', 'agrationn@java.com', 5),
('Waldemar Blatherwick', '816-635-3293', 'wblatherwicko@sun.com', 5),
('Gabbie Foote', '131-431-2059', 'gfootep@ustream.tv', 3),
('Jacinta Jager', '808-529-5864', 'jjagerq@sitemeter.com', 1),
('Cullin Renachowski', '998-549-5802', 'crenachowskir@pbs.org', 6),
('Cory Tickel', '263-641-5219', 'ctickels@ibm.com', 2),
('Nikolaos Mingay', '255-386-5638', 'nmingayt@digg.com', 9),
('Randell Slamaker', '261-668-9560', 'rslamakeru@moonfruit.com', 2),
('Adrian Corriea', '473-289-1530', 'acorrieav@bandcamp.com', 6),
('Stanton Nicholes', '340-187-7262', 'snicholesw@slashdot.org', 5),
('Darcie Furber', '263-530-8244', 'dfurberx@state.tx.us', 3),
('Basia Palumbo', '473-697-5532', 'bpalumboy@gizmodo.com', 5),
('Jessy Coppard', '766-750-2996', 'jcoppardz@tmall.com', 4),
('Burl Ygoe', '258-362-0677', 'bygoe10@aol.com', 2),
('Merlina Giddens', '205-853-9370', 'mgiddens11@ucoz.ru', 6),
('Amery Braund', '561-259-6627', 'abraund12@usatoday.com', 9),
('Freeland Beardow', '311-565-5143', 'fbeardow13@thetimes.co.uk', 2),
('Esmaria Foro', '920-224-8608', 'eforo14@cnbc.com', 9),
('Anitra Brearty', '614-246-4274', 'abrearty15@engadget.com', 3),
('Simone Mesnard', '202-308-6461', 'smesnard16@cloudflare.com', 3),
('Luce Rivett', '612-997-2237', 'lrivett17@pagesperso-orange.fr', 10),
('Jedidiah Cattini', '691-370-8179', 'jcattini18@aboutads.info', 2),
('Terra Belfit', '671-334-2917', 'tbelfit19@scientificamerican.com', 1),
('Abbe Bollom', '954-692-6834', 'abollom1a@google.com.hk', 10),
('Rheta Marton', '156-642-7800', 'rmarton1b@pagesperso-orange.fr', 9),
('Legra Sewell', '100-287-5696', 'lsewell1c@google.co.uk', 6),
('Reiko Summerson', '432-220-3629', 'rsummerson1d@odnoklassniki.ru', 1),
('Lanie Wornham', '965-574-9061', 'lwornham1e@ihg.com', 3),
('Dory Hinckes', '886-731-0485', 'dhinckes1f@lulu.com', 6),
('Janel Clackers', '306-755-8679', 'jclackers1g@chicagotribune.com', 8),
('Beck Purple', '129-592-8706', 'bpurple1h@weather.com', 7),
('Allard Agent', '336-122-2270', 'aagent1i@bluehost.com', 9),
('Kinnie Morford', '665-508-0158', 'kmorford1j@telegraph.co.uk', 4),
('Theodoric Eck', '537-752-7268', 'teck1k@google.ca', 3),
('Jourdain Bluck', '711-996-4619', 'jbluck1l@sfgate.com', 3),
('Linn Scardafield', '690-572-6273', 'lscardafield1m@bloglines.com', 10),
('Georgeanne Bowdrey', '834-835-9514', 'gbowdrey1n@woothemes.com', 4),
('Raymund Growy', '752-536-5691', 'rgrowy1o@vk.com', 10),
('Brandie Donalson', '156-692-4219', 'bdonalson1p@hibu.com', 4),
('Alys Donisi', '469-368-6296', 'adonisi1q@canalblog.com', 2),
('Thurstan Henrot', '615-163-3944', 'thenrot1r@dagondesign.com', 5),
('Shane Fochs', '976-758-1389', 'sfochs1s@plala.or.jp', 5),
('Cly Tremblet', '271-558-2229', 'ctremblet1t@cisco.com', 5),
('Carola Cartwright', '652-874-6443', 'ccartwright1u@plala.or.jp', 5),
('Finlay Baldacchi', '337-486-0058', 'fbaldacchi1v@i2i.jp', 2),
('Elbert Yushkin', '843-758-6036', 'eyushkin1w@hud.gov', 8),
('Kermit Muckersie', '897-910-6898', 'kmuckersie1x@google.es', 1),
('Maxi Grummitt', '804-202-1522', 'mgrummitt1y@weather.com', 4),
('Emmy McSperron', '611-989-3708', 'emcsperron1z@google.ru', 1),
('Benton Greg', '404-429-1295', 'bgreg20@blogger.com', 10),
('Dunn Godbald', '933-793-9578', 'dgodbald21@sphinn.com', 6),
('Willdon Darwen', '101-240-3137', 'wdarwen22@discovery.com', 1),
('Yuri Pellington', '651-368-1838', 'ypellington23@vk.com', 2),
('Lib Doughton', '896-361-9377', 'ldoughton24@umn.edu', 9),
('Minor De Minico', '107-713-6373', 'mde25@sohu.com', 7),
('Dalis Bonifas', '528-828-1107', 'dbonifas26@nydailynews.com', 8),
('Yevette Haydney', '237-126-9006', 'yhaydney27@dyndns.org', 5),
('Chickie Galego', '335-422-8221', 'cgalego28@ycombinator.com', 8),
('Isadora Maden', '535-156-1517', 'imaden29@tinypic.com', 4),
('Cindi Marzellano', '734-556-2568', 'cmarzellano2a@addtoany.com', 7),
('Benny Tschierse', '656-617-1854', 'btschierse2b@unc.edu', 7),
('Berny Creaser', '775-187-2206', 'bcreaser2c@liveinternet.ru', 5),
('Dalila Murcott', '460-415-5338', 'dmurcott2d@usgs.gov', 1),
('Deeanne Huggon', '538-336-0772', 'dhuggon2e@wsj.com', 2),
('Tomasine Meddings', '916-630-0732', 'tmeddings2f@mail.ru', 6),
('Ky Heigho', '801-284-7677', 'kheigho2g@drupal.org', 5),
('Adrianna O''Cooney', '969-885-6046', 'aocooney2h@blogtalkradio.com', 7),
('Gaston Planque', '605-435-4885', 'gplanque2i@baidu.com', 3),
('Nike Klosges', '422-113-9337', 'nklosges2j@digg.com', 7),
('Lammond Wanek', '553-850-9136', 'lwanek2k@microsoft.com', 6),
('Gaven Mellon', '322-996-3242', 'gmellon2l@google.com.hk', 6),
('Dari Taffrey', '621-618-9954', 'dtaffrey2m@examiner.com', 1),
('Ketti Bafford', '804-618-2717', 'kbafford2n@wiley.com', 4),
('Ekaterina Apthorpe', '304-812-7217', 'eapthorpe2o@usatoday.com', 7),
('Mersey Bauchop', '665-574-3091', 'mbauchop2p@forbes.com', 10),
('Lombard D''Oyley', '358-577-4933', 'ldoyley2q@ovh.net', 9),
('Natty Gatenby', '845-504-6526', 'ngatenby2r@google.ru', 1);

-- MESA 100 records
INSERT INTO MESA
(IDRESTAURANTE,CAPACIDAD,DISPONIBLE)
VALUES
(5, 8, true),
(1, 3, false),
(8, 5, false),
(7, 7, true),
(10, 10, false),
(1, 10, false),
(6, 2, true),
(9, 7, false),
(10, 1, false),
(8, 4, false),
(7, 8, true),
(3, 2, true),
(4, 8, true),
(5, 4, true),
(9, 7, false),
(6, 6, false),
(10, 2, true),
(9, 6, true),
(2, 6, true),
(2, 6, false),
(4, 6, true),
(6, 8, true),
(8, 5, false),
(3, 5, false),
(3, 4, false),
(3, 4, false),
(9, 4, false),
(8, 2, true),
(9, 4, true),
(10, 10, false),
(4, 10, false),
(6, 4, false),
(5, 10, false),
(3, 9, false),
(4, 7, true),
(8, 7, false),
(7, 2, true),
(4, 9, true),
(5, 8, false),
(7, 10, false),
(10, 10, false),
(3, 6, false),
(5, 1, true),
(4, 4, false),
(7, 6, false),
(2, 7, true),
(10, 3, true),
(10, 7, false),
(9, 2, false),
(6, 4, true),
(4, 5, true),
(1, 10, true),
(6, 1, true),
(8, 1, true),
(10, 4, true),
(6, 8, true),
(9, 1, true),
(3, 4, false),
(5, 1, true),
(7, 6, true),
(6, 2, false),
(1, 3, true),
(1, 8, false),
(10, 6, false),
(1, 3, false),
(2, 8, false),
(4, 1, false),
(8, 4, true),
(2, 7, true),
(7, 9, false),
(5, 4, false),
(10, 7, true),
(3, 3, false),
(2, 4, true),
(2, 2, true),
(8, 9, true),
(8, 7, false),
(9, 10, false),
(1, 1, false),
(3, 3, false),
(10, 8, true),
(3, 3, true),
(7, 9, true),
(4, 10, false),
(2, 9, false),
(4, 3, true),
(8, 6, false),
(9, 8, true),
(5, 9, false),
(3, 8, false),
(8, 6, false),
(4, 10, true),
(10, 1, true),
(5, 8, true),
(5, 2, true),
(4, 8, true),
(2, 5, false),
(8, 3, true),
(3, 3, true),
(3, 2, false);

-- RESERVA

LOAD DATA  LOCAL INFILE './workshop_segundo/data_csv/reservas.csv'
INTO TABLE RESERVA
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
-- COLUMNAS QUE ME INTERESA INGESTAR
(IDCLIENTE, IDMESA, IDEMPLEADO, IDTIPORESERVA, FECHA, CANCELACION, HORARIO_RESERVA);
