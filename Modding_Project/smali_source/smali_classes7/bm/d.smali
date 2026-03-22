.class public final Lbm/d;
.super Ljava/lang/Object;
.source "AdaptiveRenderingFullscreenAdListener.kt"

# interfaces
.implements Lrp/n;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lxq/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lxq/i;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lxq/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lbm/d;->a:Lxq/i;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string p2, "context.applicationContext"

    .line 21
    .line 22
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lbm/d;->b:Landroid/content/Context;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lrp/m;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lbm/d;->s(Lrp/m;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lrp/m;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lbm/d;->n(Lrp/m;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lrp/m;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lbm/d;->m(Lrp/m;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lrp/m;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lbm/d;->k(Lrp/m;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic e(Ljava/lang/Object;Lio/bidmachine/rendering/model/PrivacySheetParams;)V
    .locals 0

    .line 1
    check-cast p1, Lrp/m;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lbm/d;->u(Lrp/m;Lio/bidmachine/rendering/model/PrivacySheetParams;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic f(Ljava/lang/Object;Lrq/n;)V
    .locals 0

    .line 1
    check-cast p1, Lrp/m;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lbm/d;->t(Lrp/m;Lrq/n;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic g(Ljava/lang/Object;Lrq/t;)V
    .locals 0

    .line 1
    check-cast p1, Lrp/m;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lbm/d;->p(Lrp/m;Lrq/t;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic h(Ljava/lang/Object;Lrq/t;)V
    .locals 0

    .line 1
    check-cast p1, Lrp/m;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lbm/d;->o(Lrp/m;Lrq/t;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic i(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lrp/m;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lbm/d;->l(Lrp/m;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic j(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lrp/m;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lbm/d;->q(Lrp/m;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k(Lrp/m;)V
    .locals 1
    .param p1    # Lrp/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "fullScreenAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l(Lrp/m;)V
    .locals 1
    .param p1    # Lrp/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "fullScreenAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lbm/d;->a:Lxq/i;

    .line 7
    .line 8
    invoke-interface {p1}, Lxq/c;->onAdClicked()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public m(Lrp/m;)V
    .locals 1
    .param p1    # Lrp/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "fullScreenAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public n(Lrp/m;)V
    .locals 1
    .param p1    # Lrp/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "fullScreenAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lbm/d;->a:Lxq/i;

    .line 7
    .line 8
    invoke-interface {p1}, Lxq/c;->onAdExpired()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public o(Lrp/m;Lrq/t;)V
    .locals 2
    .param p1    # Lrp/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrq/t;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "fullScreenAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "error"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lbm/d;->a:Lxq/i;

    .line 12
    .line 13
    sget-object v0, Lfr/a;->q:Lfr/a;

    .line 14
    .line 15
    const-string v1, "NoFill"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p2, v0}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingAdapterKt;->a(Lrq/t;Lfr/a;)Lfr/a;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-interface {p1, p2}, Lxq/c;->onAdLoadFailed(Lfr/a;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lrp/m;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lbm/d;->r(Lrp/m;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public p(Lrp/m;Lrq/t;)V
    .locals 2
    .param p1    # Lrp/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrq/t;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "fullScreenAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "error"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lbm/d;->a:Lxq/i;

    .line 12
    .line 13
    sget-object v0, Lfr/a;->r:Lfr/a;

    .line 14
    .line 15
    const-string v1, "InternalUnknownError"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p2, v0}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingAdapterKt;->a(Lrq/t;Lfr/a;)Lfr/a;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-interface {p1, p2}, Lxq/c;->onAdShowFailed(Lfr/a;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public q(Lrp/m;)V
    .locals 1
    .param p1    # Lrp/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "fullScreenAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean p1, p0, Lbm/d;->c:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lbm/d;->a:Lxq/i;

    .line 11
    .line 12
    invoke-interface {p1}, Lxq/i;->b()V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lbm/d;->a:Lxq/i;

    .line 16
    .line 17
    invoke-interface {p1}, Lxq/i;->onAdClosed()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public r(Lrp/m;)V
    .locals 1
    .param p1    # Lrp/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "fullScreenAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lbm/d;->a:Lxq/i;

    .line 7
    .line 8
    invoke-interface {p1}, Lxq/i;->onAdLoaded()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public s(Lrp/m;)V
    .locals 1
    .param p1    # Lrp/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "fullScreenAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lbm/d;->c:Z

    .line 8
    .line 9
    iget-object p1, p0, Lbm/d;->a:Lxq/i;

    .line 10
    .line 11
    invoke-interface {p1}, Lxq/c;->onAdShown()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public t(Lrp/m;Lrq/n;)V
    .locals 1
    .param p1    # Lrp/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrq/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "fullScreenAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "brokenCreativeEvent"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lbm/d;->a:Lxq/i;

    .line 12
    .line 13
    invoke-static {p2}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingAdapterKt;->b(Lrq/n;)Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-interface {p1, p2}, Lxq/c;->onBrokenCreativeEvent(Ljava/util/Map;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public u(Lrp/m;Lio/bidmachine/rendering/model/PrivacySheetParams;)V
    .locals 2
    .param p1    # Lrp/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/rendering/model/PrivacySheetParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "fullScreenAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "privacySheetParams"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lio/bidmachine/rendering/view/PrivacySheetDialog;->c:Lio/bidmachine/rendering/view/PrivacySheetDialog$d;

    .line 12
    .line 13
    iget-object v0, p0, Lbm/d;->b:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v0}, Lio/bidmachine/core/g;->n(Landroid/content/Context;)Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "findDialogContext(applicationContext)"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0, p2}, Lio/bidmachine/rendering/view/PrivacySheetDialog$d;->a(Landroid/content/Context;Lio/bidmachine/rendering/model/PrivacySheetParams;)Lio/bidmachine/rendering/view/PrivacySheetDialog;

    .line 25
    .line 26
    .line 27
    return-void
.end method
