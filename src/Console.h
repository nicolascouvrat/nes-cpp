#ifndef GUARD_CONSOLE_H
#define GUARD_CONSOLE_H


#include <string>
#include "Cpu.h"
#include "Ppu.h"


class Mapper;
class Console {
    public:
        Console(std::string);
        Mapper *get_mapper();
        CPU& get_cpu();
        PPU& get_ppu();
        void step();
    private:
        CPU cpu;
        PPU ppu;
        Mapper *mapper;
};

#endif