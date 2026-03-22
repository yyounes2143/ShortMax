.class public final Lcom/moloco/sdk/internal/publisher/nativead/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/publisher/NativeAd;
.implements Lcom/moloco/sdk/internal/publisher/m0;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/internal/publisher/nativead/b$a;
    }
.end annotation


# static fields
.field public static final p:Lcom/moloco/sdk/internal/publisher/nativead/b$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final q:I


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/moloco/sdk/internal/publisher/nativead/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lcom/moloco/sdk/internal/publisher/nativead/a;
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

.field public final f:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lcom/moloco/sdk/internal/publisher/w;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/moloco/sdk/acm/recorder/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Lcom/moloco/sdk/publisher/NativeAd$InteractionListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final k:Lcom/moloco/sdk/publisher/AdFormatType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Lgt/g0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Lcom/moloco/sdk/acm/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:Lcom/moloco/sdk/internal/publisher/nativead/f;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public o:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/publisher/nativead/b$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/moloco/sdk/internal/publisher/nativead/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/moloco/sdk/internal/publisher/nativead/b;->p:Lcom/moloco/sdk/internal/publisher/nativead/b$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Lcom/moloco/sdk/internal/publisher/nativead/b;->q:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/moloco/sdk/internal/publisher/nativead/c;Lcom/moloco/sdk/internal/publisher/nativead/a;Lcom/moloco/sdk/internal/services/r;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;Lcom/moloco/sdk/internal/publisher/w;Lcom/moloco/sdk/acm/recorder/a;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/publisher/nativead/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/internal/publisher/nativead/a;
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
    .param p6    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;
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

    .line 1
    const-string v0, "adUnitId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "nativeAdLoader"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "assets"

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
    const-string v0, "externalLinkHandler"

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
    const-string v0, "createLoadTimeoutManager"

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
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/b;->a:Ljava/lang/String;

    .line 50
    .line 51
    iput-object p2, p0, Lcom/moloco/sdk/internal/publisher/nativead/b;->b:Lcom/moloco/sdk/internal/publisher/nativead/c;

    .line 52
    .line 53
    iput-object p3, p0, Lcom/moloco/sdk/internal/publisher/nativead/b;->c:Lcom/moloco/sdk/internal/publisher/nativead/a;

    .line 54
    .line 55
    iput-object p4, p0, Lcom/moloco/sdk/internal/publisher/nativead/b;->d:Lcom/moloco/sdk/internal/services/r;

    .line 56
    .line 57
    iput-object p5, p0, Lcom/moloco/sdk/internal/publisher/nativead/b;->e:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;

    .line 58
    .line 59
    iput-object p6, p0, Lcom/moloco/sdk/internal/publisher/nativead/b;->f:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;

    .line 60
    .line 61
    iput-object p7, p0, Lcom/moloco/sdk/internal/publisher/nativead/b;->g:Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;

    .line 62
    .line 63
    iput-object p8, p0, Lcom/moloco/sdk/internal/publisher/nativead/b;->h:Lcom/moloco/sdk/internal/publisher/w;

    .line 64
    .line 65
    iput-object p9, p0, Lcom/moloco/sdk/internal/publisher/nativead/b;->i:Lcom/moloco/sdk/acm/recorder/a;

    .line 66
    .line 67
    sget-object p1, Lcom/moloco/sdk/publisher/AdFormatType;->NATIVE:Lcom/moloco/sdk/publisher/AdFormatType;

    .line 68
    .line 69
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/b;->k:Lcom/moloco/sdk/publisher/AdFormatType;

    .line 70
    .line 71
    invoke-static {}, Lcom/moloco/sdk/internal/scheduling/c;->a()Lcom/moloco/sdk/internal/scheduling/a;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-interface {p1}, Lcom/moloco/sdk/internal/scheduling/a;->getMain()Lkotlin/coroutines/CoroutineContext;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {p1}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/b;->l:Lgt/g0;

    .line 84
    .line 85
    sget-object p1, Lcom/moloco/sdk/internal/client_metrics_data/d;->j:Lcom/moloco/sdk/internal/client_metrics_data/d;

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/client_metrics_data/d;->c()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-interface {p9, p1}, Lcom/moloco/sdk/acm/recorder/a;->c(Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/b;->m:Lcom/moloco/sdk/acm/e;

    .line 96
    .line 97
    return-void
.end method

.method public static final synthetic a(Lcom/moloco/sdk/internal/publisher/nativead/b;)Lcom/moloco/sdk/acm/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/internal/publisher/nativead/b;->m:Lcom/moloco/sdk/acm/e;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c(Lcom/moloco/sdk/internal/publisher/nativead/b;Lcom/moloco/sdk/acm/e;Lcom/moloco/sdk/publisher/AdLoad$Listener;)Lcom/moloco/sdk/internal/publisher/s0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/publisher/nativead/b;->b(Lcom/moloco/sdk/acm/e;Lcom/moloco/sdk/publisher/AdLoad$Listener;)Lcom/moloco/sdk/internal/publisher/s0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic e(Lcom/moloco/sdk/internal/publisher/nativead/b;)Lcom/moloco/sdk/publisher/AdFormatType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/internal/publisher/nativead/b;->k:Lcom/moloco/sdk/publisher/AdFormatType;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic f(Lcom/moloco/sdk/internal/publisher/nativead/b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/internal/publisher/nativead/b;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic g(Lcom/moloco/sdk/internal/publisher/nativead/b;)Lcom/moloco/sdk/internal/services/r;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/internal/publisher/nativead/b;->d:Lcom/moloco/sdk/internal/services/r;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic h(Lcom/moloco/sdk/internal/publisher/nativead/b;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/internal/publisher/nativead/b;->e:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic i(Lcom/moloco/sdk/internal/publisher/nativead/b;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/internal/publisher/nativead/b;->f:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic j(Lcom/moloco/sdk/internal/publisher/nativead/b;)Lcom/moloco/sdk/acm/recorder/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/internal/publisher/nativead/b;->i:Lcom/moloco/sdk/acm/recorder/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic l(Lcom/moloco/sdk/internal/publisher/nativead/b;)Lcom/moloco/sdk/internal/publisher/nativead/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/internal/publisher/nativead/b;->b:Lcom/moloco/sdk/internal/publisher/nativead/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic m(Lcom/moloco/sdk/internal/publisher/nativead/b;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/internal/publisher/nativead/b;->g:Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final b(Lcom/moloco/sdk/acm/e;Lcom/moloco/sdk/publisher/AdLoad$Listener;)Lcom/moloco/sdk/internal/publisher/s0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/b;->k:Lcom/moloco/sdk/publisher/AdFormatType;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/nativead/b;->i:Lcom/moloco/sdk/acm/recorder/a;

    .line 4
    .line 5
    invoke-static {p2, p1, v0, v1}, Lcom/moloco/sdk/internal/publisher/b0;->a(Lcom/moloco/sdk/publisher/AdLoad$Listener;Lcom/moloco/sdk/acm/e;Lcom/moloco/sdk/publisher/AdFormatType;Lcom/moloco/sdk/acm/recorder/a;)Lcom/moloco/sdk/internal/publisher/s0;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final d(Lcom/moloco/sdk/internal/publisher/nativead/f;)V
    .locals 0
    .param p1    # Lcom/moloco/sdk/internal/publisher/nativead/f;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/b;->n:Lcom/moloco/sdk/internal/publisher/nativead/f;

    .line 2
    .line 3
    return-void
.end method

.method public destroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/b;->l:Lgt/g0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/i;->e(Lgt/g0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/publisher/nativead/b;->k()Lcom/moloco/sdk/internal/publisher/nativead/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/publisher/nativead/a;->c()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v2}, Lcom/moloco/sdk/internal/publisher/nativead/b;->setInteractionListener(Lcom/moloco/sdk/publisher/NativeAd$InteractionListener;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public bridge synthetic getAssets()Lcom/moloco/sdk/publisher/NativeAd$Assets;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/publisher/nativead/b;->k()Lcom/moloco/sdk/internal/publisher/nativead/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getInteractionListener()Lcom/moloco/sdk/publisher/NativeAd$InteractionListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/b;->j:Lcom/moloco/sdk/publisher/NativeAd$InteractionListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public handleGeneralAdClick()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/publisher/nativead/b;->getInteractionListener()Lcom/moloco/sdk/publisher/NativeAd$InteractionListener;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/moloco/sdk/publisher/NativeAd$InteractionListener;->onGeneralClickHandled()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/b;->n:Lcom/moloco/sdk/internal/publisher/nativead/f;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/publisher/nativead/f;->e()V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public handleImpression()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/publisher/nativead/b;->getInteractionListener()Lcom/moloco/sdk/publisher/NativeAd$InteractionListener;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/moloco/sdk/publisher/NativeAd$InteractionListener;->onImpressionHandled()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/b;->n:Lcom/moloco/sdk/internal/publisher/nativead/f;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/publisher/nativead/f;->f()V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public isLoaded()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/publisher/nativead/b;->k()Lcom/moloco/sdk/internal/publisher/nativead/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/publisher/nativead/a;->g()Lcom/moloco/sdk/internal/publisher/nativead/model/d;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public k()Lcom/moloco/sdk/internal/publisher/nativead/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/b;->c:Lcom/moloco/sdk/internal/publisher/nativead/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public declared-synchronized load(Ljava/lang/String;Lcom/moloco/sdk/publisher/AdLoad$Listener;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/publisher/AdLoad$Listener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "bidResponseJson"

    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/b;->o:Lkotlinx/coroutines/r;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lkotlinx/coroutines/r;->isActive()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    sget-object v2, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 19
    .line 20
    const-string v3, "NativeAdImpl"

    .line 21
    .line 22
    const-string v4, "load() called while another load operation is in progress. Ignoring this call."

    .line 23
    .line 24
    const/16 v7, 0xc

    .line 25
    .line 26
    const/4 v8, 0x0

    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v6, 0x0

    .line 29
    invoke-static/range {v2 .. v8}, Lcom/moloco/sdk/internal/MolocoLogger;->warn$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/publisher/nativead/b;->isLoaded()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 43
    .line 44
    const-string v2, "NativeAdImpl"

    .line 45
    .line 46
    const-string v3, "load() called but ad is already loaded. Ignoring this call."

    .line 47
    .line 48
    const/16 v6, 0xc

    .line 49
    .line 50
    const/4 v7, 0x0

    .line 51
    const/4 v4, 0x0

    .line 52
    const/4 v5, 0x0

    .line 53
    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/internal/MolocoLogger;->warn$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .line 55
    .line 56
    monitor-exit p0

    .line 57
    return-void

    .line 58
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/b;->l:Lgt/g0;

    .line 59
    .line 60
    new-instance v3, Lcom/moloco/sdk/internal/publisher/nativead/b$b;

    .line 61
    .line 62
    const/4 v1, 0x0

    .line 63
    invoke-direct {v3, p0, p2, p1, v1}, Lcom/moloco/sdk/internal/publisher/nativead/b$b;-><init>(Lcom/moloco/sdk/internal/publisher/nativead/b;Lcom/moloco/sdk/publisher/AdLoad$Listener;Ljava/lang/String;Lrs/c;)V

    .line 64
    .line 65
    .line 66
    const/4 v4, 0x3

    .line 67
    const/4 v5, 0x0

    .line 68
    const/4 v1, 0x0

    .line 69
    const/4 v2, 0x0

    .line 70
    invoke-static/range {v0 .. v5}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/b;->o:Lkotlinx/coroutines/r;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    .line 76
    monitor-exit p0

    .line 77
    return-void

    .line 78
    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 79
    throw p1
.end method

.method public setCreateAdObjectStartTime(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/b;->h:Lcom/moloco/sdk/internal/publisher/w;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/moloco/sdk/internal/publisher/w;->setCreateAdObjectStartTime(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setInteractionListener(Lcom/moloco/sdk/publisher/NativeAd$InteractionListener;)V
    .locals 0
    .param p1    # Lcom/moloco/sdk/publisher/NativeAd$InteractionListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/b;->j:Lcom/moloco/sdk/publisher/NativeAd$InteractionListener;

    .line 2
    .line 3
    return-void
.end method
