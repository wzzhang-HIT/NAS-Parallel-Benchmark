SHELL=/bin/sh
BENCHMARK=ep
BENCHMARKU=EP
LLVM_VER=3.5

include ../config/make.def

OBJS = ep.o ${COMMON}/print_results.o ${COMMON}/${RAND}.o ${COMMON}/timers.o

include ../sys/make.common

${PROGRAM}: config ${OBJS}
	llvm-link-${LLVM_VER} ${OBJS} -o ${PROGRAM}.bc
	llc-${LLVM_VER} -filetype=obj ${PROGRAM}.bc -o ${PROGRAM}.o
	${FLINK} ${FLINKFLAGS} -o ${PROGRAM} ${PROGRAM}.o ${FMPI_LIB}


ep.o:		ep.f  mpinpb.h npbparams.h
	${FCOMPILE} ep.f -o $@

clean:
	- rm -f *.o *~ 
	- rm -f npbparams.h core



