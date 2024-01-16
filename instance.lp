% instance
% Classrooms and their capacities
classroom(bmb_1, 180).
classroom(bmb_2, 80).
classroom(bmb_3, 80).
classroom(bmb_4, 60).
classroom(bmb_5, 60).
classroom(bmb_a101, 25).

% Define time slots and their indexes
timeslot(mon_8_30_to_9_30, 100); timeslot(mon_9_30_to_10_30, 101); timeslot(mon_10_30_to_11_30, 102); timeslot(mon_11_30_to_12_30, 103); timeslot(mon_12_30_to_13_30, 104); timeslot(mon_13_30_to_14_30, 105); timeslot(mon_14_30_to_15_30, 106); timeslot(mon_15_30_to_16_30, 107); timeslot(mon_16_30_to_17_30, 108); timeslot(mon_17_30_to_18_30, 109); timeslot(mon_18_30_to_19_30, 110); timeslot(mon_19_30_to_20_30, 111). 
timeslot(tue_8_30_to_9_30, 200); timeslot(tue_9_30_to_10_30, 201); timeslot(tue_10_30_to_11_30, 202); timeslot(tue_11_30_to_12_30, 203); timeslot(tue_12_30_to_13_30, 204); timeslot(tue_13_30_to_14_30, 205); timeslot(tue_14_30_to_15_30, 206); timeslot(tue_15_30_to_16_30, 207); timeslot(tue_16_30_to_17_30, 208); timeslot(tue_17_30_to_18_30, 209); timeslot(tue_18_30_to_19_30, 210); timeslot(tue_19_30_to_20_30, 211). 
timeslot(wed_8_30_to_9_30, 300); timeslot(wed_9_30_to_10_30, 301); timeslot(wed_10_30_to_11_30, 302); timeslot(wed_11_30_to_12_30, 303); timeslot(wed_12_30_to_13_30, 304); timeslot(wed_13_30_to_14_30, 305); timeslot(wed_14_30_to_15_30, 306); timeslot(wed_15_30_to_16_30, 307); timeslot(wed_16_30_to_17_30, 308); timeslot(wed_17_30_to_18_30, 309); timeslot(wed_18_30_to_19_30, 310); timeslot(wed_19_30_to_20_30, 311). 
timeslot(thu_8_30_to_9_30, 400); timeslot(thu_9_30_to_10_30, 401); timeslot(thu_10_30_to_11_30, 402); timeslot(thu_11_30_to_12_30, 403); timeslot(thu_12_30_to_13_30, 404); timeslot(thu_13_30_to_14_30, 405); timeslot(thu_14_30_to_15_30, 406); timeslot(thu_15_30_to_16_30, 407); timeslot(thu_16_30_to_17_30, 408); timeslot(thu_17_30_to_18_30, 409); timeslot(thu_18_30_to_19_30, 410); timeslot(thu_19_30_to_20_30, 411). 
timeslot(fri_8_30_to_9_30, 500); timeslot(fri_9_30_to_10_30, 501); timeslot(fri_10_30_to_11_30, 502); timeslot(fri_11_30_to_12_30, 503); timeslot(fri_12_30_to_13_30, 504); timeslot(fri_13_30_to_14_30, 505); timeslot(fri_14_30_to_15_30, 506); timeslot(fri_15_30_to_16_30, 507); timeslot(fri_16_30_to_17_30, 508); timeslot(fri_17_30_to_18_30, 509); timeslot(fri_18_30_to_19_30, 510); timeslot(fri_19_30_to_20_30, 511). 
timeslot(sat_8_30_to_9_30, 600); timeslot(sat_9_30_to_10_30, 601); timeslot(sat_10_30_to_11_30, 602); timeslot(sat_11_30_to_12_30, 603); timeslot(sat_12_30_to_13_30, 604); timeslot(sat_13_30_to_14_30, 605); timeslot(sat_14_30_to_15_30, 606); timeslot(sat_15_30_to_16_30, 607); timeslot(sat_16_30_to_17_30, 608); timeslot(sat_17_30_to_18_30, 609); timeslot(sat_18_30_to_19_30, 610); timeslot(sat_19_30_to_20_30, 611). 
timeslot(sun_8_30_to_9_30, 700); timeslot(sun_9_30_to_10_30, 701); timeslot(sun_10_30_to_11_30, 702); timeslot(sun_11_30_to_12_30, 703); timeslot(sun_12_30_to_13_30, 704); timeslot(sun_13_30_to_14_30, 705); timeslot(sun_14_30_to_15_30, 706); timeslot(sun_15_30_to_16_30, 707); timeslot(sun_16_30_to_17_30, 708); timeslot(sun_17_30_to_18_30, 709); timeslot(sun_18_30_to_19_30, 710); timeslot(sun_19_30_to_20_30, 711).

% Define Instructors and their associated courses
instructor_course(ahmet_oguz_akyuz, 5710477).
instructor_course(ahmet_oguz_akyuz, 5710587).
instructor_course(ayse_nur_birturk, 5710223).
instructor_course(ayse_nur_birturk, 5710463).
instructor_course(ayse_yasemin_seydim, 5710302).
instructor_course(cevat_sener, 5710443).
instructor_course(cevat_sener, 5710454).
instructor_course(emre_akbas, 5710100).
instructor_course(emre_akbas, 5710501).
instructor_course(erol_sahin, 5710331).
instructor_course(ertan_onur, 5710435).
instructor_course(faruk_polat, 5710223).
instructor_course(faruk_tokdemir, 5710305).
instructor_course(fatos_tunay_yarman_vural, 5710466).
instructor_course(fatos_tunay_yarman_vural, 5710591).
instructor_course(fehime_nihan_cicekli, 5710213).
instructor_course(ferda_nur_alpaslan, 5710424).
instructor_course(ferda_nur_alpaslan, 5710562).
instructor_course(gokturk_ucoluk, 5710111).
instructor_course(hakan_yildiz, 5710570).
instructor_course(hakan_yildiz, 5710140).
instructor_course(hande_alemdar, 5710453).
instructor_course(ismail_hakki_toroslu, 5710315).
instructor_course(ismail_sengor_altingovde, 5710778).
instructor_course(ismail_sengor_altingovde, 5710351).
instructor_course(mehmet_halit_s_oguztuzun, 5710540).
instructor_course(murat_manguoglu, 5710487).
instructor_course(murat_manguoglu, 5710371).
instructor_course(onur_tolga_sehitoglu, 5710536).
instructor_course(onur_tolga_sehitoglu, 5710445).
instructor_course(pelin_angin, 5710590).
instructor_course(pinar_karagoz, 5710351).
instructor_course(pinar_karagoz, 5710514).
instructor_course(ramazan_gokberk_cinbis, 5710483).
instructor_course(seyda_ertekin_bolelli, 5710499).
instructor_course(seyda_ertekin_bolelli, 5710213).
instructor_course(seyyit_alper_sert, 5710310).
instructor_course(sinan_kalkan, 5710111).
instructor_course(uluc_saranli, 5710786).
instructor_course(uluc_saranli, 5710460).
instructor_course(yusuf_sahillioglu, 5710301).
instructor_course(yusuf_sahillioglu, 5710477).

% Instructors and their Busy hours
busy(ahmet_oguz_akyuz, 106).
busy(ahmet_oguz_akyuz, 206).
busy(ahmet_oguz_akyuz, 207).
busy(ahmet_oguz_akyuz, 306).
busy(ahmet_oguz_akyuz, 307).
busy(ahmet_oguz_akyuz, 407).
busy(ahmet_oguz_akyuz, 408).
busy(ahmet_oguz_akyuz, 409).
busy(ahmet_oguz_akyuz, 410).
busy(ahmet_oguz_akyuz, 411).
busy(ayse_nur_bi̇rturk, 100).
busy(ayse_nur_bi̇rturk, 103).
busy(ayse_nur_bi̇rturk, 106).
busy(ayse_nur_bi̇rturk, 107).
busy(ayse_nur_bi̇rturk, 108).
busy(ayse_nur_bi̇rturk, 207).
busy(ayse_nur_bi̇rturk, 209).
busy(ayse_nur_bi̇rturk, 210).
busy(ayse_nur_bi̇rturk, 300).
busy(ayse_nur_bi̇rturk, 302).
busy(ayse_yasemi̇n_seydi̇m, 200).
busy(ayse_yasemi̇n_seydi̇m, 201).
busy(ayse_yasemi̇n_seydi̇m, 202).
busy(ayse_yasemi̇n_seydi̇m, 401).
busy(ayse_yasemi̇n_seydi̇m, 402).
busy(ayse_yasemi̇n_seydi̇m, 406).
busy(ayse_yasemi̇n_seydi̇m, 407).
busy(ayse_yasemi̇n_seydi̇m, 409).
busy(ayse_yasemi̇n_seydi̇m, 410).
busy(ayse_yasemi̇n_seydi̇m, 500).
busy(cevat_sener, 100).
busy(cevat_sener, 101).
busy(cevat_sener, 102).
busy(cevat_sener, 305).
busy(cevat_sener, 409).
busy(cevat_sener, 410).
busy(cevat_sener, 500).
busy(cevat_sener, 707).
busy(cevat_sener, 708).
busy(cevat_sener, 709).
busy(emre_akbas, 107).
busy(emre_akbas, 200).
busy(emre_akbas, 201).
busy(emre_akbas, 306).
busy(emre_akbas, 307).
busy(emre_akbas, 404).
busy(emre_akbas, 405).
busy(emre_akbas, 406).
busy(emre_akbas, 610).
busy(emre_akbas, 611).
busy(erol_sahi̇n, 103).
busy(erol_sahi̇n, 201).
busy(erol_sahi̇n, 202).
busy(erol_sahi̇n, 403).
busy(erol_sahi̇n, 507).
busy(erol_sahi̇n, 601).
busy(erol_sahi̇n, 602).
busy(erol_sahi̇n, 603).
busy(erol_sahi̇n, 710).
busy(erol_sahi̇n, 711).
busy(ertan_onur, 104).
busy(ertan_onur, 105).
busy(ertan_onur, 307).
busy(ertan_onur, 308).
busy(ertan_onur, 503).
busy(ertan_onur, 504).
busy(ertan_onur, 505).
busy(ertan_onur, 600).
busy(ertan_onur, 704).
busy(ertan_onur, 705).
busy(faruk_polat, 107).
busy(faruk_polat, 108).
busy(faruk_polat, 210).
busy(faruk_polat, 211).
busy(faruk_polat, 305).
busy(faruk_polat, 306).
busy(faruk_polat, 407).
busy(faruk_polat, 408).
busy(faruk_polat, 600).
busy(faruk_polat, 604).
busy(faruk_tokdemi̇r, 309).
busy(faruk_tokdemi̇r, 310).
busy(faruk_tokdemi̇r, 311).
busy(faruk_tokdemi̇r, 504).
busy(faruk_tokdemi̇r, 601).
busy(faruk_tokdemi̇r, 602).
busy(faruk_tokdemi̇r, 603).
busy(faruk_tokdemi̇r, 606).
busy(faruk_tokdemi̇r, 607).
busy(faruk_tokdemi̇r, 707).
busy(fatos_tunay_yarman_vural, 103).
busy(fatos_tunay_yarman_vural, 410).
busy(fatos_tunay_yarman_vural, 411).
busy(fatos_tunay_yarman_vural, 507).
busy(fatos_tunay_yarman_vural, 508).
busy(fatos_tunay_yarman_vural, 600).
busy(fatos_tunay_yarman_vural, 601).
busy(fatos_tunay_yarman_vural, 602).
busy(fatos_tunay_yarman_vural, 705).
busy(fatos_tunay_yarman_vural, 711).
busy(fehi̇me_ni̇han_ci̇cekli̇, 103).
busy(fehi̇me_ni̇han_ci̇cekli̇, 104).
busy(fehi̇me_ni̇han_ci̇cekli̇, 301).
busy(fehi̇me_ni̇han_ci̇cekli̇, 302).
busy(fehi̇me_ni̇han_ci̇cekli̇, 305).
busy(fehi̇me_ni̇han_ci̇cekli̇, 306).
busy(fehi̇me_ni̇han_ci̇cekli̇, 600).
busy(fehi̇me_ni̇han_ci̇cekli̇, 601).
busy(fehi̇me_ni̇han_ci̇cekli̇, 604).
busy(fehi̇me_ni̇han_ci̇cekli̇, 700).
busy(ferda_nur_alpaslan, 110).
busy(ferda_nur_alpaslan, 301).
busy(ferda_nur_alpaslan, 302).
busy(ferda_nur_alpaslan, 311).
busy(ferda_nur_alpaslan, 404).
busy(ferda_nur_alpaslan, 700).
busy(ferda_nur_alpaslan, 701).
busy(ferda_nur_alpaslan, 709).
busy(ferda_nur_alpaslan, 710).
busy(ferda_nur_alpaslan, 711).
busy(gokturk_ucoluk, 108).
busy(gokturk_ucoluk, 109).
busy(gokturk_ucoluk, 110).
busy(gokturk_ucoluk, 201).
busy(gokturk_ucoluk, 601).
busy(gokturk_ucoluk, 701).
busy(gokturk_ucoluk, 702).
busy(gokturk_ucoluk, 704).
busy(gokturk_ucoluk, 705).
busy(gokturk_ucoluk, 706).
busy(hakan_yildiz, 105).
busy(hakan_yildiz, 211).
busy(hakan_yildiz, 501).
busy(hakan_yildiz, 502).
busy(hakan_yildiz, 602).
busy(hakan_yildiz, 702).
busy(hakan_yildiz, 703).
busy(hakan_yildiz, 707).
busy(hakan_yildiz, 708).
busy(hakan_yildiz, 709).
busy(hande_alemdar, 202).
busy(hande_alemdar, 203).
busy(hande_alemdar, 210).
busy(hande_alemdar, 211).
busy(hande_alemdar, 300).
busy(hande_alemdar, 301).
busy(hande_alemdar, 502).
busy(hande_alemdar, 503).
busy(hande_alemdar, 610).
busy(hande_alemdar, 611).
busy(i̇smai̇l_hakki_toroslu, 100).
busy(i̇smai̇l_hakki_toroslu, 105).
busy(i̇smai̇l_hakki_toroslu, 106).
busy(i̇smai̇l_hakki_toroslu, 306).
busy(i̇smai̇l_hakki_toroslu, 307).
busy(i̇smai̇l_hakki_toroslu, 308).
busy(i̇smai̇l_hakki_toroslu, 403).
busy(i̇smai̇l_hakki_toroslu, 404).
busy(i̇smai̇l_hakki_toroslu, 405).
busy(i̇smai̇l_hakki_toroslu, 709).
busy(i̇smai̇l_sengor_altingovde, 307).
busy(i̇smai̇l_sengor_altingovde, 308).
busy(i̇smai̇l_sengor_altingovde, 409).
busy(i̇smai̇l_sengor_altingovde, 510).
busy(i̇smai̇l_sengor_altingovde, 511).
busy(i̇smai̇l_sengor_altingovde, 601).
busy(i̇smai̇l_sengor_altingovde, 602).
busy(i̇smai̇l_sengor_altingovde, 705).
busy(i̇smai̇l_sengor_altingovde, 706).
busy(i̇smai̇l_sengor_altingovde, 707).
busy(mehmet_hali̇t_s_oguztuzun, 107).
busy(mehmet_hali̇t_s_oguztuzun, 310).
busy(mehmet_hali̇t_s_oguztuzun, 311).
busy(mehmet_hali̇t_s_oguztuzun, 407).
busy(mehmet_hali̇t_s_oguztuzun, 408).
busy(mehmet_hali̇t_s_oguztuzun, 505).
busy(mehmet_hali̇t_s_oguztuzun, 506).
busy(mehmet_hali̇t_s_oguztuzun, 608).
busy(mehmet_hali̇t_s_oguztuzun, 610).
busy(mehmet_hali̇t_s_oguztuzun, 611).
busy(murat_manguoglu, 100).
busy(murat_manguoglu, 308).
busy(murat_manguoglu, 309).
busy(murat_manguoglu, 402).
busy(murat_manguoglu, 403).
busy(murat_manguoglu, 506).
busy(murat_manguoglu, 507).
busy(murat_manguoglu, 608).
busy(murat_manguoglu, 706).
busy(murat_manguoglu, 707).
busy(onur_tolga_sehi̇toglu, 106).
busy(onur_tolga_sehi̇toglu, 107).
busy(onur_tolga_sehi̇toglu, 208).
busy(onur_tolga_sehi̇toglu, 302).
busy(onur_tolga_sehi̇toglu, 303).
busy(onur_tolga_sehi̇toglu, 304).
busy(onur_tolga_sehi̇toglu, 305).
busy(onur_tolga_sehi̇toglu, 306).
busy(onur_tolga_sehi̇toglu, 706).
busy(onur_tolga_sehi̇toglu, 709).
busy(peli̇n_angin, 101).
busy(peli̇n_angin, 102).
busy(peli̇n_angin, 108).
busy(peli̇n_angin, 504).
busy(peli̇n_angin, 505).
busy(peli̇n_angin, 506).
busy(peli̇n_angin, 605).
busy(peli̇n_angin, 606).
busy(peli̇n_angin, 703).
busy(peli̇n_angin, 705).
busy(pinar_karagoz, 209).
busy(pinar_karagoz, 210).
busy(pinar_karagoz, 211).
busy(pinar_karagoz, 508).
busy(pinar_karagoz, 509).
busy(pinar_karagoz, 600).
busy(pinar_karagoz, 706).
busy(pinar_karagoz, 707).
busy(pinar_karagoz, 708).
busy(pinar_karagoz, 710).
busy(ramazan_gokberk_ci̇nbi̇s, 100).
busy(ramazan_gokberk_ci̇nbi̇s, 107).
busy(ramazan_gokberk_ci̇nbi̇s, 208).
busy(ramazan_gokberk_ci̇nbi̇s, 209).
busy(ramazan_gokberk_ci̇nbi̇s, 303).
busy(ramazan_gokberk_ci̇nbi̇s, 501).
busy(ramazan_gokberk_ci̇nbi̇s, 607).
busy(ramazan_gokberk_ci̇nbi̇s, 608).
busy(ramazan_gokberk_ci̇nbi̇s, 609).
busy(ramazan_gokberk_ci̇nbi̇s, 709).
busy(seyda_erteki̇n_bolelli̇, 203).
busy(seyda_erteki̇n_bolelli̇, 204).
busy(seyda_erteki̇n_bolelli̇, 205).
busy(seyda_erteki̇n_bolelli̇, 305).
busy(seyda_erteki̇n_bolelli̇, 306).
busy(seyda_erteki̇n_bolelli̇, 402).
busy(seyda_erteki̇n_bolelli̇, 406).
busy(seyda_erteki̇n_bolelli̇, 409).
busy(seyda_erteki̇n_bolelli̇, 603).
busy(seyda_erteki̇n_bolelli̇, 604).
busy(seyyi̇t_alper_sert, 106).
busy(seyyi̇t_alper_sert, 402).
busy(seyyi̇t_alper_sert, 403).
busy(seyyi̇t_alper_sert, 406).
busy(seyyi̇t_alper_sert, 407).
busy(seyyi̇t_alper_sert, 511).
busy(seyyi̇t_alper_sert, 704).
busy(seyyi̇t_alper_sert, 705).
busy(seyyi̇t_alper_sert, 710).
busy(seyyi̇t_alper_sert, 711).
busy(si̇nan_kalkan, 105).
busy(si̇nan_kalkan, 301).
busy(si̇nan_kalkan, 302).
busy(si̇nan_kalkan, 305).
busy(si̇nan_kalkan, 400).
busy(si̇nan_kalkan, 405).
busy(si̇nan_kalkan, 704).
busy(si̇nan_kalkan, 705).
busy(si̇nan_kalkan, 706).
busy(si̇nan_kalkan, 707).
busy(uluc_saranli, 101).
busy(uluc_saranli, 102).
busy(uluc_saranli, 110).
busy(uluc_saranli, 210).
busy(uluc_saranli, 211).
busy(uluc_saranli, 509).
busy(uluc_saranli, 510).
busy(uluc_saranli, 701).
busy(uluc_saranli, 702).
busy(uluc_saranli, 703).
busy(yusuf_sahi̇lli̇oglu, 201).
busy(yusuf_sahi̇lli̇oglu, 202).
busy(yusuf_sahi̇lli̇oglu, 203).
busy(yusuf_sahi̇lli̇oglu, 409).
busy(yusuf_sahi̇lli̇oglu, 410).
busy(yusuf_sahi̇lli̇oglu, 501).
busy(yusuf_sahi̇lli̇oglu, 506).
busy(yusuf_sahi̇lli̇oglu, 507).
busy(yusuf_sahi̇lli̇oglu, 709).
busy(yusuf_sahi̇lli̇oglu, 710).

%Courses
course(5710100, COMPUTER_ENGINEERING_ORIENTATION, No, Undergraduate, Must, 175, 2, 1).
course(5710111, INTRODUCTION_TO_COMPUTER_ENG_CONCEPTS, No, Undergraduate, Must, 55, 3, 1).
course(5710111, INTRODUCTION_TO_COMPUTER_ENG_CONCEPTS, No, Undergraduate, Must, 55, 3, 2).
course(5710111, INTRODUCTION_TO_COMPUTER_ENG_CONCEPTS, No, Undergraduate, Must, 62, 3, 3).
course(5710140, C_PROGRAMMING, No, Undergraduate, Must, 40, 3, 1).
course(5710213, DATA_STRUCTURES, No, Undergraduate, Must, 60, 3, 1).
course(5710213, DATA_STRUCTURES, No, Undergraduate, Must, 60, 3, 2).
course(5710213, DATA_STRUCTURES, No, Undergraduate, Must, 60, 3, 3).
course(5710223, DISCRETE_COMPUTATIONAL_STRUCTURES, No, Undergraduate, Must, 69, 3, 1).
course(5710223, DISCRETE_COMPUTATIONAL_STRUCTURES, No, Undergraduate, Must, 70, 3, 2).
course(5710223, DISCRETE_COMPUTATIONAL_STRUCTURES, No, Undergraduate, Must, 76, 3, 3).
course(5710301, ALGORITHMS_AND_DATA_STRUCTURES, Yes, Undergraduate, Must, 45, 3, 1).
course(5710302, INTR_TO_DATABASE_MANAGEMENT_SYSTEMS, Yes, Undergraduate, Must, 27, 3, 1).
course(5710305, OBJECT_ORIENTED_PROGRAMMING_WITH_JAVA, Yes, Undergraduate, Must, 25, 3, 1).
course(5710310, ALGORITHMS_AND_DATA_STRUCTURES_WITH_PYTHON, Yes, Undergraduate, Must, 45, 3, 1).
course(5710315, ALGORITHMS, No, Undergraduate, Must, 111, 3, 1).
course(5710315, ALGORITHMS, No, Undergraduate, Must, 102, 3, 2).
course(5710331, COMPUTER_ORGANIZATION, No, Undergraduate, Must, 200, 3, 1).
course(5710351, DATA_MANAGEMENT_AND_FILE_STRUCTURES, No, Undergraduate, Must, 105, 3, 1).
course(5710351, DATA_MANAGEMENT_AND_FILE_STRUCTURES, No, Undergraduate, Must, 90, 3, 2).
course(5710371, SCIENTIFIC_COMPUTING, No, Undergraduate, Elective, 50, 3, 1).
course(5710424, LOGIC_FOR_COMPUTER_SCIENCE, No, Undergraduate, Elective, 50, 3, 1).
course(5710435, DATA_COMMUNICATIONS_AND_NETWORKING, No, Undergraduate, Must, 85, 3, 1).
course(5710435, DATA_COMMUNICATIONS_AND_NETWORKING, No, Undergraduate, Must, 95, 3, 2).
course(5710443, INTRODUCTION_TO_OBJECTORIENTED_PROG_LANG_AND_SYSTEMS, No, Undergraduate, Must, 54, 3, 1).
course(5710445, SOFTWARE_DEVELOPMENT_WITH_SCRIPTING_LANGUAGES, No, Undergraduate, Elective, 50, 3, 1).
course(5710453, SPECIAL_TOPICS_IN_COMPUTER_ENGINEERING_SOFTWARE_CONSTRUCTION, No, Undergraduate, Elective, 50, 3, 1).
course(5710454, SPECIAL_TOPICS_IN_COMPUTER_ENGINEERING_INTRODUCTION_TO_SOFTWARE_ARCHITECTURE, No, Undergraduate, Elective, 50, 3, 1).
course(5710460, SPECIAL_TOPICS_IN_COMPUTER_ENGINEERING_INTRODUCTION_TO_ROBOTICS_FOR_COMPUTER_ENGINEERING, No, Undergraduate, Elective, 50, 3, 1).
course(5710463, INTRODUCTION_TO_NATURAL_LANGU_PROCESSING, No, Undergraduate, Elective, 50, 3, 1).
course(5710466, FUNDAMENTALS_OF_IMAGE_PROCESSING, No, Undergraduate, Elective, 50, 3, 1).
course(5710477, INTRODUCTION_TO_COMPUTER_GRAPHICS, No, Undergraduate, Elective, 115, 3, 1).
course(5710477, INTRODUCTION_TO_COMPUTER_GRAPHICS, No, Undergraduate, Elective, 90, 3, 2).
course(5710483, INTRODUCTION_TO_COMPUTER_VISION, No, Undergraduate, Elective, 53, 3, 1).
course(5710487, SPECIAL_TOPICS_IN_COMPUTER_ENGINEERING_INTRODUCTION_TO_QUANTUM_COMPUTING, No, Undergraduate, Elective, 50, 3, 1).
course(5710499, SPECIAL_TOPICS_INTRODUCTION_TO_MACHINE_LEARNING, No, Undergraduate, Must, 55, 1, 1).
course(5710501, DEEP_LEARNING, No, Graduate, Elective, 45, 3, 1).
course(5710514, DATA_MINING, No, Graduate, Elective, 25, 3, 1).
course(5710536, ADVANCED_UNIX, No, Graduate, Elective, 25, 3, 1).
course(5710540, PROGRAMMING_LANGUAGES, No, Graduate, Elective, 26, 3, 1).
course(5710562, MACHINE_LEARNING, No, Graduate, Elective, 25, 3, 1).
course(5710570, COMPUTATIONAL_GEOMETRY, No, Graduate, Elective, 25, 3, 1).
course(5710587, HIGH_DYNAMIC_RANGE_IMAGING, No, Graduate, Must, 25, 3, 1).
course(5710590, RESEARCH_METHODS_AND_ETHICS, No, Graduate, Must, 30, 3, 1).
course(5710591, GRADUATE_SEMINAR, No, Graduate, Seminar, 30, 3, 1).
course(5710778, WEB_SEARCH_ENGINE_DESIGN, No, Graduate, Elective, 25, 3, 1).
course(5710786, ROBOT_MOTION_PLANNING_AND_CONTROL, No, Graduate, Elective, 25, 3, 1).
