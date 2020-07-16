# ZNOS

A small hobby OS made by two students of Information Systems in Communication and Management for learning purposes.

## What kind of OS are we building?
Our goal is to build a very simple UNIX-based operating system in C. The OS should be able to boot, start a userland shell, and be extensible.

## How do I build and run this?

First of all you need to install [qemu](https://www.qemu.org/) machine emulator and [nasm](https://www.nasm.us/) assembler.

On a **mac**, [install Homebrew](http://brew.sh) and then `brew install qemu nasm`

Don't use the Xcode developer tools `nasm` if you have them installed, they won't work for the most cases. Always use `/usr/local/bin/nasm`

On some systems qemu is split into multiple binaries. You may want
to call `qemu-system-x86_64 binfile`

Then run the following commands on your terminal:

```bash
nasm file_name.asm -f bin -o file_name.bin
qemu-system-x86_64 file_name.bin
```

## Inspiration

We were inspired by [the little book about OS development](https://littleosbook.github.io), [this document](http://www.cs.bham.ac.uk/~exr/lectures/opsys/10_11/lectures/os-dev.pdf)
and the [OSDev wiki](http://wiki.osdev.org/). After a few difficulties the [os-tutorial](https://github.com/cfenollosa/os-tutorial) was also very helpful.


## Authors
 - [Gabriel Zsigmond](https://github.com/gzsig)
 - [Brenno Natal](https://github.com/brennonatal)

## License
[LGPL-3.0-or-later](https://www.gnu.org/licenses/lgpl-3.0-standalone.html)
