.class public final Lcom/moloco/sdk/internal/publisher/nativead/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/internal/publisher/nativead/f$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nNativeAdShowListenerWithTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NativeAdShowListenerWithTracker.kt\ncom/moloco/sdk/internal/publisher/nativead/NativeAdShowListenerWithTracker\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,139:1\n1#2:140\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/moloco/sdk/internal/ortb/model/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lcom/moloco/sdk/internal/publisher/nativead/model/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lcom/moloco/sdk/internal/services/r;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lcom/moloco/sdk/publisher/AdFormatType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/moloco/sdk/acm/recorder/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lcom/moloco/sdk/internal/publisher/t0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Lcom/moloco/sdk/internal/publisher/nativead/f$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/moloco/sdk/internal/ortb/model/c;Lcom/moloco/sdk/internal/publisher/nativead/model/a;Lcom/moloco/sdk/internal/services/r;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Lcom/moloco/sdk/publisher/AdFormatType;Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/acm/recorder/a;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/ortb/model/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/internal/publisher/nativead/model/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/moloco/sdk/internal/services/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/moloco/sdk/publisher/AdFormatType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lcom/moloco/sdk/acm/recorder/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "adUnitId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "bid"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "ortbResponse"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "appLifecycleTrackerService"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "customUserEventBuilderService"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "adFormatType"

    .line 27
    .line 28
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "persistentHttpRequest"

    .line 32
    .line 33
    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "externalLinkHandler"

    .line 37
    .line 38
    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v0, "metricsRecorder"

    .line 42
    .line 43
    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/f;->a:Ljava/lang/String;

    .line 50
    .line 51
    iput-object p2, p0, Lcom/moloco/sdk/internal/publisher/nativead/f;->b:Lcom/moloco/sdk/internal/ortb/model/c;

    .line 52
    .line 53
    iput-object p3, p0, Lcom/moloco/sdk/internal/publisher/nativead/f;->c:Lcom/moloco/sdk/internal/publisher/nativead/model/a;

    .line 54
    .line 55
    iput-object p4, p0, Lcom/moloco/sdk/internal/publisher/nativead/f;->d:Lcom/moloco/sdk/internal/services/r;

    .line 56
    .line 57
    iput-object p5, p0, Lcom/moloco/sdk/internal/publisher/nativead/f;->e:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;

    .line 58
    .line 59
    iput-object p6, p0, Lcom/moloco/sdk/internal/publisher/nativead/f;->f:Lcom/moloco/sdk/publisher/AdFormatType;

    .line 60
    .line 61
    iput-object p7, p0, Lcom/moloco/sdk/internal/publisher/nativead/f;->g:Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;

    .line 62
    .line 63
    iput-object p8, p0, Lcom/moloco/sdk/internal/publisher/nativead/f;->h:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;

    .line 64
    .line 65
    iput-object p9, p0, Lcom/moloco/sdk/internal/publisher/nativead/f;->i:Lcom/moloco/sdk/acm/recorder/a;

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/publisher/nativead/f;->c()Lcom/moloco/sdk/internal/publisher/t0;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/f;->j:Lcom/moloco/sdk/internal/publisher/t0;

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/publisher/nativead/f;->d()Lcom/moloco/sdk/internal/publisher/nativead/f$a;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/f;->k:Lcom/moloco/sdk/internal/publisher/nativead/f$a;

    .line 78
    .line 79
    return-void
.end method

.method public static final a(Lcom/moloco/sdk/internal/ortb/model/c;)Lcom/moloco/sdk/internal/ortb/model/r;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/ortb/model/c;->d()Lcom/moloco/sdk/internal/ortb/model/d;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/ortb/model/d;->f()Lcom/moloco/sdk/internal/ortb/model/r;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static final b(Lcom/moloco/sdk/internal/publisher/nativead/f;)Lcom/moloco/sdk/internal/publisher/e0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/f;->b:Lcom/moloco/sdk/internal/ortb/model/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/ortb/model/c;->c()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v1, Lcom/moloco/sdk/internal/publisher/e0;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/moloco/sdk/internal/publisher/nativead/f;->b:Lcom/moloco/sdk/internal/ortb/model/c;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/ortb/model/c;->e()F

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-direct {v1, v0, p0}, Lcom/moloco/sdk/internal/publisher/e0;-><init>(Ljava/lang/String;Ljava/lang/Float;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 26
    :goto_0
    return-object v1
.end method


# virtual methods
.method public final c()Lcom/moloco/sdk/internal/publisher/t0;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/f;->b:Lcom/moloco/sdk/internal/ortb/model/c;

    .line 2
    .line 3
    iget-object v2, p0, Lcom/moloco/sdk/internal/publisher/nativead/f;->d:Lcom/moloco/sdk/internal/services/r;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/moloco/sdk/internal/publisher/nativead/f;->e:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;

    .line 6
    .line 7
    new-instance v4, Lcom/moloco/sdk/internal/publisher/nativead/d;

    .line 8
    .line 9
    invoke-direct {v4, v0}, Lcom/moloco/sdk/internal/publisher/nativead/d;-><init>(Lcom/moloco/sdk/internal/ortb/model/c;)V

    .line 10
    .line 11
    .line 12
    new-instance v5, Lcom/moloco/sdk/internal/publisher/nativead/e;

    .line 13
    .line 14
    invoke-direct {v5, p0}, Lcom/moloco/sdk/internal/publisher/nativead/e;-><init>(Lcom/moloco/sdk/internal/publisher/nativead/f;)V

    .line 15
    .line 16
    .line 17
    iget-object v8, p0, Lcom/moloco/sdk/internal/publisher/nativead/f;->f:Lcom/moloco/sdk/publisher/AdFormatType;

    .line 18
    .line 19
    iget-object v9, p0, Lcom/moloco/sdk/internal/publisher/nativead/f;->i:Lcom/moloco/sdk/acm/recorder/a;

    .line 20
    .line 21
    const/16 v10, 0x60

    .line 22
    .line 23
    const/4 v11, 0x0

    .line 24
    const/4 v1, 0x0

    .line 25
    const/4 v6, 0x0

    .line 26
    const/4 v7, 0x0

    .line 27
    invoke-static/range {v1 .. v11}, Lcom/moloco/sdk/internal/publisher/a;->b(Lcom/moloco/sdk/publisher/AdShowListener;Lcom/moloco/sdk/internal/services/r;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/moloco/sdk/internal/h0;Lcom/moloco/sdk/internal/i;Lcom/moloco/sdk/publisher/AdFormatType;Lcom/moloco/sdk/acm/recorder/a;ILjava/lang/Object;)Lcom/moloco/sdk/internal/publisher/t0;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method

.method public final d()Lcom/moloco/sdk/internal/publisher/nativead/f$a;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/f;->c:Lcom/moloco/sdk/internal/publisher/nativead/model/a;

    .line 2
    .line 3
    new-instance v1, Lcom/moloco/sdk/internal/publisher/nativead/f$a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/publisher/nativead/model/a;->c()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/publisher/nativead/model/a;->b()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v3, p0, Lcom/moloco/sdk/internal/publisher/nativead/f;->g:Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;

    .line 14
    .line 15
    invoke-direct {v1, v2, v0, v3}, Lcom/moloco/sdk/internal/publisher/nativead/f$a;-><init>(Ljava/util/List;Ljava/util/List;Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;)V

    .line 16
    .line 17
    .line 18
    return-object v1
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/f;->c:Lcom/moloco/sdk/internal/publisher/nativead/model/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/publisher/nativead/model/a;->d()Lcom/moloco/sdk/internal/publisher/nativead/model/a$c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/nativead/f;->k:Lcom/moloco/sdk/internal/publisher/nativead/f$a;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/publisher/nativead/model/a$c;->a()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v1, v2}, Lcom/moloco/sdk/internal/publisher/nativead/f$a;->b(Ljava/util/List;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/nativead/f;->h:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/publisher/nativead/model/a$c;->b()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v1, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;->a(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/f;->j:Lcom/moloco/sdk/internal/publisher/t0;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/nativead/f;->a:Ljava/lang/String;

    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-static {v1, v3, v2, v3}, Lcom/moloco/sdk/publisher/MolocoAdKt;->createAdInfo$default(Ljava/lang/String;Ljava/lang/Float;ILjava/lang/Object;)Lcom/moloco/sdk/publisher/MolocoAd;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-interface {v0, v1}, Lcom/moloco/sdk/internal/publisher/t0;->onAdClicked(Lcom/moloco/sdk/publisher/MolocoAd;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/f;->k:Lcom/moloco/sdk/internal/publisher/nativead/f$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/publisher/nativead/f$a;->a()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/f;->j:Lcom/moloco/sdk/internal/publisher/t0;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/nativead/f;->a:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x2

    .line 12
    invoke-static {v1, v2, v3, v2}, Lcom/moloco/sdk/publisher/MolocoAdKt;->createAdInfo$default(Ljava/lang/String;Ljava/lang/Float;ILjava/lang/Object;)Lcom/moloco/sdk/publisher/MolocoAd;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v0, v1}, Lcom/moloco/sdk/internal/publisher/t0;->onAdShowSuccess(Lcom/moloco/sdk/publisher/MolocoAd;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
