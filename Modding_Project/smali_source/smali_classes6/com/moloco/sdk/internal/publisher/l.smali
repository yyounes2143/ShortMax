.class public final Lcom/moloco/sdk/internal/publisher/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/e0;)Lcom/moloco/sdk/internal/publisher/l$c;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/moloco/sdk/internal/publisher/l;->e(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/e0;)Lcom/moloco/sdk/internal/publisher/l$c;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final b(Landroid/content/Context;Lcom/moloco/sdk/internal/services/r;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Ljava/lang/String;ZLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lcom/moloco/sdk/internal/publisher/w;Lcom/moloco/sdk/internal/a;Lcom/moloco/sdk/internal/m;Lcom/moloco/sdk/internal/services/f0;Lcom/moloco/sdk/acm/recorder/a;)Lcom/moloco/sdk/publisher/Banner;
    .locals 16
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/moloco/sdk/internal/services/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/moloco/sdk/internal/publisher/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/moloco/sdk/internal/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lcom/moloco/sdk/internal/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Lcom/moloco/sdk/internal/services/f0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p11    # Lcom/moloco/sdk/acm/recorder/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    move-object/from16 v2, p0

    .line 4
    .line 5
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "appLifecycleTrackerService"

    .line 9
    .line 10
    move-object/from16 v3, p1

    .line 11
    .line 12
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "customUserEventBuilderService"

    .line 16
    .line 17
    move-object/from16 v4, p2

    .line 18
    .line 19
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v0, "adUnitId"

    .line 23
    .line 24
    move-object/from16 v5, p3

    .line 25
    .line 26
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v0, "externalLinkHandler"

    .line 30
    .line 31
    move-object/from16 v7, p5

    .line 32
    .line 33
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string/jumbo v0, "watermark"

    .line 37
    .line 38
    .line 39
    move-object/from16 v10, p6

    .line 40
    .line 41
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string v0, "adCreateLoadTimeoutManager"

    .line 45
    .line 46
    move-object/from16 v11, p7

    .line 47
    .line 48
    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string/jumbo v0, "viewLifecycleOwnerSingleton"

    .line 52
    .line 53
    .line 54
    move-object/from16 v12, p8

    .line 55
    .line 56
    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string v0, "bannerSize"

    .line 60
    .line 61
    move-object/from16 v13, p9

    .line 62
    .line 63
    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string v0, "clickthroughService"

    .line 67
    .line 68
    move-object/from16 v14, p10

    .line 69
    .line 70
    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string v0, "metricsRecorder"

    .line 74
    .line 75
    move-object/from16 v15, p11

    .line 76
    .line 77
    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    new-instance v0, Lcom/moloco/sdk/internal/publisher/m;

    .line 81
    .line 82
    sget-object v8, Lcom/moloco/sdk/internal/publisher/l$a;->a:Lcom/moloco/sdk/internal/publisher/l$a;

    .line 83
    .line 84
    sget-object v9, Lcom/moloco/sdk/internal/publisher/l$b;->a:Lcom/moloco/sdk/internal/publisher/l$b;

    .line 85
    .line 86
    move-object v1, v0

    .line 87
    move/from16 v6, p4

    .line 88
    .line 89
    invoke-direct/range {v1 .. v15}, Lcom/moloco/sdk/internal/publisher/m;-><init>(Landroid/content/Context;Lcom/moloco/sdk/internal/services/r;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Ljava/lang/String;ZLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lat/s;Lkotlin/jvm/functions/Function1;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lcom/moloco/sdk/internal/publisher/w;Lcom/moloco/sdk/internal/a;Lcom/moloco/sdk/internal/m;Lcom/moloco/sdk/internal/services/f0;Lcom/moloco/sdk/acm/recorder/a;)V

    .line 90
    .line 91
    .line 92
    return-object v0
.end method

.method public static final synthetic c(Landroid/content/Context;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Lcom/moloco/sdk/internal/ortb/model/c;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lcom/moloco/sdk/internal/a;Lcom/moloco/sdk/internal/services/f0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/r;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Lcom/moloco/sdk/internal/publisher/l;->f(Landroid/content/Context;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Lcom/moloco/sdk/internal/ortb/model/c;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lcom/moloco/sdk/internal/a;Lcom/moloco/sdk/internal/services/f0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/r;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final d(Lcom/moloco/sdk/internal/ortb/model/p;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/r;
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {p0}, Lcom/moloco/sdk/internal/h;->d(Lcom/moloco/sdk/internal/ortb/model/p;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/r;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_1

    .line 8
    .line 9
    :cond_0
    invoke-static {}, Lcom/moloco/sdk/internal/h;->c()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/r;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :cond_1
    return-object p0
.end method

.method public static final e(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/e0;)Lcom/moloco/sdk/internal/publisher/l$c;
    .locals 1

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/publisher/l$c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/moloco/sdk/internal/publisher/l$c;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/e0;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final f(Landroid/content/Context;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Lcom/moloco/sdk/internal/ortb/model/c;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lcom/moloco/sdk/internal/a;Lcom/moloco/sdk/internal/services/f0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/r;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;",
            "Lcom/moloco/sdk/internal/ortb/model/c;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;",
            "Lcom/moloco/sdk/internal/a;",
            "Lcom/moloco/sdk/internal/services/f0;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/r;",
            ")",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C<",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/q;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v12, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/moloco/sdk/internal/ortb/model/c;->d()Lcom/moloco/sdk/internal/ortb/model/d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/ortb/model/d;->e()Lcom/moloco/sdk/internal/ortb/model/p;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/moloco/sdk/internal/publisher/l;->d(Lcom/moloco/sdk/internal/ortb/model/p;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/r;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    invoke-static {}, Lcom/moloco/sdk/internal/scheduling/c;->a()Lcom/moloco/sdk/internal/scheduling/a;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Lcom/moloco/sdk/internal/scheduling/a;->getMain()Lkotlin/coroutines/CoroutineContext;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-static {v1, v2, v1}, Lgt/r1;->b(Lkotlinx/coroutines/r;ILjava/lang/Object;)Lgt/s;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 34
    .line 35
    .line 36
    move-result-object v9

    .line 37
    const/4 v3, 0x0

    .line 38
    move-object v0, v12

    .line 39
    move-object v1, p0

    .line 40
    move-object v2, p1

    .line 41
    move-object v4, p2

    .line 42
    move-object/from16 v6, p3

    .line 43
    .line 44
    move-object/from16 v7, p4

    .line 45
    .line 46
    move-object/from16 v8, p5

    .line 47
    .line 48
    move-object/from16 v10, p6

    .line 49
    .line 50
    move-object/from16 v11, p7

    .line 51
    .line 52
    invoke-direct/range {v0 .. v11}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;-><init>(Landroid/content/Context;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/i;Lcom/moloco/sdk/internal/ortb/model/c;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/r;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lcom/moloco/sdk/internal/a;Lgt/g0;Lcom/moloco/sdk/internal/services/f0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/r;)V

    .line 53
    .line 54
    .line 55
    return-object v12
.end method
