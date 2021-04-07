# LittleOS
This is a bitty os written in NASM. There are not many features included. However this [document](https://www.cs.bham.ac.uk/~exr/lectures/opsys/10_11/lectures/os-dev.pdf) was very useful.

More features will be added in the future.

You can test it on your own machine using [qemu](https://www.qemu.org/). This is btw. a CPU emulator. 

I uploaded the compiled version as well, you can run it with:

```
qemu-system-i386 boot.bin
```
Otherwise, compile it on your own machine, using [nasm](https://www.nasm.us/). 

```
nasm boot.asm -f bin -o boot.bin
```

This project and especially the linked document, could be useful to understand the fundamentals of OS development. 
