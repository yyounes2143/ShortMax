.class final synthetic Lkotlinx/coroutines/flow/FlowKt__ZipKt;
.super Ljava/lang/Object;
.source "Zip.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nZip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n+ 2 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,328:1\n268#1,3:330\n268#1,3:333\n257#1:336\n259#1:338\n268#1,3:339\n257#1:342\n259#1:344\n268#1,3:345\n257#1:348\n259#1:350\n268#1,3:351\n105#2:329\n105#2:337\n105#2:343\n105#2:349\n105#2:354\n105#2:355\n105#2:360\n37#3:356\n36#3,3:357\n37#3:361\n36#3,3:362\n*S KotlinDebug\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n*L\n71#1:330,3\n99#1:333,3\n115#1:336\n115#1:338\n134#1:339,3\n152#1:342\n152#1:344\n173#1:345,3\n193#1:348\n193#1:350\n216#1:351,3\n28#1:329\n115#1:337\n152#1:343\n193#1:349\n233#1:354\n257#1:355\n284#1:360\n283#1:356\n283#1:357,3\n302#1:361\n302#1:362,3\n*E\n"
    }
.end annotation


# direct methods
.method public static final synthetic a()Lkotlin/jvm/functions/Function0;
    .locals 1

    .line 1
    invoke-static {}, Lkotlinx/coroutines/flow/FlowKt__ZipKt;->d()Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final b(Lkt/b;Lkt/b;Lat/n;)Lkt/b;
    .locals 0
    .param p0    # Lkt/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkt/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkt/b<",
            "+TT1;>;",
            "Lkt/b<",
            "+TT2;>;",
            "Lat/n<",
            "-TT1;-TT2;-",
            "Lrs/c<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkt/b<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/flow/c;->G(Lkt/b;Lkt/b;Lat/n;)Lkt/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final c(Lkt/b;Lkt/b;Lat/n;)Lkt/b;
    .locals 1
    .param p0    # Lkt/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkt/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkt/b<",
            "+TT1;>;",
            "Lkt/b<",
            "+TT2;>;",
            "Lat/n<",
            "-TT1;-TT2;-",
            "Lrs/c<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkt/b<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$a;-><init>(Lkt/b;Lkt/b;Lat/n;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final d()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lkotlin/jvm/functions/Function0<",
            "[TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$b;->a:Lkotlinx/coroutines/flow/FlowKt__ZipKt$b;

    .line 2
    .line 3
    return-object v0
.end method
