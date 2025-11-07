X86_64_ASM := $(shell find src/impl/x86_64 -name *.asm)
X86_64_OBJ := $(patsubst src/impl/x86_64/%.asm, build/x86_64/%.o, $(X86_64_ASM))

$(X86_64_OBJ): build/x86_64/%.o : src/impl/x86_64/%.asm
	mkdir -p $(dir $@) && \
	nasm -f elf64 $(patsubst build/x86_64/%.o, src/impl/x86_64/%.asm, $@) -o $@

.PHONY: build-x86_64
build-x86_64: $(X86_64_OBJ)
	mkdir -p dist/x86_64 && .
	x86_64-elf-ld -n -o dist/x86_64/gtkern.kern -T targets/x86_64/linker.ld $(X86_64_OBJ) && \
	cp dist/x86_64/gtkern.kern targets/x86_64/iso/boot/gtkern.kern && \
	grub-mkrescue /usr/lib/grub/i386-pc -o dist/x86_64/gtkern.iso targets/x86_64/iso