SHELL=/bin/sh
BENCHMARK=mg
BENCHMARKU=MG
LLVM_VER=3.5

include ../config/make.def

OBJS = mg.o ${COMMON}/print_results.o  \
       ${COMMON}/${RAND}.o ${COMMON}/timers.o

include ../sys/make.common

${PROGRAM}: config ${OBJS}
	llvm-link-${LLVM_VER} ${OBJS} -o ${PROGRAM}.bc
	llc-${LLVM_VER} -filetype=obj ${PROGRAM}.bc -o ${PROGRAM}.o
	${FLINK} ${FLINKFLAGS} -o ${PROGRAM} ${PROGRAM}.o ${FMPI_LIB}

mg.o:		mg.f  globals.h mpinpb.h npbparams.h
	${FCOMPILE} mg.f

clean:
	- rm -f *.o *~ 
	- rm -f npbparams.h core



