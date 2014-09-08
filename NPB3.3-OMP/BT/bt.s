; ModuleID = 'bt.f'
target datalayout = "e-p:64:64:64-S128-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f16:16:16-f32:32:32-f64:64:64-f128:128:128-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

module asm "\09.ident\09\22GCC: (GNU) 4.8.2 20140206 (prerelease) LLVM: 3.4\22"

%0 = type { double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, [65 x double], double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double }
%1 = type { [1352000 x double], [270400 x double], [270400 x double], [270400 x double], [270400 x double], [270400 x double], [270400 x double], [1352000 x double], [1352000 x double] }
%2 = type { double, [3 x i32], i32 }
%3 = type { [65 x double], [65 x double], [325 x double], [325 x double] }
%struct.__st_parameter_open = type { %struct.__st_parameter_common, i32, i32, i8*, i8*, i32, i32, i8*, i8*, i32, i32, i8*, i8*, i32, i32, i8*, i8*, i32, i32, i8*, i8*, i32, i32, i8*, i8*, i32, i32, i8*, i8*, i32, i32, i8*, i32* }
%struct.__st_parameter_common = type { i32, i32, i8*, i32, i32, i8*, i32* }
%struct.__st_parameter_close = type { %struct.__st_parameter_common, i8*, i32, [4 x i8] }
%struct.__st_parameter_dt = type { %struct.__st_parameter_common, i64, i64*, i64*, i8*, i8*, i32, i32, i8*, i8*, i32, i32, i8*, [256 x i8], i32*, i64, i8*, i32, i32, i8*, i8*, i32, i32, i8*, i8*, i32, i32, i8*, i8*, i32, [4 x i8] }

@constants_ = common global %0 zeroinitializer, align 32
@fields_ = common unnamed_addr global %1 zeroinitializer, align 32
@global_ = common global %2 zeroinitializer, align 16
@work_1d_ = common unnamed_addr global %3 zeroinitializer, align 32
@.cst = linker_private unnamed_addr constant [5 x i8] c"bt.f\00", align 8
@.cst1 = linker_private unnamed_addr constant [10 x i8] c"timer.flag", align 8
@.cst2 = linker_private unnamed_addr constant [3 x i8] c"old", align 8
@.cst3 = linker_private unnamed_addr constant [5 x i8] c"total", align 8
@.cst4 = linker_private unnamed_addr constant [4 x i8] c"rhsx", align 8
@.cst5 = linker_private unnamed_addr constant [4 x i8] c"rhsy", align 8
@.cst6 = linker_private unnamed_addr constant [4 x i8] c"rhsz", align 8
@.cst7 = linker_private unnamed_addr constant [3 x i8] c"rhs", align 8
@.cst8 = linker_private unnamed_addr constant [6 x i8] c"xsolve", align 8
@.cst9 = linker_private unnamed_addr constant [6 x i8] c"ysolve", align 8
@.cst10 = linker_private unnamed_addr constant [6 x i8] c"zsolve", align 8
@.cst11 = linker_private unnamed_addr constant [7 x i8] c"redist1", align 8
@.cst12 = linker_private unnamed_addr constant [7 x i8] c"redist2", align 8
@.cst13 = linker_private unnamed_addr constant [3 x i8] c"add", align 8
@.cst14 = linker_private unnamed_addr constant [92 x i8] c"(//, ' NAS Parallel Benchmarks (NPB3.3-OMP)',                          ' - BT Benchmark', /)", align 64
@.cst15 = linker_private unnamed_addr constant [12 x i8] c"inputbt.data", align 8
@.cst16 = linker_private unnamed_addr constant [41 x i8] c"(' Reading from input file inputbt.data')", align 64
@.cst17 = linker_private unnamed_addr constant [56 x i8] c"(' No input file inputbt.data. Using compiled defaults')", align 64
@.cst18 = linker_private unnamed_addr constant [33 x i8] c"(' Size: ', i4, 'x', i4, 'x', i4)", align 64
@.cst19 = linker_private unnamed_addr constant [43 x i8] c"(' Iterations: ', i4, '       dt: ', F11.7)", align 64
@.cst20 = linker_private unnamed_addr constant [46 x i8] c" Problem size too big for compiled array sizes", align 64
@0 = internal constant i32 1
@.cst21 = linker_private unnamed_addr constant [19 x i8] c"(' Time step ', i4)", align 8
@1 = internal constant i32 1
@2 = internal constant i32 1
@.cst22 = linker_private unnamed_addr constant [2 x i8] c"BT", align 8
@.cst23 = linker_private unnamed_addr constant [24 x i8] c"          floating point", align 8
@.cst24 = linker_private unnamed_addr constant [3 x i8] c"3.3", align 8
@.cst25 = linker_private unnamed_addr constant [11 x i8] c"19 Feb 2014", align 8
@.cst26 = linker_private unnamed_addr constant [8 x i8] c"gfortran", align 8
@.cst27 = linker_private unnamed_addr constant [6 x i8] c"$(F77)", align 8
@.cst28 = linker_private unnamed_addr constant [6 x i8] c"(none)", align 8
@.cst29 = linker_private unnamed_addr constant [46 x i8] c"-O -S -fplugin=/home/xiehuc/PROJECT/dragone...", align 64
@.cst30 = linker_private unnamed_addr constant [2 x i8] c"-O", align 8
@.cst31 = linker_private unnamed_addr constant [27 x i8] c"('  SECTION   Time (secs)')", align 8
@.cst32 = linker_private unnamed_addr constant [32 x i8] c"(2x,a8,':',f9.3,'  (',f6.2,'%)')", align 64
@.cst33 = linker_private unnamed_addr constant [46 x i8] c"('    --> total ',a8,':',f9.3,'  (',f6.2,'%)')", align 64
@.cst34 = linker_private unnamed_addr constant [7 x i8] c"sub-rhs", align 8
@.cst35 = linker_private unnamed_addr constant [8 x i8] c"rest-rhs", align 8
@.cst36 = linker_private unnamed_addr constant [8 x i8] c"sub-zsol", align 8
@.cst37 = linker_private unnamed_addr constant [6 x i8] c"redist", align 8
@options.22.2242 = internal constant [7 x i32] [i32 68, i32 1023, i32 0, i32 0, i32 1, i32 1, i32 0], align 16

; Function Attrs: nounwind uwtable
define internal fastcc void @MAIN__() #0 {
entry:
  %class = alloca [1 x i8], align 1
  %fstatus = alloca i32, align 4
  %i = alloca i32, align 4
  %mflops = alloca double, align 8
  %niter = alloca i32, align 4
  %step = alloca i32, align 4
  %t = alloca double, align 8
  %t_names = alloca [11 x [8 x i8]], align 1
  %tmax = alloca double, align 8
  %trecs = alloca [11 x double], align 8
  %verified = alloca i32, align 4
  %open_parm.0 = alloca %struct.__st_parameter_open, align 8
  %close_parm.1 = alloca %struct.__st_parameter_close, align 8
  %dt_parm.2 = alloca %struct.__st_parameter_dt, align 8
  %open_parm.3 = alloca %struct.__st_parameter_open, align 8
  %dt_parm.4 = alloca %struct.__st_parameter_dt, align 8
  %dt_parm.5 = alloca %struct.__st_parameter_dt, align 8
  %dt_parm.6 = alloca %struct.__st_parameter_dt, align 8
  %dt_parm.7 = alloca %struct.__st_parameter_dt, align 8
  %close_parm.8 = alloca %struct.__st_parameter_close, align 8
  %dt_parm.9 = alloca %struct.__st_parameter_dt, align 8
  %dt_parm.10 = alloca %struct.__st_parameter_dt, align 8
  %dt_parm.11 = alloca %struct.__st_parameter_dt, align 8
  %dt_parm.12 = alloca %struct.__st_parameter_dt, align 8
  %dt_parm.13 = alloca %struct.__st_parameter_dt, align 8
  %dt_parm.14 = alloca %struct.__st_parameter_dt, align 8
  %dt_parm.15 = alloca %struct.__st_parameter_dt, align 8
  %dt_parm.16 = alloca %struct.__st_parameter_dt, align 8
  %dt_parm.17 = alloca %struct.__st_parameter_dt, align 8
  %D.2191 = alloca double, align 8
  %dt_parm.18 = alloca %struct.__st_parameter_dt, align 8
  %D.2194 = alloca double, align 8
  %dt_parm.19 = alloca %struct.__st_parameter_dt, align 8
  %D.2196 = alloca double, align 8
  %dt_parm.20 = alloca %struct.__st_parameter_dt, align 8
  %D.2199 = alloca double, align 8
  %dt_parm.21 = alloca %struct.__st_parameter_dt, align 8
  %D.2202 = alloca double, align 8
  %0 = getelementptr inbounds [11 x [8 x i8]]* %t_names, i64 0, i64 0, i64 0
  %1 = getelementptr inbounds %struct.__st_parameter_open* %open_parm.0, i64 0, i32 0, i32 2
  store i8* getelementptr inbounds ([5 x i8]* @.cst, i64 0, i64 0), i8** %1, align 8
  %2 = getelementptr inbounds %struct.__st_parameter_open* %open_parm.0, i64 0, i32 0, i32 3
  store i32 69, i32* %2, align 8
  store i32 0, i32* %fstatus, align 4
  %3 = getelementptr inbounds %struct.__st_parameter_open* %open_parm.0, i64 0, i32 0, i32 6
  store i32* %fstatus, i32** %3, align 8
  %4 = getelementptr inbounds %struct.__st_parameter_open* %open_parm.0, i64 0, i32 3
  store i8* getelementptr inbounds ([10 x i8]* @.cst1, i64 0, i64 0), i8** %4, align 8
  %5 = getelementptr inbounds %struct.__st_parameter_open* %open_parm.0, i64 0, i32 2
  store i32 10, i32* %5, align 4
  %6 = getelementptr inbounds %struct.__st_parameter_open* %open_parm.0, i64 0, i32 4
  store i8* getelementptr inbounds ([3 x i8]* @.cst2, i64 0, i64 0), i8** %6, align 8
  %7 = getelementptr inbounds %struct.__st_parameter_open* %open_parm.0, i64 0, i32 5
  store i32 3, i32* %7, align 8
  %8 = getelementptr inbounds %struct.__st_parameter_open* %open_parm.0, i64 0, i32 0, i32 0
  store i32 800, i32* %8, align 8
  %9 = getelementptr inbounds %struct.__st_parameter_open* %open_parm.0, i64 0, i32 0, i32 1
  store i32 2, i32* %9, align 4
  call void @_gfortran_st_open(%struct.__st_parameter_open* %open_parm.0) #1
  %10 = bitcast %struct.__st_parameter_open* %open_parm.0 to i8*
  call void @llvm.lifetime.end(i64 232, i8* %10)
  %11 = load i32* %fstatus, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %"3", label %"4"

"3":                                              ; preds = %entry
  %13 = getelementptr inbounds [11 x [8 x i8]]* %t_names, i64 0, i64 0, i64 83
  %14 = getelementptr inbounds [11 x [8 x i8]]* %t_names, i64 0, i64 0, i64 79
  %15 = getelementptr inbounds [11 x [8 x i8]]* %t_names, i64 0, i64 0, i64 71
  %16 = getelementptr inbounds [11 x [8 x i8]]* %t_names, i64 0, i64 0, i64 62
  %17 = getelementptr inbounds [11 x [8 x i8]]* %t_names, i64 0, i64 0, i64 54
  %18 = getelementptr inbounds [11 x [8 x i8]]* %t_names, i64 0, i64 0, i64 46
  %19 = getelementptr inbounds [11 x [8 x i8]]* %t_names, i64 0, i64 0, i64 35
  %20 = getelementptr inbounds [11 x [8 x i8]]* %t_names, i64 0, i64 0, i64 28
  %21 = getelementptr inbounds [11 x [8 x i8]]* %t_names, i64 0, i64 0, i64 20
  %22 = getelementptr inbounds [11 x [8 x i8]]* %t_names, i64 0, i64 0, i64 12
  %23 = getelementptr inbounds [11 x [8 x i8]]* %t_names, i64 0, i64 0, i64 5
  store i32 1, i32* getelementptr inbounds (%2* @global_, i64 0, i32 2), align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([5 x i8]* @.cst3, i64 0, i64 0), i64 5, i32 1, i1 false)
  call void @llvm.memset.p0i8.i64(i8* %23, i8 32, i64 3, i32 1, i1 false)
  %24 = getelementptr [11 x [8 x i8]]* %t_names, i64 0, i64 1, i64 0
  %25 = bitcast i8* %24 to i32*
  store i32 2020829298, i32* %25, align 1
  %26 = bitcast i8* %22 to i32*
  store i32 538976288, i32* %26, align 1
  %27 = getelementptr [11 x [8 x i8]]* %t_names, i64 0, i64 2, i64 0
  %28 = bitcast i8* %27 to i32*
  store i32 2037606514, i32* %28, align 1
  %29 = bitcast i8* %21 to i32*
  store i32 538976288, i32* %29, align 1
  %30 = getelementptr [11 x [8 x i8]]* %t_names, i64 0, i64 3, i64 0
  %31 = bitcast i8* %30 to i32*
  store i32 2054383730, i32* %31, align 1
  %32 = bitcast i8* %20 to i32*
  store i32 538976288, i32* %32, align 1
  %33 = getelementptr [11 x [8 x i8]]* %t_names, i64 0, i64 4, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* getelementptr inbounds ([3 x i8]* @.cst7, i64 0, i64 0), i64 3, i32 1, i1 false)
  call void @llvm.memset.p0i8.i64(i8* %19, i8 32, i64 5, i32 1, i1 false)
  %34 = getelementptr [11 x [8 x i8]]* %t_names, i64 0, i64 5, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([6 x i8]* @.cst8, i64 0, i64 0), i64 6, i32 1, i1 false)
  %35 = bitcast i8* %18 to i16*
  store i16 8224, i16* %35, align 1
  %36 = getelementptr [11 x [8 x i8]]* %t_names, i64 0, i64 6, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([6 x i8]* @.cst9, i64 0, i64 0), i64 6, i32 1, i1 false)
  %37 = bitcast i8* %17 to i16*
  store i16 8224, i16* %37, align 1
  %38 = getelementptr [11 x [8 x i8]]* %t_names, i64 0, i64 7, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* getelementptr inbounds ([6 x i8]* @.cst10, i64 0, i64 0), i64 6, i32 1, i1 false)
  %39 = bitcast i8* %16 to i16*
  store i16 8224, i16* %39, align 1
  %40 = getelementptr [11 x [8 x i8]]* %t_names, i64 0, i64 8, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* getelementptr inbounds ([7 x i8]* @.cst11, i64 0, i64 0), i64 7, i32 1, i1 false)
  store i8 32, i8* %15, align 1
  %41 = getelementptr [11 x [8 x i8]]* %t_names, i64 0, i64 9, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* getelementptr inbounds ([7 x i8]* @.cst12, i64 0, i64 0), i64 7, i32 1, i1 false)
  store i8 32, i8* %14, align 1
  %42 = getelementptr [11 x [8 x i8]]* %t_names, i64 0, i64 10, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* getelementptr inbounds ([3 x i8]* @.cst13, i64 0, i64 0), i64 3, i32 1, i1 false)
  call void @llvm.memset.p0i8.i64(i8* %13, i8 32, i64 5, i32 1, i1 false)
  %43 = getelementptr inbounds %struct.__st_parameter_close* %close_parm.1, i64 0, i32 0, i32 2
  store i8* getelementptr inbounds ([5 x i8]* @.cst, i64 0, i64 0), i8** %43, align 8
  %44 = getelementptr inbounds %struct.__st_parameter_close* %close_parm.1, i64 0, i32 0, i32 3
  store i32 83, i32* %44, align 8
  %45 = getelementptr inbounds %struct.__st_parameter_close* %close_parm.1, i64 0, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = getelementptr inbounds %struct.__st_parameter_close* %close_parm.1, i64 0, i32 0, i32 1
  store i32 2, i32* %46, align 4
  call void @_gfortran_st_close(%struct.__st_parameter_close* %close_parm.1) #1
  %47 = bitcast %struct.__st_parameter_close* %close_parm.1 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %47)
  br label %"5"

"4":                                              ; preds = %entry
  store i32 0, i32* getelementptr inbounds (%2* @global_, i64 0, i32 2), align 4
  br label %"5"

"5":                                              ; preds = %"4", %"3"
  %48 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.2, i64 0, i32 0, i32 2
  store i8* getelementptr inbounds ([5 x i8]* @.cst, i64 0, i64 0), i8** %48, align 8
  %49 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.2, i64 0, i32 0, i32 3
  store i32 88, i32* %49, align 8
  %50 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.2, i64 0, i32 5
  store i8* getelementptr inbounds ([92 x i8]* @.cst14, i64 0, i64 0), i8** %50, align 8
  %51 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.2, i64 0, i32 6
  store i32 92, i32* %51, align 8
  %52 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.2, i64 0, i32 0, i32 0
  store i32 4096, i32* %52, align 8
  %53 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.2, i64 0, i32 0, i32 1
  store i32 6, i32* %53, align 4
  call void @_gfortran_st_write(%struct.__st_parameter_dt* %dt_parm.2) #1
  call void @_gfortran_st_write_done(%struct.__st_parameter_dt* %dt_parm.2) #1
  %54 = bitcast %struct.__st_parameter_dt* %dt_parm.2 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %54)
  %55 = getelementptr inbounds %struct.__st_parameter_open* %open_parm.3, i64 0, i32 0, i32 2
  store i8* getelementptr inbounds ([5 x i8]* @.cst, i64 0, i64 0), i8** %55, align 8
  %56 = getelementptr inbounds %struct.__st_parameter_open* %open_parm.3, i64 0, i32 0, i32 3
  store i32 89, i32* %56, align 8
  store i32 0, i32* %fstatus, align 4
  %57 = getelementptr inbounds %struct.__st_parameter_open* %open_parm.3, i64 0, i32 0, i32 6
  store i32* %fstatus, i32** %57, align 8
  %58 = getelementptr inbounds %struct.__st_parameter_open* %open_parm.3, i64 0, i32 3
  store i8* getelementptr inbounds ([12 x i8]* @.cst15, i64 0, i64 0), i8** %58, align 8
  %59 = getelementptr inbounds %struct.__st_parameter_open* %open_parm.3, i64 0, i32 2
  store i32 12, i32* %59, align 4
  %60 = getelementptr inbounds %struct.__st_parameter_open* %open_parm.3, i64 0, i32 4
  store i8* getelementptr inbounds ([3 x i8]* @.cst2, i64 0, i64 0), i8** %60, align 8
  %61 = getelementptr inbounds %struct.__st_parameter_open* %open_parm.3, i64 0, i32 5
  store i32 3, i32* %61, align 8
  %62 = getelementptr inbounds %struct.__st_parameter_open* %open_parm.3, i64 0, i32 0, i32 0
  store i32 800, i32* %62, align 8
  %63 = getelementptr inbounds %struct.__st_parameter_open* %open_parm.3, i64 0, i32 0, i32 1
  store i32 2, i32* %63, align 4
  call void @_gfortran_st_open(%struct.__st_parameter_open* %open_parm.3) #1
  %64 = bitcast %struct.__st_parameter_open* %open_parm.3 to i8*
  call void @llvm.lifetime.end(i64 232, i8* %64)
  %65 = load i32* %fstatus, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %"6", label %"7"

"6":                                              ; preds = %"5"
  %67 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.4, i64 0, i32 0, i32 2
  store i8* getelementptr inbounds ([5 x i8]* @.cst, i64 0, i64 0), i8** %67, align 8
  %68 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.4, i64 0, i32 0, i32 3
  store i32 92, i32* %68, align 8
  %69 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.4, i64 0, i32 5
  store i8* getelementptr inbounds ([41 x i8]* @.cst16, i64 0, i64 0), i8** %69, align 8
  %70 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.4, i64 0, i32 6
  store i32 41, i32* %70, align 8
  %71 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.4, i64 0, i32 0, i32 0
  store i32 4096, i32* %71, align 8
  %72 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.4, i64 0, i32 0, i32 1
  store i32 6, i32* %72, align 4
  call void @_gfortran_st_write(%struct.__st_parameter_dt* %dt_parm.4) #1
  call void @_gfortran_st_write_done(%struct.__st_parameter_dt* %dt_parm.4) #1
  %73 = bitcast %struct.__st_parameter_dt* %dt_parm.4 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %73)
  %74 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.5, i64 0, i32 0, i32 2
  store i8* getelementptr inbounds ([5 x i8]* @.cst, i64 0, i64 0), i8** %74, align 8
  %75 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.5, i64 0, i32 0, i32 3
  store i32 94, i32* %75, align 8
  %76 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.5, i64 0, i32 0, i32 0
  store i32 128, i32* %76, align 8
  %77 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.5, i64 0, i32 0, i32 1
  store i32 2, i32* %77, align 4
  call void @_gfortran_st_read(%struct.__st_parameter_dt* %dt_parm.5) #1
  %78 = bitcast i32* %niter to i8*
  call void @_gfortran_transfer_integer(%struct.__st_parameter_dt* %dt_parm.5, i8* %78, i32 4) #1
  call void @_gfortran_st_read_done(%struct.__st_parameter_dt* %dt_parm.5) #1
  %79 = bitcast %struct.__st_parameter_dt* %dt_parm.5 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %79)
  %80 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.6, i64 0, i32 0, i32 2
  store i8* getelementptr inbounds ([5 x i8]* @.cst, i64 0, i64 0), i8** %80, align 8
  %81 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.6, i64 0, i32 0, i32 3
  store i32 95, i32* %81, align 8
  %82 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.6, i64 0, i32 0, i32 0
  store i32 128, i32* %82, align 8
  %83 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.6, i64 0, i32 0, i32 1
  store i32 2, i32* %83, align 4
  call void @_gfortran_st_read(%struct.__st_parameter_dt* %dt_parm.6) #1
  call void @_gfortran_transfer_real(%struct.__st_parameter_dt* %dt_parm.6, i8* bitcast (double* getelementptr inbounds (%0* @constants_, i64 0, i32 25) to i8*), i32 8) #1
  call void @_gfortran_st_read_done(%struct.__st_parameter_dt* %dt_parm.6) #1
  %84 = bitcast %struct.__st_parameter_dt* %dt_parm.6 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %84)
  %85 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.7, i64 0, i32 0, i32 2
  store i8* getelementptr inbounds ([5 x i8]* @.cst, i64 0, i64 0), i8** %85, align 8
  %86 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.7, i64 0, i32 0, i32 3
  store i32 96, i32* %86, align 8
  %87 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.7, i64 0, i32 0, i32 0
  store i32 128, i32* %87, align 8
  %88 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.7, i64 0, i32 0, i32 1
  store i32 2, i32* %88, align 4
  call void @_gfortran_st_read(%struct.__st_parameter_dt* %dt_parm.7) #1
  call void @_gfortran_transfer_integer(%struct.__st_parameter_dt* %dt_parm.7, i8* bitcast (i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 0) to i8*), i32 4) #1
  call void @_gfortran_transfer_integer(%struct.__st_parameter_dt* %dt_parm.7, i8* bitcast (i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 1) to i8*), i32 4) #1
  call void @_gfortran_transfer_integer(%struct.__st_parameter_dt* %dt_parm.7, i8* bitcast (i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 2) to i8*), i32 4) #1
  call void @_gfortran_st_read_done(%struct.__st_parameter_dt* %dt_parm.7) #1
  %89 = bitcast %struct.__st_parameter_dt* %dt_parm.7 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %89)
  %90 = getelementptr inbounds %struct.__st_parameter_close* %close_parm.8, i64 0, i32 0, i32 2
  store i8* getelementptr inbounds ([5 x i8]* @.cst, i64 0, i64 0), i8** %90, align 8
  %91 = getelementptr inbounds %struct.__st_parameter_close* %close_parm.8, i64 0, i32 0, i32 3
  store i32 97, i32* %91, align 8
  %92 = getelementptr inbounds %struct.__st_parameter_close* %close_parm.8, i64 0, i32 0, i32 0
  store i32 0, i32* %92, align 8
  %93 = getelementptr inbounds %struct.__st_parameter_close* %close_parm.8, i64 0, i32 0, i32 1
  store i32 2, i32* %93, align 4
  call void @_gfortran_st_close(%struct.__st_parameter_close* %close_parm.8) #1
  %94 = bitcast %struct.__st_parameter_close* %close_parm.8 to i8*
  call void @llvm.lifetime.end(i64 56, i8* %94)
  br label %"8"

"7":                                              ; preds = %"5"
  %95 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.9, i64 0, i32 0, i32 2
  store i8* getelementptr inbounds ([5 x i8]* @.cst, i64 0, i64 0), i8** %95, align 8
  %96 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.9, i64 0, i32 0, i32 3
  store i32 99, i32* %96, align 8
  %97 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.9, i64 0, i32 5
  store i8* getelementptr inbounds ([56 x i8]* @.cst17, i64 0, i64 0), i8** %97, align 8
  %98 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.9, i64 0, i32 6
  store i32 56, i32* %98, align 8
  %99 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.9, i64 0, i32 0, i32 0
  store i32 4096, i32* %99, align 8
  %100 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.9, i64 0, i32 0, i32 1
  store i32 6, i32* %100, align 4
  call void @_gfortran_st_write(%struct.__st_parameter_dt* %dt_parm.9) #1
  call void @_gfortran_st_write_done(%struct.__st_parameter_dt* %dt_parm.9) #1
  %101 = bitcast %struct.__st_parameter_dt* %dt_parm.9 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %101)
  store i32 200, i32* %niter, align 4
  store double 8.000000e-04, double* getelementptr inbounds (%0* @constants_, i64 0, i32 25), align 8
  store i32 64, i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 0), align 8
  store i32 64, i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 1), align 4
  store i32 64, i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 2), align 8
  br label %"8"

"8":                                              ; preds = %"7", %"6"
  %102 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.10, i64 0, i32 0, i32 2
  store i8* getelementptr inbounds ([5 x i8]* @.cst, i64 0, i64 0), i8** %102, align 8
  %103 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.10, i64 0, i32 0, i32 3
  store i32 108, i32* %103, align 8
  %104 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.10, i64 0, i32 5
  store i8* getelementptr inbounds ([33 x i8]* @.cst18, i64 0, i64 0), i8** %104, align 8
  %105 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.10, i64 0, i32 6
  store i32 33, i32* %105, align 8
  %106 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.10, i64 0, i32 0, i32 0
  store i32 4096, i32* %106, align 8
  %107 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.10, i64 0, i32 0, i32 1
  store i32 6, i32* %107, align 4
  call void @_gfortran_st_write(%struct.__st_parameter_dt* %dt_parm.10) #1
  call void @_gfortran_transfer_integer_write(%struct.__st_parameter_dt* %dt_parm.10, i8* bitcast (i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 0) to i8*), i32 4) #1
  call void @_gfortran_transfer_integer_write(%struct.__st_parameter_dt* %dt_parm.10, i8* bitcast (i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 1) to i8*), i32 4) #1
  call void @_gfortran_transfer_integer_write(%struct.__st_parameter_dt* %dt_parm.10, i8* bitcast (i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 2) to i8*), i32 4) #1
  call void @_gfortran_st_write_done(%struct.__st_parameter_dt* %dt_parm.10) #1
  %108 = bitcast %struct.__st_parameter_dt* %dt_parm.10 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %108)
  %109 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.11, i64 0, i32 0, i32 2
  store i8* getelementptr inbounds ([5 x i8]* @.cst, i64 0, i64 0), i8** %109, align 8
  %110 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.11, i64 0, i32 0, i32 3
  store i32 109, i32* %110, align 8
  %111 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.11, i64 0, i32 5
  store i8* getelementptr inbounds ([43 x i8]* @.cst19, i64 0, i64 0), i8** %111, align 8
  %112 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.11, i64 0, i32 6
  store i32 43, i32* %112, align 8
  %113 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.11, i64 0, i32 0, i32 0
  store i32 4096, i32* %113, align 8
  %114 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.11, i64 0, i32 0, i32 1
  store i32 6, i32* %114, align 4
  call void @_gfortran_st_write(%struct.__st_parameter_dt* %dt_parm.11) #1
  %115 = bitcast i32* %niter to i8*
  call void @_gfortran_transfer_integer_write(%struct.__st_parameter_dt* %dt_parm.11, i8* %115, i32 4) #1
  call void @_gfortran_transfer_real_write(%struct.__st_parameter_dt* %dt_parm.11, i8* bitcast (double* getelementptr inbounds (%0* @constants_, i64 0, i32 25) to i8*), i32 8) #1
  call void @_gfortran_st_write_done(%struct.__st_parameter_dt* %dt_parm.11) #1
  %116 = bitcast %struct.__st_parameter_dt* %dt_parm.11 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %116)
  %117 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.12, i64 0, i32 0, i32 2
  store i8* getelementptr inbounds ([5 x i8]* @.cst, i64 0, i64 0), i8** %117, align 8
  %118 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.12, i64 0, i32 0, i32 3
  store i32 111, i32* %118, align 8
  %119 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.12, i64 0, i32 0, i32 0
  store i32 128, i32* %119, align 8
  %120 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.12, i64 0, i32 0, i32 1
  store i32 6, i32* %120, align 4
  call void @_gfortran_st_write(%struct.__st_parameter_dt* %dt_parm.12) #1
  call void @_gfortran_st_write_done(%struct.__st_parameter_dt* %dt_parm.12) #1
  %121 = bitcast %struct.__st_parameter_dt* %dt_parm.12 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %121)
  %122 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 0), align 8
  %123 = icmp sgt i32 %122, 64
  %124 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 1), align 4
  %125 = icmp sgt i32 %124, 64
  %or.cond = or i1 %123, %125
  %126 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 2), align 8
  %127 = icmp sgt i32 %126, 64
  %or.cond3 = or i1 %or.cond, %127
  br i1 %or.cond3, label %"11", label %"15"

"11":                                             ; preds = %"8"
  %128 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.13, i64 0, i32 0, i32 2
  store i8* getelementptr inbounds ([5 x i8]* @.cst, i64 0, i64 0), i8** %128, align 8
  %129 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.13, i64 0, i32 0, i32 3
  store i32 122, i32* %129, align 8
  %130 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.13, i64 0, i32 0, i32 0
  store i32 128, i32* %130, align 8
  %131 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.13, i64 0, i32 0, i32 1
  store i32 6, i32* %131, align 4
  call void @_gfortran_st_write(%struct.__st_parameter_dt* %dt_parm.13) #1
  store i32 1, i32* %i, align 4
  br label %"12"

"12":                                             ; preds = %"11", %"13"
  %132 = load i32* %i, align 4
  %133 = sext i32 %132 to i64
  %134 = add i64 %133, -1
  %135 = getelementptr %2* @global_, i64 0, i32 1, i64 %134
  %136 = bitcast i32* %135 to i8*
  call void @_gfortran_transfer_integer_write(%struct.__st_parameter_dt* %dt_parm.13, i8* %136, i32 4) #1
  %137 = load i32* %130, align 8
  %138 = and i32 %137, 1
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %"13", label %"14"

"13":                                             ; preds = %"12"
  %140 = load i32* %i, align 4
  %141 = icmp eq i32 %140, 3
  %142 = add i32 %140, 1
  store i32 %142, i32* %i, align 4
  br i1 %141, label %"14", label %"12"

"14":                                             ; preds = %"12", %"13"
  call void @_gfortran_st_write_done(%struct.__st_parameter_dt* %dt_parm.13) #1
  %143 = bitcast %struct.__st_parameter_dt* %dt_parm.13 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %143)
  %144 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.14, i64 0, i32 0, i32 2
  store i8* getelementptr inbounds ([5 x i8]* @.cst, i64 0, i64 0), i8** %144, align 8
  %145 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.14, i64 0, i32 0, i32 3
  store i32 123, i32* %145, align 8
  %146 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.14, i64 0, i32 0, i32 0
  store i32 128, i32* %146, align 8
  %147 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.14, i64 0, i32 0, i32 1
  store i32 6, i32* %147, align 4
  call void @_gfortran_st_write(%struct.__st_parameter_dt* %dt_parm.14) #1
  call void @_gfortran_transfer_character_write(%struct.__st_parameter_dt* %dt_parm.14, i8* getelementptr inbounds ([46 x i8]* @.cst20, i64 0, i64 0), i32 46) #1
  call void @_gfortran_st_write_done(%struct.__st_parameter_dt* %dt_parm.14) #1
  %148 = bitcast %struct.__st_parameter_dt* %dt_parm.14 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %148)
  br label %"40"

"15":                                             ; preds = %"8"
  call void bitcast (void (...)* @set_constants_ to void ()*)() #1
  call void bitcast (void (...)* @initialize_ to void ()*)() #1
  store i32 1, i32* %i, align 4
  br label %"16"

"16":                                             ; preds = %"15", %"16"
  call void bitcast (void (...)* @timer_clear_ to void (i32*)*)(i32* %i) #1
  %149 = load i32* %i, align 4
  %150 = icmp eq i32 %149, 11
  %151 = add i32 %149, 1
  store i32 %151, i32* %i, align 4
  br i1 %150, label %"17", label %"16"

"17":                                             ; preds = %"16"
  call void bitcast (void (...)* @exact_rhs_ to void ()*)() #1
  call void bitcast (void (...)* @adi_ to void ()*)() #1
  call void bitcast (void (...)* @initialize_ to void ()*)() #1
  store i32 1, i32* %i, align 4
  br label %"18"

"18":                                             ; preds = %"17", %"18"
  call void bitcast (void (...)* @timer_clear_ to void (i32*)*)(i32* %i) #1
  %152 = load i32* %i, align 4
  %153 = icmp eq i32 %152, 11
  %154 = add i32 %152, 1
  store i32 %154, i32* %i, align 4
  br i1 %153, label %"19", label %"18"

"19":                                             ; preds = %"18"
  call void bitcast (void (...)* @timer_start_ to void (i32*)*)(i32* @0) #1
  %155 = load i32* %niter, align 4
  store i32 1, i32* %step, align 4
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %"20.preheader", label %"24"

"20.preheader":                                   ; preds = %"19"
  %157 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.15, i64 0, i32 0, i32 2
  %158 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.15, i64 0, i32 0, i32 3
  %159 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.15, i64 0, i32 5
  %160 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.15, i64 0, i32 6
  %161 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.15, i64 0, i32 0, i32 0
  %162 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.15, i64 0, i32 0, i32 1
  %163 = bitcast i32* %step to i8*
  %164 = bitcast %struct.__st_parameter_dt* %dt_parm.15 to i8*
  br label %"20"

"20":                                             ; preds = %"20.preheader", %"23"
  %165 = load i32* %step, align 4
  %166 = srem i32 %165, 20
  %167 = icmp eq i32 %166, 0
  %168 = icmp eq i32 %165, 1
  %or.cond5 = or i1 %167, %168
  br i1 %or.cond5, label %"22", label %"23"

"22":                                             ; preds = %"20"
  store i8* getelementptr inbounds ([5 x i8]* @.cst, i64 0, i64 0), i8** %157, align 8
  store i32 154, i32* %158, align 8
  store i8* getelementptr inbounds ([19 x i8]* @.cst21, i64 0, i64 0), i8** %159, align 8
  store i32 19, i32* %160, align 8
  store i32 4096, i32* %161, align 8
  store i32 6, i32* %162, align 4
  call void @_gfortran_st_write(%struct.__st_parameter_dt* %dt_parm.15) #1
  call void @_gfortran_transfer_integer_write(%struct.__st_parameter_dt* %dt_parm.15, i8* %163, i32 4) #1
  call void @_gfortran_st_write_done(%struct.__st_parameter_dt* %dt_parm.15) #1
  call void @llvm.lifetime.end(i64 480, i8* %164)
  br label %"23"

"23":                                             ; preds = %"20", %"22"
  call void bitcast (void (...)* @adi_ to void ()*)() #1
  %169 = load i32* %step, align 4
  %170 = icmp eq i32 %169, %155
  %171 = add i32 %169, 1
  store i32 %171, i32* %step, align 4
  br i1 %170, label %"24", label %"20"

"24":                                             ; preds = %"23", %"19"
  call void bitcast (void (...)* @timer_stop_ to void (i32*)*)(i32* @1) #1
  %172 = call double bitcast (double (...)* @timer_read_ to double (i32*)*)(i32* @2) #1
  store double %172, double* %tmax, align 8
  call void bitcast (void (...)* @verify_ to void (i32*, [1 x i8]*, i32*, i32)*)(i32* %niter, [1 x i8]* %class, i32* %verified, i32 1) #1
  %173 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 0), align 8
  %174 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 1), align 4
  %175 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 2), align 8
  %176 = add i32 %174, %173
  %177 = add i32 %176, %175
  %178 = sitofp i32 %177 to float
  %179 = fdiv float %178, 3.000000e+00
  %180 = fpext float %179 to double
  %181 = load double* %tmax, align 8
  %182 = fcmp une double %181, 0.000000e+00
  br i1 %182, label %"25", label %"27"

"25":                                             ; preds = %"24"
  %183 = sitofp i32 %174 to double
  %184 = sitofp i32 %173 to double
  %185 = sitofp i32 %175 to double
  %186 = fmul double %184, %183
  %187 = fmul double %186, %185
  %188 = fmul double %180, %180
  %189 = load i32* %niter, align 4
  %190 = sitofp i32 %189 to float
  %191 = fmul float %190, 0x3EB0C6F7A0000000
  %192 = fpext float %191 to double
  %193 = fmul double %187, 0x40AB2D99A0000000
  %194 = fmul double %188, 0x40D13DECC0000000
  %195 = fsub double %193, %194
  %196 = fmul double %180, 0x40DB5DECC0000000
  %197 = fadd double %196, %195
  %198 = fmul double %197, %192
  %199 = fdiv double %198, %181
  br label %"27"

"27":                                             ; preds = %"24", %"25"
  %storemerge = phi double [ %199, %"25" ], [ 0.000000e+00, %"24" ]
  store double %storemerge, double* %mflops, align 8
  call void bitcast (void (...)* @print_results_ to void (i8*, [1 x i8]*, i32*, i32*, i32*, i32*, double*, double*, i8*, i32*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)*)(i8* getelementptr inbounds ([2 x i8]* @.cst22, i64 0, i64 0), [1 x i8]* %class, i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 0), i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 1), i32* getelementptr inbounds (%2* @global_, i64 0, i32 1, i64 2), i32* %niter, double* %tmax, double* %mflops, i8* getelementptr inbounds ([24 x i8]* @.cst23, i64 0, i64 0), i32* %verified, i8* getelementptr inbounds ([3 x i8]* @.cst24, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.cst25, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.cst26, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.cst27, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.cst28, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.cst28, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8]* @.cst29, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.cst30, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.cst28, i64 0, i64 0), i32 2, i32 1, i32 24, i32 3, i32 11, i32 8, i32 6, i32 6, i32 6, i32 46, i32 2, i32 6) #1
  %200 = load i32* getelementptr inbounds (%2* @global_, i64 0, i32 2), align 4, !range !0
  %not = icmp eq i32 %200, 0
  br i1 %not, label %"40", label %"28"

"28":                                             ; preds = %"27"
  store i32 1, i32* %i, align 4
  br label %"29"

"29":                                             ; preds = %"28", %"29"
  %201 = load i32* %i, align 4
  %202 = sext i32 %201 to i64
  %203 = add i64 %202, -1
  %204 = call double bitcast (double (...)* @timer_read_ to double (i32*)*)(i32* %i) #1
  %205 = getelementptr [11 x double]* %trecs, i64 0, i64 %203
  store double %204, double* %205, align 8
  %206 = load i32* %i, align 4
  %207 = icmp eq i32 %206, 11
  %208 = add i32 %206, 1
  store i32 %208, i32* %i, align 4
  br i1 %207, label %"30", label %"29"

"30":                                             ; preds = %"29"
  %209 = load double* %tmax, align 8
  %210 = fcmp oeq double %209, 0.000000e+00
  br i1 %210, label %"31", label %"32"

"31":                                             ; preds = %"30"
  store double 1.000000e+00, double* %tmax, align 8
  br label %"32"

"32":                                             ; preds = %"31", %"30"
  %211 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.16, i64 0, i32 0, i32 2
  store i8* getelementptr inbounds ([5 x i8]* @.cst, i64 0, i64 0), i8** %211, align 8
  %212 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.16, i64 0, i32 0, i32 3
  store i32 192, i32* %212, align 8
  %213 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.16, i64 0, i32 5
  store i8* getelementptr inbounds ([27 x i8]* @.cst31, i64 0, i64 0), i8** %213, align 8
  %214 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.16, i64 0, i32 6
  store i32 27, i32* %214, align 8
  %215 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.16, i64 0, i32 0, i32 0
  store i32 4096, i32* %215, align 8
  %216 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.16, i64 0, i32 0, i32 1
  store i32 6, i32* %216, align 4
  call void @_gfortran_st_write(%struct.__st_parameter_dt* %dt_parm.16) #1
  call void @_gfortran_st_write_done(%struct.__st_parameter_dt* %dt_parm.16) #1
  %217 = bitcast %struct.__st_parameter_dt* %dt_parm.16 to i8*
  call void @llvm.lifetime.end(i64 480, i8* %217)
  store i32 1, i32* %i, align 4
  %218 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.17, i64 0, i32 0, i32 2
  %219 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.17, i64 0, i32 0, i32 3
  %220 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.17, i64 0, i32 5
  %221 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.17, i64 0, i32 6
  %222 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.17, i64 0, i32 0, i32 0
  %223 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.17, i64 0, i32 0, i32 1
  %224 = bitcast double* %D.2191 to i8*
  %225 = bitcast %struct.__st_parameter_dt* %dt_parm.17 to i8*
  %226 = getelementptr [11 x double]* %trecs, i64 0, i64 1
  %227 = getelementptr [11 x double]* %trecs, i64 0, i64 2
  %228 = getelementptr [11 x double]* %trecs, i64 0, i64 3
  %229 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.18, i64 0, i32 0, i32 2
  %230 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.18, i64 0, i32 0, i32 3
  %231 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.18, i64 0, i32 5
  %232 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.18, i64 0, i32 6
  %233 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.18, i64 0, i32 0, i32 0
  %234 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.18, i64 0, i32 0, i32 1
  %235 = bitcast double* %t to i8*
  %236 = bitcast double* %D.2194 to i8*
  %237 = bitcast %struct.__st_parameter_dt* %dt_parm.18 to i8*
  %238 = getelementptr [11 x double]* %trecs, i64 0, i64 4
  %239 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.19, i64 0, i32 0, i32 2
  %240 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.19, i64 0, i32 0, i32 3
  %241 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.19, i64 0, i32 5
  %242 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.19, i64 0, i32 6
  %243 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.19, i64 0, i32 0, i32 0
  %244 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.19, i64 0, i32 0, i32 1
  %245 = bitcast double* %D.2196 to i8*
  %246 = bitcast %struct.__st_parameter_dt* %dt_parm.19 to i8*
  %247 = getelementptr [11 x double]* %trecs, i64 0, i64 7
  %248 = getelementptr [11 x double]* %trecs, i64 0, i64 8
  %249 = getelementptr [11 x double]* %trecs, i64 0, i64 9
  %250 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.20, i64 0, i32 0, i32 2
  %251 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.20, i64 0, i32 0, i32 3
  %252 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.20, i64 0, i32 5
  %253 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.20, i64 0, i32 6
  %254 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.20, i64 0, i32 0, i32 0
  %255 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.20, i64 0, i32 0, i32 1
  %256 = bitcast double* %t to i8*
  %257 = bitcast double* %D.2199 to i8*
  %258 = bitcast %struct.__st_parameter_dt* %dt_parm.20 to i8*
  %259 = getelementptr [11 x double]* %trecs, i64 0, i64 8
  %260 = getelementptr [11 x double]* %trecs, i64 0, i64 9
  %261 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.21, i64 0, i32 0, i32 2
  %262 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.21, i64 0, i32 0, i32 3
  %263 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.21, i64 0, i32 5
  %264 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.21, i64 0, i32 6
  %265 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.21, i64 0, i32 0, i32 0
  %266 = getelementptr inbounds %struct.__st_parameter_dt* %dt_parm.21, i64 0, i32 0, i32 1
  %267 = bitcast double* %t to i8*
  %268 = bitcast double* %D.2202 to i8*
  %269 = bitcast %struct.__st_parameter_dt* %dt_parm.21 to i8*
  br label %"33"

"33":                                             ; preds = %"32", %"39"
  store i8* getelementptr inbounds ([5 x i8]* @.cst, i64 0, i64 0), i8** %218, align 8
  store i32 195, i32* %219, align 8
  store i8* getelementptr inbounds ([32 x i8]* @.cst32, i64 0, i64 0), i8** %220, align 8
  store i32 32, i32* %221, align 8
  store i32 4096, i32* %222, align 8
  store i32 6, i32* %223, align 4
  call void @_gfortran_st_write(%struct.__st_parameter_dt* %dt_parm.17) #1
  %270 = load i32* %i, align 4
  %271 = sext i32 %270 to i64
  %272 = add i64 %271, -1
  %273 = getelementptr [11 x [8 x i8]]* %t_names, i64 0, i64 %272, i64 0
  call void @_gfortran_transfer_character_write(%struct.__st_parameter_dt* %dt_parm.17, i8* %273, i32 8) #1
  %274 = load i32* %i, align 4
  %275 = sext i32 %274 to i64
  %276 = add i64 %275, -1
  %277 = getelementptr [11 x double]* %trecs, i64 0, i64 %276
  %278 = bitcast double* %277 to i8*
  call void @_gfortran_transfer_real_write(%struct.__st_parameter_dt* %dt_parm.17, i8* %278, i32 8) #1
  %279 = load i32* %i, align 4
  %280 = sext i32 %279 to i64
  %281 = add i64 %280, -1
  %282 = getelementptr [11 x double]* %trecs, i64 0, i64 %281
  %283 = load double* %282, align 8
  %284 = fmul double %283, 1.000000e+02
  %285 = load double* %tmax, align 8
  %286 = fdiv double %284, %285
  store double %286, double* %D.2191, align 8
  call void @_gfortran_transfer_real_write(%struct.__st_parameter_dt* %dt_parm.17, i8* %224, i32 8) #1
  call void @llvm.lifetime.end(i64 8, i8* %224)
  call void @_gfortran_st_write_done(%struct.__st_parameter_dt* %dt_parm.17) #1
  call void @llvm.lifetime.end(i64 480, i8* %225)
  %287 = load i32* %i, align 4
  switch i32 %287, label %"39" [
    i32 5, label %"34"
    i32 8, label %"36"
    i32 10, label %"38"
  ]

"34":                                             ; preds = %"33"
  %288 = load double* %226, align 8
  %289 = load double* %227, align 8
  %290 = fadd double %288, %289
  %291 = load double* %228, align 8
  %292 = fadd double %290, %291
  store double %292, double* %t, align 8
  store i8* getelementptr inbounds ([5 x i8]* @.cst, i64 0, i64 0), i8** %229, align 8
  store i32 198, i32* %230, align 8
  store i8* getelementptr inbounds ([46 x i8]* @.cst33, i64 0, i64 0), i8** %231, align 8
  store i32 46, i32* %232, align 8
  store i32 4096, i32* %233, align 8
  store i32 6, i32* %234, align 4
  call void @_gfortran_st_write(%struct.__st_parameter_dt* %dt_parm.18) #1
  call void @_gfortran_transfer_character_write(%struct.__st_parameter_dt* %dt_parm.18, i8* getelementptr inbounds ([7 x i8]* @.cst34, i64 0, i64 0), i32 7) #1
  call void @_gfortran_transfer_real_write(%struct.__st_parameter_dt* %dt_parm.18, i8* %235, i32 8) #1
  %293 = load double* %t, align 8
  %294 = fmul double %293, 1.000000e+02
  %295 = load double* %tmax, align 8
  %296 = fdiv double %294, %295
  store double %296, double* %D.2194, align 8
  call void @_gfortran_transfer_real_write(%struct.__st_parameter_dt* %dt_parm.18, i8* %236, i32 8) #1
  call void @llvm.lifetime.end(i64 8, i8* %236)
  call void @_gfortran_st_write_done(%struct.__st_parameter_dt* %dt_parm.18) #1
  call void @llvm.lifetime.end(i64 480, i8* %237)
  %297 = load double* %238, align 8
  %298 = load double* %t, align 8
  %299 = fsub double %297, %298
  store double %299, double* %t, align 8
  store i8* getelementptr inbounds ([5 x i8]* @.cst, i64 0, i64 0), i8** %239, align 8
  store i32 200, i32* %240, align 8
  store i8* getelementptr inbounds ([46 x i8]* @.cst33, i64 0, i64 0), i8** %241, align 8
  store i32 46, i32* %242, align 8
  store i32 4096, i32* %243, align 8
  store i32 6, i32* %244, align 4
  call void @_gfortran_st_write(%struct.__st_parameter_dt* %dt_parm.19) #1
  call void @_gfortran_transfer_character_write(%struct.__st_parameter_dt* %dt_parm.19, i8* getelementptr inbounds ([8 x i8]* @.cst35, i64 0, i64 0), i32 8) #1
  call void @_gfortran_transfer_real_write(%struct.__st_parameter_dt* %dt_parm.19, i8* %235, i32 8) #1
  %300 = load double* %t, align 8
  %301 = fmul double %300, 1.000000e+02
  %302 = load double* %tmax, align 8
  %303 = fdiv double %301, %302
  store double %303, double* %D.2196, align 8
  call void @_gfortran_transfer_real_write(%struct.__st_parameter_dt* %dt_parm.19, i8* %245, i32 8) #1
  call void @llvm.lifetime.end(i64 8, i8* %245)
  call void @_gfortran_st_write_done(%struct.__st_parameter_dt* %dt_parm.19) #1
  call void @llvm.lifetime.end(i64 480, i8* %246)
  br label %"39thread-pre-split"

"36":                                             ; preds = %"33"
  %304 = load double* %247, align 8
  %305 = load double* %248, align 8
  %306 = fsub double %304, %305
  %307 = load double* %249, align 8
  %308 = fsub double %306, %307
  store double %308, double* %t, align 8
  store i8* getelementptr inbounds ([5 x i8]* @.cst, i64 0, i64 0), i8** %250, align 8
  store i32 203, i32* %251, align 8
  store i8* getelementptr inbounds ([46 x i8]* @.cst33, i64 0, i64 0), i8** %252, align 8
  store i32 46, i32* %253, align 8
  store i32 4096, i32* %254, align 8
  store i32 6, i32* %255, align 4
  call void @_gfortran_st_write(%struct.__st_parameter_dt* %dt_parm.20) #1
  call void @_gfortran_transfer_character_write(%struct.__st_parameter_dt* %dt_parm.20, i8* getelementptr inbounds ([8 x i8]* @.cst36, i64 0, i64 0), i32 8) #1
  call void @_gfortran_transfer_real_write(%struct.__st_parameter_dt* %dt_parm.20, i8* %256, i32 8) #1
  %309 = load double* %t, align 8
  %310 = fmul double %309, 1.000000e+02
  %311 = load double* %tmax, align 8
  %312 = fdiv double %310, %311
  store double %312, double* %D.2199, align 8
  call void @_gfortran_transfer_real_write(%struct.__st_parameter_dt* %dt_parm.20, i8* %257, i32 8) #1
  call void @llvm.lifetime.end(i64 8, i8* %257)
  call void @_gfortran_st_write_done(%struct.__st_parameter_dt* %dt_parm.20) #1
  call void @llvm.lifetime.end(i64 480, i8* %258)
  br label %"39thread-pre-split"

"38":                                             ; preds = %"33"
  %313 = load double* %259, align 8
  %314 = load double* %260, align 8
  %315 = fadd double %313, %314
  store double %315, double* %t, align 8
  store i8* getelementptr inbounds ([5 x i8]* @.cst, i64 0, i64 0), i8** %261, align 8
  store i32 206, i32* %262, align 8
  store i8* getelementptr inbounds ([46 x i8]* @.cst33, i64 0, i64 0), i8** %263, align 8
  store i32 46, i32* %264, align 8
  store i32 4096, i32* %265, align 8
  store i32 6, i32* %266, align 4
  call void @_gfortran_st_write(%struct.__st_parameter_dt* %dt_parm.21) #1
  call void @_gfortran_transfer_character_write(%struct.__st_parameter_dt* %dt_parm.21, i8* getelementptr inbounds ([6 x i8]* @.cst37, i64 0, i64 0), i32 6) #1
  call void @_gfortran_transfer_real_write(%struct.__st_parameter_dt* %dt_parm.21, i8* %267, i32 8) #1
  %316 = load double* %t, align 8
  %317 = fmul double %316, 1.000000e+02
  %318 = load double* %tmax, align 8
  %319 = fdiv double %317, %318
  store double %319, double* %D.2202, align 8
  call void @_gfortran_transfer_real_write(%struct.__st_parameter_dt* %dt_parm.21, i8* %268, i32 8) #1
  call void @llvm.lifetime.end(i64 8, i8* %268)
  call void @_gfortran_st_write_done(%struct.__st_parameter_dt* %dt_parm.21) #1
  call void @llvm.lifetime.end(i64 480, i8* %269)
  br label %"39thread-pre-split"

"39thread-pre-split":                             ; preds = %"34", %"36", %"38"
  %.pr = load i32* %i, align 4
  br label %"39"

"39":                                             ; preds = %"39thread-pre-split", %"33"
  %320 = phi i32 [ %.pr, %"39thread-pre-split" ], [ %287, %"33" ]
  %321 = icmp eq i32 %320, 11
  %322 = add i32 %320, 1
  store i32 %322, i32* %i, align 4
  br i1 %321, label %"40", label %"33"

"40":                                             ; preds = %"39", %"27", %"14"
  %323 = getelementptr inbounds [1 x i8]* %class, i64 0, i64 0
  call void @llvm.lifetime.end(i64 1, i8* %323)
  %324 = bitcast i32* %fstatus to i8*
  call void @llvm.lifetime.end(i64 4, i8* %324)
  %325 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %325)
  %326 = bitcast double* %mflops to i8*
  call void @llvm.lifetime.end(i64 8, i8* %326)
  call void @llvm.lifetime.end(i64 4, i8* %115)
  %327 = bitcast i32* %step to i8*
  call void @llvm.lifetime.end(i64 4, i8* %327)
  %328 = bitcast double* %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %328)
  call void @llvm.lifetime.end(i64 88, i8* %0)
  %329 = bitcast double* %tmax to i8*
  call void @llvm.lifetime.end(i64 8, i8* %329)
  %330 = bitcast [11 x double]* %trecs to i8*
  call void @llvm.lifetime.end(i64 88, i8* %330)
  %331 = bitcast i32* %verified to i8*
  call void @llvm.lifetime.end(i64 4, i8* %331)
  ret void
}

declare void @_gfortran_st_open(%struct.__st_parameter_open*)

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare void @_gfortran_st_close(%struct.__st_parameter_close*)

declare void @_gfortran_st_write(%struct.__st_parameter_dt*)

declare void @_gfortran_st_write_done(%struct.__st_parameter_dt*)

declare void @_gfortran_st_read(%struct.__st_parameter_dt*)

declare void @_gfortran_transfer_integer(%struct.__st_parameter_dt*, i8*, i32)

declare void @_gfortran_st_read_done(%struct.__st_parameter_dt*)

declare void @_gfortran_transfer_real(%struct.__st_parameter_dt*, i8*, i32)

declare void @_gfortran_transfer_integer_write(%struct.__st_parameter_dt*, i8*, i32)

declare void @_gfortran_transfer_real_write(%struct.__st_parameter_dt*, i8*, i32)

declare void @_gfortran_transfer_character_write(%struct.__st_parameter_dt*, i8*, i32)

declare void @set_constants_(...)

declare void @initialize_(...)

declare void @timer_clear_(...)

declare void @exact_rhs_(...)

declare void @adi_(...)

declare void @timer_start_(...)

declare void @timer_stop_(...)

declare double @timer_read_(...)

declare void @verify_(...)

declare void @print_results_(...)

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) unnamed_addr #0 {
entry:
  tail call void @_gfortran_set_args(i32 %argc, i8** %argv) #1
  tail call void @_gfortran_set_options(i32 7, i32* getelementptr inbounds ([7 x i32]* @options.22.2242, i64 0, i64 0)) #1
  tail call fastcc void @MAIN__() #0
  ret i32 0
}

declare void @_gfortran_set_args(i32, i8**)

declare void @_gfortran_set_options(i32, i32*)

attributes #0 = { nounwind uwtable "no-frame-pointer-elim-non-leaf"="false" }
attributes #1 = { nounwind }

!0 = metadata !{i32 0, i32 2}
