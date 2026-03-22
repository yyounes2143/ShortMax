.class public final Lcom/moloco/sdk/internal/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/internal/e;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation


# instance fields
.field public final a:Lcom/moloco/sdk/Init$SDKInitResponse;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lcom/moloco/sdk/internal/services/f0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/moloco/sdk/Init$SDKInitResponse;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Lcom/moloco/sdk/internal/services/f0;)V
    .locals 1
    .param p1    # Lcom/moloco/sdk/Init$SDKInitResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/internal/services/f0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "initResponse"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "customUserEventBuilderService"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "clickthroughService"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/moloco/sdk/internal/b;->a:Lcom/moloco/sdk/Init$SDKInitResponse;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/moloco/sdk/internal/b;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;

    .line 22
    .line 23
    iput-object p3, p0, Lcom/moloco/sdk/internal/b;->c:Lcom/moloco/sdk/internal/services/f0;

    .line 24
    .line 25
    new-instance p1, Lcom/moloco/sdk/internal/f;

    .line 26
    .line 27
    invoke-direct {p1, p0}, Lcom/moloco/sdk/internal/f;-><init>(Lcom/moloco/sdk/internal/b;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/moloco/sdk/internal/b;->d:Lms/i;

    .line 35
    .line 36
    return-void
.end method

.method public static final synthetic g(Lcom/moloco/sdk/internal/b;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Landroid/content/Context;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/a;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/moloco/sdk/internal/b;->j(Lcom/moloco/sdk/internal/b;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Landroid/content/Context;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final i(Lcom/moloco/sdk/internal/b;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/internal/b;->a:Lcom/moloco/sdk/Init$SDKInitResponse;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/moloco/sdk/Init$SDKInitResponse;->getVerifyBannerVisible()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static final j(Lcom/moloco/sdk/internal/b;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Landroid/content/Context;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/a;
    .locals 11

    .line 1
    iget-object v3, p0, Lcom/moloco/sdk/internal/b;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;

    .line 2
    .line 3
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 4
    .line 5
    const/4 v9, 0x0

    .line 6
    const/4 v10, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    const/4 v6, 0x0

    .line 9
    const/4 v7, 0x0

    .line 10
    const/4 v8, 0x0

    .line 11
    move-object v0, p3

    .line 12
    move-object v1, p1

    .line 13
    move-object v2, p2

    .line 14
    invoke-static/range {v0 .. v10}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/g;->b(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Landroid/content/Context;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;ZLjava/lang/Boolean;IIIZZ)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/a;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/moloco/sdk/internal/services/r;Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lcom/moloco/sdk/internal/publisher/w;Lcom/moloco/sdk/internal/a;Lcom/moloco/sdk/internal/m;Lcom/moloco/sdk/acm/recorder/a;)Lcom/moloco/sdk/publisher/Banner;
    .locals 14
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/services/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;
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
    .param p10    # Lcom/moloco/sdk/acm/recorder/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    const-string v1, "context"

    .line 3
    .line 4
    move-object v2, p1

    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "appLifecycleTrackerService"

    .line 9
    .line 10
    move-object/from16 v3, p2

    .line 11
    .line 12
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "adUnitId"

    .line 16
    .line 17
    move-object/from16 v5, p3

    .line 18
    .line 19
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string/jumbo v1, "viewVisibilityTracker"

    .line 23
    .line 24
    .line 25
    move-object/from16 v4, p4

    .line 26
    .line 27
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v1, "externalLinkHandler"

    .line 31
    .line 32
    move-object/from16 v7, p5

    .line 33
    .line 34
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string/jumbo v1, "watermark"

    .line 38
    .line 39
    .line 40
    move-object/from16 v8, p6

    .line 41
    .line 42
    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v1, "adCreateLoadTimeoutManager"

    .line 46
    .line 47
    move-object/from16 v9, p7

    .line 48
    .line 49
    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string/jumbo v1, "viewLifecycleOwnerSingleton"

    .line 53
    .line 54
    .line 55
    move-object/from16 v10, p8

    .line 56
    .line 57
    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string v1, "bannerSize"

    .line 61
    .line 62
    move-object/from16 v11, p9

    .line 63
    .line 64
    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string v1, "metricsRecorder"

    .line 68
    .line 69
    move-object/from16 v13, p10

    .line 70
    .line 71
    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v4, v0, Lcom/moloco/sdk/internal/b;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/b;->h()Z

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    iget-object v12, v0, Lcom/moloco/sdk/internal/b;->c:Lcom/moloco/sdk/internal/services/f0;

    .line 81
    .line 82
    invoke-static/range {v2 .. v13}, Lcom/moloco/sdk/internal/publisher/l;->b(Landroid/content/Context;Lcom/moloco/sdk/internal/services/r;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Ljava/lang/String;ZLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lcom/moloco/sdk/internal/publisher/w;Lcom/moloco/sdk/internal/a;Lcom/moloco/sdk/internal/m;Lcom/moloco/sdk/internal/services/f0;Lcom/moloco/sdk/acm/recorder/a;)Lcom/moloco/sdk/publisher/Banner;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    return-object v1
.end method

.method public b(Landroid/content/Context;Lcom/moloco/sdk/internal/services/r;Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lcom/moloco/sdk/internal/publisher/w;Lcom/moloco/sdk/internal/a;Lcom/moloco/sdk/internal/m;Lcom/moloco/sdk/acm/recorder/a;)Lcom/moloco/sdk/publisher/Banner;
    .locals 14
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/services/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;
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
    .param p10    # Lcom/moloco/sdk/acm/recorder/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    const-string v1, "context"

    .line 3
    .line 4
    move-object v2, p1

    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "appLifecycleTrackerService"

    .line 9
    .line 10
    move-object/from16 v3, p2

    .line 11
    .line 12
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "adUnitId"

    .line 16
    .line 17
    move-object/from16 v5, p3

    .line 18
    .line 19
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string/jumbo v1, "viewVisibilityTracker"

    .line 23
    .line 24
    .line 25
    move-object/from16 v4, p4

    .line 26
    .line 27
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v1, "externalLinkHandler"

    .line 31
    .line 32
    move-object/from16 v7, p5

    .line 33
    .line 34
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string/jumbo v1, "watermark"

    .line 38
    .line 39
    .line 40
    move-object/from16 v8, p6

    .line 41
    .line 42
    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v1, "adCreateLoadTimeoutManager"

    .line 46
    .line 47
    move-object/from16 v9, p7

    .line 48
    .line 49
    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string/jumbo v1, "viewLifecycleOwnerSingleton"

    .line 53
    .line 54
    .line 55
    move-object/from16 v10, p8

    .line 56
    .line 57
    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string v1, "bannerSize"

    .line 61
    .line 62
    move-object/from16 v11, p9

    .line 63
    .line 64
    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string v1, "metricsRecorder"

    .line 68
    .line 69
    move-object/from16 v13, p10

    .line 70
    .line 71
    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v4, v0, Lcom/moloco/sdk/internal/b;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/b;->h()Z

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    iget-object v12, v0, Lcom/moloco/sdk/internal/b;->c:Lcom/moloco/sdk/internal/services/f0;

    .line 81
    .line 82
    invoke-static/range {v2 .. v13}, Lcom/moloco/sdk/internal/publisher/l;->b(Landroid/content/Context;Lcom/moloco/sdk/internal/services/r;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Ljava/lang/String;ZLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lcom/moloco/sdk/internal/publisher/w;Lcom/moloco/sdk/internal/a;Lcom/moloco/sdk/internal/m;Lcom/moloco/sdk/internal/services/f0;Lcom/moloco/sdk/acm/recorder/a;)Lcom/moloco/sdk/publisher/Banner;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    return-object v1
.end method

.method public c(Landroid/content/Context;Lcom/moloco/sdk/internal/services/r;Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lcom/moloco/sdk/internal/publisher/w;Lcom/moloco/sdk/acm/recorder/a;)Lcom/moloco/sdk/publisher/InterstitialAd;
    .locals 13
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/services/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;
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
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    move-object v1, p1

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "appLifecycleTrackerService"

    .line 8
    .line 9
    move-object v2, p2

    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "adUnitId"

    .line 14
    .line 15
    move-object/from16 v4, p3

    .line 16
    .line 17
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string/jumbo v0, "viewVisibilityTracker"

    .line 21
    .line 22
    .line 23
    move-object/from16 v3, p4

    .line 24
    .line 25
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v0, "externalLinkHandler"

    .line 29
    .line 30
    move-object/from16 v5, p5

    .line 31
    .line 32
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v0, "persistentHttpRequest"

    .line 36
    .line 37
    move-object/from16 v6, p6

    .line 38
    .line 39
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string/jumbo v0, "watermark"

    .line 43
    .line 44
    .line 45
    move-object/from16 v8, p7

    .line 46
    .line 47
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v0, "adCreateLoadTimeoutManager"

    .line 51
    .line 52
    move-object/from16 v9, p8

    .line 53
    .line 54
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string v0, "metricsRecorder"

    .line 58
    .line 59
    move-object/from16 v10, p9

    .line 60
    .line 61
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    move-object v0, p0

    .line 65
    iget-object v3, v0, Lcom/moloco/sdk/internal/b;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;

    .line 66
    .line 67
    const/16 v11, 0x40

    .line 68
    .line 69
    const/4 v12, 0x0

    .line 70
    const/4 v7, 0x0

    .line 71
    invoke-static/range {v1 .. v12}, Lcom/moloco/sdk/internal/publisher/h;->b(Landroid/content/Context;Lcom/moloco/sdk/internal/services/r;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;Lcom/moloco/sdk/internal/publisher/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lcom/moloco/sdk/internal/publisher/w;Lcom/moloco/sdk/acm/recorder/a;ILjava/lang/Object;)Lcom/moloco/sdk/publisher/InterstitialAd;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    return-object v1
.end method

.method public d(Landroid/content/Context;Lcom/moloco/sdk/internal/services/r;Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lcom/moloco/sdk/internal/publisher/w;Lcom/moloco/sdk/internal/a;Lcom/moloco/sdk/internal/m;Lcom/moloco/sdk/acm/recorder/a;)Lcom/moloco/sdk/publisher/Banner;
    .locals 14
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/services/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;
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
    .param p10    # Lcom/moloco/sdk/acm/recorder/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    const-string v1, "context"

    .line 3
    .line 4
    move-object v2, p1

    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "appLifecycleTrackerService"

    .line 9
    .line 10
    move-object/from16 v3, p2

    .line 11
    .line 12
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "adUnitId"

    .line 16
    .line 17
    move-object/from16 v5, p3

    .line 18
    .line 19
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string/jumbo v1, "viewVisibilityTracker"

    .line 23
    .line 24
    .line 25
    move-object/from16 v4, p4

    .line 26
    .line 27
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v1, "externalLinkHandler"

    .line 31
    .line 32
    move-object/from16 v7, p5

    .line 33
    .line 34
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string/jumbo v1, "watermark"

    .line 38
    .line 39
    .line 40
    move-object/from16 v8, p6

    .line 41
    .line 42
    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v1, "adCreateLoadTimeoutManager"

    .line 46
    .line 47
    move-object/from16 v9, p7

    .line 48
    .line 49
    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string/jumbo v1, "viewLifecycleOwnerSingleton"

    .line 53
    .line 54
    .line 55
    move-object/from16 v10, p8

    .line 56
    .line 57
    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string v1, "bannerSize"

    .line 61
    .line 62
    move-object/from16 v11, p9

    .line 63
    .line 64
    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string v1, "metricsRecorder"

    .line 68
    .line 69
    move-object/from16 v13, p10

    .line 70
    .line 71
    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v4, v0, Lcom/moloco/sdk/internal/b;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/b;->h()Z

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    iget-object v12, v0, Lcom/moloco/sdk/internal/b;->c:Lcom/moloco/sdk/internal/services/f0;

    .line 81
    .line 82
    invoke-static/range {v2 .. v13}, Lcom/moloco/sdk/internal/publisher/l;->b(Landroid/content/Context;Lcom/moloco/sdk/internal/services/r;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Ljava/lang/String;ZLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lcom/moloco/sdk/internal/publisher/w;Lcom/moloco/sdk/internal/a;Lcom/moloco/sdk/internal/m;Lcom/moloco/sdk/internal/services/f0;Lcom/moloco/sdk/acm/recorder/a;)Lcom/moloco/sdk/publisher/Banner;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    return-object v1
.end method

.method public e(Landroid/content/Context;Lcom/moloco/sdk/internal/services/r;Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lcom/moloco/sdk/internal/publisher/w;Lcom/moloco/sdk/acm/recorder/a;)Lcom/moloco/sdk/publisher/RewardedInterstitialAd;
    .locals 13
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/services/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;
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
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    move-object v1, p1

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "appLifecycleTrackerService"

    .line 8
    .line 9
    move-object v2, p2

    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "adUnitId"

    .line 14
    .line 15
    move-object/from16 v4, p3

    .line 16
    .line 17
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string/jumbo v0, "viewVisibilityTracker"

    .line 21
    .line 22
    .line 23
    move-object/from16 v3, p4

    .line 24
    .line 25
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v0, "externalLinkHandler"

    .line 29
    .line 30
    move-object/from16 v5, p5

    .line 31
    .line 32
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v0, "persistentHttpRequest"

    .line 36
    .line 37
    move-object/from16 v6, p6

    .line 38
    .line 39
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string/jumbo v0, "watermark"

    .line 43
    .line 44
    .line 45
    move-object/from16 v8, p7

    .line 46
    .line 47
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v0, "adCreateLoadTimeoutManager"

    .line 51
    .line 52
    move-object/from16 v9, p8

    .line 53
    .line 54
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string v0, "metricsRecorder"

    .line 58
    .line 59
    move-object/from16 v10, p9

    .line 60
    .line 61
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    move-object v0, p0

    .line 65
    iget-object v3, v0, Lcom/moloco/sdk/internal/b;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;

    .line 66
    .line 67
    const/16 v11, 0x40

    .line 68
    .line 69
    const/4 v12, 0x0

    .line 70
    const/4 v7, 0x0

    .line 71
    invoke-static/range {v1 .. v12}, Lcom/moloco/sdk/internal/publisher/r;->b(Landroid/content/Context;Lcom/moloco/sdk/internal/services/r;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;Lcom/moloco/sdk/internal/publisher/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lcom/moloco/sdk/internal/publisher/w;Lcom/moloco/sdk/acm/recorder/a;ILjava/lang/Object;)Lcom/moloco/sdk/publisher/RewardedInterstitialAd;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    return-object v1
.end method

.method public f(Landroid/content/Context;Lcom/moloco/sdk/internal/services/r;Lcom/moloco/sdk/internal/services/b0;Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;Lcom/moloco/sdk/internal/a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lcom/moloco/sdk/internal/publisher/w;Lcom/moloco/sdk/internal/services/j;Lcom/moloco/sdk/internal/services/l;Lcom/moloco/sdk/acm/recorder/a;)Lcom/moloco/sdk/publisher/NativeAd;
    .locals 19
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/services/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/internal/services/b0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/moloco/sdk/internal/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Lcom/moloco/sdk/internal/publisher/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p11    # Lcom/moloco/sdk/internal/services/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p12    # Lcom/moloco/sdk/internal/services/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p13    # Lcom/moloco/sdk/acm/recorder/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v10, p1

    .line 4
    .line 5
    move-object/from16 v11, p6

    .line 6
    .line 7
    const-string v1, "context"

    .line 8
    .line 9
    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "appLifecycleTrackerService"

    .line 13
    .line 14
    move-object/from16 v12, p2

    .line 15
    .line 16
    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v1, "audioService"

    .line 20
    .line 21
    move-object/from16 v2, p3

    .line 22
    .line 23
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v1, "adUnitId"

    .line 27
    .line 28
    move-object/from16 v13, p4

    .line 29
    .line 30
    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string/jumbo v1, "viewVisibilityTracker"

    .line 34
    .line 35
    .line 36
    move-object/from16 v14, p5

    .line 37
    .line 38
    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v1, "externalLinkHandler"

    .line 42
    .line 43
    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v1, "persistentHttpRequest"

    .line 47
    .line 48
    move-object/from16 v15, p7

    .line 49
    .line 50
    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string/jumbo v1, "viewLifecycleOwnerSingleton"

    .line 54
    .line 55
    .line 56
    move-object/from16 v9, p8

    .line 57
    .line 58
    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string/jumbo v1, "watermark"

    .line 62
    .line 63
    .line 64
    move-object/from16 v8, p9

    .line 65
    .line 66
    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v1, "adCreateLoadTimeoutManager"

    .line 70
    .line 71
    move-object/from16 v7, p10

    .line 72
    .line 73
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-string/jumbo v1, "timeProvider"

    .line 77
    .line 78
    .line 79
    move-object/from16 v6, p11

    .line 80
    .line 81
    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const-string/jumbo v1, "webViewAvailabilityChecker"

    .line 85
    .line 86
    .line 87
    move-object/from16 v5, p12

    .line 88
    .line 89
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const-string v1, "metricsRecorder"

    .line 93
    .line 94
    move-object/from16 v4, p13

    .line 95
    .line 96
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    new-instance v16, Lcom/moloco/sdk/internal/publisher/nativead/c;

    .line 100
    .line 101
    new-instance v3, Lcom/moloco/sdk/internal/publisher/o;

    .line 102
    .line 103
    invoke-static {}, Lcom/moloco/sdk/internal/ortb/d;->a()Lcom/moloco/sdk/internal/ortb/a;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-static {}, Lcom/moloco/sdk/internal/publisher/l0;->a()Lcom/moloco/sdk/internal/publisher/k0;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-direct {v3, v1, v2}, Lcom/moloco/sdk/internal/publisher/o;-><init>(Lcom/moloco/sdk/internal/ortb/a;Lcom/moloco/sdk/internal/publisher/k0;)V

    .line 112
    .line 113
    .line 114
    new-instance v17, Lcom/moloco/sdk/internal/publisher/nativead/parser/a;

    .line 115
    .line 116
    invoke-direct/range {v17 .. v17}, Lcom/moloco/sdk/internal/publisher/nativead/parser/a;-><init>()V

    .line 117
    .line 118
    .line 119
    move-object/from16 v1, v16

    .line 120
    .line 121
    move-object/from16 v2, p1

    .line 122
    .line 123
    move-object/from16 v18, v3

    .line 124
    .line 125
    move-object/from16 v3, p4

    .line 126
    .line 127
    move-object/from16 v4, v18

    .line 128
    .line 129
    move-object/from16 v5, v17

    .line 130
    .line 131
    move-object/from16 v6, p10

    .line 132
    .line 133
    move-object/from16 v7, p13

    .line 134
    .line 135
    move-object/from16 v8, p11

    .line 136
    .line 137
    move-object/from16 v9, p12

    .line 138
    .line 139
    invoke-direct/range {v1 .. v9}, Lcom/moloco/sdk/internal/publisher/nativead/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/moloco/sdk/internal/publisher/o;Lcom/moloco/sdk/internal/publisher/nativead/parser/a;Lcom/moloco/sdk/internal/publisher/w;Lcom/moloco/sdk/acm/recorder/a;Lcom/moloco/sdk/internal/services/j;Lcom/moloco/sdk/internal/services/l;)V

    .line 140
    .line 141
    .line 142
    new-instance v7, Lcom/moloco/sdk/internal/publisher/nativead/a;

    .line 143
    .line 144
    new-instance v6, Lcom/moloco/sdk/internal/b$a;

    .line 145
    .line 146
    invoke-direct {v6, v0, v11, v10}, Lcom/moloco/sdk/internal/b$a;-><init>(Lcom/moloco/sdk/internal/b;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Landroid/content/Context;)V

    .line 147
    .line 148
    .line 149
    move-object v1, v7

    .line 150
    move-object/from16 v3, p5

    .line 151
    .line 152
    move-object/from16 v4, p8

    .line 153
    .line 154
    move-object/from16 v5, p9

    .line 155
    .line 156
    invoke-direct/range {v1 .. v6}, Lcom/moloco/sdk/internal/publisher/nativead/a;-><init>(Landroid/content/Context;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;Lcom/moloco/sdk/internal/a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lkotlin/jvm/functions/Function1;)V

    .line 157
    .line 158
    .line 159
    new-instance v14, Lcom/moloco/sdk/internal/publisher/nativead/b;

    .line 160
    .line 161
    iget-object v6, v0, Lcom/moloco/sdk/internal/b;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;

    .line 162
    .line 163
    move-object v1, v14

    .line 164
    move-object/from16 v2, p4

    .line 165
    .line 166
    move-object/from16 v3, v16

    .line 167
    .line 168
    move-object v4, v7

    .line 169
    move-object/from16 v5, p2

    .line 170
    .line 171
    move-object/from16 v7, p6

    .line 172
    .line 173
    move-object/from16 v8, p7

    .line 174
    .line 175
    move-object/from16 v9, p10

    .line 176
    .line 177
    move-object/from16 v10, p13

    .line 178
    .line 179
    invoke-direct/range {v1 .. v10}, Lcom/moloco/sdk/internal/publisher/nativead/b;-><init>(Ljava/lang/String;Lcom/moloco/sdk/internal/publisher/nativead/c;Lcom/moloco/sdk/internal/publisher/nativead/a;Lcom/moloco/sdk/internal/services/r;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;Lcom/moloco/sdk/internal/publisher/w;Lcom/moloco/sdk/acm/recorder/a;)V

    .line 180
    .line 181
    .line 182
    return-object v14
.end method

.method public final h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/b;->d:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method
