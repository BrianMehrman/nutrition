CREATE TABLE `data_srcs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `DataSrc_ID` varchar(255) DEFAULT NULL,
  `Authors` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Year` varchar(255) DEFAULT NULL,
  `Journal` varchar(255) DEFAULT NULL,
  `Vol_City` varchar(255) DEFAULT NULL,
  `Issue_State` varchar(255) DEFAULT NULL,
  `Start_Page` varchar(255) DEFAULT NULL,
  `End_Page` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=599 DEFAULT CHARSET=latin1;

CREATE TABLE `datasrclns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `NDB_No` varchar(255) DEFAULT NULL,
  `Nutr_No` varchar(255) DEFAULT NULL,
  `DataSrc_ID` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=171156 DEFAULT CHARSET=latin1;

CREATE TABLE `deriv_cds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Deriv_Cd` varchar(255) DEFAULT NULL,
  `Deriv_Desc` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

CREATE TABLE `fd_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `FdGrp_Cd` varchar(255) DEFAULT NULL,
  `FdGrp_Desc` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

CREATE TABLE `food_des` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `NDB_No` varchar(255) DEFAULT NULL,
  `FdGrp_Cd` varchar(255) DEFAULT NULL,
  `Long_Desc` varchar(255) DEFAULT NULL,
  `Shrt_Desc` varchar(255) DEFAULT NULL,
  `ComName` varchar(255) DEFAULT NULL,
  `ManufacName` varchar(255) DEFAULT NULL,
  `Survey` varchar(255) DEFAULT NULL,
  `Ref_desc` varchar(255) DEFAULT NULL,
  `Refuse` int(11) DEFAULT NULL,
  `SciName` varchar(255) DEFAULT NULL,
  `N_Factor` float DEFAULT NULL,
  `Pro_Factor` float DEFAULT NULL,
  `Fat_Factor` float DEFAULT NULL,
  `CHO_Factor` float DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47443 DEFAULT CHARSET=latin1;

CREATE TABLE `footnotes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `NDB_No` varchar(255) DEFAULT NULL,
  `Footnt_No` varchar(255) DEFAULT NULL,
  `Footnt_Typ` varchar(255) DEFAULT NULL,
  `Nutr_No` varchar(255) DEFAULT NULL,
  `Footnt_Txt` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=523 DEFAULT CHARSET=latin1;

CREATE TABLE `imports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datatype` varchar(255) DEFAULT NULL,
  `processed` int(11) DEFAULT '0',
  `csv_file_name` varchar(255) DEFAULT NULL,
  `csv_content_type` varchar(255) DEFAULT NULL,
  `csv_file_size` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `langdescs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Factor_Code` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=775 DEFAULT CHARSET=latin1;

CREATE TABLE `languals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `NDB_No` varchar(255) DEFAULT NULL,
  `Factor_Code` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40206 DEFAULT CHARSET=latin1;

CREATE TABLE `nut_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `NDB_No` varchar(255) DEFAULT NULL,
  `Nutr_No` varchar(255) DEFAULT NULL,
  `Nutr_Val` float DEFAULT NULL,
  `Num_Data_Pts` float DEFAULT NULL,
  `Std_Error` float DEFAULT NULL,
  `Src_Cd` varchar(255) DEFAULT NULL,
  `Deriv_Cd` varchar(255) DEFAULT NULL,
  `Ref_NDB_No` varchar(255) DEFAULT NULL,
  `Add_Nutr_Mark` varchar(255) DEFAULT NULL,
  `Num_Studies` int(11) DEFAULT NULL,
  `Min` float DEFAULT NULL,
  `Max` float DEFAULT NULL,
  `DF` int(11) DEFAULT NULL,
  `Low_EB` float DEFAULT NULL,
  `Up_EB` float DEFAULT NULL,
  `Stat_cmt` varchar(255) DEFAULT NULL,
  `AddMod_Date` varchar(255) DEFAULT NULL,
  `CC` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=940975 DEFAULT CHARSET=latin1;

CREATE TABLE `nutr_defs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nutr_No` varchar(255) DEFAULT NULL,
  `Units` varchar(255) DEFAULT NULL,
  `Tagname` varchar(255) DEFAULT NULL,
  `NutrDesc` varchar(255) DEFAULT NULL,
  `Num_Dec` varchar(255) DEFAULT NULL,
  `SR_Order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=latin1;

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `src_cds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Src_Cd` varchar(255) DEFAULT NULL,
  `SrcCd_Desc` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

CREATE TABLE `weights` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `NDB_No` varchar(255) DEFAULT NULL,
  `Seq` varchar(255) DEFAULT NULL,
  `Amount` float DEFAULT NULL,
  `Msre_Desc` varchar(255) DEFAULT NULL,
  `Gm_Wgt` float DEFAULT NULL,
  `Num_Data_Pts` int(11) DEFAULT NULL,
  `Std_Dev` float DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13818 DEFAULT CHARSET=latin1;

INSERT INTO schema_migrations (version) VALUES ('20111103013429');

INSERT INTO schema_migrations (version) VALUES ('20111104053132');

INSERT INTO schema_migrations (version) VALUES ('20111104053241');

INSERT INTO schema_migrations (version) VALUES ('20111104053400');

INSERT INTO schema_migrations (version) VALUES ('20111104053609');

INSERT INTO schema_migrations (version) VALUES ('20111104053943');

INSERT INTO schema_migrations (version) VALUES ('20111104054104');

INSERT INTO schema_migrations (version) VALUES ('20111104054156');

INSERT INTO schema_migrations (version) VALUES ('20111104054235');

INSERT INTO schema_migrations (version) VALUES ('20111104054558');

INSERT INTO schema_migrations (version) VALUES ('20111104054730');

INSERT INTO schema_migrations (version) VALUES ('20111104054827');

INSERT INTO schema_migrations (version) VALUES ('20111104055013');

INSERT INTO schema_migrations (version) VALUES ('20111118143715');