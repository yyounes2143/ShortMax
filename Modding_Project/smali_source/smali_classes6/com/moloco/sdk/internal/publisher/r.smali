.class public final Lcom/moloco/sdk/internal/publisher/r;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/content/Context;Lcom/moloco/sdk/internal/services/r;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;Lcom/moloco/sdk/internal/publisher/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lcom/moloco/sdk/internal/publisher/w;Lcom/moloco/sdk/acm/recorder/a;)Lcom/moloco/sdk/publisher/RewardedInterstitialAd;
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
    .param p4    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/moloco/sdk/internal/publisher/n0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/moloco/sdk/internal/publisher/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lcom/moloco/sdk/acm/recorder/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/moloco/sdk/internal/services/r;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;",
            "Ljava/lang/String;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;",
            "Lcom/moloco/sdk/internal/publisher/n0<",
            "Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;",
            ">;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;",
            "Lcom/moloco/sdk/internal/publisher/w;",
            "Lcom/moloco/sdk/acm/recorder/a;",
            ")",
            "Lcom/moloco/sdk/publisher/RewardedInterstitialAd;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v13, p3

    .line 2
    .line 3
    const-string v0, "context"

    .line 4
    .line 5
    move-object/from16 v1, p0

    .line 6
    .line 7
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "appLifecycleTrackerService"

    .line 11
    .line 12
    move-object/from16 v2, p1

    .line 13
    .line 14
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "customUserEventBuilderService"

    .line 18
    .line 19
    move-object/from16 v3, p2

    .line 20
    .line 21
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v0, "adUnitId"

    .line 25
    .line 26
    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v0, "externalLinkHandler"

    .line 30
    .line 31
    move-object/from16 v6, p4

    .line 32
    .line 33
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "persistentHttpRequest"

    .line 37
    .line 38
    move-object/from16 v5, p5

    .line 39
    .line 40
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v0, "adDataHolder"

    .line 44
    .line 45
    move-object/from16 v8, p6

    .line 46
    .line 47
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string/jumbo v0, "watermark"

    .line 51
    .line 52
    .line 53
    move-object/from16 v10, p7

    .line 54
    .line 55
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string v0, "adCreateLoadTimeoutManager"

    .line 59
    .line 60
    move-object/from16 v11, p8

    .line 61
    .line 62
    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string v0, "metricsRecorder"

    .line 66
    .line 67
    move-object/from16 v12, p9

    .line 68
    .line 69
    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    new-instance v14, Lcom/moloco/sdk/internal/publisher/p;

    .line 73
    .line 74
    new-instance v15, Lcom/moloco/sdk/internal/publisher/u;

    .line 75
    .line 76
    new-instance v7, Lcom/moloco/sdk/internal/publisher/q;

    .line 77
    .line 78
    invoke-direct {v7}, Lcom/moloco/sdk/internal/publisher/q;-><init>()V

    .line 79
    .line 80
    .line 81
    sget-object v9, Lcom/moloco/sdk/publisher/AdFormatType;->REWARDED:Lcom/moloco/sdk/publisher/AdFormatType;

    .line 82
    .line 83
    move-object v0, v15

    .line 84
    move-object/from16 v4, p3

    .line 85
    .line 86
    invoke-direct/range {v0 .. v12}, Lcom/moloco/sdk/internal/publisher/u;-><init>(Landroid/content/Context;Lcom/moloco/sdk/internal/services/r;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lkotlin/jvm/functions/Function1;Lcom/moloco/sdk/internal/publisher/n0;Lcom/moloco/sdk/publisher/AdFormatType;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lcom/moloco/sdk/internal/publisher/w;Lcom/moloco/sdk/acm/recorder/a;)V

    .line 87
    .line 88
    .line 89
    invoke-direct {v14, v15, v13}, Lcom/moloco/sdk/internal/publisher/p;-><init>(Lcom/moloco/sdk/internal/publisher/u;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    return-object v14
.end method

.method public static synthetic b(Landroid/content/Context;Lcom/moloco/sdk/internal/services/r;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;Lcom/moloco/sdk/internal/publisher/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lcom/moloco/sdk/internal/publisher/w;Lcom/moloco/sdk/acm/recorder/a;ILjava/lang/Object;)Lcom/moloco/sdk/publisher/RewardedInterstitialAd;
    .locals 19

    .line 1
    and-int/lit8 v0, p10, 0x40

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/moloco/sdk/internal/publisher/n0;

    .line 6
    .line 7
    const/16 v7, 0x1f

    .line 8
    .line 9
    const/4 v8, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    move-object v1, v0

    .line 16
    invoke-direct/range {v1 .. v8}, Lcom/moloco/sdk/internal/publisher/n0;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/u;Lcom/moloco/sdk/internal/ortb/model/r;Lcom/moloco/sdk/internal/publisher/e0;Lkotlinx/coroutines/r;Lcom/moloco/sdk/internal/publisher/t0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 17
    .line 18
    .line 19
    move-object v15, v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object/from16 v15, p6

    .line 22
    .line 23
    :goto_0
    move-object/from16 v9, p0

    .line 24
    .line 25
    move-object/from16 v10, p1

    .line 26
    .line 27
    move-object/from16 v11, p2

    .line 28
    .line 29
    move-object/from16 v12, p3

    .line 30
    .line 31
    move-object/from16 v13, p4

    .line 32
    .line 33
    move-object/from16 v14, p5

    .line 34
    .line 35
    move-object/from16 v16, p7

    .line 36
    .line 37
    move-object/from16 v17, p8

    .line 38
    .line 39
    move-object/from16 v18, p9

    .line 40
    .line 41
    invoke-static/range {v9 .. v18}, Lcom/moloco/sdk/internal/publisher/r;->a(Landroid/content/Context;Lcom/moloco/sdk/internal/services/r;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;Lcom/moloco/sdk/internal/publisher/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lcom/moloco/sdk/internal/publisher/w;Lcom/moloco/sdk/acm/recorder/a;)Lcom/moloco/sdk/publisher/RewardedInterstitialAd;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method

.method public static final c(Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;Lkotlin/jvm/functions/Function0;)Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;
    .locals 2
    .param p0    # Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/moloco/sdk/internal/ortb/model/r;",
            ">;)",
            "Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "provideSdkEvents"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/moloco/sdk/internal/publisher/t;

    .line 7
    .line 8
    invoke-static {}, Lcom/moloco/sdk/internal/k0;->b()Lcom/moloco/sdk/internal/h0;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-direct {v0, p0, p1, v1}, Lcom/moloco/sdk/internal/publisher/t;-><init>(Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;Lkotlin/jvm/functions/Function0;Lcom/moloco/sdk/internal/h0;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public static final d(Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;ZLkotlin/jvm/functions/Function0;)Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;
    .locals 1
    .param p0    # Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "listenerTracker"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "isAdForciblyClosed"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/moloco/sdk/internal/publisher/r$a;

    .line 12
    .line 13
    invoke-direct {v0, p2, p0, p1}, Lcom/moloco/sdk/internal/publisher/r$a;-><init>(Lkotlin/jvm/functions/Function0;Lcom/moloco/sdk/publisher/RewardedInterstitialAdShowListener;Z)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static final e(Lcom/moloco/sdk/internal/ortb/model/p;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/r;
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {p0}, Lcom/moloco/sdk/internal/h;->j(Lcom/moloco/sdk/internal/ortb/model/p;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/r;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_1

    .line 8
    .line 9
    :cond_0
    invoke-static {}, Lcom/moloco/sdk/internal/h;->i()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/r;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :cond_1
    return-object p0
.end method
