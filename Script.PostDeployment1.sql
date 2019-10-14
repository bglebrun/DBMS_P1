/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Bernette', 'P', 'Berfoot', '6/23/2019', 'F', 'bberfoot0@google.ru', '6138715357');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Ariadne', 'D', 'Cowden', '4/17/2019', 'F', 'acowden1@edublogs.org', '1755629257');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Ignaz', 'H', 'Bodman', '1/28/2019', 'M', 'ibodman2@yale.edu', '1787030983');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Kimbell', 'E', 'Conneely', '11/22/2018', 'M', 'kconneely3@technorati.com', '5614055837');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Lodovico', 'E', 'Alden', '10/3/2019', 'M', 'lalden4@psu.edu', '8658649078');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Florance', 'M', 'Fontaine', '5/31/2019', 'F', 'ffontaine5@xinhuanet.com', '7807726180');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Burk', 'C', 'Breslin', '8/5/2019', 'M', 'bbreslin6@squarespace.com', '6725591196');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Dieter', 'N', 'Fallanche', '3/31/2019', 'M', 'dfallanche7@acquirethisname.com', '3284374969');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Carny', 'I', 'Stansbury', '9/17/2019', 'M', 'cstansbury8@cisco.com', '9801890447');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Marshall', 'Z', 'Beaford', '7/24/2019', 'M', 'mbeaford9@nydailynews.com', '2246520550');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Adelaide', 'R', 'Fayter', '2/4/2019', 'F', 'afaytera@weather.com', '4818785150');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Elsie', 'T', 'Skeene', '8/21/2019', 'F', 'eskeeneb@vimeo.com', '3017437869');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Hastie', 'J', 'Pitrollo', '11/24/2018', 'M', 'hpitrolloc@storify.com', '5023325061');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Mark', 'Y', 'Gaspard', '8/9/2019', 'M', 'mgaspardd@redcross.org', '1802098277');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Philipa', 'Q', 'Clifton', '8/4/2019', 'F', 'pcliftone@tamu.edu', '2565896243');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Fred', 'I', 'Nitto', '2/28/2019', 'M', 'fnittof@macromedia.com', '8917143786');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Jacqui', 'L', 'Wilfinger', '11/15/2018', 'F', 'jwilfingerg@nih.gov', '1176729240');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Niko', 'E', 'Ugolotti', '12/7/2018', 'M', 'nugolottih@typepad.com', '6406413678');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Casi', 'R', 'Farncombe', '5/27/2019', 'F', 'cfarncombei@wp.com', '4082486387');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Patricia', 'I', 'Tracy', '9/11/2019', 'F', 'ptracyj@discovery.com', '7899921501');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Carlotta', 'X', 'Flatte', '10/20/2018', 'F', 'cflattek@cargocollective.com', '4011838391');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Micky', 'U', 'Croke', '2/13/2019', 'M', 'mcrokel@about.com', '1368075555');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Wolfie', 'I', 'Brewood', '7/29/2019', 'M', 'wbrewoodm@tumblr.com', '2624151442');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Gwendolen', 'S', 'Scarrisbrick', '1/10/2019', 'F', 'gscarrisbrickn@list-manage.com', '4826161047');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Hale', 'C', 'Pochet', '8/3/2019', 'M', 'hpocheto@accuweather.com', '3501373558');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Cindelyn', 'N', 'Banke', '9/20/2019', 'F', 'cbankep@bizjournals.com', '3445977929');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Ruperta', 'K', 'Redhouse', '12/17/2018', 'F', 'rredhouseq@aol.com', '8489374027');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Carey', 'V', 'Scrivens', '7/29/2019', 'F', 'cscrivensr@cam.ac.uk', '1977904148');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Neddy', 'L', 'Backshaw', '1/27/2019', 'M', 'nbackshaws@ow.ly', '1206459874');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Ryon', 'P', 'Kornes', '4/12/2019', 'M', 'rkornest@altervista.org', '2043067876');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Lavinia', 'R', 'Thurstan', '9/13/2019', 'F', 'lthurstanu@columbia.edu', '7992544118');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Carey', 'U', 'MacGiany', '9/16/2019', 'M', 'cmacgianyv@histats.com', '2044263919');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Mariska', 'F', 'Burgwyn', '3/23/2019', 'F', 'mburgwynw@tuttocitta.it', '6828282227');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Bear', 'K', 'Winder', '5/31/2019', 'M', 'bwinderx@amazonaws.com', '4551359048');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Dora', 'S', 'Mellers', '11/29/2018', 'F', 'dmellersy@w3.org', '2078102905');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Erv', 'H', 'Nickoll', '12/15/2018', 'M', 'enickollz@e-recht24.de', '3585676659');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Hercule', 'I', 'Valentin', '8/12/2019', 'M', 'hvalentin10@wordpress.org', '4993331438');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Carlyn', 'P', 'Shotbolt', '12/1/2018', 'F', 'cshotbolt11@buzzfeed.com', '8835778991');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Gerty', 'W', 'Maylam', '1/22/2019', 'F', 'gmaylam12@wikispaces.com', '2399479289');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Amye', 'T', 'Pozzi', '12/14/2018', 'F', 'apozzi13@comsenz.com', '1435236384');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Torrey', 'V', 'Chastagnier', '10/23/2018', 'M', 'tchastagnier14@state.gov', '4085514394');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Essy', 'N', 'Sugge', '9/30/2019', 'F', 'esugge15@opera.com', '7975845649');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Ruprecht', 'W', 'Keatley', '7/11/2019', 'M', 'rkeatley16@facebook.com', '8653329625');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Bertie', 'E', 'Barrus', '5/1/2019', 'F', 'bbarrus17@tripadvisor.com', '5758677883');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Nadya', 'D', 'Hanniger', '5/13/2019', 'F', 'nhanniger18@army.mil', '5629129736');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Ailbert', 'X', 'Ecclestone', '1/4/2019', 'M', 'aecclestone19@barnesandnoble.com', '7485486350');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Adrien', 'W', 'Braidford', '9/12/2019', 'M', 'abraidford1a@wired.com', '1183430788');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Alfredo', 'R', 'Robroe', '8/27/2019', 'M', 'arobroe1b@timesonline.co.uk', '9431633533');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Nari', 'I', 'Bau', '4/10/2019', 'F', 'nbau1c@springer.com', '1659350435');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Chester', 'Q', 'Braban', '7/11/2019', 'M', 'cbraban1d@reference.com', '5011301735');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Ingmar', 'F', 'Siebart', '9/1/2019', 'M', 'isiebart1e@exblog.jp', '5947893982');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Inger', 'H', 'Kos', '4/13/2019', 'M', 'ikos1f@creativecommons.org', '9437304084');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Kelly', 'H', 'Randalson', '8/17/2019', 'M', 'krandalson1g@redcross.org', '1525348222');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Gilly', 'Q', 'Dudliston', '10/24/2018', 'F', 'gdudliston1h@yandex.ru', '5254784492');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Cass', 'U', 'Cordeau', '12/23/2018', 'F', 'ccordeau1i@t-online.de', '4004340061');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Dena', 'A', 'Kopta', '7/2/2019', 'F', 'dkopta1j@woothemes.com', '9931860249');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Price', 'G', 'Dowber', '6/13/2019', 'M', 'pdowber1k@goo.ne.jp', '9615265639');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Wang', 'K', 'Phin', '10/4/2019', 'M', 'wphin1l@dropbox.com', '5219452360');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Dorrie', 'W', 'Scarff', '8/12/2019', 'F', 'dscarff1m@ustream.tv', '1545187154');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Victor', 'C', 'Eadmead', '12/10/2018', 'M', 'veadmead1n@vk.com', '2661853757');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Silva', 'A', 'Osinin', '9/15/2019', 'F', 'sosinin1o@google.com', '5581062750');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Jacynth', 'G', 'MacCague', '12/4/2018', 'F', 'jmaccague1p@google.co.uk', '7133315583');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Correy', 'T', 'McMorran', '6/23/2019', 'M', 'cmcmorran1q@nifty.com', '3551416338');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Ario', 'Q', 'Ramsbotham', '3/17/2019', 'M', 'aramsbotham1r@apple.com', '4373451265');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Nilson', 'R', 'Sheaber', '11/12/2018', 'M', 'nsheaber1s@marketwatch.com', '7459430908');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Trumann', 'P', 'Dowsey', '3/4/2019', 'M', 'tdowsey1t@a8.net', '9777578163');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Imogene', 'D', 'Woodwin', '4/20/2019', 'F', 'iwoodwin1u@marriott.com', '6082036679');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Coralie', 'B', 'Bleazard', '9/23/2019', 'F', 'cbleazard1v@ft.com', '3656129805');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Rennie', 'R', 'Bernardet', '4/1/2019', 'F', 'rbernardet1w@booking.com', '6121244208');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Merrilee', 'A', 'Drohan', '6/17/2019', 'F', 'mdrohan1x@example.com', '7968264326');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Lazarus', 'V', 'Mulbry', '8/22/2019', 'M', 'lmulbry1y@ca.gov', '4487851582');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Abbe', 'M', 'Tolwood', '10/29/2018', 'M', 'atolwood1z@nps.gov', '2103656279');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Marris', 'V', 'Swinnard', '1/25/2019', 'F', 'mswinnard20@amazon.co.jp', '4065407360');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Jenifer', 'B', 'Spilsburie', '7/10/2019', 'F', 'jspilsburie21@amazon.com', '9007430584');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Jeddy', 'C', 'Richardot', '12/8/2018', 'M', 'jrichardot22@gravatar.com', '3508486503');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Hart', 'T', 'Miliffe', '2/26/2019', 'M', 'hmiliffe23@blog.com', '9358022456');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Sheila-kathryn', 'V', 'Mistry', '7/1/2019', 'F', 'smistry24@upenn.edu', '2846125366');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Ellswerth', 'K', 'Shone', '8/21/2019', 'M', 'eshone25@github.com', '1959859379');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Conant', 'S', 'Paolino', '4/18/2019', 'M', 'cpaolino26@wikipedia.org', '8422983888');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Clem', 'H', 'Sarjent', '9/6/2019', 'F', 'csarjent27@yahoo.com', '8553525432');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Gilli', 'N', 'Ritzman', '7/7/2019', 'F', 'gritzman28@plala.or.jp', '7557708039');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Minnnie', 'D', 'Mingey', '3/15/2019', 'F', 'mmingey29@intel.com', '2927056189');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Edvard', 'P', 'Piatkowski', '8/3/2019', 'M', 'epiatkowski2a@wsj.com', '8855805066');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Tammy', 'K', 'Ilyasov', '12/17/2018', 'F', 'tilyasov2b@zdnet.com', '3593174872');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Candy', 'R', 'Darnbrook', '7/12/2019', 'F', 'cdarnbrook2c@who.int', '1776111923');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Janis', 'D', 'Keyzor', '4/30/2019', 'F', 'jkeyzor2d@yahoo.com', '3632436218');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Edmund', 'P', 'Kitman', '7/17/2019', 'M', 'ekitman2e@japanpost.jp', '2054635733');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Sancho', 'I', 'Ranger', '2/26/2019', 'M', 'sranger2f@vkontakte.ru', '7625158138');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Wildon', 'T', 'Jelfs', '6/6/2019', 'M', 'wjelfs2g@umn.edu', '5574938153');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Dudley', 'C', 'Sedgman', '11/9/2018', 'M', 'dsedgman2h@wikispaces.com', '3476847969');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Gilbertine', 'T', 'Seagood', '4/30/2019', 'F', 'gseagood2i@yahoo.com', '5213975576');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Sybilla', 'P', 'Barthelme', '10/31/2018', 'F', 'sbarthelme2j@behance.net', '8682273937');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Drucie', 'R', 'Childes', '4/10/2019', 'F', 'dchildes2k@omniture.com', '4369106481');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Merilee', 'F', 'Gerkens', '1/7/2019', 'F', 'mgerkens2l@google.de', '2932011742');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Sheba', 'M', 'Baugh', '6/26/2019', 'F', 'sbaugh2m@imageshack.us', '9438090784');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Jerry', 'J', 'Chalder', '4/6/2019', 'F', 'jchalder2n@xinhuanet.com', '4111162534');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Ange', 'X', 'Lowers', '8/30/2019', 'M', 'alowers2o@bravesites.com', '6053050774');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Rosemarie', 'S', 'Larcier', '12/20/2018', 'F', 'rlarcier2p@yandex.ru', '1205355272');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Kyle', 'Y', 'Webborn', '6/4/2019', 'F', 'kwebborn2q@yale.edu', '5465784315');
insert into [dbo].[User] (Fname, MINIT, Lname, DOB, SEX, Email, Phone) values ('Roch', 'Z', 'Corkill', '6/2/2019', 'F', 'rcorkill2r@paypal.com', '3742660665');



