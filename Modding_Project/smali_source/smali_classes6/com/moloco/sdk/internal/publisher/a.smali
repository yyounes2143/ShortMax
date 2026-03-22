.class public final Lcom/moloco/sdk/internal/publisher/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/moloco/sdk/publisher/AdShowListener;Lcom/moloco/sdk/internal/services/r;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/moloco/sdk/internal/h0;Lcom/moloco/sdk/internal/i;Lcom/moloco/sdk/publisher/AdFormatType;Lcom/moloco/sdk/acm/recorder/a;)Lcom/moloco/sdk/internal/publisher/t0;
    .locals 11
    .param p0    # Lcom/moloco/sdk/publisher/AdShowListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/moloco/sdk/internal/h0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/moloco/sdk/internal/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/moloco/sdk/publisher/AdFormatType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/moloco/sdk/acm/recorder/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/publisher/AdShowListener;",
            "Lcom/moloco/sdk/internal/services/r;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/moloco/sdk/internal/ortb/model/r;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/moloco/sdk/internal/publisher/e0;",
            ">;",
            "Lcom/moloco/sdk/internal/h0;",
            "Lcom/moloco/sdk/internal/i;",
            "Lcom/moloco/sdk/publisher/AdFormatType;",
            "Lcom/moloco/sdk/acm/recorder/a;",
            ")",
            "Lcom/moloco/sdk/internal/publisher/t0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "appLifecycleTrackerService"

    .line 2
    .line 3
    move-object v3, p1

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "customUserEventBuilderService"

    .line 8
    .line 9
    move-object v4, p2

    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "provideSdkEvents"

    .line 14
    .line 15
    move-object v5, p3

    .line 16
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v0, "provideBUrlData"

    .line 20
    .line 21
    move-object v6, p4

    .line 22
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "sdkEventUrlTracker"

    .line 26
    .line 27
    move-object/from16 v7, p5

    .line 28
    .line 29
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v0, "bUrlTracker"

    .line 33
    .line 34
    move-object/from16 v8, p6

    .line 35
    .line 36
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v0, "adType"

    .line 40
    .line 41
    move-object/from16 v9, p7

    .line 42
    .line 43
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v0, "metricsRecorder"

    .line 47
    .line 48
    move-object/from16 v10, p8

    .line 49
    .line 50
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance v0, Lcom/moloco/sdk/internal/publisher/z;

    .line 54
    .line 55
    move-object v1, v0

    .line 56
    move-object v2, p0

    .line 57
    invoke-direct/range {v1 .. v10}, Lcom/moloco/sdk/internal/publisher/z;-><init>(Lcom/moloco/sdk/publisher/AdShowListener;Lcom/moloco/sdk/internal/services/r;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/moloco/sdk/internal/h0;Lcom/moloco/sdk/internal/i;Lcom/moloco/sdk/publisher/AdFormatType;Lcom/moloco/sdk/acm/recorder/a;)V

    .line 58
    .line 59
    .line 60
    return-object v0
.end method

.method public static synthetic b(Lcom/moloco/sdk/publisher/AdShowListener;Lcom/moloco/sdk/internal/services/r;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/moloco/sdk/internal/h0;Lcom/moloco/sdk/internal/i;Lcom/moloco/sdk/publisher/AdFormatType;Lcom/moloco/sdk/acm/recorder/a;ILjava/lang/Object;)Lcom/moloco/sdk/internal/publisher/t0;
    .locals 10

    .line 1
    and-int/lit8 v0, p9, 0x20

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/moloco/sdk/internal/k0;->b()Lcom/moloco/sdk/internal/h0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    move-object v6, v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v6, p5

    .line 12
    :goto_0
    and-int/lit8 v0, p9, 0x40

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lcom/moloco/sdk/internal/l;->a()Lcom/moloco/sdk/internal/i;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    move-object v7, v0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move-object/from16 v7, p6

    .line 23
    .line 24
    :goto_1
    move-object v1, p0

    .line 25
    move-object v2, p1

    .line 26
    move-object v3, p2

    .line 27
    move-object v4, p3

    .line 28
    move-object v5, p4

    .line 29
    move-object/from16 v8, p7

    .line 30
    .line 31
    move-object/from16 v9, p8

    .line 32
    .line 33
    invoke-static/range {v1 .. v9}, Lcom/moloco/sdk/internal/publisher/a;->a(Lcom/moloco/sdk/publisher/AdShowListener;Lcom/moloco/sdk/internal/services/r;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/moloco/sdk/internal/h0;Lcom/moloco/sdk/internal/i;Lcom/moloco/sdk/publisher/AdFormatType;Lcom/moloco/sdk/acm/recorder/a;)Lcom/moloco/sdk/internal/publisher/t0;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method
