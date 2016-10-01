
TARGET_BIN = build/target.txt
OTHER_DIR = "other_directory0/a/b/c"

ifeq ($(OS),Windows_NT)
include ../mkwin_mn.Makefile
else
MKDIR_P := mkdir -p
endif

all: $(TARGET_BIN) 

$(TARGET_BIN):
	$(MKDIR_P) $(dir $(TARGET_BIN))
	$(MKDIR_P) $(OTHER_DIR)
	type nul > "$(TARGET_BIN)"

clean:
	$(RM) $(TARGET_BIN)
	$(RM) other_directory0
