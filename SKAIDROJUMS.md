# Skaidrojums par PowerShell skriptiem

**Pirms iesniegšanas:** katru skriptu palaid savā datorā un papildini rindkopas ar īstajiem rezultātiem. Neatstāj tikai vispārīgu tekstu.

## 01 — Sistēmas apraksts
Skripts parādīja mana datora nosaukumu, operētājsistēmas nosaukumu un būvējuma numuru, PowerShell versiju, datumu un laiku, kā arī procesu skaitu. Manā datorā procesu skaits bija 199.

## 02 — Desmit procesi
Skripts parādīja desmit procesus pēc izmantotās atmiņas augošā secībā. Visvairāk atmiņas izmantoja PhoneExperienceHost, aptuveni 190 MB.

## 03 — Servisu skaitīšana
Ar `foreach` un `if` saskaitīju darbojošos un apturētos servisus. Darbojās 111, apturēti 179. To summa 290. Kopējais servisu skaits bija 290. Ja skaitļi nesakrīt, daži servisi var būt citā statusā.

## 04 — Automātisko servisu palaišana
Skripts meklēja automātiskus, bet apturētus servisus. Vispirms izmantoju `-WhatIf`, lai pārbaudītu darbību. Atrasto servisu skaits bija ____. Servisus palaidu tikai pēc pārbaudes un atbilstoši skolotāja norādījumam.

## 05 — Kļūdas žurnālā
Pēdējo 48 stundu System žurnālā bija 28 kļūdu ieraksti. Visbiežākais avots bija Microsoft-Windows-DistributedCOM
 kas parādījās 25 reizes. Šis skaits viens pats nenozīmē, ka dators noteikti ir bojāts; kļūdu avots un apraksts jāvērtē atsevišķi.

## 06 — Draiveri, kas nav Microsoft
CSV failā saglabāju draiverus, kuru piegādātājs nav Microsoft. Failā bija 39 datu rindas. Draiveris Xbox pēc manas pārbaudes, pieder ierīcei Xvdd SCSI Miniport  

## 07 — Diska vieta
Skripts parādīja disku kopējo izmēru un brīvo vietu GB. Brīdinājuma robeža bija 10 GB. Diskā C bija 188 GB brīvas vietas, un brīdinājums -.

## 08 — Divi veidi
Informāciju par Spooler servisu ieguvu ar `Get-Service` un `Get-CimInstance`. Pirmais variants aizņēma 13.863 ms, otrais 590.556 ms. Ātrāks bija Get-Service Šādai mazai darbībai atšķirība parasti nav būtiska ikdienas lietošanā.

## 09 — Procesa lietotājs
Skripts mēģināja noteikt, kurš lietotājs palaidis aktīvos procesus. Manā datorā informācija bija pieejama 67 procesiem; dažiem lietotāji nebija pieejami, iespējams, tiesību ierobežojumu dēļ.

## 10 — Kopsavilkums
Kopsavilkuma skripts vēlreiz nolasīja procesu, servisu, kļūdu žurnāla un disku datus. Salīdzinot ar iepriekšējiem uzdevumiem, atšķīrās ____. Tas var notikt, jo procesi un žurnāla ieraksti laika gaitā mainās.

## 11 — Tīkla adapteri
Skripts parādīja tīkla adapteru nosaukumu, statusu, MAC adresi un savienojuma ātrumu, kā arī saglabāja datus `adapteri.csv`. Aktīvi bija 2 neaktīvi 1 Neaktīvs adapteris var nebūt pieslēgts vai netikt izmantots.
