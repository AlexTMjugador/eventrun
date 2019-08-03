VERSION=1.0-1

eventrun_$(VERSION).deb: src/*
	dpkg-deb --build src eventrun_$(VERSION).deb
