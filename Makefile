
build:
	@rm -rf dist
	@mkdir dist
	@sed "s/seajs-text/seajs-text-debug/" src/seajs-text.js >dist/seajs-text-debug.js
	@uglifyjs src/seajs-text.js -o dist/seajs-text.js -mc
	@make size

test:
	@make test -C ../seajs

size:
	@../seajs/tools/size.sh seajs-text
