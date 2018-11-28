inspector/target/panel.js: inspector/src/**/* inspector/deps.edn inspector/cljs.edn
	cd inspector && clojure -A:build-panel

extension/panel.js: inspector/target/panel.js
	cp inspector/target/panel.js extension/panel.js

extension/panel.js.map: inspector/target/panel.js.map
	cp inspector/target/panel.js.map extension/panel.js.map

extension/inspector.css: lib/resources/public/inspector.css
	cp lib/resources/public/inspector.css extension/inspector.css

extension: extension/panel.js extension/panel.js.map extension/inspector.css
