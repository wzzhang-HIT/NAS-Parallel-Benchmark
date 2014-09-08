; ModuleID = 'print_results.f'
target datalayout = "e-p:64:64:64-S128-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f16:16:16-f32:32:32-f64:64:64-f128:128:128-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

module asm "\09.ident\09\22GCC: (GNU) 4.8.2 20140206 (prerelease) LLVM: 3.4\22"

%struct.__st_parameter_dt = type { %struct.__st_parameter_common, i64, i64*, i64*, i8*, i8*, i32, i32, i8*, i8*, i32, i32, i8*, [256 x i8], i32*, i64, i8*, i32, i32, i8*, i8*, i32, i32, i8*, i8*, i32, i32, i8*, i8*, i32, [4 x i8] }
%struct.__st_parameter_common = type { i32, i32, i8*, i32, i32, i8*, i32* }

@.cst = linker_private unnamed_addr constant [16 x i8] c"print_results.f\00", align 8
@.cst1 = linker_private unnamed_addr constant [37 x i8] c"(//, ' ', A, ' Benchmark Completed.')", align 64
@.cst2 = linker_private unnamed_addr constant [33 x i8] c"(' Class           = ', 12x, a12)", align 64
@.cst3 = linker_private unnamed_addr constant [2 x i8] c"EP", align 8
@.cst4 = linker_private unnamed_addr constant [7 x i8] c"(f15.0)", align 8
@.cst5 = linker_private unnamed_addr constant [31 x i8] c"(' Size            = ',9x, a15)", align 64
@.cst6 = linker_private unnamed_addr constant [32 x i8] c"(' Size            = ',12x, i12)", align 64
@.cst7 = linker_private unnamed_addr constant [45 x i8] c"(' Size            =  ',9x, i4,'x',i4,'x',i4)", align 64
@.cst8 = linker_private unnamed_addr constant [33 x i8] c"(' Iterations      = ', 12x, i12)", align 64
@.cst9 = linker_private unnamed_addr constant [34 x i8] c"(' Time in seconds = ',12x, f12.2)", align 64
@.cst10 = linker_private unnamed_addr constant [33 x i8] c"(' Total threads   = ', 12x, i12)", align 64
@.cst11 = linker_private unnamed_addr constant [33 x i8] c"(' Avail threads   = ', 12x, i12)", align 64
@.cst12 = linker_private unnamed_addr constant [56 x i8] c"(' Warning: Threads used differ from threads available')", align 64
@.cst13 = linker_private unnamed_addr constant [34 x i8] c"(' Mop/s total     = ',12x, f12.2)", align 64
@.cst14 = linker_private unnamed_addr constant [35 x i8] c"(' Mop/s/thread    = ', 12x, f12.2)", align 64
@.cst15 = linker_private unnamed_addr constant [28 x i8] c"(' Operation type  = ', a24)", align 8
@.cst16 = linker_private unnamed_addr constant [31 x i8] c"(' Verification    = ', 12x, a)", align 64
@.cst17 = linker_private unnamed_addr constant [12 x i8] c"  SUCCESSFUL", align 8
@.cst18 = linker_private unnamed_addr constant [12 x i8] c"UNSUCCESSFUL", align 8
@.cst19 = linker_private unnamed_addr constant [33 x i8] c"(' Version         = ', 12x, a12)", align 64
@.cst20 = linker_private unnamed_addr constant [33 x i8] c"(' Compile date    = ', 12x, a12)", align 64
@.cst21 = linker_private unnamed_addr constant [92 x i8] c"(/, ' Compile options:', /,                                        '    F77          = ', A)", align 64
@.cst22 = linker_private unnamed_addr constant [26 x i8] c"('    FLINK        = ', A)", align 8
@.cst23 = linker_private unnamed_addr constant [26 x i8] c"('    F_LIB        = ', A)", align 8
@.cst24 = linker_private unnamed_addr constant [26 x i8] c"('    F_INC        = ', A)", align 8
@.cst25 = linker_private unnamed_addr constant [26 x i8] c"('    FFLAGS       = ', A)", align 8
@.cst26 = linker_private unnamed_addr constant [26 x i8] c"('    FLINKFLAGS   = ', A)", align 8
@.cst27 = linker_private unnamed_addr constant [26 x i8] c"('    RAND         = ', A)", align 8
@.cst28 = linker_private unnamed_addr constant [157 x i8] c"(//' Please send all errors/feedbacks to:'//                         ' NPB Development Team'/                                          ' npb@nas.nasa.gov'//)", align 64

; Function Attrs: nounwind uwtable
define void @print_results_([0 x i8]* noalias %name, [1 x i8]* noalias %class, i32* noalias %n1, i32* noalias %n2, i32* noalias %n3, i32* noalias %niter, double* noalias %t, double* noalias %mops, [24 x i8]* noalias %optype, i32* noalias nocapture readonly %verified, [0 x i8]* noalias %npbversion, [0 x i8]* noalias %compiletime, [0 x i8]* noalias %cs1, [0 x i8]* noalias %cs2, [0 x i8]* noalias %cs3, [0 x i8]* noalias %cs4, [0 x i8]* noalias %cs5, [0 x i8]* noalias %cs6, [0 x i8]* noalias %cs7, i32 %_name, i32 %_class, i32 %_optype, i32 %_npbversion, i32 %_compiletime, i32 %_cs1, i32 %_cs2, i32 %_cs3, i32 %_cs4, i32 %_cs5, i32 %_cs6, i32 %_cs7) unnamed_addr #0 {
entry:
  %max_threads = alloca i32, align 4
  %num_threads = alloca i32, align 4
  %size = alloca [15 x i8], align 1
  %dt_parm.0 = alloca %struct.__st_parameter_dt, align 8
  %dt_parm.1 = alloca %struct.__st_parameter_dt, align 8
  %dt_parm.2 = alloca %struct.__st_parameter_dt, align 8
  %D.1916 = alloca double, align 8
  %dt_parm.3 = alloca %struct.__st_parameter_dt, align 8
  %dt_parm.4 = alloca %struct.__st_parameter_dt, align 8
  %dt_parm.5 = alloca %struct.__st_parameter_dt, align 8
  %dt_parm.6 = alloca %struct.__st_parameter_dt, align 8
  %dt_parm.7 = alloca %struct.__st_parameter_dt, align 8
  %dt_parm.8 = alloca %struct.__st_parameter_dt, align 8
  %dt_parm.9 = alloca %struct.__st_parameter_dt, align 8
  %dt_parm.10 = alloca %struct.__st_parameter_dt, align 8
  %dt_parm.11 = alloca %struct.__st_parameter_dt, align 8
  %dt_parm.12 = alloca %struct.__st_parameter_dt, align 8
  %D.1929 = alloca double, align 8
  %dt_parm.13 = alloca %struct.__st_parameter_dt, align 8
  %dt_parm.14 = alloca %struct.__st_parameter_dt, align 8
  %dt_parm.15 = alloca %struct.__st_parameter_dt, align 8
  %dt_parm.16 = alloca %struct.__st_parameter_dt, align 8
  %dt_parm.17 = alloca %struct.__st_parameter_dt, align 8
  %dt_parm.18 = alloca %struct.__st_parameter_dt, align 8
  %dt_parm.19 = alloca %struct.__st_parameter_dt, align 8
  %dt_parm.20 = alloca %struct.__st_parameter_dt, align 8
  %dt_parm.21 = alloca %struct.__st_parameter_dt, align 8
  %dt_parm.22 = alloca %struct.__st_parameter_dt, align 8
  %dt_parm.23 = alloca %struct.__st_parameter_dt, align 8
  %dt_parm.24 = alloca %struct.__st_parameter_dt, align 8
  %dt_parm.25 = alloca %struct.__st_parameter_dt, align 8
  store i32 1, i32* %max_threads, align 4
  store i32 1, i32* %num_threads, align 4
  %0 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.0, i64 0, i32 0, i32 2
  store i8* getelementptr inbounds ([16 x i8]* @.cst, i64 0, i64 0), i8** %0, align 8
  %1 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.0, i64 0, i32 0, i32 3
  store i32 32, i32* %1, align 8
  %2 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.0, i64 0, i32 5
  store i8* getelementptr inbounds ([37 x i8]* @.cst1, i64 0, i64 0), i8** %2, align 8
  %3 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.0, i64 0, i32 6
  store i32 37, i32* %3, align 8
  %4 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.0, i64 0, i32 0, i32 0
  store i32 4096, i32* %4, align 8
  %5 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.0, i64 0, i32 0, i32 1
  store i32 6, i32* %5, align 4
  call void @_gfortran_st_write(%struct.__st_parameter_dt* %dt_parm.0) #1
  %6 = getelementptr inbounds [0 x i8]* %name, i64 0, i64 0
  call void @_gfortran_transfer_character_write(%struct.__st_parameter_dt* %dt_parm.0, i8* noalias %6, i32 %_name) #1
  call void @_gfortran_st_write_done(%struct.__st_parameter_dt* %dt_parm.0) #1
  %7 = bitcast %struct.__st_parameter_dt* %dt_parm.0 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %7)
  %8 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.1, i64 0, i32 0, i32 2
  store i8* getelementptr inbounds ([16 x i8]* @.cst, i64 0, i64 0), i8** %8, align 8
  %9 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.1, i64 0, i32 0, i32 3
  store i32 35, i32* %9, align 8
  %10 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.1, i64 0, i32 5
  store i8* getelementptr inbounds ([33 x i8]* @.cst2, i64 0, i64 0), i8** %10, align 8
  %11 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.1, i64 0, i32 6
  store i32 33, i32* %11, align 8
  %12 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.1, i64 0, i32 0, i32 0
  store i32 4096, i32* %12, align 8
  %13 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.1, i64 0, i32 0, i32 1
  store i32 6, i32* %13, align 4
  call void @_gfortran_st_write(%struct.__st_parameter_dt* %dt_parm.1) #1
  %14 = getelementptr inbounds [1 x i8]* %class, i64 0, i64 0
  call void @_gfortran_transfer_character_write(%struct.__st_parameter_dt* %dt_parm.1, i8* noalias %14, i32 1) #1
  call void @_gfortran_st_write_done(%struct.__st_parameter_dt* %dt_parm.1) #1
  %15 = bitcast %struct.__st_parameter_dt* %dt_parm.1 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %15)
  %16 = load i32* %n2, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %"3", label %"9"

"3":                                              ; preds = %entry
  %18 = load i32* %n3, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %"4", label %"9"

"4":                                              ; preds = %"3"
  %20 = call i32 @_gfortran_compare_string(i32 2, i8* noalias %6, i32 2, i8* getelementptr inbounds ([2 x i8]* @.cst3, i64 0, i64 0)) #1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %"5", label %"8"

"5":                                              ; preds = %"4"
  %22 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.2, i64 0, i32 0, i32 2
  store i8* getelementptr inbounds ([16 x i8]* @.cst, i64 0, i64 0), i8** %22, align 8
  %23 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.2, i64 0, i32 0, i32 3
  store i32 45, i32* %23, align 8
  %24 = getelementptr inbounds [15 x i8]* %size, i64 0, i64 0
  %25 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.2, i64 0, i32 9
  store i8* %24, i8** %25, align 8
  %26 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.2, i64 0, i32 10
  store i32 15, i32* %26, align 8
  %27 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.2, i64 0, i32 4
  store i8* null, i8** %27, align 8
  %28 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.2, i64 0, i32 0, i32 1
  store i32 0, i32* %28, align 4
  %29 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.2, i64 0, i32 5
  store i8* getelementptr inbounds ([7 x i8]* @.cst4, i64 0, i64 0), i8** %29, align 8
  %30 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.2, i64 0, i32 6
  store i32 7, i32* %30, align 8
  %31 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.2, i64 0, i32 0, i32 0
  store i32 20480, i32* %31, align 8
  call void @_gfortran_st_write(%struct.__st_parameter_dt* %dt_parm.2) #1
  %32 = load i32* %n1, align 4
  %33 = call double @llvm.powi.f64(double 2.000000e+00, i32 %32)
  store double %33, double* %D.1916, align 8
  %34 = bitcast double* %D.1916 to i8*
  call void @_gfortran_transfer_real_write(%struct.__st_parameter_dt* %dt_parm.2, i8* %34, i32 8) #1
  call void @llvm.lifetime.end(i64 8, i8* %34)
  call void @_gfortran_st_write_done(%struct.__st_parameter_dt* %dt_parm.2) #1
  %35 = bitcast %struct.__st_parameter_dt* %dt_parm.2 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %35)
  %36 = getelementptr [15 x i8]* %size, i64 0, i64 14
  %37 = load i8* %36, align 1
  %38 = icmp eq i8 %37, 46
  %. = select i1 %38, i32 14, i32 15
  %39 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.3, i64 0, i32 0, i32 2
  store i8* getelementptr inbounds ([16 x i8]* @.cst, i64 0, i64 0), i8** %39, align 8
  %40 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.3, i64 0, i32 0, i32 3
  store i32 48, i32* %40, align 8
  %41 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.3, i64 0, i32 5
  store i8* getelementptr inbounds ([31 x i8]* @.cst5, i64 0, i64 0), i8** %41, align 8
  %42 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.3, i64 0, i32 6
  store i32 31, i32* %42, align 8
  %43 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.3, i64 0, i32 0, i32 0
  store i32 4096, i32* %43, align 8
  %44 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.3, i64 0, i32 0, i32 1
  store i32 6, i32* %44, align 4
  call void @_gfortran_st_write(%struct.__st_parameter_dt* %dt_parm.3) #1
  call void @_gfortran_transfer_character_write(%struct.__st_parameter_dt* %dt_parm.3, i8* %24, i32 %.) #1
  call void @_gfortran_st_write_done(%struct.__st_parameter_dt* %dt_parm.3) #1
  %45 = bitcast %struct.__st_parameter_dt* %dt_parm.3 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %45)
  br label %"10"

"8":                                              ; preds = %"4"
  %46 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.4, i64 0, i32 0, i32 2
  store i8* getelementptr inbounds ([16 x i8]* @.cst, i64 0, i64 0), i8** %46, align 8
  %47 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.4, i64 0, i32 0, i32 3
  store i32 51, i32* %47, align 8
  %48 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.4, i64 0, i32 5
  store i8* getelementptr inbounds ([32 x i8]* @.cst6, i64 0, i64 0), i8** %48, align 8
  %49 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.4, i64 0, i32 6
  store i32 32, i32* %49, align 8
  %50 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.4, i64 0, i32 0, i32 0
  store i32 4096, i32* %50, align 8
  %51 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.4, i64 0, i32 0, i32 1
  store i32 6, i32* %51, align 4
  call void @_gfortran_st_write(%struct.__st_parameter_dt* %dt_parm.4) #1
  %52 = bitcast i32* %n1 to i8*
  call void @_gfortran_transfer_integer_write(%struct.__st_parameter_dt* %dt_parm.4, i8* noalias %52, i32 4) #1
  call void @_gfortran_st_write_done(%struct.__st_parameter_dt* %dt_parm.4) #1
  %53 = bitcast %struct.__st_parameter_dt* %dt_parm.4 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %53)
  br label %"10"

"9":                                              ; preds = %"3", %entry
  %54 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.5, i64 0, i32 0, i32 2
  store i8* getelementptr inbounds ([16 x i8]* @.cst, i64 0, i64 0), i8** %54, align 8
  %55 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.5, i64 0, i32 0, i32 3
  store i32 55, i32* %55, align 8
  %56 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.5, i64 0, i32 5
  store i8* getelementptr inbounds ([45 x i8]* @.cst7, i64 0, i64 0), i8** %56, align 8
  %57 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.5, i64 0, i32 6
  store i32 45, i32* %57, align 8
  %58 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.5, i64 0, i32 0, i32 0
  store i32 4096, i32* %58, align 8
  %59 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.5, i64 0, i32 0, i32 1
  store i32 6, i32* %59, align 4
  call void @_gfortran_st_write(%struct.__st_parameter_dt* %dt_parm.5) #1
  %60 = bitcast i32* %n1 to i8*
  call void @_gfortran_transfer_integer_write(%struct.__st_parameter_dt* %dt_parm.5, i8* noalias %60, i32 4) #1
  %61 = bitcast i32* %n2 to i8*
  call void @_gfortran_transfer_integer_write(%struct.__st_parameter_dt* %dt_parm.5, i8* noalias %61, i32 4) #1
  %62 = bitcast i32* %n3 to i8*
  call void @_gfortran_transfer_integer_write(%struct.__st_parameter_dt* %dt_parm.5, i8* noalias %62, i32 4) #1
  call void @_gfortran_st_write_done(%struct.__st_parameter_dt* %dt_parm.5) #1
  %63 = bitcast %struct.__st_parameter_dt* %dt_parm.5 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %63)
  br label %"10"

"10":                                             ; preds = %"9", %"8", %"5"
  %64 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.6, i64 0, i32 0, i32 2
  store i8* getelementptr inbounds ([16 x i8]* @.cst, i64 0, i64 0), i8** %64, align 8
  %65 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.6, i64 0, i32 0, i32 3
  store i32 59, i32* %65, align 8
  %66 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.6, i64 0, i32 5
  store i8* getelementptr inbounds ([33 x i8]* @.cst8, i64 0, i64 0), i8** %66, align 8
  %67 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.6, i64 0, i32 6
  store i32 33, i32* %67, align 8
  %68 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.6, i64 0, i32 0, i32 0
  store i32 4096, i32* %68, align 8
  %69 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.6, i64 0, i32 0, i32 1
  store i32 6, i32* %69, align 4
  call void @_gfortran_st_write(%struct.__st_parameter_dt* %dt_parm.6) #1
  %70 = bitcast i32* %niter to i8*
  call void @_gfortran_transfer_integer_write(%struct.__st_parameter_dt* %dt_parm.6, i8* noalias %70, i32 4) #1
  call void @_gfortran_st_write_done(%struct.__st_parameter_dt* %dt_parm.6) #1
  %71 = bitcast %struct.__st_parameter_dt* %dt_parm.6 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %71)
  %72 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.7, i64 0, i32 0, i32 2
  store i8* getelementptr inbounds ([16 x i8]* @.cst, i64 0, i64 0), i8** %72, align 8
  %73 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.7, i64 0, i32 0, i32 3
  store i32 62, i32* %73, align 8
  %74 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.7, i64 0, i32 5
  store i8* getelementptr inbounds ([34 x i8]* @.cst9, i64 0, i64 0), i8** %74, align 8
  %75 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.7, i64 0, i32 6
  store i32 34, i32* %75, align 8
  %76 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.7, i64 0, i32 0, i32 0
  store i32 4096, i32* %76, align 8
  %77 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.7, i64 0, i32 0, i32 1
  store i32 6, i32* %77, align 4
  call void @_gfortran_st_write(%struct.__st_parameter_dt* %dt_parm.7) #1
  %78 = bitcast double* %t to i8*
  call void @_gfortran_transfer_real_write(%struct.__st_parameter_dt* %dt_parm.7, i8* noalias %78, i32 8) #1
  call void @_gfortran_st_write_done(%struct.__st_parameter_dt* %dt_parm.7) #1
  %79 = bitcast %struct.__st_parameter_dt* %dt_parm.7 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %79)
  %80 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.8, i64 0, i32 0, i32 2
  store i8* getelementptr inbounds ([16 x i8]* @.cst, i64 0, i64 0), i8** %80, align 8
  %81 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.8, i64 0, i32 0, i32 3
  store i32 65, i32* %81, align 8
  %82 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.8, i64 0, i32 5
  store i8* getelementptr inbounds ([33 x i8]* @.cst10, i64 0, i64 0), i8** %82, align 8
  %83 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.8, i64 0, i32 6
  store i32 33, i32* %83, align 8
  %84 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.8, i64 0, i32 0, i32 0
  store i32 4096, i32* %84, align 8
  %85 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.8, i64 0, i32 0, i32 1
  store i32 6, i32* %85, align 4
  call void @_gfortran_st_write(%struct.__st_parameter_dt* %dt_parm.8) #1
  %86 = bitcast i32* %num_threads to i8*
  call void @_gfortran_transfer_integer_write(%struct.__st_parameter_dt* %dt_parm.8, i8* %86, i32 4) #1
  call void @_gfortran_st_write_done(%struct.__st_parameter_dt* %dt_parm.8) #1
  %87 = bitcast %struct.__st_parameter_dt* %dt_parm.8 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %87)
  %88 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.9, i64 0, i32 0, i32 2
  store i8* getelementptr inbounds ([16 x i8]* @.cst, i64 0, i64 0), i8** %88, align 8
  %89 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.9, i64 0, i32 0, i32 3
  store i32 68, i32* %89, align 8
  %90 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.9, i64 0, i32 5
  store i8* getelementptr inbounds ([33 x i8]* @.cst11, i64 0, i64 0), i8** %90, align 8
  %91 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.9, i64 0, i32 6
  store i32 33, i32* %91, align 8
  %92 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.9, i64 0, i32 0, i32 0
  store i32 4096, i32* %92, align 8
  %93 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.9, i64 0, i32 0, i32 1
  store i32 6, i32* %93, align 4
  call void @_gfortran_st_write(%struct.__st_parameter_dt* %dt_parm.9) #1
  %94 = bitcast i32* %max_threads to i8*
  call void @_gfortran_transfer_integer_write(%struct.__st_parameter_dt* %dt_parm.9, i8* %94, i32 4) #1
  call void @_gfortran_st_write_done(%struct.__st_parameter_dt* %dt_parm.9) #1
  %95 = bitcast %struct.__st_parameter_dt* %dt_parm.9 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %95)
  %96 = load i32* %num_threads, align 4
  %97 = load i32* %max_threads, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %"12", label %"11"

"11":                                             ; preds = %"10"
  %99 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.10, i64 0, i32 0, i32 2
  store i8* getelementptr inbounds ([16 x i8]* @.cst, i64 0, i64 0), i8** %99, align 8
  %100 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.10, i64 0, i32 0, i32 3
  store i32 71, i32* %100, align 8
  %101 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.10, i64 0, i32 5
  store i8* getelementptr inbounds ([56 x i8]* @.cst12, i64 0, i64 0), i8** %101, align 8
  %102 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.10, i64 0, i32 6
  store i32 56, i32* %102, align 8
  %103 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.10, i64 0, i32 0, i32 0
  store i32 4096, i32* %103, align 8
  %104 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.10, i64 0, i32 0, i32 1
  store i32 6, i32* %104, align 4
  call void @_gfortran_st_write(%struct.__st_parameter_dt* %dt_parm.10) #1
  call void @_gfortran_st_write_done(%struct.__st_parameter_dt* %dt_parm.10) #1
  %105 = bitcast %struct.__st_parameter_dt* %dt_parm.10 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %105)
  br label %"12"

"12":                                             ; preds = %"10", %"11"
  %106 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.11, i64 0, i32 0, i32 2
  store i8* getelementptr inbounds ([16 x i8]* @.cst, i64 0, i64 0), i8** %106, align 8
  %107 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.11, i64 0, i32 0, i32 3
  store i32 74, i32* %107, align 8
  %108 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.11, i64 0, i32 5
  store i8* getelementptr inbounds ([34 x i8]* @.cst13, i64 0, i64 0), i8** %108, align 8
  %109 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.11, i64 0, i32 6
  store i32 34, i32* %109, align 8
  %110 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.11, i64 0, i32 0, i32 0
  store i32 4096, i32* %110, align 8
  %111 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.11, i64 0, i32 0, i32 1
  store i32 6, i32* %111, align 4
  call void @_gfortran_st_write(%struct.__st_parameter_dt* %dt_parm.11) #1
  %112 = bitcast double* %mops to i8*
  call void @_gfortran_transfer_real_write(%struct.__st_parameter_dt* %dt_parm.11, i8* noalias %112, i32 8) #1
  call void @_gfortran_st_write_done(%struct.__st_parameter_dt* %dt_parm.11) #1
  %113 = bitcast %struct.__st_parameter_dt* %dt_parm.11 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %113)
  %114 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.12, i64 0, i32 0, i32 2
  store i8* getelementptr inbounds ([16 x i8]* @.cst, i64 0, i64 0), i8** %114, align 8
  %115 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.12, i64 0, i32 0, i32 3
  store i32 77, i32* %115, align 8
  %116 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.12, i64 0, i32 5
  store i8* getelementptr inbounds ([35 x i8]* @.cst14, i64 0, i64 0), i8** %116, align 8
  %117 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.12, i64 0, i32 6
  store i32 35, i32* %117, align 8
  %118 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.12, i64 0, i32 0, i32 0
  store i32 4096, i32* %118, align 8
  %119 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.12, i64 0, i32 0, i32 1
  store i32 6, i32* %119, align 4
  call void @_gfortran_st_write(%struct.__st_parameter_dt* %dt_parm.12) #1
  %120 = load double* %mops, align 8
  %121 = load i32* %num_threads, align 4
  %122 = sitofp i32 %121 to float
  %123 = fpext float %122 to double
  %124 = fdiv double %120, %123
  store double %124, double* %D.1929, align 8
  %125 = bitcast double* %D.1929 to i8*
  call void @_gfortran_transfer_real_write(%struct.__st_parameter_dt* %dt_parm.12, i8* %125, i32 8) #1
  call void @llvm.lifetime.end(i64 8, i8* %125)
  call void @_gfortran_st_write_done(%struct.__st_parameter_dt* %dt_parm.12) #1
  %126 = bitcast %struct.__st_parameter_dt* %dt_parm.12 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %126)
  %127 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.13, i64 0, i32 0, i32 2
  store i8* getelementptr inbounds ([16 x i8]* @.cst, i64 0, i64 0), i8** %127, align 8
  %128 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.13, i64 0, i32 0, i32 3
  store i32 80, i32* %128, align 8
  %129 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.13, i64 0, i32 5
  store i8* getelementptr inbounds ([28 x i8]* @.cst15, i64 0, i64 0), i8** %129, align 8
  %130 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.13, i64 0, i32 6
  store i32 28, i32* %130, align 8
  %131 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.13, i64 0, i32 0, i32 0
  store i32 4096, i32* %131, align 8
  %132 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.13, i64 0, i32 0, i32 1
  store i32 6, i32* %132, align 4
  call void @_gfortran_st_write(%struct.__st_parameter_dt* %dt_parm.13) #1
  %133 = getelementptr inbounds [24 x i8]* %optype, i64 0, i64 0
  call void @_gfortran_transfer_character_write(%struct.__st_parameter_dt* %dt_parm.13, i8* noalias %133, i32 24) #1
  call void @_gfortran_st_write_done(%struct.__st_parameter_dt* %dt_parm.13) #1
  %134 = bitcast %struct.__st_parameter_dt* %dt_parm.13 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %134)
  %135 = load i32* %verified, align 4, !range !0
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %"14", label %"13"

"13":                                             ; preds = %"12"
  %137 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.14, i64 0, i32 0, i32 2
  store i8* getelementptr inbounds ([16 x i8]* @.cst, i64 0, i64 0), i8** %137, align 8
  %138 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.14, i64 0, i32 0, i32 3
  store i32 84, i32* %138, align 8
  %139 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.14, i64 0, i32 5
  store i8* getelementptr inbounds ([31 x i8]* @.cst16, i64 0, i64 0), i8** %139, align 8
  %140 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.14, i64 0, i32 6
  store i32 31, i32* %140, align 8
  %141 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.14, i64 0, i32 0, i32 0
  store i32 4096, i32* %141, align 8
  %142 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.14, i64 0, i32 0, i32 1
  store i32 6, i32* %142, align 4
  call void @_gfortran_st_write(%struct.__st_parameter_dt* %dt_parm.14) #1
  call void @_gfortran_transfer_character_write(%struct.__st_parameter_dt* %dt_parm.14, i8* getelementptr inbounds ([12 x i8]* @.cst17, i64 0, i64 0), i32 12) #1
  call void @_gfortran_st_write_done(%struct.__st_parameter_dt* %dt_parm.14) #1
  %143 = bitcast %struct.__st_parameter_dt* %dt_parm.14 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %143)
  br label %"15"

"14":                                             ; preds = %"12"
  %144 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.15, i64 0, i32 0, i32 2
  store i8* getelementptr inbounds ([16 x i8]* @.cst, i64 0, i64 0), i8** %144, align 8
  %145 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.15, i64 0, i32 0, i32 3
  store i32 86, i32* %145, align 8
  %146 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.15, i64 0, i32 5
  store i8* getelementptr inbounds ([31 x i8]* @.cst16, i64 0, i64 0), i8** %146, align 8
  %147 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.15, i64 0, i32 6
  store i32 31, i32* %147, align 8
  %148 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.15, i64 0, i32 0, i32 0
  store i32 4096, i32* %148, align 8
  %149 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.15, i64 0, i32 0, i32 1
  store i32 6, i32* %149, align 4
  call void @_gfortran_st_write(%struct.__st_parameter_dt* %dt_parm.15) #1
  call void @_gfortran_transfer_character_write(%struct.__st_parameter_dt* %dt_parm.15, i8* getelementptr inbounds ([12 x i8]* @.cst18, i64 0, i64 0), i32 12) #1
  call void @_gfortran_st_write_done(%struct.__st_parameter_dt* %dt_parm.15) #1
  %150 = bitcast %struct.__st_parameter_dt* %dt_parm.15 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %150)
  br label %"15"

"15":                                             ; preds = %"14", %"13"
  %151 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.16, i64 0, i32 0, i32 2
  store i8* getelementptr inbounds ([16 x i8]* @.cst, i64 0, i64 0), i8** %151, align 8
  %152 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.16, i64 0, i32 0, i32 3
  store i32 90, i32* %152, align 8
  %153 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.16, i64 0, i32 5
  store i8* getelementptr inbounds ([33 x i8]* @.cst19, i64 0, i64 0), i8** %153, align 8
  %154 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.16, i64 0, i32 6
  store i32 33, i32* %154, align 8
  %155 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.16, i64 0, i32 0, i32 0
  store i32 4096, i32* %155, align 8
  %156 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.16, i64 0, i32 0, i32 1
  store i32 6, i32* %156, align 4
  call void @_gfortran_st_write(%struct.__st_parameter_dt* %dt_parm.16) #1
  %157 = getelementptr inbounds [0 x i8]* %npbversion, i64 0, i64 0
  call void @_gfortran_transfer_character_write(%struct.__st_parameter_dt* %dt_parm.16, i8* noalias %157, i32 %_npbversion) #1
  call void @_gfortran_st_write_done(%struct.__st_parameter_dt* %dt_parm.16) #1
  %158 = bitcast %struct.__st_parameter_dt* %dt_parm.16 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %158)
  %159 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.17, i64 0, i32 0, i32 2
  store i8* getelementptr inbounds ([16 x i8]* @.cst, i64 0, i64 0), i8** %159, align 8
  %160 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.17, i64 0, i32 0, i32 3
  store i32 93, i32* %160, align 8
  %161 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.17, i64 0, i32 5
  store i8* getelementptr inbounds ([33 x i8]* @.cst20, i64 0, i64 0), i8** %161, align 8
  %162 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.17, i64 0, i32 6
  store i32 33, i32* %162, align 8
  %163 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.17, i64 0, i32 0, i32 0
  store i32 4096, i32* %163, align 8
  %164 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.17, i64 0, i32 0, i32 1
  store i32 6, i32* %164, align 4
  call void @_gfortran_st_write(%struct.__st_parameter_dt* %dt_parm.17) #1
  %165 = getelementptr inbounds [0 x i8]* %compiletime, i64 0, i64 0
  call void @_gfortran_transfer_character_write(%struct.__st_parameter_dt* %dt_parm.17, i8* noalias %165, i32 %_compiletime) #1
  call void @_gfortran_st_write_done(%struct.__st_parameter_dt* %dt_parm.17) #1
  %166 = bitcast %struct.__st_parameter_dt* %dt_parm.17 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %166)
  %167 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.18, i64 0, i32 0, i32 2
  store i8* getelementptr inbounds ([16 x i8]* @.cst, i64 0, i64 0), i8** %167, align 8
  %168 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.18, i64 0, i32 0, i32 3
  store i32 97, i32* %168, align 8
  %169 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.18, i64 0, i32 5
  store i8* getelementptr inbounds ([92 x i8]* @.cst21, i64 0, i64 0), i8** %169, align 8
  %170 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.18, i64 0, i32 6
  store i32 92, i32* %170, align 8
  %171 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.18, i64 0, i32 0, i32 0
  store i32 4096, i32* %171, align 8
  %172 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.18, i64 0, i32 0, i32 1
  store i32 6, i32* %172, align 4
  call void @_gfortran_st_write(%struct.__st_parameter_dt* %dt_parm.18) #1
  %173 = getelementptr inbounds [0 x i8]* %cs1, i64 0, i64 0
  call void @_gfortran_transfer_character_write(%struct.__st_parameter_dt* %dt_parm.18, i8* noalias %173, i32 %_cs1) #1
  call void @_gfortran_st_write_done(%struct.__st_parameter_dt* %dt_parm.18) #1
  %174 = bitcast %struct.__st_parameter_dt* %dt_parm.18 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %174)
  %175 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.19, i64 0, i32 0, i32 2
  store i8* getelementptr inbounds ([16 x i8]* @.cst, i64 0, i64 0), i8** %175, align 8
  %176 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.19, i64 0, i32 0, i32 3
  store i32 101, i32* %176, align 8
  %177 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.19, i64 0, i32 5
  store i8* getelementptr inbounds ([26 x i8]* @.cst22, i64 0, i64 0), i8** %177, align 8
  %178 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.19, i64 0, i32 6
  store i32 26, i32* %178, align 8
  %179 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.19, i64 0, i32 0, i32 0
  store i32 4096, i32* %179, align 8
  %180 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.19, i64 0, i32 0, i32 1
  store i32 6, i32* %180, align 4
  call void @_gfortran_st_write(%struct.__st_parameter_dt* %dt_parm.19) #1
  %181 = getelementptr inbounds [0 x i8]* %cs2, i64 0, i64 0
  call void @_gfortran_transfer_character_write(%struct.__st_parameter_dt* %dt_parm.19, i8* noalias %181, i32 %_cs2) #1
  call void @_gfortran_st_write_done(%struct.__st_parameter_dt* %dt_parm.19) #1
  %182 = bitcast %struct.__st_parameter_dt* %dt_parm.19 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %182)
  %183 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.20, i64 0, i32 0, i32 2
  store i8* getelementptr inbounds ([16 x i8]* @.cst, i64 0, i64 0), i8** %183, align 8
  %184 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.20, i64 0, i32 0, i32 3
  store i32 104, i32* %184, align 8
  %185 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.20, i64 0, i32 5
  store i8* getelementptr inbounds ([26 x i8]* @.cst23, i64 0, i64 0), i8** %185, align 8
  %186 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.20, i64 0, i32 6
  store i32 26, i32* %186, align 8
  %187 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.20, i64 0, i32 0, i32 0
  store i32 4096, i32* %187, align 8
  %188 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.20, i64 0, i32 0, i32 1
  store i32 6, i32* %188, align 4
  call void @_gfortran_st_write(%struct.__st_parameter_dt* %dt_parm.20) #1
  %189 = getelementptr inbounds [0 x i8]* %cs3, i64 0, i64 0
  call void @_gfortran_transfer_character_write(%struct.__st_parameter_dt* %dt_parm.20, i8* noalias %189, i32 %_cs3) #1
  call void @_gfortran_st_write_done(%struct.__st_parameter_dt* %dt_parm.20) #1
  %190 = bitcast %struct.__st_parameter_dt* %dt_parm.20 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %190)
  %191 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.21, i64 0, i32 0, i32 2
  store i8* getelementptr inbounds ([16 x i8]* @.cst, i64 0, i64 0), i8** %191, align 8
  %192 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.21, i64 0, i32 0, i32 3
  store i32 107, i32* %192, align 8
  %193 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.21, i64 0, i32 5
  store i8* getelementptr inbounds ([26 x i8]* @.cst24, i64 0, i64 0), i8** %193, align 8
  %194 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.21, i64 0, i32 6
  store i32 26, i32* %194, align 8
  %195 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.21, i64 0, i32 0, i32 0
  store i32 4096, i32* %195, align 8
  %196 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.21, i64 0, i32 0, i32 1
  store i32 6, i32* %196, align 4
  call void @_gfortran_st_write(%struct.__st_parameter_dt* %dt_parm.21) #1
  %197 = getelementptr inbounds [0 x i8]* %cs4, i64 0, i64 0
  call void @_gfortran_transfer_character_write(%struct.__st_parameter_dt* %dt_parm.21, i8* noalias %197, i32 %_cs4) #1
  call void @_gfortran_st_write_done(%struct.__st_parameter_dt* %dt_parm.21) #1
  %198 = bitcast %struct.__st_parameter_dt* %dt_parm.21 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %198)
  %199 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.22, i64 0, i32 0, i32 2
  store i8* getelementptr inbounds ([16 x i8]* @.cst, i64 0, i64 0), i8** %199, align 8
  %200 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.22, i64 0, i32 0, i32 3
  store i32 110, i32* %200, align 8
  %201 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.22, i64 0, i32 5
  store i8* getelementptr inbounds ([26 x i8]* @.cst25, i64 0, i64 0), i8** %201, align 8
  %202 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.22, i64 0, i32 6
  store i32 26, i32* %202, align 8
  %203 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.22, i64 0, i32 0, i32 0
  store i32 4096, i32* %203, align 8
  %204 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.22, i64 0, i32 0, i32 1
  store i32 6, i32* %204, align 4
  call void @_gfortran_st_write(%struct.__st_parameter_dt* %dt_parm.22) #1
  %205 = getelementptr inbounds [0 x i8]* %cs5, i64 0, i64 0
  call void @_gfortran_transfer_character_write(%struct.__st_parameter_dt* %dt_parm.22, i8* noalias %205, i32 %_cs5) #1
  call void @_gfortran_st_write_done(%struct.__st_parameter_dt* %dt_parm.22) #1
  %206 = bitcast %struct.__st_parameter_dt* %dt_parm.22 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %206)
  %207 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.23, i64 0, i32 0, i32 2
  store i8* getelementptr inbounds ([16 x i8]* @.cst, i64 0, i64 0), i8** %207, align 8
  %208 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.23, i64 0, i32 0, i32 3
  store i32 113, i32* %208, align 8
  %209 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.23, i64 0, i32 5
  store i8* getelementptr inbounds ([26 x i8]* @.cst26, i64 0, i64 0), i8** %209, align 8
  %210 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.23, i64 0, i32 6
  store i32 26, i32* %210, align 8
  %211 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.23, i64 0, i32 0, i32 0
  store i32 4096, i32* %211, align 8
  %212 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.23, i64 0, i32 0, i32 1
  store i32 6, i32* %212, align 4
  call void @_gfortran_st_write(%struct.__st_parameter_dt* %dt_parm.23) #1
  %213 = getelementptr inbounds [0 x i8]* %cs6, i64 0, i64 0
  call void @_gfortran_transfer_character_write(%struct.__st_parameter_dt* %dt_parm.23, i8* noalias %213, i32 %_cs6) #1
  call void @_gfortran_st_write_done(%struct.__st_parameter_dt* %dt_parm.23) #1
  %214 = bitcast %struct.__st_parameter_dt* %dt_parm.23 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %214)
  %215 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.24, i64 0, i32 0, i32 2
  store i8* getelementptr inbounds ([16 x i8]* @.cst, i64 0, i64 0), i8** %215, align 8
  %216 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.24, i64 0, i32 0, i32 3
  store i32 116, i32* %216, align 8
  %217 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.24, i64 0, i32 5
  store i8* getelementptr inbounds ([26 x i8]* @.cst27, i64 0, i64 0), i8** %217, align 8
  %218 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.24, i64 0, i32 6
  store i32 26, i32* %218, align 8
  %219 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.24, i64 0, i32 0, i32 0
  store i32 4096, i32* %219, align 8
  %220 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.24, i64 0, i32 0, i32 1
  store i32 6, i32* %220, align 4
  call void @_gfortran_st_write(%struct.__st_parameter_dt* %dt_parm.24) #1
  %221 = getelementptr inbounds [0 x i8]* %cs7, i64 0, i64 0
  call void @_gfortran_transfer_character_write(%struct.__st_parameter_dt* %dt_parm.24, i8* noalias %221, i32 %_cs7) #1
  call void @_gfortran_st_write_done(%struct.__st_parameter_dt* %dt_parm.24) #1
  %222 = bitcast %struct.__st_parameter_dt* %dt_parm.24 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %222)
  %223 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.25, i64 0, i32 0, i32 2
  store i8* getelementptr inbounds ([16 x i8]* @.cst, i64 0, i64 0), i8** %223, align 8
  %224 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.25, i64 0, i32 0, i32 3
  store i32 119, i32* %224, align 8
  %225 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.25, i64 0, i32 5
  store i8* getelementptr inbounds ([157 x i8]* @.cst28, i64 0, i64 0), i8** %225, align 8
  %226 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.25, i64 0, i32 6
  store i32 157, i32* %226, align 8
  %227 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.25, i64 0, i32 0, i32 0
  store i32 4096, i32* %227, align 8
  %228 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.25, i64 0, i32 0, i32 1
  store i32 6, i32* %228, align 4
  call void @_gfortran_st_write(%struct.__st_parameter_dt* %dt_parm.25) #1
  call void @_gfortran_st_write_done(%struct.__st_parameter_dt* %dt_parm.25) #1
  %229 = bitcast %struct.__st_parameter_dt* %dt_parm.25 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %229)
  call void @llvm.lifetime.end(i64 4, i8* %94)
  call void @llvm.lifetime.end(i64 4, i8* %86)
  %230 = getelementptr inbounds [15 x i8]* %size, i64 0, i64 0
  call void @llvm.lifetime.end(i64 15, i8* %230)
  ret void
}

declare void @_gfortran_st_write(%struct.__st_parameter_dt*)

declare void @_gfortran_transfer_character_write(%struct.__st_parameter_dt*, i8*, i32)

declare void @_gfortran_st_write_done(%struct.__st_parameter_dt*)

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind readonly
declare i32 @_gfortran_compare_string(i32, i8*, i32, i8*) #2

; Function Attrs: nounwind readonly
declare double @llvm.powi.f64(double, i32) #2

declare void @_gfortran_transfer_real_write(%struct.__st_parameter_dt*, i8*, i32)

declare void @_gfortran_transfer_integer_write(%struct.__st_parameter_dt*, i8*, i32)

attributes #0 = { nounwind uwtable "no-frame-pointer-elim-non-leaf"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!0 = metadata !{i32 0, i32 2}
