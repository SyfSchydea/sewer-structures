.PHONY: all clean

zipopts := -r9q

all: sewers.zip

sewers.zip: $(shell find pack -type f)
	rm -f $@
	cd pack && \
		zip ${zipopts} ../$@ *

clean:
	rm -f sewers.zip
