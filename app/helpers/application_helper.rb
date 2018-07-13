module ApplicationHelper
	#helper_method :resource_name, :resource, :devise_mapping, :resource_class

  def resource_name
    :user
  end
 
  def resource
    @resource ||= User.new
  end

  def resource_class
    User
  end
 
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def country_list
    [
      "Afghanistan",
      "Aland Islands",
      "Albania",
      "Algeria",
      "American Samoa",
      "Andorra",
      "Angola",
      "Anguilla",
      "Antarctica",
      "Antigua and Barbuda",
      "Argentina",
      "Armenia",
      "Aruba",
      "Australia",
      "Austria",
      "Azerbaijan",
      "Bahamas",
      "Bahrain",
      "Bangladesh",
      "Barbados",
      "Belarus",
      "Belgium",
      "Belize",
      "Benin",
      "Bermuda",
      "Bhutan",
      "Bolivia",
      "Bonaire, Saint Eustatius and Saba ",
      "Bosnia and Herzegovina",
      "Botswana",
      "Bouvet Island",
      "Brazil",
      "British Indian Ocean Territory",
      "British Virgin Islands",
      "Brunei",
      "Bulgaria",
      "Burkina Faso",
      "Burundi",
      "Cambodia",
      "Cameroon",
      "Canada",
      "Cape Verde",
      "Cayman Islands",
      "Central African Republic",
      "Chad",
      "Chile",
      "China",
      "Christmas Island",
      "Cocos Islands",
      "Colombia",
      "Comoros",
      "Cook Islands",
      "Costa Rica",
      "Croatia",
      "Cuba",
      "Curacao",
      "Cyprus",
      "Czech Republic",
      "Democratic Republic of the Congo",
      "Denmark",
      "Djibouti",
      "Dominica",
      "Dominican Republic",
      "East Timor",
      "Ecuador",
      "Egypt",
      "El Salvador",
      "Equatorial Guinea",
      "Eritrea",
      "Estonia",
      "Ethiopia",
      "Falkland Islands",
      "Faroe Islands",
      "Fiji",
      "Finland",
      "France",
      "French Guiana",
      "French Polynesia",
      "French Southern Territories",
      "Gabon",
      "Gambia",
      "Georgia",
      "Germany",
      "Ghana",
      "Gibraltar",
      "Greece",
      "Greenland",
      "Grenada",
      "Guadeloupe",
      "Guam",
      "Guatemala",
      "Guernsey",
      "Guinea",
      "Guinea-Bissau",
      "Guyana",
      "Haiti",
      "Heard Island and McDonald Islands",
      "Honduras",
      "Hong Kong",
      "Hungary",
      "Iceland",
      "India",
      "Indonesia",
      "Iran",
      "Iraq",
      "Ireland",
      "Isle of Man",
      "Israel",
      "Italy",
      "Ivory Coast",
      "Jamaica",
      "Japan",
      "Jersey",
      "Jordan",
      "Kazakhstan",
      "Kenya",
      "Kiribati",
      "Kosovo",
      "Kuwait",
      "Kyrgyzstan",
      "Laos",
      "Latvia",
      "Lebanon",
      "Lesotho",
      "Liberia",
      "Libya",
      "Liechtenstein",
      "Lithuania",
      "Luxembourg",
      "Macao",
      "Macedonia",
      "Madagascar",
      "Malawi",
      "Malaysia",
      "Maldives",
      "Mali",
      "Malta",
      "Marshall Islands",
      "Martinique",
      "Mauritania",
      "Mauritius",
      "Mayotte",
      "Mexico",
      "Micronesia",
      "Moldova",
      "Monaco",
      "Mongolia",
      "Montenegro",
      "Montserrat",
      "Morocco",
      "Mozambique",
      "Myanmar",
      "Namibia",
      "Nauru",
      "Nepal",
      "Netherlands",
      "New Caledonia",
      "New Zealand",
      "Nicaragua",
      "Niger",
      "Nigeria",
      "Niue",
      "Norfolk Island",
      "North Korea",
      "Northern Mariana Islands",
      "Norway",
      "Oman",
      "Pakistan",
      "Palau",
      "Palestinian Territory",
      "Panama",
      "Papua New Guinea",
      "Paraguay",
      "Peru",
      "Philippines",
      "Pitcairn",
      "Poland",
      "Portugal",
      "Puerto Rico",
      "Qatar",
      "Republic of the Congo",
      "Reunion",
      "Romania",
      "Russia",
      "Rwanda",
      "Saint Barthelemy",
      "Saint Helena",
      "Saint Kitts and Nevis",
      "Saint Lucia",
      "Saint Martin",
      "Saint Pierre and Miquelon",
      "Saint Vincent and the Grenadines",
      "Samoa",
      "San Marino",
      "Sao Tome and Principe",
      "Saudi Arabia",
      "Senegal",
      "Serbia",
      "Seychelles",
      "Sierra Leone",
      "Singapore",
      "Sint Maarten",
      "Slovakia",
      "Slovenia",
      "Solomon Islands",
      "Somalia",
      "South Africa",
      "South Georgia and the South Sandwich Islands",
      "South Korea",
      "South Sudan",
      "Spain",
      "Sri Lanka",
      "Sudan",
      "Suriname",
      "Svalbard and Jan Mayen",
      "Swaziland",
      "Sweden",
      "Switzerland",
      "Syria",
      "Taiwan",
      "Tajikistan",
      "Tanzania",
      "Thailand",
      "Togo",
      "Tokelau",
      "Tonga",
      "Trinidad and Tobago",
      "Tunisia",
      "Turkey",
      "Turkmenistan",
      "Turks and Caicos Islands",
      "Tuvalu",
      "U.S. Virgin Islands",
      "Uganda",
      "Ukraine",
      "United Arab Emirates",
      "United Kingdom",
      "United States",
      "United States Minor Outlying Islands",
      "Uruguay",
      "Uzbekistan",
      "Vanuatu",
      "Vatican",
      "Venezuela",
      "Vietnam",
      "Wallis and Futuna",
      "Western Sahara",
      "Yemen",
      "Zambia",
      "Zimbabwe"
    ]
  end

  def languages_list
      [
        "Abkhazian",
        "Afar",
        "Afrikaans",
        "Akan",
        "Albanian",
        "Amharic",
        "Arabic",
        "Aragonese",
        "Armenian",
        "Assamese",
        "Avaric",
        "Avestan",
        "Aymara",
        "Azerbaijani",
        "Bambara",
        "Bashkir",
        "Basque",
        "Belarusian",
        "Bengali",
        "Bihari languages",
        "Bislama",
        "Bosnian",
        "Breton",
        "Bulgarian",
        "Burmese",
        "Catalan, Valencian",
        "Central Khmer",
        "Chamorro",
        "Chechen",
        "Chichewa, Chewa, Nyanja",
        "Chinese",
        "Church Slavonic, Old Bulgarian, Old Church Slavonic",
        "Chuvash",
        "Cornish",
        "Corsican",
        "Cree",
        "Croatian",
        "Czech",
        "Danish",
        "Divehi, Dhivehi, Maldivian",
        "Dutch, Flemish",
        "Dzongkha",
        "English",
        "Esperanto",
        "Estonian",
        "Ewe",
        "Faroese",
        "Fijian",
        "Finnish",
        "French",
        "Fulah",
        "Gaelic, Scottish Gaelic",
        "Galician",
        "Ganda",
        "Georgian",
        "German",
        "Gikuyu, Kikuyu",
        "Greek (Modern)",
        "Greenlandic, Kalaallisut",
        "Guarani",
        "Gujarati",
        "Haitian, Haitian Creole",
        "Hausa",
        "Hebrew",
        "Herero",
        "Hindi",
        "Hiri Motu",
        "Hungarian",
        "Icelandic",
        "Ido",
        "Igbo",
        "Indonesian",
        "Interlingua (International Auxiliary Language Association)",
        "Interlingue",
        "Inuktitut",
        "Inupiaq",
        "Irish",
        "Italian",
        "Japanese",
        "Javanese",
        "Kannada",
        "Kanuri",
        "Kashmiri",
        "Kazakh",
        "Kinyarwanda",
        "Komi",
        "Kongo",
        "Korean",
        "Kwanyama, Kuanyama",
        "Kurdish",
        "Kyrgyz",
        "Lao",
        "Latin",
        "Latvian",
        "Letzeburgesch, Luxembourgish",
        "Limburgish, Limburgan, Limburger",
        "Lingala",
        "Lithuanian",
        "Luba-Katanga",
        "Macedonian",
        "Malagasy",
        "Malay",
        "Malayalam",
        "Maltese",
        "Manx",
        "Maori",
        "Marathi",
        "Marshallese",
        "Moldovan, Moldavian, Romanian",
        "Mongolian",
        "Nauru",
        "Navajo, Navaho",
        "Northern Ndebele",
        "Ndonga",
        "Nepali",
        "Northern Sami",
        "Norwegian",
        "Norwegian Bokmål",
        "Norwegian Nynorsk",
        "Nuosu, Sichuan Yi",
        "Occitan (post 1500)",
        "Ojibwa",
        "Oriya",
        "Oromo",
        "Ossetian, Ossetic",
        "Pali",
        "Panjabi, Punjabi",
        "Pashto, Pushto",
        "Persian",
        "Polish",
        "Portuguese",
        "Quechua",
        "Romansh",
        "Rundi",
        "Russian",
        "Samoan",
        "Sango",
        "Sanskrit",
        "Sardinian",
        "Serbian",
        "Shona",
        "Sindhi",
        "Sinhala, Sinhalese",
        "Slovak",
        "Slovenian",
        "Somali",
        "Sotho, Southern",
        "South Ndebele",
        "Spanish, Castilian",
        "Sundanese",
        "Swahili",
        "Swati",
        "Swedish",
        "Tagalog",
        "Tahitian",
        "Tajik",
        "Tamil",
        "Tatar",
        "Telugu",
        "Thai",
        "Tibetan",
        "Tigrinya",
        "Tonga (Tonga Islands)",
        "Tsonga",
        "Tswana",
        "Turkish",
        "Turkmen",
        "Twi",
        "Uighur, Uyghur",
        "Ukrainian",
        "Urdu",
        "Uzbek",
        "Venda",
        "Vietnamese",
        "Volap_k",
        "Walloon",
        "Welsh",
        "Western Frisian",
        "Wolof",
        "Xhosa",
        "Yiddish",
        "Yoruba",
        "Zhuang, Chuang",
        "Zulu"
      ]
  end

  def toNumeral(number)
    numeralhash = {1=>"first", 2=>"second", 3=>"third", 4=>"fourth",5=>"fifth",6=>"sixth",7=>"seventh"}
    if numeralhash.has_key?number
      numeralhash[number]
    else
      "first"
    end
  end
end
