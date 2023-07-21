timeout 36000 maude ./../../narrowing.maude ./pta-coffee.maude ./tests-pta-coffee/original-standard.maude  > ./results-pta-coffee/original-standard.txt & disown
sleep 2
timeout 36000 maude ./../../narrowing.maude ./pta-coffee.maude ./tests-pta-coffee/original-canonical.maude  > ./results-pta-coffee/original-canonical.txt & disown
sleep 2
timeout 36000 maude ./../../narrowing.maude ./pta-coffee.maude ./tests-pta-coffee/original-folding-standard.maude  > ./results-pta-coffee/original-folding-standard.txt & disown
sleep 2
timeout 36000 maude ./../../narrowing.maude ./pta-coffee.maude ./tests-pta-coffee/original-folding-canonical.maude  > ./results-pta-coffee/original-folding-canonical.txt & disown
sleep 2
timeout 36000 maude ./../../narrowing.maude ./pta-coffee.maude ./tests-pta-coffee/new-standard.maude  > ./results-pta-coffee/new-standard.txt & disown
sleep 2
timeout 36000 maude ./../../narrowing.maude ./pta-coffee.maude ./tests-pta-coffee/new-canonical.maude  > ./results-pta-coffee/new-canonical.txt & disown
sleep 2
timeout 36000 maude ./../../narrowing.maude ./pta-coffee.maude ./tests-pta-coffee/new-folding-standard.maude  > ./results-pta-coffee/new-folding-standard.txt & disown
sleep 2
timeout 36000 maude ./../../narrowing.maude ./pta-coffee.maude ./tests-pta-coffee/new-folding-canonical.maude  > ./results-pta-coffee/new-folding-canonical.txt & disown