SHELL=/bin/sh
BENCHMARK=ft
BENCHMARKU=FT
LLVM_VER=3.5

include ../config/make.def

include ../sys/make.common

OBJS = ft.o ${COMMON}/${RAND}.o ${COMMON}/print_results.o ${COMMON}/timers.o

${PROGRAM}: config ${OBJS}
	llvm-link-${LLVM_VER} ${OBJS} -o ${PROGRAM}.bc
	llc-${LLVM_VER} -filetype=obj ${PROGRAM}.bc -o ${PROGRAM}.o
	${FLINK} ${FLINKFLAGS} -o ${PROGRAM} ${PROGRAM}.o ${FMPI_LIB}



.f.o:
	${FCOMPILE} $< -o $@

ft.o:             ft.f  global.h mpinpb.h npbparams.h

clean:
	- rm -f *.o *~ mputil*
	- rm -f ft npbparams.h core
