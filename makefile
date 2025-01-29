prepare:
	echo $(date)
	npm run build
	rm -rf ./deploy && mkdir deploy
	cd ./deploy && mkdir snipstk
	cd ./../../
	cd ./target && cp ./snipstk.contract.wasm ./../deploy/snipstk/snipstk.contract.wasm && cp ./snipstk.contract.abi ./../deploy/snipstk/snipstk.contract.abi
	
prepare-snipsys:
	echo $(date)
	npm run build:snipsys
	rm -rf ./deploy && mkdir deploy
	cd ./deploy && mkdir snipsys
	cd ./../../
	cd ./target && cp ./snipsys.contract.wasm ./../deploy/snipsys/snipsys.contract.wasm && cp ./snipsys.contract.abi ./../deploy/snipsys/snipsys.contract.abi
	
prepare-snipreward:
	echo $(date)
	npm run build:snipreward
	rm -rf ./deploy && mkdir deploy
	cd ./deploy && mkdir snipreward
	cd ./../../
	cd ./target && cp ./snipreward.contract.wasm ./../deploy/snipreward/snipreward.contract.wasm && cp ./snipreward.contract.abi ./../deploy/snipreward/snipreward.contract.abi
	
deploy-testnet:
	cd ./deploy/snipstk && proton chain:set proton-test && proton contract:set snipstk ./ 

deploy-mainnet:
	cd ./deploy/snipstk && proton chain:set proton && proton contract:set snipstk ./ 

feed-ram:
	proton chain:set proton-test && proton faucet:claim XPR snipstk || echo "already claimed" && proton ram:buy snipstk snipstk 450000

feed-ram-snipsys:
	proton chain:set proton-test && proton faucet:claim XPR snipsys || echo "already claimed" && proton ram:buy snipsys snipsys 450000

feed-ram-snipreward:
	proton chain:set proton-test && proton faucet:claim XPR snipreward || echo "already claimed" && proton ram:buy snipreward snipreward 450000

testnet:
	make prepare && make deploy-testnet

testnet-snipsys:
	make prepare-snipsys && cd ./deploy/snipsys && proton chain:set proton-test && proton contract:set snipsys ./ 

testnet-snipreward:
	make prepare-snipreward && cd ./deploy/snipreward && proton chain:set proton-test && proton contract:set snipreward ./ 

publish:
	make prepare && make deploy-mainnet