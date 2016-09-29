DROP TABLE IF EXISTS kildarewaterquality;

CREATE TABLE kildarewaterquality (
    kesample integer NOT NULL,
    samplelocation text NOT NULL,
    parametername character varying(25) NOT NULL,
    samplecode character varying(25) NOT NULL,
    sampledate date,
    parametervalue real,
    CONSTRAINT kildarewaterquality_pkey PRIMARY KEY (kesample)
);



INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (100, 'Church Fields Straffan', 'Ammonium', '14KE00571/14/97 WL', '2014-02-03', 0.0700000003);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (102, 'Clongowes Wood Clane', 'Ammonium', '14KE00826/14/128 WL', '2014-02-11', 0.0700000003);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (104, 'Abbeyfield Ballitore', 'Ammonium', '14KE04210/14/619 WL', '2014-07-08', 0.0799999982);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (106, 'Lullymore', 'Ammonium', '14KE07181/14/1040 WL', '2014-11-03', 0.0799999982);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (108, 'Hospital Athy', 'Ammonium', '14KE01165/14/163 WL', '2014-02-24', 0.0900000036);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (110, 'O Donnell s Centra Curragh Camp', 'Ammonium', '14KE08011/14/1154 WL', '2014-12-09', 0.150000006);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (112, 'Convent View Athy', 'Ammonium', '14KE00575/14/101 WL', '2014-02-04', 0.159999996);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (114, 'Monasterevin WTW', 'Lead', 'COV/981615/2014', '2014-01-28', 0.180000007);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (116, 'Monasterevin WTW', 'Lead', 'COV/1150773/2014', '2014-11-25', 0.189999998);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (118, 'Rathangan WTW', 'Lead', 'COV/1132781/2014', '2014-09-02', 0.209999993);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (120, 'Moyglare Village Maynooth', 'Total Chlorine', '14KE02403/14/365 WL', '2014-04-22', 0.639999986);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (122, 'Rail Park Maynooth', 'Total Chlorine', '14KE06669/14/969 WL', '2014-10-14', 0.910000026);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (124, 'Oaklawns Athy', 'Coliform Bacteria', '14KE05026/14/724 WL', '2014-08-12', 1);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (126, 'Aras Bhride Kildare Town', 'Bromate', '14KE01166/14/164 WL', '2014-02-24', 1);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (130, 'PO Moone', 'Coliform Bacteria', '14KE03356/14/522 WL', '2014-06-03', 1);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (132, 'Lios an Ri', 'Fluoride', '14KE01361/14/190 WL', '2014-03-03', 1.00999999);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (134, 'Lios an Ri', 'Fluoride', '14KE03094/14/473 WL', '2014-05-19', 1.00999999);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (136, 'Narraghmore', 'Total Organic Carbon', '14KE04187/14/613 WL', '2014-07-07', 1.04999995);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (138, 'Gormanstown', 'Total Organic Carbon', '14KE03461/14/540 WL', '2014-06-09', 1.14999998);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (140, 'Day Care Rathangan', 'Total Organic Carbon', '14KE02063/14/304 WL', '2014-04-07', 1.16999996);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (142, 'The Crossings Naas', 'Total Organic Carbon', '14KE02057/14/298 WL', '2014-04-07', 1.38999999);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (144, 'Rochford Park Kilcock', 'pH', '14KE01830/14/273 WL', '2014-03-24', 8.39999962);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (146, 'Tirmoghan Donadea', 'pH', '14KE02157/14/331 WL', '2014-04-07', 8.39999962);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (148, 'Calverstown', 'pH', '14KE08001/14/1144 WL', '2014-12-09', 8.5);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (150, 'Day Break Kilmeague', 'pH', '14KE08010/14/1153 WL', '2014-12-09', 8.5);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (152, 'Boys N.S. Kilcock', 'pH', '14KE03922/14/597 WL', '2014-06-24', 8.5);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (154, 'Clongowes Wood Clane', 'pH', '14KE06365/14/929 WL', '2014-10-06', 8.5);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (158, 'Dublin Road Athy', 'pH', '14KE07995/14/1138 WL', '2014-12-08', 8.60000038);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (160, 'Staplestown', 'pH', '14KE04041/14/603 WL', '2014-07-01', 8.60000038);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (162, 'Ballyshannon Carbury', 'pH', '14KE03092/14/471 WL', '2014-05-19', 8.69999981);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (164, 'Chambers Park Kilcock', 'pH', '14KE06668/14/968 WL', '2014-10-14', 8.69999981);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (166, 'The Scycamores Kilcock', 'pH', '14KE02401/14/364 WL', '2014-04-22', 8.69999981);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (168, 'Highfield Kilcock', 'pH', '14KE06099/14/889 WL', '2014-09-22', 8.80000019);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (170, 'Abbeyfield Kilcock', 'pH', '14KE04443/14/659 WL', '2014-07-15', 8.89999962);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (172, 'Narraghmore', 'Chloride', '14KE04187/14/613 WL', '2014-07-07', 16);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (174, 'SuperValu Monasterevin', 'Chloride', '14KE02062/14/303 WL', '2014-04-07', 17.7999992);

INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (196, 'Rathangan WTW', 'Chloride', 'COV/1132781/2014', '2014-09-02', 21.1000004);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (198, 'Fire Station Curragh Camp', 'Chloride', '14KE04964/14/714 WL', '2014-08-11', 21.2999992);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (200, 'Rathangan WTW', 'Nitrate', 'COV/1132781/2014', '2014-09-02', 21.8999996);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (202, 'Redbog Lane', 'Nitrate', '14KE06908/14/1005 WL', '2014-10-20', 22.4500008);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (204, 'O Donnell s Centra Curragh Camp', 'Nitrate', '14KE08011/14/1154 WL', '2014-12-09', 22.7099991);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (206, 'Clogherinkoe Housing', 'Nitrate', '14KE01358/14/187 WL', '2014-03-03', 23.7600002);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (210, 'PO Narraghmore', 'Nitrate', '14KE01939/14/283 WL', '2014-04-01', 23.9799995);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (212, 'Redbog', 'Nitrate', '14KE03732/14/579 WL', '2014-06-17', 24.2600002);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (214, 'Cutbush Suncroft', 'Chloride', '14KE04963/14/713 WL', '2014-08-11', 24.7000008);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (216, 'Redbog Lane', 'Nitrate', '14KE05199/14/752 WL', '2014-08-19', 25.6700001);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (218, 'Hospital Athy', 'Chloride', '14KE01165/14/163 WL', '2014-02-24', 25.8999996);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (220, 'Health Centre Athy', 'Chloride', '14KE06363/14/927 WL', '2014-10-06', 33.9000015);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (222, 'NS Castlemitchell Churchtown.', 'Nitrate', '14KE01357/14/186 WL', '2014-03-04', 34.2299995);

INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (176, 'Fire Station Curragh Camp', 'Nitrate', '14KE04964/14/714 WL', '2014-08-11', 18.2199993);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (178, 'Aras Bhride Kildare Town', 'Chloride', '14KE01166/14/164 WL', '2014-02-24', 18.5);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (180, 'PO Narraghmore', 'Nitrate', '14KE00147/14/24 WL', '2014-01-14', 18.6599998);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (182, 'Day Care Rathangan', 'Chloride', '14KE02063/14/304 WL', '2014-04-07', 19.2000008);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (188, 'N.S. Straffan', 'Chloride', '14KE06364/14/928 WL', '2014-10-06', 19.5);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (190, 'Redbog Lane', 'Nitrate', '14KE02159/14/332 WL', '2014-04-08', 19.8500004);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (192, 'Redbog', 'Nitrate', '14KE02582/14/398 WL', '2014-04-28', 19.9599991);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (194, 'Curragh Camp', 'Nitrate', '14KE05916/14/863 WL', '2014-09-16', 20.1900005);

INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (224, 'Castlemitchell Churchtown', 'Nitrate', '14KE04046/14/608 WL', '2014-06-30', 36.3400002);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (226, 'Castlemitchell Churchtown', 'Nitrate', '14KE05028/14/726 WL', '2014-08-12', 38.0200005);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (228, 'Ballyroe', 'Nitrate', '14KE03354/14/520 WL', '2014-06-03', 38.9900017);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (230, 'Ballyroe', 'Nitrate', '14KE06677/14/975 WL', '2014-10-14', 39.3499985);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (232, 'NS Castlemitchell Churchtown.', 'Nitrate', '14KE06675/14/973 WL', '2014-10-14', 39.4700012);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (234, 'Community Centre Castledermot', 'Sulphate', '14KE04965/14/715 WL', '2014-08-11', 46.5);

INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (5214, 'Cutbush Suncroft', 'Chloride', '14KE049163/14/713 WL', '2014-09-21', 124.7000008);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (5216, 'Redbog Lane', 'Nitrate', '14KE051199/14/752 WL', '2014-08-29', 125.6700001);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (5218, 'Hospital Athy', 'Chloride', '14KE011615/14/163 WL', '2014-08-14', 125.8999996);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (5220, 'Health Centre Athy', 'Chloride', '14KE063631/14/927 WL', '2014-10-16', 133.9000015);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (5222, 'NS Castlemitchell Churchtown.', 'Nitrate', '14KE01357/14/186 WL', '2014-03-14', 34.2299995);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (284, 'Curragh Plains Kildare', 'Nitrate', '14KE05915/14/862 WL', '2014-09-16', NULL);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (286, 'Cutbush Suncroft', 'Nitrate', '14KE01364/14/193 WL', '2014-03-04', NULL);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (288, 'Cutbush Suncroft', 'Nitrate', '14KE05917/14/864 WL', '2014-09-16', NULL);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (290, 'Health Centre Athy', 'Lead', '14KE06363/14/927 WL', '2014-10-06', NULL);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (292, 'Hospital Athy', 'Lead', '14KE01165/14/163 WL', '2014-02-24', NULL);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (294, 'Cutbush Suncroft', 'Turbidity (at tap)', '14KE01364/14/193 WL', '2014-03-04', NULL);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (296, 'Cutbush Suncroft', 'Cadmium', '14KE04963/14/713 WL', '2014-08-11', NULL);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (298, 'Cutbush Suncroft', 'Chromium', '14KE04963/14/713 WL', '2014-08-11', NULL);

INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (236, 'Leinster St Maynooth', 'Iron', '14KE06097/14/888 WL', '2014-09-22', 113);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (238, 'Lullymore', 'Iron', '14KE07181/14/1040 WL', '2014-11-03', 115);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (240, 'NS Athgarvan', 'Iron', '14KE03914/14/591 WL', '2014-06-23', 131);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (244, 'Hospital Athy', 'Sulphate', '14KE01165/14/163 WL', '2014-02-24', 140.699997);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (246, 'Glendara Kill', 'Conductivity', '14KE05907/14/854 WL', '2014-09-15', 170);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (248, 'NS Sallins', 'Conductivity', '14KE07566/14/1093 WL', '2014-11-18', 170);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (250, 'Dublin Rd Naas', 'Iron', '14KE00829/14/131 WL', '2014-02-11', 186);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (252, 'Rushe Ballindoolin GWS', 'Conductivity', '14KE07699/14/1104 WL', '2014-11-24', 703);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (254, 'Monasterevin WTW', 'Conductivity', 'COV/981615/2014', '2014-01-28', 707);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (256, 'PO Narraghmore', 'Conductivity', '14KE01939/14/283 WL', '2014-04-01', 718);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (258, 'Ballyroe', 'Conductivity', '14KE03354/14/520 WL', '2014-06-03', 724);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (260, 'SuperValu Monasterevin', 'Conductivity', '14KE02062/14/303 WL', '2014-04-07', 727);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (262, 'Ballyroe', 'Conductivity', '14KE06677/14/975 WL', '2014-10-14', 728);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (264, 'Clonuff', 'Conductivity', '14KE03726/14/574 WL', '2014-06-16', 735);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (128, 'Kilmeade', 'Coliform Bacteria', '14KE03115/14/480 WL', NULL, 1);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (156, 'Rathcoffey', 'pH', '14KE03095/14/474 WL', NULL, 8.5);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (208, 'PO Narraghmore', 'Nitrate', '14KE03112/14/478 WL', NULL, 23.9200001);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (184, 'Leisure Centre Curragh Camp', 'Nitrate', '14KE02946/14/452 WL', NULL, 19.2399998);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (186, 'Redbog Lane', 'Nitrate', '14KE02934/14/447 WL', NULL, 19.4599991);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (242, 'Tully West Kildare', 'Iron', '14KE02941/14/450 WL', NULL, 137);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (266, 'Community Centre Castledermot', 'Chloride', '14KE04965/14/715 WL', '2014-08-11', NULL);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (268, 'Behan Eurospar Kill', 'Chloride', '14KE04186/14/612 WL', '2014-07-07', NULL);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (270, 'Clongowes Wood Clane', 'Chloride', '14KE06365/14/929 WL', '2014-10-06', NULL);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (272, 'The Crossings Naas', 'Chloride', '14KE02057/14/298 WL', '2014-04-07', NULL);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (274, 'Tirmoghan Donadea', 'Chloride', '14KE03458/14/537 WL', '2014-06-09', NULL);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (276, 'Gormanstown', 'Chloride', '14KE03461/14/540 WL', '2014-06-09', NULL);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (278, 'Conroy Park Kilcullen', 'Nitrate', '14KE03357/14/523 WL', '2014-06-03', NULL);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (280, 'Coolaghknock Gardens Kildare', 'Nitrate', '14KE04446/14/661 WL', '2014-07-15', NULL);

INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (1141, 'Monasterevin WTW', 'Lead', 'COV/981615/2014', '2014-11-28', 1.180000007);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (1161, 'Monasterevin NS', 'Lead', 'COV/1150773/2014', '2014-11-25', 1.189999998);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (1181, 'Rathangan NS', 'Lead', 'COV/11321781/2014', '2014-09-12', 1.209999993);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (1201, 'South Campus Maynooth', 'Total Chlorine', '14KE12403/14/1365 WL', '2014-04-28', 1.639999986);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (1221, 'North Campus Maynooth', 'Total Chlorine', '14KE06669/14/9169 WL', '2014-10-21', 1.910000026);

INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (52114, 'Cutbush Suncroft', 'Chloride', '14KE049163/14/713 WL', '2014-09-21', 124.7000008);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (52116, 'Redbog Lane', 'Nitrate', '14KE051199/14/752 WL', '2014-08-29', 125.6700001);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (52181, 'Hospital Athy', 'Chloride', '14KE011615/14/163 WL', '2014-08-14', 125.8999996);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (52210, 'Health Centre Athy', 'Chloride', '14KE063631/14/927 WL', '2014-10-16', 133.9000015);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (52212, 'NS Castlemitchell Churchtown.', 'Nitrate', '14KE01357/14/186 WL', '2014-03-14', 34.2299995);


INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (8290, 'Health Centre Athy', 'Lead', '14KE06363/14/713 WL', '2014-10-16', 14.5);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (8292, 'Hospital Athy', 'Lead', '14KE01165/14/163 WL', '2014-02-14', 45.7);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (8294, 'Cutbush Suncroft', 'Turbidity (at tap)', '14KE01364/14/193 WL', '2014-12-04', 32.0);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (8296, 'Cutbush Suncroft', 'Cadmium', '14KE04963/14/713 WL', '2014-08-19', 67.89);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (8298, 'Cutbush Suncroft', 'Chromium', '14KE04963/14/713 WL', '2014-08-19',78);

INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (11264, 'Clonuff', 'Conductivity', '14KE03726/14/574 WL', '2014-03-16', 7315);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (11128, 'Kilmeade', 'Coliform Bacteria', '14KE03115/14/480 WL', '2014-03-16', 11);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (11156, 'Rathcoffey', 'pH', '14KE03095/14/474 WL', '2014-08-16', 18.5);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (11208, 'PO Narraghmore', 'Nitrate', '14KE03112/14/478 WL', '2014-06-26', 213.9200001);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (11184, 'Leisure Centre Curragh Camp', 'Nitrate', '14KE02946/14/452 WL', '2014-06-26', 119.2399998);
INSERT INTO kildarewaterquality (kesample, samplelocation, parametername, samplecode, sampledate, parametervalue) VALUES (12184, 'Leisure Centre Curragh Camp', 'Bromate', '14KE02946/14/453 WL', '2014-06-16', 2.2399998);



select * from kildarewaterquality order by sampledate asc;
