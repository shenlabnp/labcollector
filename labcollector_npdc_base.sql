--

INSERT INTO `admin` (`id`, `admin`, `password`, `user_type`, `contact_id`, `group_type`, `count_failed`, `ip_restriction`, `main_group_limit`, `suspended`, `temporary_pass`, `archived`, `pass_date`, `badge_number`) VALUES
(1, 'superadmin', 'M:&FENZ|AWWbQ:I', 1, 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'npdcadmin', 'M:&FENZ|AWRWE%', 2, 2, 0, 0, NULL, NULL, NULL, NULL, NULL, '2022-06-13 17:13:34', NULL),
(3, 'limsadmin', 'M:&FENZ|AWPPNI', 0, 3, 0, 0, NULL, NULL, NULL, NULL, NULL, '2022-06-13 17:14:00', NULL),
(4, 'guest', 'HK/KX', 0, 4, 0, 0, NULL, NULL, NULL, NULL, NULL, '2022-06-13 17:15:58', NULL);

--

INSERT INTO `contacts` (`count`, `name`, `lab`, `address`, `city`, `zip`, `country`, `tel`, `email`, `organisms`, `dummyimage`, `dummyimage_text`, `dummyimage_background`, `language`) VALUES
(1, 'Super Admin', '', '', '', '', '', '', 'super.admin@lims.shenlab', NULL, 0x89504e470d0a1a0a0000000d49484452000000500000005004030000007c3fef9e0000001b504c54459ba293ffffffa7ada0b4b9aec0c4bbe6e7e4f2f3f1d9dcd6cdd0c9cc5f670d000000097048597300000ec400000ec401952b0e1b0000016e494441544889ed944d6bc2401086375f35c7bed6448f9152e8d150a957457bd77f604aa13d1a283d27d0427f7677f64356d911af857d0f71575f66e69999284450505090d4fdfca9bac6f702a0fc34d601d031be07284df46d0aecfdbeb8d1c6b1beae803bbf51e61aaf375fd6b83bc63ed7142595f7f8aee3a340e937ae4caa443d538c7698798d3d6e9d5b86e10a07c6b83f29643b65b04f23f6e86e18ec1a23e7b64395db069c2982537c2c9113063b871332a726360cb66cf14765ceaabe96c1cee4fc8aa53e2be2fa04cf514fdb3333c70355cd4c3bee8f3bd16049d3f7630bbd915bf9990082c608ce28163a648e8232004bd629d7b022e8e257aa61b0854ed711af1183ad31b6d441a3116f6ca9838d3516978d892a544db5ba987a60d621f162a7f6b74e424f9c82cf15bdd1f39996adb6b36b31f41831fe9effa8fa5bfb12d43eecc880be0a01dbe8c8879d9986540e43e6c55e34662107c76548fdff54f17cb3f67c1d1414f4dff407a21d326b8b5ae7ef0000000049454e44ae426082, 'FFF', '9ba293', NULL),
(2, 'NPDC Admin', '', '', '', '', '', '', 'npdc.admin@lims.shenlab', NULL, 0x89504e470d0a1a0a0000000d49484452000000500000005004030000007c3fef9e0000001b504c5445cf3c3bffffffe79d9df9e6e6d55453db6c6cedb5b5f3cecee18584d0e7424e000000097048597300000ec400000ec401952b0e1b00000153494441544889edd44d6ec230100560c80fb0ec6b68936552a9fb58425d278bee9b1be01b901b3437ef8c9d310d9e1be0d944824fc6efd961b74b9326cdd34f878b7b96c0e03f3900ad022dea073802bd0af1b3850bf0a6c37e0b67e05587cd0616a851e9b0dac0139ad9ef26822e6480479c175c7578fe0f47dc462db6c5972b28c00e6daec5b6b818de528033860cef1aec17fe258105652bb5d804732e4860c6251a2536415a6008d0edcf2ab109d2b6da005de2092f2a1ca920811d2fb6576233cca8208106bf7cd3e2d80c0bdafc0ae9b1e363840ae966f52bcc5cfb05785d0552412bcc517fd09838b6f56d57df1e4e58278aed2015f4e9a115d8e87044e3a11158eb3043e5e0fd20e5c578806ea5810bf4d7a18c63af70f13097f7cae0a6c3dcc349ceceba6bafc0d2432b2fc114c596afac8390a2f7516c8123c37b8663145ba02be4102ec349ffa74a9326cd73cd1f5eab3ebeee9b04890000000049454e44ae426082, 'FFF', 'cf3c3b', NULL),
(3, 'LIMS Admin', '', '', '', '', '', '', 'lims.admin@lims.shenlab', NULL, 0x89504e470d0a1a0a0000000d49484452000000500000005004030000007c3fef9e0000001b504c544503aa7affffff81d4bc22b48aa0dfcdc0e9dddff4ee61c9ab42bf9bac6ad8da000000097048597300000ec400000ec401952b0e1b000000fb494441544889edd43b1282301804e0288894ac8a5a1a0a6ba96cc90dc4197bb88114f67273030331d15f92de6cc5e38361f380311f1f1f1f8eb5712eb0a2a13061006c9de012c0d3052e243cb8c01c252a17d8e081bd0b2c71c6c6010648831fb54d3897a358d3b54db890671c851de6b2724bd73621978318d1b54dd87d5f48d73660df3806ac70debf8c9e6d0346d8f5970a1b6c91b06e1a131be4b8b06e8c763658e39a65d991acad43d9778805860adea761a4e0651ab6c3f1e7cefc8262580e2d555b87f5b0af22a493301ee74e963a1130bdf529e4fdad7ae2bbb6188b566ca6069aaaadc1778792a8ad41a11643f3eb4fe5e3e3f35779019de0297d808f47cf0000000049454e44ae426082, 'FFF', '03aa7a', NULL),
(4, 'Guest', '', '', '', '', '', '', 'guest@lims.shenlab', NULL, 0x89504e470d0a1a0a0000000d49484452000000500000005004030000007c3fef9e0000001b504c54450698c0ffffff25a4c744b1cf82cbdfc0e5efdff2f7a1d8e763bed79234e35b000000097048597300000ec400000ec401952b0e1b000000ed494441544889edd43d0bc2301006e068fd5a0fb538561471b47eec558a385a10badac11fa0c55d14c19fed2551dbe9ee069dcc3b840e4fdb237789522e2e2eff91c16c1a08d83001cc61c5b905d8b419d70419ac6668fcf49c7170842ed70fe39c86f8c11353dcbbc28ec4a9102012c1237445aeca6f9f4d0b602b827569890d8089085600709dc7261702f6c1c775699bbd2760f823686acc48686b34e120c860691f6958ea0c0d6b45af69589a1e1aaae4338f0c2c269c8178667a22a88f752481fadffed5be41434f8f431ae34dc1407355f0d3a3b37e393f62a0ba1bb7131c1eefb1b9053c737171f9469ed89128be6d6d6eaa0000000049454e44ae426082, 'FFF', '0698c0', NULL);

--

INSERT INTO `field_masks` (`id`, `field_name`, `module_table`, `mask_val`) VALUES
(1, 'name', 'npdc_strains', 'NPDC000000'),
(2, 'name', 'npdc_gdnas', 'Category_Plate_Well'),
(3, 'name', 'npdc_sequencing_batches', 'project_batch');

--

INSERT INTO `modules` (`id`, `name`, `short_name`, `alternate_name`, `table_name`, `page`, `icon`, `sort_order`, `home`, `remote`, `remote_keeper`, `remote_show_userlist`, `remote_protect`, `remote_captcha`, `nofity`) VALUES
(14, 'NPDC: Strains', 'XS', '', 'npdc_strains', 'cmodule.php?cmodule=XS', '1green.png', 14, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'NPDC: Liquid Growth', 'XL', '', 'npdc_liquid_growth', 'cmodule.php?cmodule=XL', '5green.png', 15, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'NPDC: gDNAs', 'XG', '', 'npdc_gdnas', 'cmodule.php?cmodule=XG', '3green.png', 16, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'NPDC: Sequencing Batches', 'X2', '', 'npdc_sequencing_batches', 'cmodule.php?cmodule=X2', '108.png', 18, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'NPDC: Sequencing Samples', 'X3', '', 'npdc_sequencing_samples', 'cmodule.php?cmodule=X3', '108.png', 19, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'NPDC: Genome Sequences', 'XX', '', 'npdc_genome_sequences', 'cmodule.php?cmodule=XX', '124.png', 20, 1, NULL, NULL, NULL, NULL, NULL, NULL);

--

INSERT INTO `modules_custom` (`field_id`, `field_name`, `size`, `field_type`, `module_table`, `searchable`, `filter`, `sort_order`, `field_cat`, `field_cat_val`, `analysis_tab`, `link_limit`, `mandatory`, `field_color`, `search_head`, `helper_text`, `validation`, `tolerance`, `validation_ref_field`, `postfix`, `alert_active`, `alert_start`, `alert_end`, `alert_value`, `min`, `max`, `min2`, `max2`, `readonly`, `encrypted`, `visible`, `uniqueness`, `associated_module_table`, `summary_line_width`, `field_sec_cat_val`) VALUES
(3, 'collection', '50', 'field', 'npdc_strains', 1, 1, 4, 0, 0, 0, NULL, 0, '', 0, 'original collection library name', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(4, 'alt_id', '50', 'field', 'npdc_strains', 1, 0, 5, 0, 0, 0, NULL, 0, '', 0, 'original collection id', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(5, 'isolation_date', NULL, 'date', 'npdc_strains', 1, 0, 6, 0, 0, 0, NULL, 0, '', 0, 'original isolation date (if known, or collection date)', NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL, NULL),
(6, 'isolation_country', '50', 'field', 'npdc_strains', 1, 0, 7, 0, 0, 0, NULL, 0, '', 0, 'country where the strain is isolated (or in some cases, library\'s location)', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(7, 'category', '50', 'field', 'npdc_strains', 0, 0, 3, 0, 0, 0, NULL, 0, '', 0, 'strain category', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(8, 'genus', '50', 'field', 'npdc_strains', 1, 0, 9, 0, 0, 0, NULL, 0, '', 0, 'genus information as in the historical metadata (empirically derived)', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(9, 'species', '50', 'field', 'npdc_strains', 1, 0, 10, 0, 0, 0, NULL, 0, '', 0, 'species information as in the historical metadata (empirically derived)', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(10, 'comment_type_strain', '50', 'field', 'npdc_strains', 1, 0, 11, 0, 0, 0, NULL, 0, '', 0, 'if there is any type strain identifier, list here with commas', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(11, 'comment_original', '50', 'field', 'npdc_strains', 0, 0, 12, 0, 0, 0, NULL, 0, '', 0, 'original comments from the historical metadata', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(12, 'npdc_id', '100', 'autocomplete', 'npdc_liquid_growth', 1, 0, 3, 0, 0, 0, NULL, 0, '', 0, '', 'RECORD_LOCKED', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(13, 'media', '50', 'field', 'npdc_liquid_growth', 1, 0, 5, 0, 0, 0, NULL, 0, '', 0, 'media used for liquid growth', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(14, 'antibiotics', '50', 'field', 'npdc_liquid_growth', 1, 0, 6, 0, 0, 0, NULL, 0, '', 0, 'antibiotics used for liquid growth', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(15, 'inoculation_date', NULL, 'date', 'npdc_liquid_growth', 1, 0, 7, 0, 0, 0, NULL, 0, '', 0, 'date inoculated', NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL, NULL),
(16, 'inoculation_time', '50', 'select', 'npdc_liquid_growth', 1, 0, 8, 0, 0, 0, NULL, 0, '', 0, 'time inoculated (AM/PM)', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(17, 'harvest_date', NULL, 'date', 'npdc_liquid_growth', 1, 0, 9, 0, 0, 0, NULL, 0, '', 0, 'date harvested', NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL, NULL),
(18, 'harvest_time', NULL, 'select', 'npdc_liquid_growth', 1, 0, 10, 0, 0, 0, NULL, 0, '', 0, 'time harvested (AM/PM)', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(19, 'growth', '50', 'select', 'npdc_liquid_growth', 0, 0, 4, 0, 0, 0, NULL, 1, '', 0, 'growth rate (0/1/2/3), C for contamination, F for fungal, X for others (put in comment)', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(20, 'picture', '50', 'field', 'npdc_liquid_growth', 0, 0, 11, 0, 0, 0, NULL, 0, '', 0, 'picture number in dropbox (you can use only number e.g., \"1\" or with specific order of tubes e.g., \"1-1\")', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(21, 'npdc_id', '100', 'autocomplete', 'npdc_gdnas', 1, 0, 3, 0, 0, 0, NULL, 1, '', 0, '', 'RECORD_LOCKED', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL, NULL),
(22, 'category', '50', 'select', 'npdc_gdnas', 1, 0, 4, 0, 0, 0, NULL, 0, '', 0, 'default category = NPDC', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(23, 'plate', '5,0', 'decimal', 'npdc_gdnas', 0, 0, 5, 0, 0, 0, NULL, 0, '', 0, 'plate number (numeric)', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(24, 'well', '50', 'field', 'npdc_gdnas', 1, 0, 6, 0, 0, 0, NULL, 0, '', 0, 'well id', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(25, 'isolation_date', NULL, 'date', 'npdc_gdnas', 1, 0, 7, 0, 0, 0, NULL, 0, '', 0, 'date isolated', NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL, NULL),
(26, 'nanodrop_concentration', '6,2', 'decimal', 'npdc_gdnas', 0, 0, 8, 0, 0, 0, NULL, 0, '', 0, 'in ng/ul', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(27, 'nanodrop_a260280', '6,2', 'decimal', 'npdc_gdnas', 0, 0, 9, 0, 0, 0, NULL, 0, '', 0, 'in ratio', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(28, 'nanodrop_a260230', '6,2', 'decimal', 'npdc_gdnas', 0, 0, 10, 0, 0, 0, NULL, 0, '', 0, 'in ratio', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(29, 'quantus_concentration', '6,2', 'decimal', 'npdc_gdnas', 0, 0, 11, 0, 0, 0, NULL, 0, '', 0, 'in ng/ul', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(30, 'person_in_charge', '50', 'field', 'npdc_gdnas', 1, 0, 12, 0, 0, 0, NULL, 0, '', 0, 'name of person doing the isolation', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(31, 'project_name', '50', 'select', 'npdc_sequencing_batches', 1, 0, 3, 0, 0, 0, NULL, 1, '', 0, 'project name', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(32, 'batch_name', '50', 'field', 'npdc_sequencing_batches', 1, 0, 4, 0, 0, 0, NULL, 1, '', 0, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(33, 'person_in_charge', '50', 'field', 'npdc_sequencing_batches', 0, 0, 5, 0, 0, 0, NULL, 1, '', 0, 'name of the person in charge for the submission of the batch', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(34, 'submission_date', NULL, 'date', 'npdc_sequencing_batches', 0, 0, 6, 0, 0, 0, NULL, 1, '', 0, 'date samples submitted for sequencing', NULL, NULL, NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(35, 'finished', '50', 'yes_no', 'npdc_sequencing_batches', 0, 0, 7, 0, 0, 0, NULL, 1, '', 0, 'mark finished when all sequencing is done', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL, NULL),
(36, 'sequencing_batch', '100', 'autocomplete', 'npdc_sequencing_samples', 0, 0, 3, 0, 0, 0, NULL, 1, '', 0, '', 'RECORD_LOCKED', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL, NULL),
(37, 'gdna', '100', 'autocomplete', 'npdc_sequencing_samples', 0, 0, 4, 0, 0, 0, NULL, 1, '', 0, 'gdna identifier', 'RECORD_LOCKED', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL, NULL),
(38, 'quantus_concentration', '6,2', 'decimal', 'npdc_sequencing_samples', 0, 0, 5, 0, 0, 0, NULL, 0, '', 0, 'in ng/ul', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(39, 'gdna_used_up', '50', 'yes_no', 'npdc_sequencing_samples', 0, 0, 6, 0, 0, 0, NULL, 1, '', 0, 'is all gDNA being used up?', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL, NULL),
(40, 'sample_name', '100', 'autocomplete', 'npdc_genome_sequences', 0, 0, 3, 0, 0, 0, NULL, 1, '', 0, '', 'RECORD_LOCKED', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL, NULL),
(41, 'assembly_status', '50', 'select', 'npdc_genome_sequences', 0, 0, 4, 0, 0, 0, NULL, 1, '', 0, '-1 = failed; 0 = pending; 1 = assembled', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(42, 'qc_status', '50', 'select', 'npdc_genome_sequences', 0, 0, 5, 0, 0, 0, NULL, 1, '', 0, '-1 = failed; 0 = pending; 1 = passed', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(43, 'annotation_status', '50', 'select', 'npdc_genome_sequences', 0, 0, 6, 0, 0, 0, NULL, 1, '', 0, '-1 = failed; 0 = pending; 1 = annotated', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL, NULL),
(44, 'gtdb_phylum', '50', 'field', 'npdc_genome_sequences', 1, 0, 7, 0, 0, 0, NULL, 0, '', 0, 'phylum based on GTDB analysis', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(45, 'gtdb_genus', '50', 'field', 'npdc_genome_sequences', 0, 0, 8, 0, 0, 0, NULL, 0, '', 0, 'genus based on GTDB analysis', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(46, 'gtdb_species', '50', 'field', 'npdc_genome_sequences', 0, 0, 9, 0, 0, 0, NULL, 0, '', 0, 'species based on gtdb analysis', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(47, 'num_contigs', '7,0', 'decimal', 'npdc_genome_sequences', 0, 0, 10, 0, 0, 0, NULL, 0, '', 0, 'number of contigs in the assembly', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(48, 'size', '12,0', 'decimal', 'npdc_genome_sequences', 0, 0, 11, 0, 0, 0, NULL, 0, '', 0, 'total genome size in bp', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(49, 'n50', '4,4', 'decimal', 'npdc_genome_sequences', 0, 0, 12, 0, 0, 0, NULL, 0, '', 0, 'genomes N50', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(50, 'reads_count', '12,0', 'decimal', 'npdc_genome_sequences', 0, 0, 13, 0, 0, 0, NULL, 0, '', 0, 'number of reads', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(51, 'reads_size', '20,0', 'decimal', 'npdc_genome_sequences', 0, 0, 14, 0, 0, 0, NULL, 0, '', 0, 'total reads size in bp', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL),
(52, 'isolation_region', '50', 'field', 'npdc_strains', 0, 0, 8, 0, 0, 0, NULL, 0, '', 0, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'Y', 0, NULL, NULL, NULL);

--

INSERT INTO `modules_custom_field_legends` (`id`, `custom_legend`, `custom_field_id`, `lang`) VALUES
(1, 'npdc_id', 1, 'EN'),
(2, 'test', 2, 'EN'),
(3, 'Collection', 3, 'EN'),
(4, 'Alt ID', 4, 'EN'),
(5, 'Isolation Date', 5, 'EN'),
(6, 'Isolation Country', 6, 'EN'),
(7, 'Category', 7, 'EN'),
(8, 'Genus', 8, 'EN'),
(9, 'Species', 9, 'EN'),
(10, 'Comment Type Strain', 10, 'EN'),
(11, 'Comment Original', 11, 'EN'),
(12, 'NPDC ID', 12, 'EN'),
(13, 'Media', 13, 'EN'),
(14, 'Antibiotics', 14, 'EN'),
(15, 'Inoculation Date', 15, 'EN'),
(16, 'Inoculation Time', 16, 'EN'),
(17, 'Harvest Date', 17, 'EN'),
(18, 'Harvest Time', 18, 'EN'),
(19, 'Growth', 19, 'EN'),
(20, 'Picture', 20, 'EN'),
(21, 'NPDC ID', 21, 'EN'),
(22, 'Category', 22, 'EN'),
(23, 'Plate', 23, 'EN'),
(24, 'Well', 24, 'EN'),
(25, 'Isolation Date', 25, 'EN'),
(26, 'Nanodrop Concentration', 26, 'EN'),
(27, 'Nanodrop A260/280', 27, 'EN'),
(28, 'Nanodrop A260/230', 28, 'EN'),
(29, 'Quantus Concentration', 29, 'EN'),
(30, 'Person in Charge', 30, 'EN'),
(31, 'Project Name', 31, 'EN'),
(32, 'Batch Name', 32, 'EN'),
(33, 'Person in Charge', 33, 'EN'),
(34, 'Submission Date', 34, 'EN'),
(35, 'Finished', 35, 'EN'),
(36, 'Sequencing Batch', 36, 'EN'),
(37, 'gDNA', 37, 'EN'),
(38, 'Quantus Concentration', 38, 'EN'),
(39, 'gDNA used up', 39, 'EN'),
(40, 'Sample Name', 40, 'EN'),
(41, 'Assembly Status', 41, 'EN'),
(42, 'QC Status', 42, 'EN'),
(43, 'Annotation Status', 43, 'EN'),
(44, 'GTDB Phylum', 44, 'EN'),
(45, 'GTDB Genus', 45, 'EN'),
(46, 'GTDB species', 46, 'EN'),
(47, 'Num Contigs', 47, 'EN'),
(48, 'Size', 48, 'EN'),
(49, 'N50', 49, 'EN'),
(50, 'Reads Count', 50, 'EN'),
(51, 'Reads Size', 51, 'EN'),
(52, 'Isolation Region', 52, 'EN');

--

INSERT INTO `modules_custom_values` (`val_id`, `value`, `field_id_link`, `default_val`, `active`, `value_color`) VALUES
(1, 'npdc_strains', 12, NULL, 1, NULL),
(2, 'AM', 16, NULL, 1, NULL),
(3, 'PM', 16, NULL, 1, NULL),
(4, 'npdc_strains', 21, NULL, 1, NULL),
(5, 'NPDC', 22, NULL, 1, NULL),
(6, 'TSRI', 22, NULL, 1, NULL),
(7, 'Dummy', 22, NULL, 1, NULL),
(8, 'Yes', 35, NULL, 1, NULL),
(9, 'No', 35, NULL, 1, NULL),
(10, 'npdc_sequencing_batches', 36, NULL, 1, NULL),
(11, 'npdc_gdnas', 37, NULL, 1, NULL),
(12, 'Yes', 39, NULL, 1, NULL),
(13, 'No', 39, NULL, 1, NULL),
(14, 'npdc_sequencing_samples', 40, NULL, 1, NULL),
(15, '1', 19, NULL, 1, NULL),
(16, '2', 19, NULL, 1, NULL),
(17, '3', 19, NULL, 1, NULL),
(18, 'F', 19, NULL, 1, NULL),
(19, 'X', 19, NULL, 1, NULL),
(20, 'AM', 18, NULL, 1, NULL),
(21, 'PM', 18, NULL, 1, NULL),
(22, 'assembled', 41, NULL, 1, NULL),
(23, 'pending', 41, NULL, 1, NULL),
(24, 'failed', 41, NULL, 1, NULL),
(25, 'passed', 42, NULL, 1, NULL),
(26, 'pending', 42, NULL, 1, NULL),
(27, 'failed', 42, NULL, 1, NULL),
(28, 'annotated', 43, NULL, 1, NULL),
(29, 'pending', 43, NULL, 1, NULL),
(30, 'failed', 43, NULL, 1, NULL),
(31, '0', 19, NULL, 1, NULL),
(32, 'C', 19, NULL, 1, NULL);

--

INSERT INTO `modules_field` (`field_id`, `name`, `type`, `form_name_ref`, `form_name`, `form_type`, `form_order`, `visible`, `mandatory`, `summary_line`, `module_table`, `summary_line_width`) VALUES
308, 'count', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_strains', NULL),
(309, 'name', 'varchar', 'newname', 'name', 'text', 2, 'Y', 1, 0, 'npdc_strains', NULL),
(310, 'comment_log', 'longtext', 'newdesc', 'comment_log', 'textarea', 13, 'Y', 0, 0, 'npdc_strains', NULL),
(311, 'keeper', 'int', 'contact', 'keeper', 'select', 14, 'Y', 1, 0, 'npdc_strains', NULL),
(312, 'box_id', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_strains', NULL),
(313, 'box_details', 'text', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_strains', NULL),
(314, 'box_status', 'tinyint', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_strains', NULL),
(315, 'box_status_data', 'text', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_strains', NULL),
(316, 'st_counter', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_strains', NULL),
(317, 'st_date_limit', 'date', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_strains', NULL),
(318, 'st_days_before_limit', 'tinyint', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_strains', NULL),
(319, 'volume', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_strains', NULL),
(320, 'volume_unit', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_strains', NULL),
(321, 'st_defrost_counter', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_strains', NULL),
(322, 'date_created', 'datetime', NULL, NULL, NULL, 5, 'N', 0, 0, 'npdc_strains', NULL),
(323, 'date_updated', 'datetime', NULL, NULL, NULL, 6, 'N', 0, 0, 'npdc_strains', NULL),
(324, 'wait', 'tinyint', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_strains', NULL),
(325, 'secret', 'tinyint', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_strains', NULL),
(326, 'unique_code', 'varchar', 'sample_unique_code', 'unique_code', 'text', 1, 'N', 0, 0, 'npdc_strains', NULL),
(327, 'chem_id_child', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_strains', NULL),
(328, 'extra1', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_strains', NULL),
(329, 'extra2', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_strains', NULL),
(331, 'count', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_liquid_growth', NULL),
(332, 'name', 'varchar', 'newname', 'name', 'text', 2, 'Y', 1, 0, 'npdc_liquid_growth', NULL),
(333, 'comment_log', 'longtext', 'newdesc', 'comment_log', 'textarea', 12, 'Y', 0, 0, 'npdc_liquid_growth', NULL),
(334, 'keeper', 'int', 'contact', 'keeper', 'select', 13, 'Y', 1, 0, 'npdc_liquid_growth', NULL),
(335, 'box_id', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_liquid_growth', NULL),
(336, 'box_details', 'text', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_liquid_growth', NULL),
(337, 'box_status', 'tinyint', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_liquid_growth', NULL),
(338, 'box_status_data', 'text', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_liquid_growth', NULL),
(339, 'st_counter', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_liquid_growth', NULL),
(340, 'st_date_limit', 'date', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_liquid_growth', NULL),
(341, 'st_days_before_limit', 'tinyint', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_liquid_growth', NULL),
(342, 'volume', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_liquid_growth', NULL),
(343, 'volume_unit', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_liquid_growth', NULL),
(344, 'st_defrost_counter', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_liquid_growth', NULL),
(345, 'date_created', 'datetime', NULL, NULL, NULL, 5, 'N', 0, 0, 'npdc_liquid_growth', NULL),
(346, 'date_updated', 'datetime', NULL, NULL, NULL, 6, 'N', 0, 0, 'npdc_liquid_growth', NULL),
(347, 'wait', 'tinyint', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_liquid_growth', NULL),
(348, 'secret', 'tinyint', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_liquid_growth', NULL),
(349, 'unique_code', 'varchar', 'sample_unique_code', 'unique_code', 'text', 1, 'N', 0, 0, 'npdc_liquid_growth', NULL),
(350, 'chem_id_child', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_liquid_growth', NULL),
(351, 'extra1', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_liquid_growth', NULL),
(352, 'extra2', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_liquid_growth', NULL),
(353, 'extra3', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_liquid_growth', NULL),
(354, 'count', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_gdnas', NULL),
(355, 'name', 'varchar', 'newname', 'name', 'text', 2, 'Y', 1, 0, 'npdc_gdnas', NULL),
(356, 'comment_log', 'longtext', 'newdesc', 'comment_log', 'textarea', 13, 'Y', 0, 0, 'npdc_gdnas', NULL),
(357, 'keeper', 'int', 'contact', 'keeper', 'select', 14, 'Y', 1, 0, 'npdc_gdnas', NULL),
(358, 'box_id', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_gdnas', NULL),
(359, 'box_details', 'text', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_gdnas', NULL),
(360, 'box_status', 'tinyint', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_gdnas', NULL),
(361, 'box_status_data', 'text', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_gdnas', NULL),
(362, 'st_counter', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_gdnas', NULL),
(363, 'st_date_limit', 'date', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_gdnas', NULL),
(364, 'st_days_before_limit', 'tinyint', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_gdnas', NULL),
(365, 'volume', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_gdnas', NULL),
(366, 'volume_unit', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_gdnas', NULL),
(367, 'st_defrost_counter', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_gdnas', NULL),
(368, 'date_created', 'datetime', NULL, NULL, NULL, 5, 'N', 0, 0, 'npdc_gdnas', NULL),
(369, 'date_updated', 'datetime', NULL, NULL, NULL, 6, 'N', 0, 0, 'npdc_gdnas', NULL),
(370, 'wait', 'tinyint', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_gdnas', NULL),
(371, 'secret', 'tinyint', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_gdnas', NULL),
(372, 'unique_code', 'varchar', 'sample_unique_code', 'unique_code', 'text', 1, 'N', 0, 0, 'npdc_gdnas', NULL),
(373, 'chem_id_child', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_gdnas', NULL),
(374, 'extra1', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_gdnas', NULL),
(375, 'extra2', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_gdnas', NULL),
(376, 'extra3', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_gdnas', NULL),
(400, 'count', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_batches', NULL),
(401, 'name', 'varchar', 'newname', 'name', 'text', 2, 'Y', 1, 0, 'npdc_sequencing_batches', NULL),
(402, 'comment_log', 'longtext', 'newdesc', 'comment_log', 'textarea', 8, 'Y', 0, 0, 'npdc_sequencing_batches', NULL),
(403, 'keeper', 'int', 'contact', 'keeper', 'select', 9, 'Y', 1, 0, 'npdc_sequencing_batches', NULL),
(404, 'box_id', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_batches', NULL),
(405, 'box_details', 'text', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_batches', NULL),
(406, 'box_status', 'tinyint', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_batches', NULL),
(407, 'box_status_data', 'text', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_batches', NULL),
(408, 'st_counter', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_batches', NULL),
(409, 'st_date_limit', 'date', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_batches', NULL),
(410, 'st_days_before_limit', 'tinyint', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_batches', NULL),
(411, 'volume', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_batches', NULL),
(412, 'volume_unit', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_batches', NULL),
(413, 'st_defrost_counter', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_batches', NULL),
(414, 'date_created', 'datetime', NULL, NULL, NULL, 5, 'N', 0, 0, 'npdc_sequencing_batches', NULL),
(415, 'date_updated', 'datetime', NULL, NULL, NULL, 6, 'N', 0, 0, 'npdc_sequencing_batches', NULL),
(416, 'wait', 'tinyint', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_batches', NULL),
(417, 'secret', 'tinyint', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_batches', NULL),
(418, 'unique_code', 'varchar', 'sample_unique_code', 'unique_code', 'text', 1, 'Y', 0, 0, 'npdc_sequencing_batches', NULL),
(419, 'chem_id_child', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_batches', NULL),
(420, 'extra1', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_batches', NULL),
(421, 'extra2', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_batches', NULL),
(422, 'extra3', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_batches', NULL),
(423, 'count', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_samples', NULL),
(424, 'name', 'varchar', 'newname', 'name', 'text', 2, 'Y', 1, 0, 'npdc_sequencing_samples', NULL),
(425, 'comment_log', 'longtext', 'newdesc', 'comment_log', 'textarea', 7, 'Y', 0, 0, 'npdc_sequencing_samples', NULL),
(426, 'keeper', 'int', 'contact', 'keeper', 'select', 8, 'Y', 1, 0, 'npdc_sequencing_samples', NULL),
(427, 'box_id', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_samples', NULL),
(428, 'box_details', 'text', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_samples', NULL),
(429, 'box_status', 'tinyint', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_samples', NULL),
(430, 'box_status_data', 'text', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_samples', NULL),
(431, 'st_counter', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_samples', NULL),
(432, 'st_date_limit', 'date', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_samples', NULL),
(433, 'st_days_before_limit', 'tinyint', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_samples', NULL),
(434, 'volume', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_samples', NULL),
(435, 'volume_unit', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_samples', NULL),
(436, 'st_defrost_counter', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_samples', NULL),
(437, 'date_created', 'datetime', NULL, NULL, NULL, 5, 'N', 0, 0, 'npdc_sequencing_samples', NULL),
(438, 'date_updated', 'datetime', NULL, NULL, NULL, 6, 'N', 0, 0, 'npdc_sequencing_samples', NULL),
(439, 'wait', 'tinyint', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_samples', NULL),
(440, 'secret', 'tinyint', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_samples', NULL),
(441, 'unique_code', 'varchar', 'sample_unique_code', 'unique_code', 'text', 1, 'Y', 0, 0, 'npdc_sequencing_samples', NULL),
(442, 'chem_id_child', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_samples', NULL),
(443, 'extra1', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_samples', NULL),
(444, 'extra2', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_samples', NULL),
(445, 'extra3', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_sequencing_samples', NULL),
(446, 'count', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_genome_sequences', NULL),
(447, 'name', 'varchar', 'newname', 'name', 'text', 2, 'Y', 1, 0, 'npdc_genome_sequences', NULL),
(448, 'comment_log', 'longtext', 'newdesc', 'comment_log', 'textarea', 15, 'Y', 0, 0, 'npdc_genome_sequences', NULL),
(449, 'keeper', 'int', 'contact', 'keeper', 'select', 16, 'Y', 1, 0, 'npdc_genome_sequences', NULL),
(450, 'box_id', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_genome_sequences', NULL),
(451, 'box_details', 'text', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_genome_sequences', NULL),
(452, 'box_status', 'tinyint', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_genome_sequences', NULL),
(453, 'box_status_data', 'text', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_genome_sequences', NULL),
(454, 'st_counter', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_genome_sequences', NULL),
(455, 'st_date_limit', 'date', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_genome_sequences', NULL),
(456, 'st_days_before_limit', 'tinyint', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_genome_sequences', NULL),
(457, 'volume', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_genome_sequences', NULL),
(458, 'volume_unit', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_genome_sequences', NULL),
(459, 'st_defrost_counter', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_genome_sequences', NULL),
(460, 'date_created', 'datetime', NULL, NULL, NULL, 5, 'N', 0, 0, 'npdc_genome_sequences', NULL),
(461, 'date_updated', 'datetime', NULL, NULL, NULL, 6, 'N', 0, 0, 'npdc_genome_sequences', NULL),
(462, 'wait', 'tinyint', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_genome_sequences', NULL),
(463, 'secret', 'tinyint', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_genome_sequences', NULL),
(464, 'unique_code', 'varchar', 'sample_unique_code', 'unique_code', 'text', 1, 'Y', 0, 0, 'npdc_genome_sequences', NULL),
(465, 'chem_id_child', 'int', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_genome_sequences', NULL),
(466, 'extra1', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_genome_sequences', NULL),
(467, 'extra2', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_genome_sequences', NULL),
(468, 'extra3', 'varchar', NULL, NULL, NULL, NULL, 'N', 0, 0, 'npdc_genome_sequences', NULL);

--

INSERT INTO `modules_field_legends` (`id`, `form_legend`, `form_field_id`, `lang`) VALUES
(142, 'Name', 309, 'EN'),
(143, 'Comments', 310, 'EN'),
(144, 'Owner', 311, 'EN'),
(145, 'Optional Unique Code', 326, 'EN'),
(146, 'Name', 332, 'EN'),
(147, 'Comments', 333, 'EN'),
(148, 'Owner', 334, 'EN'),
(149, 'Optional Unique Code', 349, 'EN'),
(150, 'Name', 355, 'EN'),
(151, 'Comments', 356, 'EN'),
(152, 'Owner', 357, 'EN'),
(153, 'Optional Unique Code', 372, 'EN'),
(154, 'Name', 378, 'EN'),
(155, 'Comments', 379, 'EN'),
(156, 'Owner', 380, 'EN'),
(157, 'Optional Unique Code', 395, 'EN'),
(158, 'Name', 401, 'EN'),
(159, 'Comments', 402, 'EN'),
(160, 'Owner', 403, 'EN'),
(161, 'Optional Unique Code', 418, 'EN'),
(162, 'Name', 424, 'EN'),
(163, 'Comments', 425, 'EN'),
(164, 'Owner', 426, 'EN'),
(165, 'Optional Unique Code', 441, 'EN'),
(166, 'Name', 447, 'EN'),
(167, 'Comments', 448, 'EN'),
(168, 'Owner', 449, 'EN'),
(169, 'Optional Unique Code', 464, 'EN');

--

--
-- Table structure for table `npdc_gdnas`
--

CREATE TABLE `npdc_gdnas` (
  `count` int UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `comment_log` longtext,
  `keeper` int DEFAULT NULL,
  `box_id` int UNSIGNED DEFAULT NULL,
  `box_details` text,
  `box_status` tinyint DEFAULT NULL,
  `box_status_data` text,
  `volume` varchar(50) DEFAULT NULL,
  `volume_unit` varchar(25) DEFAULT NULL,
  `st_counter` int DEFAULT NULL,
  `st_date_limit` date DEFAULT NULL,
  `st_days_before_limit` tinyint UNSIGNED DEFAULT NULL,
  `st_defrost_counter` int UNSIGNED DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `wait` tinyint UNSIGNED DEFAULT '0',
  `secret` tinyint UNSIGNED DEFAULT '0',
  `unique_code` varchar(50) DEFAULT NULL,
  `chem_id_child` int UNSIGNED DEFAULT NULL,
  `extra1` varchar(150) DEFAULT NULL,
  `extra2` varchar(150) DEFAULT NULL,
  `extra3` varchar(150) DEFAULT NULL,
  `npdc_id` varchar(100) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `plate` decimal(5,0) DEFAULT NULL,
  `well` varchar(50) DEFAULT NULL,
  `isolation_date` date DEFAULT NULL,
  `nanodrop_concentration` decimal(6,2) DEFAULT NULL,
  `nanodrop_a260280` decimal(6,2) DEFAULT NULL,
  `nanodrop_a260230` decimal(6,2) DEFAULT NULL,
  `quantus_concentration` decimal(6,2) DEFAULT NULL,
  `person_in_charge` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `npdc_genome_sequences`
--

CREATE TABLE `npdc_genome_sequences` (
  `count` int UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `comment_log` longtext,
  `keeper` int DEFAULT NULL,
  `box_id` int UNSIGNED DEFAULT NULL,
  `box_details` text,
  `box_status` tinyint DEFAULT NULL,
  `box_status_data` text,
  `volume` varchar(50) DEFAULT NULL,
  `volume_unit` varchar(25) DEFAULT NULL,
  `st_counter` int DEFAULT NULL,
  `st_date_limit` date DEFAULT NULL,
  `st_days_before_limit` tinyint UNSIGNED DEFAULT NULL,
  `st_defrost_counter` int UNSIGNED DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `wait` tinyint UNSIGNED DEFAULT '0',
  `secret` tinyint UNSIGNED DEFAULT '0',
  `unique_code` varchar(50) DEFAULT NULL,
  `chem_id_child` int UNSIGNED DEFAULT NULL,
  `extra1` varchar(150) DEFAULT NULL,
  `extra2` varchar(150) DEFAULT NULL,
  `extra3` varchar(150) DEFAULT NULL,
  `sample_name` varchar(100) DEFAULT NULL,
  `assembly_status` varchar(50) DEFAULT NULL,
  `qc_status` varchar(50) DEFAULT NULL,
  `annotation_status` varchar(50) DEFAULT NULL,
  `gtdb_phylum` varchar(50) DEFAULT NULL,
  `gtdb_genus` varchar(50) DEFAULT NULL,
  `gtdb_species` varchar(50) DEFAULT NULL,
  `num_contigs` decimal(7,0) DEFAULT NULL,
  `size` decimal(12,0) DEFAULT NULL,
  `n50` decimal(4,4) DEFAULT NULL,
  `reads_count` decimal(12,0) DEFAULT NULL,
  `reads_size` decimal(20,0) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `npdc_liquid_growth`
--

CREATE TABLE `npdc_liquid_growth` (
  `count` int UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `comment_log` longtext,
  `keeper` int DEFAULT NULL,
  `box_id` int UNSIGNED DEFAULT NULL,
  `box_details` text,
  `box_status` tinyint DEFAULT NULL,
  `box_status_data` text,
  `volume` varchar(50) DEFAULT NULL,
  `volume_unit` varchar(25) DEFAULT NULL,
  `st_counter` int DEFAULT NULL,
  `st_date_limit` date DEFAULT NULL,
  `st_days_before_limit` tinyint UNSIGNED DEFAULT NULL,
  `st_defrost_counter` int UNSIGNED DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `wait` tinyint UNSIGNED DEFAULT '0',
  `secret` tinyint UNSIGNED DEFAULT '0',
  `unique_code` varchar(50) DEFAULT NULL,
  `chem_id_child` int UNSIGNED DEFAULT NULL,
  `extra1` varchar(150) DEFAULT NULL,
  `extra2` varchar(150) DEFAULT NULL,
  `extra3` varchar(150) DEFAULT NULL,
  `npdc_id` varchar(100) DEFAULT NULL,
  `media` varchar(50) DEFAULT NULL,
  `antibiotics` varchar(50) DEFAULT NULL,
  `inoculation_date` date DEFAULT NULL,
  `inoculation_time` varchar(50) DEFAULT NULL,
  `harvest_date` date DEFAULT NULL,
  `harvest_time` varchar(50) DEFAULT NULL,
  `growth` varchar(50) DEFAULT NULL,
  `picture` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `npdc_sequencing_batches`
--

CREATE TABLE `npdc_sequencing_batches` (
  `count` int UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `comment_log` longtext,
  `keeper` int DEFAULT NULL,
  `box_id` int UNSIGNED DEFAULT NULL,
  `box_details` text,
  `box_status` tinyint DEFAULT NULL,
  `box_status_data` text,
  `volume` varchar(50) DEFAULT NULL,
  `volume_unit` varchar(25) DEFAULT NULL,
  `st_counter` int DEFAULT NULL,
  `st_date_limit` date DEFAULT NULL,
  `st_days_before_limit` tinyint UNSIGNED DEFAULT NULL,
  `st_defrost_counter` int UNSIGNED DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `wait` tinyint UNSIGNED DEFAULT '0',
  `secret` tinyint UNSIGNED DEFAULT '0',
  `unique_code` varchar(50) DEFAULT NULL,
  `chem_id_child` int UNSIGNED DEFAULT NULL,
  `extra1` varchar(150) DEFAULT NULL,
  `extra2` varchar(150) DEFAULT NULL,
  `extra3` varchar(150) DEFAULT NULL,
  `project_name` varchar(50) DEFAULT NULL,
  `batch_name` varchar(50) DEFAULT NULL,
  `person_in_charge` varchar(50) DEFAULT NULL,
  `submission_date` date DEFAULT NULL,
  `finished` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `npdc_sequencing_samples`
--

CREATE TABLE `npdc_sequencing_samples` (
  `count` int UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `comment_log` longtext,
  `keeper` int DEFAULT NULL,
  `box_id` int UNSIGNED DEFAULT NULL,
  `box_details` text,
  `box_status` tinyint DEFAULT NULL,
  `box_status_data` text,
  `volume` varchar(50) DEFAULT NULL,
  `volume_unit` varchar(25) DEFAULT NULL,
  `st_counter` int DEFAULT NULL,
  `st_date_limit` date DEFAULT NULL,
  `st_days_before_limit` tinyint UNSIGNED DEFAULT NULL,
  `st_defrost_counter` int UNSIGNED DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `wait` tinyint UNSIGNED DEFAULT '0',
  `secret` tinyint UNSIGNED DEFAULT '0',
  `unique_code` varchar(50) DEFAULT NULL,
  `chem_id_child` int UNSIGNED DEFAULT NULL,
  `extra1` varchar(150) DEFAULT NULL,
  `extra2` varchar(150) DEFAULT NULL,
  `extra3` varchar(150) DEFAULT NULL,
  `sequencing_batch` varchar(100) DEFAULT NULL,
  `gdna` varchar(100) DEFAULT NULL,
  `quantus_concentration` decimal(6,2) DEFAULT NULL,
  `gdna_used_up` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `npdc_strains`
--

CREATE TABLE `npdc_strains` (
  `count` int UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `comment_log` longtext,
  `keeper` int DEFAULT NULL,
  `box_id` int UNSIGNED DEFAULT NULL,
  `box_details` text,
  `box_status` tinyint DEFAULT NULL,
  `box_status_data` text,
  `volume` varchar(50) DEFAULT NULL,
  `volume_unit` varchar(25) DEFAULT NULL,
  `st_counter` int DEFAULT NULL,
  `st_date_limit` date DEFAULT NULL,
  `st_days_before_limit` tinyint UNSIGNED DEFAULT NULL,
  `st_defrost_counter` int UNSIGNED DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `wait` tinyint UNSIGNED DEFAULT '0',
  `secret` tinyint UNSIGNED DEFAULT '0',
  `unique_code` varchar(50) DEFAULT NULL,
  `chem_id_child` int UNSIGNED DEFAULT NULL,
  `extra1` varchar(150) DEFAULT NULL,
  `extra2` varchar(150) DEFAULT NULL,
  `collection` varchar(50) DEFAULT NULL,
  `alt_id` varchar(50) DEFAULT NULL,
  `isolation_date` date DEFAULT NULL,
  `isolation_country` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `genus` varchar(50) DEFAULT NULL,
  `species` varchar(50) DEFAULT NULL,
  `comment_type_strain` varchar(50) DEFAULT NULL,
  `comment_original` varchar(50) DEFAULT NULL,
  `isolation_region` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--

--
-- Indexes for table `npdc_gdnas`
--
ALTER TABLE `npdc_gdnas`
  ADD PRIMARY KEY (`count`),
  ADD KEY `keeper` (`keeper`),
  ADD KEY `box_id` (`box_id`),
  ADD KEY `unique_code` (`unique_code`),
  ADD KEY `chem_id_child` (`chem_id_child`),
  ADD KEY `box_status` (`box_status`);

--
-- Indexes for table `npdc_genome_sequences`
--
ALTER TABLE `npdc_genome_sequences`
  ADD PRIMARY KEY (`count`),
  ADD KEY `keeper` (`keeper`),
  ADD KEY `box_id` (`box_id`),
  ADD KEY `unique_code` (`unique_code`),
  ADD KEY `chem_id_child` (`chem_id_child`),
  ADD KEY `box_status` (`box_status`);

--
-- Indexes for table `npdc_liquid_growth`
--
ALTER TABLE `npdc_liquid_growth`
  ADD PRIMARY KEY (`count`),
  ADD KEY `keeper` (`keeper`),
  ADD KEY `box_id` (`box_id`),
  ADD KEY `unique_code` (`unique_code`),
  ADD KEY `chem_id_child` (`chem_id_child`),
  ADD KEY `box_status` (`box_status`);

--
-- Indexes for table `npdc_sequencing_batches`
--
ALTER TABLE `npdc_sequencing_batches`
  ADD PRIMARY KEY (`count`),
  ADD KEY `keeper` (`keeper`),
  ADD KEY `box_id` (`box_id`),
  ADD KEY `unique_code` (`unique_code`),
  ADD KEY `chem_id_child` (`chem_id_child`),
  ADD KEY `box_status` (`box_status`);

--
-- Indexes for table `npdc_sequencing_samples`
--
ALTER TABLE `npdc_sequencing_samples`
  ADD PRIMARY KEY (`count`),
  ADD KEY `keeper` (`keeper`),
  ADD KEY `box_id` (`box_id`),
  ADD KEY `unique_code` (`unique_code`),
  ADD KEY `chem_id_child` (`chem_id_child`),
  ADD KEY `box_status` (`box_status`);

--
-- Indexes for table `npdc_strains`
--
ALTER TABLE `npdc_strains`
  ADD PRIMARY KEY (`count`),
  ADD KEY `keeper` (`keeper`),
  ADD KEY `box_id` (`box_id`),
  ADD KEY `unique_code` (`unique_code`),
  ADD KEY `chem_id_child` (`chem_id_child`),
  ADD KEY `box_status` (`box_status`);

--

ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `contacts`
  MODIFY `count` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `modules`
  MODIFY `id` tinyint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

ALTER TABLE `modules_custom`
  MODIFY `field_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

ALTER TABLE `modules_custom_field_legends`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

ALTER TABLE `modules_custom_options`
  MODIFY `option_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

ALTER TABLE `modules_custom_values`
  MODIFY `val_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

ALTER TABLE `modules_field`
  MODIFY `field_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=469;

ALTER TABLE `modules_field_legends`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

ALTER TABLE `modules_options`
  MODIFY `option_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

ALTER TABLE `npdc_gdnas`
  MODIFY `count` int UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `npdc_genome_sequences`
  MODIFY `count` int UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `npdc_liquid_growth`
  MODIFY `count` int UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `npdc_sequencing_batches`
  MODIFY `count` int UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `npdc_sequencing_samples`
  MODIFY `count` int UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `npdc_strains`
  MODIFY `count` int UNSIGNED NOT NULL AUTO_INCREMENT;
