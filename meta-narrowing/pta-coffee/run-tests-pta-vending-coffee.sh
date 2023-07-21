timeout 36000 maude ./../narrowing.maude ./pta-vending-coffee.maude ./tests-pta-vending-coffee/generic-standard.maude  > ./results-pta-vending-coffee/generic-standard.txt & disown
sleep 2
timeout 36000 maude ./../narrowing.maude ./pta-vending-coffee.maude ./tests-pta-vending-coffee/generic-canonical.maude  > ./results-pta-vending-coffee/generic-canonical.txt & disown
sleep 2
timeout 36000 maude ./../narrowing.maude ./pta-vending-coffee.maude ./tests-pta-vending-coffee/generic-folding-standard.maude  > ./results-pta-vending-coffee/generic-folding-standard.txt & disown
sleep 2
timeout 36000 maude ./../narrowing.maude ./pta-vending-coffee.maude ./tests-pta-vending-coffee/generic-folding-canonical.maude  > ./results-pta-vending-coffee/generic-folding-canonical.txt & disown
sleep 2
timeout 36000 maude ./../narrowing.maude ./pta-vending-coffee.maude ./tests-pta-vending-coffee/concrete-standard.maude  > ./results-pta-vending-coffee/concrete-standard.txt & disown
sleep 2
timeout 36000 maude ./../narrowing.maude ./pta-vending-coffee.maude ./tests-pta-vending-coffee/concrete-canonical.maude  > ./results-pta-vending-coffee/concrete-canonical.txt & disown
sleep 2
timeout 36000 maude ./../narrowing.maude ./pta-vending-coffee.maude ./tests-pta-vending-coffee/concrete-folding-standard.maude  > ./results-pta-vending-coffee/concrete-folding-standard.txt & disown
sleep 2
timeout 36000 maude ./../narrowing.maude ./pta-vending-coffee.maude ./tests-pta-vending-coffee/concrete-folding-canonical.maude  > ./results-pta-vending-coffee/concrete-folding-canonical.txt & disown