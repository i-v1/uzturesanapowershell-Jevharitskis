# Kā palaist darbu

1. Atver PowerShell un pārej uz šo mapi.
2. Katrā uzdevuma mapē palaid `.skripts.ps1` (bez liekās zīmes: `./skripts.ps1` PowerShell pierakstā ir ` .\skripts.ps1`).
3. Saglabā īsto izvadi, piemēram: ` .\skripts.ps1 | Out-File -FilePath izvade.txt -Encoding utf8`.
4. 04. uzdevumā vispirms izmanto ` .\skripts.ps1 -WhatIf`, un tikai tad parasto palaišanu, ja skolotājs to prasa un tev ir atļauja. Neieslēdz nezināmus servisus bez vajadzības.
5. 06. un 11. uzdevumā skripts izveido CSV failu.
6. `izvade.txt` sākumā ir tikai norāde, nevis īsti datora rezultāti. Aizstāj to ar sava datora izvadi.
7. Katrs skripts sākas ar `# Atskaites ID: RVT-4417`.
