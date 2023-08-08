

class Councillor {
  int wardNo;
  String name;
  String address;
  String contactNo;
  String emailId;
  String additionalResponsibility;
  String partyName;
  String photoUrl;

  Councillor({
    required this.wardNo,
    required this.name,
    required this.address,
    required this.contactNo,
    required this.emailId,
    required this.additionalResponsibility,
    required this.partyName,
    required this.photoUrl,
  });
}

List<Councillor> councillorData = [
  Councillor(
      wardNo: 1,
      name: 'TMT. D. SHARMILA',
      address: '7/27(2), 2nd main street, new vilangudi, Madurai- 625018',
      contactNo: '+91 9344136741',
      emailId: '',
      additionalResponsibility: ' MEMBER - Town Planning Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-1.jpg'),
  Councillor(
      wardNo: 2,
      name: 'TMT. M. AMUTHA',
      address: '85,anna salai, koodal nagar, Madurai - 625018',
      contactNo: '+91 9965550894',
      emailId: '',
      additionalResponsibility: ' MEMBER - Education Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-2.jpg'),
  Councillor(
      wardNo: 3,
      name: 'THIRU. G. SELVA GANAPATHY',
      address: '3-16/30-1, south street, anaiyur, Madurai - 625 017',
      contactNo: '+91 9787348243',
      emailId: 'selvaganesh560@gmail.com',
      additionalResponsibility: ' MEMBER - Works Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-3.jpg'),
  Councillor(
      wardNo: 4,
      name: 'TMT. K. NANDHINI',
      address:
          '11, karthik nagar, suganthi nagar extension, pattimedu, thapal thanthi nagar, anaiyur post, Madurai -17',
      contactNo: '+91 8667633640',
      emailId: '',
      additionalResponsibility: 'MEMBER - Works Committee ',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-4.jpg'),
  Councillor(
      wardNo: 5,
      name: 'TMT. S. VASUKI',
      address:
          '3/74, indian bank colony, 2nd street, narayanapuram, Madurai-14',
      contactNo: '+91 9655158866',
      emailId: '',
      additionalResponsibility:
          'CHAIRPERSON - ZONE 1 (EAST) and MEMBER - Education Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-5.jpg'),
  Councillor(
      wardNo: 6,
      name: 'TMT. B. PALSELVI',
      address:
          '2/1176-6, ponkudil meenakshi nagar 3rd street, kannanenthal, iyer bungalow, thiruppalai post, Madurai-625014.',
      contactNo: '+91 9344087373',
      emailId: 'palselvibalakrishnan@gmail.com',
      additionalResponsibility: 'MEMBER - Works Committee ',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-6.jpg'),
  Councillor(
      wardNo: 7,
      name: 'THIRU. M. RAMAMOORTHY',
      address: '2/95A, mela street, thiruppalai, Madurai - 625014.',
      contactNo: '+91 9842136731',
      emailId: '',
      additionalResponsibility: ' MEMBER - Accounts Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-7.jpg'),
  Councillor(
      wardNo: 8,
      name: 'TMT. G. RADHIKA',
      address: '2/396, kannanenthal, thiruppalai (POST), Madurai- 625014.',
      contactNo: '+91 9486796563	',
      emailId: '',
      additionalResponsibility: ' MEMBER - Works Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-8.jpg'),
  Councillor(
      wardNo: 9,
      name: 'THIRU. S. DHANARAJ',
      address: '3/112, pandi kovil street, uthangudi, Madurai-625107',
      contactNo: '+91 9894764858',
      emailId: 'rishivishnu1375@gmail.com',
      additionalResponsibility: ' MEMBER - Works Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-9.jpg'),
  Councillor(
      wardNo: 10,
      name: 'TMT. A. MUTHUKUMARI',
      address: '28, sampakkulam 1st street, k.pudur, Madurai NORTH',
      contactNo: '+91 9842156474',
      emailId: 'alwaralwar98@gmail.com',
      additionalResponsibility: 'MEMBER - Town Planning Committee ',
      partyName: 'INDEPENDENT',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-10.jpg'),
  Councillor(
      wardNo: 11,
      name: 'THIRU. S. GENKESKHAN',
      address:
          'NO.4/565, parasuraman patti, k.pudur, Madurai (N), Madurai - 625007.',
      contactNo: '+91 9865692999',
      emailId: '',
      additionalResponsibility: 'MEMBER - Works Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-11.jpg'),
  Councillor(
      wardNo: 12,
      name: 'TMT. M. RATHA',
      address: '3,gandhipuram 3rd street, k.pudur, Madurai - 625007.',
      contactNo: '+91 9994474343',
      emailId: '',
      additionalResponsibility: 'MEMBER - Works Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-12.jpg'),
  Councillor(
      wardNo: 13,
      name: 'THIRU. SENTHILKUMAR',
      address: '6/215, I.T.I colony, athikulam, k.pudur, Madurai - 625007	',
      contactNo: '+91 9842158331',
      emailId: '',
      additionalResponsibility: 'MEMBER - Works Committee	',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-13.jpg'),
  Councillor(
      wardNo: 14,
      name: 'TMT. L. ANTHONIAMMAL',
      address: '55, barma colony 3rd street, k.pudur, Madurai-625007.',
      contactNo: '+91 9486156284',
      emailId: '',
      additionalResponsibility: 'MEMBER - Public Health Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-14.jpg'),
  Councillor(
      wardNo: 15,
      name: 'TMT. A. SARAVANA BHUVANESWARI	',
      address: '28, PTR nagar, Madurai - 625007',
      contactNo: '+91 9095377777',
      emailId: 'advsaravanan7@gmail.com',
      additionalResponsibility: 'CHAIRPERSON - ZONE - II(NORTH)',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-15.jpg'),
  Councillor(
      wardNo: 16,
      name: 'THIRU .D. JEYARAJ',
      address:
          '22, kanagavel nagar, pudur vandipathai, K.PUDUR, Madurai- 625007.',
      contactNo: '+91 7200077900',
      emailId: '',
      additionalResponsibility: 'CHAIRPERSON - Public Health Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-16.jpg'),
  Councillor(
      wardNo: 17,
      name: 'TMT. P. ROHINI',
      address:
          '4/19, sethupathi nagar, kulamangalam main road, anaiyur, Madurai - 17',
      contactNo: '+91 9626855099',
      emailId: '',
      additionalResponsibility: 'CHAIRPERSON - Works Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-17.jpg'),
  Councillor(
      wardNo: 18,
      name: 'THIRU. K. E. NAVANEETHA KRISHNAN',
      address: '10/8/32, bhavani nadhi 3rd street, anaiyur post, Madurai - 17',
      contactNo: '+91 9543301000',
      emailId: '',
      additionalResponsibility: 'MEMBER - Works Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-18.jpg'),
  Councillor(
      wardNo: 19,
      name: 'THIRU. P. BABU',
      address: 'M-115, tnhb colony, tamil nagar, anaiyur, Madurai - 17.',
      contactNo: '+91 9842622544',
      emailId: '',
      additionalResponsibility: 'MEMBER - Works Committee	',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-19.jpg'),
  Councillor(
      wardNo: 20,
      name: 'TMT. C. NAGAJOTHI',
      address: '29, kamatchi nagar, old vilangudi, Madurai - 625018.',
      contactNo: '+91 8778395457',
      emailId: '',
      additionalResponsibility: 'MEMBER - Education Committee	',
      partyName: 'ADMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-20.jpg'),
  Councillor(
      wardNo: 21,
      name: 'THIRU. P. KAJENDRAKUMAR',
      address: '79E, thathaneri, samathuvapuram, Madurai-625018',
      contactNo: '+91 9994026461',
      emailId: '',
      additionalResponsibility: 'MEMBER - Taxation and Finance Committee	',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-21.jpg'),
  Councillor(
      wardNo: 22,
      name: 'TMT. B. MAHALAKSHMI',
      address:
          '47, indira nagar 2nd street, keelavaithiyanathapuram, Madurai-625018.',
      contactNo: '+91 9842169797',
      emailId: 'maha24varna@gmail.com',
      additionalResponsibility: 'MEMBER - Accounts Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-22.jpg'),
  Councillor(
      wardNo: 23,
      name: 'THIRU. T. KUMARAVEL	',
      address:
          '23, kulamangalam main road, sellur, Madurai NORTH, Madurai-625002.',
      contactNo: '+91 9789515794',
      emailId: 'thoondamanikumaravel12@gmail.com',
      additionalResponsibility: 'MEMBER - Accounts Committee',
      partyName: 'CPM',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-23.jpg'),
  Councillor(
      wardNo: 24,
      name: 'THIRU. J. MANICKAM',
      address: '170, 50 feet road, sellur, Madurai - 625002.',
      contactNo: '+91 8608635007',
      emailId: 'jkmanickam@gmail.com	',
      additionalResponsibility: 'MEMBER - Education Committee',
      partyName: 'ADMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-24.jpg'),
  Councillor(
      wardNo: 25,
      name: 'THIRU. K. MURALI GANESH',
      address:
          '14A, sathyamoorthy 2nd street, meenambalpuram, Madurai - 625002.',
      contactNo: '+91 9361155855	',
      emailId: '',
      additionalResponsibility: 'MEMBER - Public Health Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-25.jpg'),
  Councillor(
      wardNo: 26,
      name: 'TMT. K. CHOKKAYEE',
      address:
          '2, sulthan nagar visalam 1st street, pasumpon street, Madurai - 625002.',
      contactNo: '+91 9443725285',
      emailId: '',
      additionalResponsibility: 'MEMBER - Accounts Committee',
      partyName: 'ADMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-26.jpg'),
  Councillor(
      wardNo: 27,
      name: 'THIRU. A. MAYATHEVAN',
      address:
          '12, ahimsapuram 5th street, new visalam, sellur, Madurai - 625002.',
      contactNo: '9944213236',
      emailId: 'mayathevan3236@gmail.com',
      additionalResponsibility: 'MEMBER - Education Committee',
      partyName: 'ADMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-27.jpg'),
  Councillor(
      wardNo: 28,
      name: 'TMT. R. UMA	',
      address:
          '16/1, jamburopuram extension road, goripalayam, Madurai - 625002.',
      contactNo: '+91 9843759777',
      emailId: 'umesh0512@gmail.com',
      additionalResponsibility: 'MEMBER - Public Health Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-28.jpg'),
  Councillor(
      wardNo: 29,
      name: 'TMT. R. LOGAMANI',
      address:
          '12/12, santhanamariyammal kovil street, sellur, Madurai - 625002.',
      contactNo: '	+91 8015232469',
      emailId: '',
      additionalResponsibility: 'MEMBER - Public Health Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-29.jpg'),
  Councillor(
      wardNo: 30,
      name: 'TMT. A. VASANTHADEVI',
      address: '1, viveganandha 4th street, mathichiyam, Madurai - 625 020.',
      contactNo: '+91 9600146274',
      emailId: '',
      additionalResponsibility: 'MEMBER - Accounts Committee',
      partyName: 'ADMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-30.jpg'),
  Councillor(
      wardNo: 31,
      name: 'THIRU. V. MURUGAN',
      address: '9, kanmai mela street, tallakulam, Madurai - 625 002.',
      contactNo: '+91 9942319525',
      emailId: '',
      additionalResponsibility: 'MEMBER - Public Health Committee',
      partyName: 'CONGRESS',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-31.jpg'),
  Councillor(
      wardNo: 32,
      name: 'TMT. M. VIJAYA MOUSHUMI',
      address:
          '14/5, raja muthaiah residency, besent road, chokkikulam, Madurai - 625002.',
      contactNo: '+91 8610515232',
      emailId: '1976vijaya@gmail.com',
      additionalResponsibility: 'MEMBER - Public Health Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-32.jpg'),
  Councillor(
      wardNo: 33,
      name: 'TMT. R. MALATHI',
      address:
          '41, bharathi street, managiri 2nd street, kk nagar, Madurai - 625020.',
      contactNo: '+91 9894255800',
      emailId: '',
      additionalResponsibility: 'MEMBER - Public Health Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-33.jpg'),
  Councillor(
      wardNo: 34,
      name: 'TMT. J. PANDEESWARI',
      address: '1A, moulana sahip street, anna nagar, Madurai - 625020.',
      contactNo: '+91 9443774818',
      emailId: 'mrjmanikandeswaran@gmail.com',
      additionalResponsibility: 'MEMBER - Public Health Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-34.jpg'),
  Councillor(
      wardNo: 35,
      name: 'TMT. S. JANAKI',
      address: '4/122, pallivasal street, melamadai, Madurai - 625020.',
      contactNo: '',
      emailId: 'mpsuresh99444@gmail.com',
      additionalResponsibility: 'MEMBER - Public Health Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-35.jpg'),
  Councillor(
      wardNo: 36,
      name: 'THIRU. V. KARTHIKEYAN',
      address: '5,bharathiyar street, k.k. nagar, Madurai-625020.',
      contactNo: '+91 9047012224',
      emailId: '',
      additionalResponsibility: 'MEMBER - Works Committee',
      partyName: 'CONGRESS',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-36.jpg'),
  Councillor(
      wardNo: 37,
      name: 'THIRU. N. PONNUVALAVAN',
      address:
          '5/403, mannar thirumalai street, thasildar nagar, Madurai-625020',
      contactNo: '+91 9842198980',
      emailId: '',
      additionalResponsibility: 'MEMBER - Town Planning Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-37.jpg'),
  Councillor(
      wardNo: 38,
      name: 'THIRU. T. KATHIRAVAN',
      address: '2/779, anumarpatti, vandiyur, Madurai - 625020',
      contactNo: '+91 9677565484',
      emailId: '',
      additionalResponsibility: '',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-38.jpg'),
  Councillor(
      wardNo: 39,
      name: 'THIRU. P .MARNADU',
      address: '1/1102, abbas street, yagappa nagar Madurai-625020.',
      contactNo: '+91 9994837101',
      emailId: '',
      additionalResponsibility: 'MEMBER - Public Health Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-39.jpg'),
  Councillor(
      wardNo: 40,
      name: 'THIRU. C. M. DURAIPANDIAN',
      address: '2/282/B-perumal koil street, vandiyur, Madurai - 20',
      contactNo: '+91 9364401919',
      emailId: '',
      additionalResponsibility: '',
      partyName: 'DMK',
      photoUrl:
          'https://www.maduraicorporation.co.in/img/councilor/WD-40.jpeg'),
  Councillor(
      wardNo: 41,
      name: 'THIRU. K. SENTHAMARAI KANNAN',
      address: '2/9, palkarar street, iravathanallur, Madurai-625009.',
      contactNo: '+91 9443041310',
      emailId: '',
      additionalResponsibility: 'MEMBER - Town Planning Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-41.jpg'),
  Councillor(
      wardNo: 42,
      name: 'TMT. K. SELVI',
      address: '2/301C, C.M nagar, vandiyur, Madurai-625020.',
      contactNo: '+91 9047942223',
      emailId: '',
      additionalResponsibility: 'MEMBER - Taxation and Finance Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-42.jpg'),
  Councillor(
      wardNo: 43,
      name: 'THIRU. M. MUGESH SHARMA',
      address: '38, NMR road, kamarajapuram, munichalai, Madurai - 625009.',
      contactNo: '+91 9994167700',
      emailId: 'velmurugan.mss@gmail.com',
      additionalResponsibility:
          'CHAIRPERSON ZONE IV(SOUTH) and MEMBER- Taxation and Finance Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-43.jpg'),
  Councillor(
      wardNo: 44,
      name: 'TMT. K. TAMILSELVI	',
      address:
          '27, kamarajapuram, north street, munichalai road, Madurai - 625009.	',
      contactNo: '+91 9994030380',
      emailId: '',
      additionalResponsibility: 'MEMBER - Taxation and Finance Committee',
      partyName: 'MDMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-44.png'),
  Councillor(
      wardNo: 45,
      name: 'TMT. K. SHANMUGAVALLI',
      address:
          '31A/81, indira nagar, kamarajapuram north street, Madurai - 625009.',
      contactNo: '+91 9944028822',
      emailId: 'subhashinikadir@gmail.com',
      additionalResponsibility: '',
      partyName: 'ADMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-45.jpg'),
  Councillor(
      wardNo: 46,
      name: 'TMT. P. VIJAYALAKSHMI',
      address: '33, bharathiyar street, kamarajar puram, Madurai - 625009.',
      contactNo: '+91 9843360043',
      emailId: '',
      additionalResponsibility: '',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-46.jpg'),
  Councillor(
      wardNo: 47,
      name: 'TMT. M. BANU',
      address:
          '1E/97, south perumal maistri street, south gate, Madurai - 625001.	',
      contactNo: '+91 9894100853',
      emailId: 'mubarakmandiri@gmail.com',
      additionalResponsibility: 'MEMBER - Education Committee',
      partyName: 'INDEPENDENT	',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-47.jpg'),
  Councillor(
      wardNo: 48,
      name: 'TMT. K. RUBINIKUMAR',
      address: '38,kanpalayam 2nd street, kamarajar salai, Madurai - 625009.',
      contactNo: '+91 9842387871',
      emailId: '',
      additionalResponsibility: 'MEMBER - Works Committee',
      partyName: 'ADMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-48.jpg'),
  Councillor(
      wardNo: 49,
      name: 'THIRU. A. SYED ABUTHAHIR',
      address:
          '17, kollam pattarai street, keelaveli veethi, Madurai - 625001.',
      contactNo: '+91 9443916963',
      emailId: '',
      additionalResponsibility: 'MEMBER - Public Health Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-49.jpg'),
  Councillor(
      wardNo: 50,
      name: 'TMT. R. INDIRAGANDHI',
      address:
          '43, thirumalarayar padithurai road, simmakkal, Madurai - 625001.',
      contactNo: '+91 9488957070',
      emailId: '',
      additionalResponsibility:
          'MEMBER - Appointment Committee and MEMBER - Accounts Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-50.jpg'),
  Councillor(
      wardNo: 51,
      name: 'TMT. K. VIJAYALAKSHMI',
      address: '4A, vellalar 1st lane, west tower street, Madurai - 625001.',
      contactNo: '+91 9944100306',
      emailId: '',
      additionalResponsibility: 'CHAIRPERSON - Taxation and Finance Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-51.jpg'),
  Councillor(
      wardNo: 52,
      name: 'THIRU. S. BASKARAN',
      address: '16-1, vaniyar 2nd lane, nethaji road, Madurai - 625001.',
      contactNo: '+91 9842178079',
      emailId: 'bossmdmk@gmail.com',
      additionalResponsibility: 'MEMBER - Town Planning Committee',
      partyName: 'MDMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-52.jpg'),
  Councillor(
      wardNo: 53,
      name: 'THIRU. S. ARUNKUMAR',
      address: '121B, pandiya velalar street, Madurai - 625001.',
      contactNo: '+91 9786900678',
      emailId: 'a9786900678@gmail.com',
      additionalResponsibility: 'MEMBER - Town Planning Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-53.jpg'),
  Councillor(
      wardNo: 54,
      name: 'TMT. I. NOORJAHAN',
      address:
          '24/37, south mada street, near perumal kovil street, Madurai - 625001.	',
      contactNo: '+91 8148283824',
      emailId: '',
      additionalResponsibility: 'CHAIRPERSON - Accounts Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-54.jpg'),
  Councillor(
      wardNo: 55,
      name: 'TMT. G. VIJAYA',
      address: '127, North perumal mastry street, Madurai - 625001.',
      contactNo: '+91 9787888614',
      emailId: '',
      additionalResponsibility: 'MEMBER - Taxation and Finance Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-55.jpg'),
  Councillor(
      wardNo: 56,
      name: 'TMT. V. JENNIAMMAL',
      address: '12, Mothilal 3rd street, andhra street, Madurai - 625016.',
      contactNo: '+91 9940713242',
      emailId: '',
      additionalResponsibility: 'MEMBER - Works Committee',
      partyName: 'CPI(M)',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-56.jpg'),
  Councillor(
      wardNo: 57,
      name: 'TMT. V. INDIRANI (MAYOR)',
      address:
          '43/17, shanmuganathapuram 1st street, bharathiyar main road, Madurai SOUTH, Madurai - 625016.	',
      contactNo: '+91 9842705161',
      emailId: '',
      additionalResponsibility: 'MAYOR MEMBER - Accounts Committee',
      partyName: 'DMK',
      photoUrl:
          'https://www.maduraicorporation.co.in/img/ministers_tamil/Mayor.jpeg'),
  Councillor(
      wardNo: 58,
      name: 'THIRU. M. JEYARAM',
      address:
          '32A, corporation colony, arapalayam bustand near, Madurai - 625016.',
      contactNo: '+91 9443059922',
      emailId: 'mjayaramdmk@gmail.com',
      additionalResponsibility: '',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-58.jpg'),
  Councillor(
      wardNo: 59,
      name: 'TMT. A. MAHALAKSHMI',
      address:
          '7/2, Alagan thoppu street, kennet hospital road, ellisnagar, Madurai - 625016.',
      contactNo: '+91 9344108765',
      emailId: '',
      additionalResponsibility: 'MEMBER - Public Health Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-59.jpg'),
  Councillor(
      wardNo: 60,
      name: 'TMT. S. BAMA',
      address: 'RH129, TNHB colony, ellisnagar, Madurai - 625016.',
      contactNo: '+91 9842168213',
      emailId: 'murgan.rajarajan@gmail.com',
      additionalResponsibility: 'MEMBER - Town Planning Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-60.jpg'),
  Councillor(
      wardNo: 61,
      name: 'TMT. S. SELVI',
      address: '5A, old post office street, s.s.colony, Madurai - 625016.',
      contactNo: '+91 9842103450',
      emailId: '',
      additionalResponsibility: 'MEMBER - Town Planning Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-61.jpg'),
  Councillor(
      wardNo: 62,
      name: 'THIRU. K. JAYACHANDRAN',
      address: '4/34, muniyandi kovil street, parvai, Madurai - 625402.',
      contactNo: '+91 9894022215',
      emailId: 'jay.ronnie@gmail.com',
      additionalResponsibility: '',
      partyName: 'INDEPENDENT',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-62.jpg'),
  Councillor(
      wardNo: 63,
      name: 'THIRU. R. KRISHNAMOORTHY',
      address:
          '12B, roja street, madurai west, pethaniyapuram. Madurai-625016.',
      contactNo: '+91 9842169375',
      emailId: 'krishnamoorthy0161@gmail.com',
      additionalResponsibility: 'MEMBER - Accounts Committee',
      partyName: 'ADMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-63.jpg'),
  Councillor(
      wardNo: 64,
      name: 'THIRU. M. RAJA.',
      address:
          '37/1, jeeva street, kulamangalam main road, sellur, Madurai - 625 002.',
      contactNo: '+91 9942982200',
      emailId: 'solaimraja67@gmail.com',
      additionalResponsibility: 'MEMBER - Accounts Committee',
      partyName: 'ADMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-64.jpg'),
  Councillor(
      wardNo: 65,
      name: 'THIRU. M. SOLAI SENTHILKUMAR',
      address:
          '48/8A, kamatchi amman kovil 2nd street, bethaniyapuram, Madurai - 625016.',
      contactNo: '+91 7010708112',
      emailId: '',
      additionalResponsibility: '',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-65.jpg'),
  Councillor(
      wardNo: 66,
      name: 'THIRU. N. MARIMUTHU',
      address: '34/1, melakkal main road, kochadai, Madurai - 625016.',
      contactNo: '+91 9842156161',
      emailId: 'mm3800396@gmail.com',
      additionalResponsibility: 'MEMBER - Accounts Committee',
      partyName: 'ADMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-66.jpg'),
  Councillor(
      wardNo: 67,
      name: 'THIRU. D.C. NAGANATHAN.',
      address: '43, 2ND street, sammatipuram, Madurai - 625016.',
      contactNo: '+91 9360311959',
      emailId: '',
      additionalResponsibility: 'MEMBER - Town Planning Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-67.png'),
  Councillor(
      wardNo: 68,
      name: 'THIRU.J.MOOVENDRAN',
      address:
          '116, muthunagar 2nd street, ponmeni main road, Madurai - 625016',
      contactNo: '+91 9943123458',
      emailId: 'jmoova@gmail.com',
      additionalResponsibility: 'CHAIRPERSON - Town Planning Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-68.jpg'),
  Councillor(
      wardNo: 69,
      name: 'TMT. A. SARASWATHY',
      address:
          '6F6-72, chokkalinga nagar 6th street, malligai kudyiruppu, Madurai - 625016.',
      contactNo: '+91 9600968158',
      emailId: '',
      additionalResponsibility: 'MEMBER - Taxation and Finance Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-69.jpg'),
  Councillor(
      wardNo: 70,
      name: 'TMT. T. AMUTHA',
      address: '68/120, north street, palnganatham, Madurai - 625003.',
      contactNo: '+91 9442111200',
      emailId: '',
      additionalResponsibility: 'MEMBER - Town Planning Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-70.jpg'),
  Councillor(
      wardNo: 71,
      name: 'THIRU. V. MUNIYANDI',
      address:
          '3, cross street, thirupathi nagar, avaniyapuram, Madurai- 625012.',
      contactNo: '+91 9345204021',
      emailId: '',
      additionalResponsibility: 'MEMBER - Taxation and Finance Committee',
      partyName: 'VCK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-71.jpg'),
  Councillor(
      wardNo: 72,
      name: 'THIRU. P. KARUPPUSAMY',
      address:
          '21, e.b. main road, muthuramalingapuram, thirupparakundram, Madurai - 625004.',
      contactNo: '+91 9842188860',
      emailId: '',
      additionalResponsibility: 'MEMBER - Accounts Committee',
      partyName: 'ADMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-72.jpg'),
  Councillor(
      wardNo: 73,
      name: 'THIRU. S.S. BOSE',
      address: '37/10, agraharam, palanganatham, Madurai - 625003.',
      contactNo: '+91 9443023732',
      emailId: 'surulibose@gmail.com',
      additionalResponsibility: 'MEMBER - Taxation and Finance Committee',
      partyName: 'CONGRESS',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-73.jpg'),
  Councillor(
      wardNo: 74,
      name: 'THIRU. V. SUDHAN',
      address:
          '3, rajaji street, pasumpon nagar, palanganatham, Madurai - 625003.',
      contactNo: '+91 8220185555	',
      emailId: '',
      additionalResponsibility: '',
      partyName: 'DMK',
      photoUrl:
          'https://www.maduraicorporation.co.in/img/councilor/WD-74.jpeg'),
  Councillor(
      wardNo: 75,
      name: 'TMT. P. PANDI SELVI',
      address: '19/18, sundararajapuram, jr road, Madurai.',
      contactNo: '+91 9025539146',
      emailId: 'raane88@gmail.com',
      additionalResponsibility:
          'CHAIRPERSON - ZONE- III(CENTRAL) MEMBER - Education Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-75.jpg'),
  Councillor(
      wardNo: 76,
      name: 'THIRU. R. KARTHICK',
      address:
          '491, north main road, madurai baskara doss nagar, Madurai - 625001.',
      contactNo: '+91 7401572364',
      emailId: 'karthikbaby12345@gmail.com',
      additionalResponsibility: 'MEMBER - Education Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-76.jpg'),
  Councillor(
      wardNo: 77,
      name: 'THIRU. D. RAJ PRATHABAN',
      address: '1E, harijan colony, supramaniyapuram, Madurai - 625011.',
      contactNo: '+91 9087083067',
      emailId: 'Maduraiprathap@gmail.com',
      additionalResponsibility: 'MEMBER - Accounts Committee',
      partyName: 'INDEPENDENT',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-77.jpg'),
  Councillor(
      wardNo: 78,
      name: 'TMT. P. TAMILSELVI',
      address: '235, jeeva nagar 2nd street, jaihindpuram, Madurai-625001.',
      contactNo: '+91 9715492926',
      emailId: 'karthickpalani359@gmail.com',
      additionalResponsibility: 'MEMBER - Town Planning Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-78.jpg'),
  Councillor(
      wardNo: 79,
      name: 'TMT. V. LAKSHIKKA SREE',
      address:
          '28C/2, sri veeramakali illam, pulipandiyan street, jaihindpuram, Madurai - 625011.',
      contactNo: '+91 9500783793',
      emailId: 'velu.akm93@gmail.com',
      additionalResponsibility: 'MEMBER - Taxation and Finance Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-79.jpg'),
  Councillor(
      wardNo: 80,
      name: 'THIRU. T. NAGARAJAN',
      address:
          '136, veerakaliamman kovil street, jaihindpuram, Madurai- 625011.',
      contactNo: '+91 9443794333',
      emailId: 'nagarajantcpm@gmail.com',
      additionalResponsibility: 'DEPUTY MAYOR',
      partyName: 'CPI(M)',
      photoUrl:
          'https://www.maduraicorporation.co.in/images/Madurai-Deputy-Mayor.jpg'),
  Councillor(
      wardNo: 81,
      name: 'THIRU. S.V. MURUGAN',
      address: '263, nethaji street, jaihindpuram, Madurai- 625011.',
      contactNo: '+91 9944210089',
      emailId: '',
      additionalResponsibility: 'MEMBER - Education Committee',
      partyName: 'CONGRESS',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-81.jpg'),
  Councillor(
      wardNo: 82,
      name: 'THIRU. G. KAVERI',
      address:
          '46/32, sithi vinayagar street, solai alagupuram, Madurai - 625011.',
      contactNo: '9944186666	',
      emailId: 'kaverigdmk88@gmail.com',
      additionalResponsibility: 'MEMBER - Town Planning Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-82.jpg'),
  Councillor(
      wardNo: 83,
      name: 'THIRU. S.M.T. RAVI',
      address:
          '18/10, janaki nagar 1st street, solai alagupuram 1st street, Madurai - 625011.',
      contactNo: '+91 9788778586',
      emailId: '',
      additionalResponsibility: 'MEMBER - Education Committee',
      partyName: 'ADMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-83.jpg'),
  Councillor(
      wardNo: 84,
      name: 'THIRU. BOSE MUTHIAH',
      address:
          '18, thirumalai street, ganapathi nagar, avaniyapuram, Madurai - 625012.',
      contactNo: '+91 9944212234',
      emailId: 'bosemuthiah@gmail.com',
      additionalResponsibility: '',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-84.jpg'),
  Councillor(
      wardNo: 85,
      name: 'TMT. J. MUTHUMARI',
      address: '111/268, South veli street, Madurai - 625001.',
      contactNo: '+91 9843383822',
      emailId: 'muthumarij1979@gmail.com',
      additionalResponsibility: 'MEMBER - Taxation and Finance Committee',
      partyName: 'ADMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-85.jpg'),
  Councillor(
      wardNo: 86,
      name: 'TMT. S. BOOMA',
      address: '12, Irulappasamy kovil, keerathurai, Madurai - 625001.',
      contactNo: '+91 9443375815',
      emailId: '',
      additionalResponsibility: 'MEMBER - Accounts Committee',
      partyName: 'BJP',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-86.jpg'),
  Councillor(
      wardNo: 87,
      name: 'THIRU. J. KALIDOSS',
      address: '876, TNHB colony, west anuppanadi, Madurai - 625009.',
      contactNo: '+91 8695777775',
      emailId: '',
      additionalResponsibility: 'MEMBER - Public Health Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-87.jpg'),
  Councillor(
      wardNo: 88,
      name: 'TMT. M. PREMA',
      address: '114, Deivakanni street, anuppanadi, Madurai - 625009',
      contactNo: '+91 8778814828',
      emailId: '',
      additionalResponsibility: 'MEMBER - Education Committee',
      partyName: 'ADMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-88.jpg'),
  Councillor(
      wardNo: 89,
      name: 'TMT. S. KAVITHA',
      address: '1/239B, Mettu street, chinthamani, Madurai - 625009.',
      contactNo: '+91 9629796103',
      emailId: '',
      additionalResponsibility: 'MEMBER - Taxation and Finance Committee',
      partyName: 'ADMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-89.jpg'),
  Councillor(
      wardNo: 90,
      name: 'THIRU. G. RAJARATHINAM',
      address:
          '12/2, Meenakshi nagar 2nd street, villapuram, Madurai - 625012.',
      contactNo: '+91 9894100678',
      emailId: 'kutty.6007@gmail.com',
      additionalResponsibility: 'MEMBER - Public Health Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-90.jpg'),
  Councillor(
      wardNo: 91,
      name: 'THIRU. K.A. VASU',
      address:
          '7/1, Parasakthi nagar main road, avaniyapuram, Madurai - 625012.',
      contactNo: '+91 9842161511',
      emailId: 'vasanthnet18@gmail.com',
      additionalResponsibility: 'MEMBER - Taxation and Finance Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-91.jpg'),
  Councillor(
      wardNo: 92,
      name: 'THIRU. M. KARUPPASAMY',
      address:
          '55, Parasakthi nagar main road, avaniyapuram, Madurai - 625012.',
      contactNo: '+91 9894774477	',
      emailId: '',
      additionalResponsibility: 'MEMBER - Education Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-92.png'),
  Councillor(
      wardNo: 93,
      name: 'THIRU M.P.R RAVICHANDRAN',
      address: '91, Thiyagarajar colony, pasumalai, Madurai - 625004.',
      contactNo: '+91 9843181995',
      emailId: '',
      additionalResponsibility: 'CHAIRPERSON - Education Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-93.jpg'),
  Councillor(
      wardNo: 94,
      name: 'TMT R. SWETHA',
      address:
          '10, Kambar street, thirunagar post, thirunagar, Madurai - 625006',
      contactNo: '+91 7708405556',
      emailId: '',
      additionalResponsibility: 'MEMBER - Works Committee',
      partyName: 'CONGRESS',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-94.jpg'),
  Councillor(
      wardNo: 95,
      name: 'TMT K. INDIRA GANDHI',
      address: '26A, Rajaji street, thirunagar, Madurai - 625006',
      contactNo: '9443474743',
      emailId: 'lkrishnasamy@yahoo.com',
      additionalResponsibility: 'MEMBER - Town Planning Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-95.jpg'),
  Councillor(
      wardNo: 96,
      name: 'TMT N. VIJAYA',
      address: '160, 3RD street, harvey patti, Madurai - 625005.',
      contactNo: '+91 9486017273',
      emailId: 'vijayanagaraj68@gmail.com',
      additionalResponsibility: 'MEMBER - Education Committee',
      partyName: 'CPI(M)',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-96.jpg'),
  Councillor(
      wardNo: 97,
      name: 'TMT R.SIVASAKTHI',
      address:
          '16, East lane, kodangi thoppu street, thirupparakundram, Madurai - 625005',
      contactNo: '+91 9360383654',
      emailId: '',
      additionalResponsibility: 'MEMBER - Town Planning Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-97.jpg'),
  Councillor(
      wardNo: 98,
      name: 'TMT V. SUVITHA',
      address:
          '13, Chokkalingam pillai street, thirupparakundram, Madurai - 625005.',
      contactNo: '+91 9092999909',
      emailId: 'vimaldhaya2010@gmail.com',
      additionalResponsibility:
          'CHAIRPERSON - ZONE - V(WEST) MEMBER - Accounts Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-98.jpg'),
  Councillor(
      wardNo: 99,
      name: 'THIRU M. SIVA',
      address: '22C/4A, Pasumpon nagar, thirupparakundram, Madurai - 625 005.',
      contactNo: '+91 9842107573',
      emailId: 'usilaispmsiva@gmail.com',
      additionalResponsibility: 'MEMBER - Taxation and Finance Committee',
      partyName: 'DMK',
      photoUrl: 'https://www.maduraicorporation.co.in/img/councilor/WD-99.jpg'),
  Councillor(
      wardNo: 100,
      name: 'TMT. A. MUTHULAKSHMI',
      address:
          '150/14, Chinnaudaippu, p.t.c. post, avaniyapuram, Madurai - 625022.',
      contactNo: '+91 9843312689',
      emailId: '',
      additionalResponsibility: 'MEMBER - Taxation and Finance Committee',
      partyName: 'MDMK	',
      photoUrl: ''),
];

