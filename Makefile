SASS_DIR = ./sass
SASS_FILE = style.scss

CSS_DIR = ./static/css
CSS_FILE = C.css

.PHONY: build_style build clean

build: clean build_style

build_style: 
	scss $(SASS_DIR)/$(SASS_FILE) > $(CSS_DIR)/$(CSS_FILE)

clean:
	rm -f $(CSS_DIR)/$(CSS_FILE)
