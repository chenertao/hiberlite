# GNU Make project makefile autogenerated by Premake
ifndef config
  config=debug
endif

ifndef verbose
  SILENT = @
endif

ifndef CC
  CC = gcc
endif

ifndef CXX
  CXX = g++
endif

ifndef AR
  AR = ar
endif

ifndef RESCOMP
  ifdef WINDRES
    RESCOMP = $(WINDRES)
  else
    RESCOMP = windres
  endif
endif

ifeq ($(config),debug)
  OBJDIR     = obj/Debug/sample
  TARGETDIR  = ..
  TARGET     = $(TARGETDIR)/sample
  DEFINES   += -DDEBUG -D_DEBUG
  INCLUDES  += -I../include -I../sqlite-amalgamation -I../Catch/single_include
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -g -v -std=c++0x
  CXXFLAGS  += $(CFLAGS) 
  LDFLAGS   += -L..
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LIBS      += ../libhiberlite.a ../libsqlite.a -ldl -lpthread
  LDDEPS    += ../libhiberlite.a ../libsqlite.a
  LINKCMD    = $(CXX) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(LIBS) $(LDFLAGS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
	@echo Running post-build commands
	$(TARGET)
  endef
endif

ifeq ($(config),release)
  OBJDIR     = obj/Release/sample
  TARGETDIR  = ..
  TARGET     = $(TARGETDIR)/sample
  DEFINES   += -DRELEASE
  INCLUDES  += -I../include -I../sqlite-amalgamation -I../Catch/single_include
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -O2 -v -std=c++0x
  CXXFLAGS  += $(CFLAGS) 
  LDFLAGS   += -L.. -s
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LIBS      += ../libhiberlite.a ../libsqlite.a -ldl -lpthread
  LDDEPS    += ../libhiberlite.a ../libsqlite.a
  LINKCMD    = $(CXX) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(LIBS) $(LDFLAGS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
	@echo Running post-build commands
	$(TARGET)
  endef
endif

ifeq ($(config),debug32)
  OBJDIR     = obj/x32/Debug/sample
  TARGETDIR  = ..
  TARGET     = $(TARGETDIR)/sample
  DEFINES   += -DDEBUG -D_DEBUG
  INCLUDES  += -I../include -I../sqlite-amalgamation -I../Catch/single_include
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -g -m32 -v -std=c++0x
  CXXFLAGS  += $(CFLAGS) 
  LDFLAGS   += -L.. -m32 -L/usr/lib32
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LIBS      += ../libhiberlite.a ../libsqlite.a -ldl -lpthread
  LDDEPS    += ../libhiberlite.a ../libsqlite.a
  LINKCMD    = $(CXX) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(LIBS) $(LDFLAGS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
	@echo Running post-build commands
	$(TARGET)
  endef
endif

ifeq ($(config),release32)
  OBJDIR     = obj/x32/Release/sample
  TARGETDIR  = ..
  TARGET     = $(TARGETDIR)/sample
  DEFINES   += -DRELEASE
  INCLUDES  += -I../include -I../sqlite-amalgamation -I../Catch/single_include
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -O2 -m32 -v -std=c++0x
  CXXFLAGS  += $(CFLAGS) 
  LDFLAGS   += -L.. -s -m32 -L/usr/lib32
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LIBS      += ../libhiberlite.a ../libsqlite.a -ldl -lpthread
  LDDEPS    += ../libhiberlite.a ../libsqlite.a
  LINKCMD    = $(CXX) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(LIBS) $(LDFLAGS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
	@echo Running post-build commands
	$(TARGET)
  endef
endif

ifeq ($(config),debug64)
  OBJDIR     = obj/x64/Debug/sample
  TARGETDIR  = ..
  TARGET     = $(TARGETDIR)/sample
  DEFINES   += -DDEBUG -D_DEBUG
  INCLUDES  += -I../include -I../sqlite-amalgamation -I../Catch/single_include
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -g -m64 -v -std=c++0x
  CXXFLAGS  += $(CFLAGS) 
  LDFLAGS   += -L.. -m64 -L/usr/lib64
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LIBS      += ../libhiberlite.a ../libsqlite.a -ldl -lpthread
  LDDEPS    += ../libhiberlite.a ../libsqlite.a
  LINKCMD    = $(CXX) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(LIBS) $(LDFLAGS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
	@echo Running post-build commands
	$(TARGET)
  endef
endif

ifeq ($(config),release64)
  OBJDIR     = obj/x64/Release/sample
  TARGETDIR  = ..
  TARGET     = $(TARGETDIR)/sample
  DEFINES   += -DRELEASE
  INCLUDES  += -I../include -I../sqlite-amalgamation -I../Catch/single_include
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -O2 -m64 -v -std=c++0x
  CXXFLAGS  += $(CFLAGS) 
  LDFLAGS   += -L.. -s -m64 -L/usr/lib64
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LIBS      += ../libhiberlite.a ../libsqlite.a -ldl -lpthread
  LDDEPS    += ../libhiberlite.a ../libsqlite.a
  LINKCMD    = $(CXX) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(LIBS) $(LDFLAGS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
	@echo Running post-build commands
	$(TARGET)
  endef
endif

OBJECTS := \
	$(OBJDIR)/sample.o \

RESOURCES := \

SHELLTYPE := msdos
ifeq (,$(ComSpec)$(COMSPEC))
  SHELLTYPE := posix
endif
ifeq (/bin,$(findstring /bin,$(SHELL)))
  SHELLTYPE := posix
endif

.PHONY: clean prebuild prelink

all: $(TARGETDIR) $(OBJDIR) prebuild prelink $(TARGET)
	@:

$(TARGET): $(GCH) $(OBJECTS) $(LDDEPS) $(RESOURCES)
	@echo Linking sample
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(TARGETDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(TARGETDIR))
endif

$(OBJDIR):
	@echo Creating $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif

clean:
	@echo Cleaning sample
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild:
	$(PREBUILDCMDS)

prelink:
	$(PRELINKCMDS)

ifneq (,$(PCH))
$(GCH): $(PCH)
	@echo $(notdir $<)
ifeq (posix,$(SHELLTYPE))
	-$(SILENT) cp $< $(OBJDIR)
else
	$(SILENT) xcopy /D /Y /Q "$(subst /,\,$<)" "$(subst /,\,$(OBJDIR))" 1>nul
endif
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
endif

$(OBJDIR)/sample.o: ../sample.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(CXXFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"

-include $(OBJECTS:%.o=%.d)
