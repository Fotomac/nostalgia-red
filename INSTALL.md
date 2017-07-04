# Linux

	sudo apt-get install make gcc bison git python

	git clone https://github.com/rednex/rgbds
	cd rgbds
	git checkout v0.2.5
	sudo make install
	cd ..

	git clone --recursive https://github.com/Fotomac/nostalgia-red
	cd nostalgia-red

To build **pokered.gbc**, **pokegreen.gbc**, and **pokeblue.gbc**:

	make

To build them individually:

	make red
	make green
	make blue


# Mac

In **Terminal**, run:

	xcode-select --install

	git clone https://github.com/rednex/rgbds
	cd rgbds
	git checkout v0.2.5
	sudo make install
	cd ..

	git clone --recursive https://github.com/Fotomac/nostalgia-red
	cd nostalgia-red

	make


# Windows

To build on Windows, use [**Cygwin**](http://cygwin.com/install.html). Use the default settings.

In the installer, select the following packages: `make` `git` `python` `gettext`

Then get [**rgbds 0.2.5**](https://github.com/bentley/rgbds/releases/tag/v0.2.5).
Extract the archive and put `rgbasm.exe`, `rgblink.exe`, `rgbfix.exe` and `rgbgfx.exe` in `C:\cygwin\usr\local\bin`.  If your Cygwin installation directory differs, ensure the `bin` directory is present in the PATH variable.

In the **Cygwin terminal**:

	git clone --recursive https://github.com/Fotomac/nostalgia-red
	cd nostalgia-red

	make
