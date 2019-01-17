GPP=g++
SRC_FOLDER=src
BUILD_FOLDER=build
ENTRY=main

SOURCES=$(shell find $(SRC_FOLDER) -type f -name *.cpp)
OBJECTS=$(patsubst $(SRC_FOLDER)/%.cpp, $(BUILD_FOLDER)/%.o, $(SOURCES))

main: $(OBJECTS)
	$(GPP) -o $(BUILD_FOLDER)/$(ENTRY) $(OBJECTS)
	./$(BUILD_FOLDER)/$(ENTRY)

$(BUILD_FOLDER)/%.o: $(SRC_FOLDER)/%.cpp build_folder
	$(GPP) -o $@ -c $<

build_folder:
	mkdir -p $(BUILD_FOLDER)


.PHONY: clean
clean:
	rm -rf $(BUILD_FOLDER)
