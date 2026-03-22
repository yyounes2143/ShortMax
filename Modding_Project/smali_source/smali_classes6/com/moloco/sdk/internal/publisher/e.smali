.class public final Lcom/moloco/sdk/internal/publisher/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/internal/publisher/t0;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/moloco/sdk/publisher/AdShowListener;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/moloco/sdk/internal/publisher/t0;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/moloco/sdk/internal/publisher/t0;

.field public final b:Lcom/moloco/sdk/publisher/AdShowListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lcom/moloco/sdk/internal/services/r;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lcom/moloco/sdk/publisher/AdFormatType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lcom/moloco/sdk/acm/recorder/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/moloco/sdk/publisher/AdShowListener;Lcom/moloco/sdk/internal/services/r;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/moloco/sdk/publisher/AdFormatType;Lcom/moloco/sdk/acm/recorder/a;)V
    .locals 17
    .param p1    # Lcom/moloco/sdk/publisher/AdShowListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
            "(TT;",
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
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v12, p1

    .line 4
    .line 5
    move-object/from16 v13, p2

    .line 6
    .line 7
    move-object/from16 v14, p3

    .line 8
    .line 9
    move-object/from16 v15, p6

    .line 10
    .line 11
    move-object/from16 v11, p7

    .line 12
    .line 13
    const-string v1, "adShowListener"

    .line 14
    .line 15
    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v1, "appLifecycleTrackerService"

    .line 19
    .line 20
    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v1, "customUserEventBuilderService"

    .line 24
    .line 25
    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "provideSdkEvents"

    .line 29
    .line 30
    move-object/from16 v4, p4

    .line 31
    .line 32
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v1, "provideBUrlData"

    .line 36
    .line 37
    move-object/from16 v5, p5

    .line 38
    .line 39
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v1, "adFormatType"

    .line 43
    .line 44
    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v1, "metricsRecorder"

    .line 48
    .line 49
    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    .line 54
    .line 55
    const/16 v10, 0x60

    .line 56
    .line 57
    const/16 v16, 0x0

    .line 58
    .line 59
    const/4 v6, 0x0

    .line 60
    const/4 v7, 0x0

    .line 61
    move-object/from16 v1, p1

    .line 62
    .line 63
    move-object/from16 v2, p2

    .line 64
    .line 65
    move-object/from16 v3, p3

    .line 66
    .line 67
    move-object/from16 v8, p6

    .line 68
    .line 69
    move-object/from16 v9, p7

    .line 70
    .line 71
    move-object/from16 v11, v16

    .line 72
    .line 73
    invoke-static/range {v1 .. v11}, Lcom/moloco/sdk/internal/publisher/a;->b(Lcom/moloco/sdk/publisher/AdShowListener;Lcom/moloco/sdk/internal/services/r;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/moloco/sdk/internal/h0;Lcom/moloco/sdk/internal/i;Lcom/moloco/sdk/publisher/AdFormatType;Lcom/moloco/sdk/acm/recorder/a;ILjava/lang/Object;)Lcom/moloco/sdk/internal/publisher/t0;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    iput-object v1, v0, Lcom/moloco/sdk/internal/publisher/e;->a:Lcom/moloco/sdk/internal/publisher/t0;

    .line 78
    .line 79
    iput-object v12, v0, Lcom/moloco/sdk/internal/publisher/e;->b:Lcom/moloco/sdk/publisher/AdShowListener;

    .line 80
    .line 81
    iput-object v13, v0, Lcom/moloco/sdk/internal/publisher/e;->c:Lcom/moloco/sdk/internal/services/r;

    .line 82
    .line 83
    iput-object v14, v0, Lcom/moloco/sdk/internal/publisher/e;->d:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;

    .line 84
    .line 85
    iput-object v15, v0, Lcom/moloco/sdk/internal/publisher/e;->e:Lcom/moloco/sdk/publisher/AdFormatType;

    .line 86
    .line 87
    move-object/from16 v1, p7

    .line 88
    .line 89
    iput-object v1, v0, Lcom/moloco/sdk/internal/publisher/e;->f:Lcom/moloco/sdk/acm/recorder/a;

    .line 90
    .line 91
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
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/e;->a:Lcom/moloco/sdk/internal/publisher/t0;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/moloco/sdk/internal/publisher/t0;->a(Lcom/moloco/sdk/internal/c0;)V

    .line 9
    .line 10
    .line 11
    return-void
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
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/e;->a:Lcom/moloco/sdk/internal/publisher/t0;

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
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/e;->a:Lcom/moloco/sdk/internal/publisher/t0;

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
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/e;->a:Lcom/moloco/sdk/internal/publisher/t0;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/moloco/sdk/internal/publisher/t0;->onAdShowSuccess(Lcom/moloco/sdk/publisher/MolocoAd;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
