.class public final Lbm/a;
.super Lxq/e;
.source "AdaptiveRenderingBannerAd.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private a:Lio/bidmachine/rendering/ad/view/AdView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lxq/e;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lio/bidmachine/ContextProvider;Lxq/c;Lxq/d;Lxq/k;Lio/bidmachine/NetworkAdUnit;)V
    .locals 0

    .line 1
    check-cast p2, Lxq/f;

    .line 2
    .line 3
    check-cast p3, Lxq/g;

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p5}, Lbm/a;->j(Lio/bidmachine/ContextProvider;Lxq/f;Lxq/g;Lxq/k;Lio/bidmachine/NetworkAdUnit;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lbm/a;->a:Lio/bidmachine/rendering/ad/view/AdView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/bidmachine/rendering/ad/view/AdView;->g0()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lbm/a;->a:Lio/bidmachine/rendering/ad/view/AdView;

    .line 10
    .line 11
    return-void
.end method

.method public i(Lio/bidmachine/RendererConfiguration;)V
    .locals 3
    .param p1    # Lio/bidmachine/RendererConfiguration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lxq/p;->i(Lio/bidmachine/RendererConfiguration;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lbm/a;->a:Lio/bidmachine/rendering/ad/view/AdView;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "adView.context"

    .line 16
    .line 17
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v1}, Lio/bidmachine/RendererConfiguration;->getWatermarkDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lio/bidmachine/rendering/ad/view/AdView;->setWatermark(Landroid/graphics/drawable/Drawable;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public j(Lio/bidmachine/ContextProvider;Lxq/f;Lxq/g;Lxq/k;Lio/bidmachine/NetworkAdUnit;)V
    .locals 1
    .param p1    # Lio/bidmachine/ContextProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lxq/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lxq/g;
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
    if-eqz p4, :cond_2

    .line 52
    .line 53
    invoke-virtual {p3}, Lbm/u;->W()Lrq/b;

    .line 54
    .line 55
    .line 56
    move-result-object p4

    .line 57
    invoke-virtual {p4}, Lrq/b;->c()Lio/bidmachine/rendering/model/CacheType;

    .line 58
    .line 59
    .line 60
    move-result-object p4

    .line 61
    sget-object p5, Lio/bidmachine/rendering/model/CacheType;->FullLoad:Lio/bidmachine/rendering/model/CacheType;

    .line 62
    .line 63
    if-ne p4, p5, :cond_1

    .line 64
    .line 65
    sget-object p4, Lio/bidmachine/core/VisibilitySource;->BidMachine:Lio/bidmachine/core/VisibilitySource;

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    sget-object p4, Lio/bidmachine/core/VisibilitySource;->All:Lio/bidmachine/core/VisibilitySource;

    .line 69
    .line 70
    :goto_0
    invoke-interface {p2, p4}, Lxq/c;->setVisibilitySource(Lio/bidmachine/core/VisibilitySource;)V

    .line 71
    .line 72
    .line 73
    new-instance p4, Lio/bidmachine/rendering/ad/view/AdView;

    .line 74
    .line 75
    invoke-virtual {p3}, Lbm/u;->W()Lrq/b;

    .line 76
    .line 77
    .line 78
    move-result-object p3

    .line 79
    invoke-direct {p4, p1, p3}, Lio/bidmachine/rendering/ad/view/AdView;-><init>(Landroid/content/Context;Lrq/b;)V

    .line 80
    .line 81
    .line 82
    new-instance p1, Lbm/b;

    .line 83
    .line 84
    invoke-direct {p1, p2}, Lbm/b;-><init>(Lxq/f;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p4, p1}, Lio/bidmachine/rendering/ad/view/AdView;->setAdViewListener(Lsp/p;)V

    .line 88
    .line 89
    .line 90
    iput-object p4, p0, Lbm/a;->a:Lio/bidmachine/rendering/ad/view/AdView;

    .line 91
    .line 92
    invoke-virtual {p4}, Lio/bidmachine/rendering/ad/view/AdView;->t0()V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 97
    .line 98
    const-string p2, "Required value was null."

    .line 99
    .line 100
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p1
.end method
