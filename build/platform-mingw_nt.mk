ASM = nasm
CFLAGS +=
LDFLAGS +=
ifeq ($(ENABLE64BIT), Yes)
ASMFLAGS += -f win64
ASMFLAGS_PLATFORM = -DWIN64
CFLAGS += -DWIN64
CXX = x86_64-w64-mingw32-g++
AR = x86_64-w64-mingw32-ar
else
ASMFLAGS += -f win32 -DPREFIX
CFLAGS += -DWIN32
endif
EXEEXT = .exe

