enum Language {
  ENGISH,
	GERMAN,
	FRENCH,
	WELSH,
	SCOTTISH,
	CORSICAN,
	BRETON,
	SPANISH,
	CATALAN,
	BASQUE,
	ITALIAN,
	PORTUGUESE,
	DUTCH,
	RUSSIAN,
	POLISH,
	GREEK,
	FINNISH,
	BULGARIAN,
	JAPANES,
	MALAY,
	HEBREW,
	TURKISH,
	CZECH,
	ESTONIAN,
	HUNGARIAN,
	ROMANIAN,
	DANISH,
	NORWEGIAN,
	SWEDISH,
	KOREAN,
	THAI
}

extension LanguageStr on Language {
  String get locale => const {
    Language.ENGISH:    'en_gb',
	Language.GERMAN:     'de_de',
	Language.FRENCH:     'fr_fr',
	Language.WELSH:      'cy_gb',
	Language.SCOTTISH:   'gd_gb',
	Language.CORSICAN:   'co_fr',
	Language.BRETON:     'br_fr',
	Language.SPANISH:    'es_es',
	Language.CATALAN:    'ca_es',
	Language.BASQUE:     'eu_fr',
	Language.ITALIAN:    'it_it',
	Language.PORTUGUESE: 'pt_pt',
	Language.DUTCH:      'nl_nl',
	Language.RUSSIAN:    'ru_ru',
	Language.POLISH:     'pl_pl',
	Language.GREEK:      'el_gr',
	Language.FINNISH:    'fi_fi',
	Language.BULGARIAN:  'bg_bg',
	Language.JAPANES:   'ja_jp',
	Language.MALAY:      'ms_ms',
	Language.HEBREW:     'he_il',
	Language.TURKISH:    'tr_tr',
	Language.CZECH:      'cs_cz',
	Language.ESTONIAN:   'et_ee',
	Language.HUNGARIAN:  'hu_hu',
	Language.ROMANIAN:   'ro_ro',
	Language.DANISH:     'da_dk',
	Language.NORWEGIAN:  'nb_no',
	Language.SWEDISH:    'sv_se',
	Language.KOREAN:     'ko_kr',
	Language.THAI:       'th_th'
  }[this];
}