.class public final Lbm/c;
.super Lxq/h;
.source "AdaptiveRenderingFullscreenAd.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private a:Lrp/m;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lxq/h;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lio/bidmachine/ContextProvider;Lxq/c;Lxq/d;Lxq/k;Lio/bidmachine/NetworkAdUnit;)V
    .locals 0

    .line 1
    check-cast p2, Lxq/i;

    .line 2
    .line 3
    check-cast p3, Lxq/j;

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p5}, Lbm/c;->l(Lio/bidmachine/ContextProvider;Lxq/i;Lxq/j;Lxq/k;Lio/bidmachine/NetworkAdUnit;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lbm/c;->a:Lrp/m;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lrp/m;->K()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lbm/c;->a:Lrp/m;

    .line 10
    .line 11
    return-void
.end method

.method public k(Lio/bidmachine/ContextProvider;Lxq/i;Lio/bidmachine/RendererConfiguration;)V
    .locals 2
    .param p1    # Lio/bidmachine/ContextProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lxq/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/RendererConfiguration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    const-string v0, "contextProvider"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lbm/c;->a:Lrp/m;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const-string p1, "AdaptiveRendering fullscreen object is null"

    .line 16
    .line 17
    invoke-static {p1}, Lfr/a;->i(Ljava/lang/String;)Lfr/a;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p2, p1}, Lxq/c;->onAdShowFailed(Lfr/a;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-virtual {v0}, Lrp/m;->V()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    const-string p1, "AdaptiveRendering fullscreen object not loaded"

    .line 32
    .line 33
    invoke-static {p1}, Lfr/a;->i(Ljava/lang/String;)Lfr/a;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-interface {p2, p1}, Lxq/c;->onAdShowFailed(Lfr/a;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    invoke-virtual {v0}, Lrp/m;->U()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    const-string p1, "AdaptiveRendering fullscreen object already is finished"

    .line 48
    .line 49
    invoke-static {p1}, Lfr/a;->i(Ljava/lang/String;)Lfr/a;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-interface {p2, p1}, Lxq/c;->onAdShowFailed(Lfr/a;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    if-eqz p3, :cond_3

    .line 58
    .line 59
    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getApplicationContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    const-string v1, "contextProvider.applicationContext"

    .line 64
    .line 65
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3, p2}, Lio/bidmachine/RendererConfiguration;->getWatermarkDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    if-eqz p2, :cond_3

    .line 73
    .line 74
    invoke-virtual {v0, p2}, Lrp/m;->a0(Landroid/graphics/drawable/Drawable;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getApplicationContext()Landroid/content/Context;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const-string p2, "contextProvider.getApplicationContext()"

    .line 82
    .line 83
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, p1}, Lrp/m;->b0(Landroid/content/Context;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public l(Lio/bidmachine/ContextProvider;Lxq/i;Lxq/j;Lxq/k;Lio/bidmachine/NetworkAdUnit;)V
    .locals 1
    .param p1    # Lio/bidmachine/ContextProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lxq/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lxq/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lxq/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lio/bidmachine/NetworkAdUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    const-string v0, "contextProvider"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "requestParams"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p3, "unifiedMediationParams"

    .line 17
    .line 18
    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string p3, "networkAdUnit"

    .line 22
    .line 23
    invoke-static {p5, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getApplicationContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string p3, "contextProvider.getApplicationContext()"

    .line 31
    .line 32
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance p3, Lbm/u;

    .line 36
    .line 37
    invoke-direct {p3, p4}, Lbm/u;-><init>(Lxq/k;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3, p2}, Lbm/u;->X(Lxq/c;)Z

    .line 41
    .line 42
    .line 43
    move-result p4

    .line 44
    if-nez p4, :cond_0

    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    invoke-virtual {p3}, Lbm/u;->W()Lrq/b;

    .line 48
    .line 49
    .line 50
    move-result-object p4

    .line 51
    if-eqz p4, :cond_1

    .line 52
    .line 53
    new-instance p4, Lrp/m;

    .line 54
    .line 55
    invoke-virtual {p3}, Lbm/u;->W()Lrq/b;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    invoke-direct {p4, p1, p3}, Lrp/m;-><init>(Landroid/content/Context;Lrq/b;)V

    .line 60
    .line 61
    .line 62
    new-instance p3, Lbm/d;

    .line 63
    .line 64
    invoke-direct {p3, p1, p2}, Lbm/d;-><init>(Landroid/content/Context;Lxq/i;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p4, p3}, Lrp/m;->Z(Lrp/n;)V

    .line 68
    .line 69
    .line 70
    iput-object p4, p0, Lbm/c;->a:Lrp/m;

    .line 71
    .line 72
    invoke-virtual {p4}, Lrp/m;->W()V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 77
    .line 78
    const-string p2, "Required value was null."

    .line 79
    .line 80
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p1
.end method
