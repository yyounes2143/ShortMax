.class public final Lcom/moloco/sdk/internal/publisher/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/internal/publisher/t0;


# instance fields
.field public final synthetic a:Lcom/moloco/sdk/internal/publisher/t0;

.field public final b:Lcom/moloco/sdk/publisher/BannerAdShowListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/publisher/BannerAdShowListener;Lcom/moloco/sdk/internal/services/r;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/moloco/sdk/publisher/AdFormatType;Lcom/moloco/sdk/acm/recorder/a;)V
    .locals 13
    .param p1    # Lcom/moloco/sdk/publisher/BannerAdShowListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/services/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/moloco/sdk/publisher/AdFormatType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/moloco/sdk/acm/recorder/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/publisher/BannerAdShowListener;",
            "Lcom/moloco/sdk/internal/services/r;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/moloco/sdk/internal/ortb/model/r;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/moloco/sdk/internal/publisher/e0;",
            ">;",
            "Lcom/moloco/sdk/publisher/AdFormatType;",
            "Lcom/moloco/sdk/acm/recorder/a;",
            ")V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    const-string v1, "appLifecycleTrackerService"

    .line 3
    .line 4
    move-object v3, p2

    .line 5
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "customUserEventBuilderService"

    .line 9
    .line 10
    move-object/from16 v4, p3

    .line 11
    .line 12
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "provideSdkEvents"

    .line 16
    .line 17
    move-object/from16 v5, p4

    .line 18
    .line 19
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v1, "provideBUrlData"

    .line 23
    .line 24
    move-object/from16 v6, p5

    .line 25
    .line 26
    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v1, "adType"

    .line 30
    .line 31
    move-object/from16 v9, p6

    .line 32
    .line 33
    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v1, "metricsRecorder"

    .line 37
    .line 38
    move-object/from16 v10, p7

    .line 39
    .line 40
    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    .line 45
    .line 46
    const/16 v11, 0x60

    .line 47
    .line 48
    const/4 v12, 0x0

    .line 49
    const/4 v7, 0x0

    .line 50
    const/4 v8, 0x0

    .line 51
    move-object v2, p1

    .line 52
    invoke-static/range {v2 .. v12}, Lcom/moloco/sdk/internal/publisher/a;->b(Lcom/moloco/sdk/publisher/AdShowListener;Lcom/moloco/sdk/internal/services/r;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/moloco/sdk/internal/h0;Lcom/moloco/sdk/internal/i;Lcom/moloco/sdk/publisher/AdFormatType;Lcom/moloco/sdk/acm/recorder/a;ILjava/lang/Object;)Lcom/moloco/sdk/internal/publisher/t0;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iput-object v1, v0, Lcom/moloco/sdk/internal/publisher/c;->a:Lcom/moloco/sdk/internal/publisher/t0;

    .line 57
    .line 58
    move-object v1, p1

    .line 59
    iput-object v1, v0, Lcom/moloco/sdk/internal/publisher/c;->b:Lcom/moloco/sdk/publisher/BannerAdShowListener;

    .line 60
    .line 61
    return-void
.end method


# virtual methods
.method public a(Lcom/moloco/sdk/internal/c0;)V
    .locals 1
    .param p1    # Lcom/moloco/sdk/internal/c0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "internalError"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/c;->a:Lcom/moloco/sdk/internal/publisher/t0;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/moloco/sdk/internal/publisher/t0;->a(Lcom/moloco/sdk/internal/c0;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final b()Lcom/moloco/sdk/publisher/BannerAdShowListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/c;->b:Lcom/moloco/sdk/publisher/BannerAdShowListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public onAdClicked(Lcom/moloco/sdk/publisher/MolocoAd;)V
    .locals 1
    .param p1    # Lcom/moloco/sdk/publisher/MolocoAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "molocoAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/c;->a:Lcom/moloco/sdk/internal/publisher/t0;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/moloco/sdk/internal/publisher/t0;->onAdClicked(Lcom/moloco/sdk/publisher/MolocoAd;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onAdHidden(Lcom/moloco/sdk/publisher/MolocoAd;)V
    .locals 1
    .param p1    # Lcom/moloco/sdk/publisher/MolocoAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "molocoAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/c;->a:Lcom/moloco/sdk/internal/publisher/t0;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/moloco/sdk/internal/publisher/t0;->onAdHidden(Lcom/moloco/sdk/publisher/MolocoAd;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onAdShowSuccess(Lcom/moloco/sdk/publisher/MolocoAd;)V
    .locals 1
    .param p1    # Lcom/moloco/sdk/publisher/MolocoAd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "molocoAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/c;->a:Lcom/moloco/sdk/internal/publisher/t0;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/moloco/sdk/internal/publisher/t0;->onAdShowSuccess(Lcom/moloco/sdk/publisher/MolocoAd;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
