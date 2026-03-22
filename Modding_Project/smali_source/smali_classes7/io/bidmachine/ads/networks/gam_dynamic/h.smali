.class Lio/bidmachine/ads/networks/gam_dynamic/h;
.super Lxq/e;
.source "GAMBannerAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/gam_dynamic/h$a;
    }
.end annotation


# instance fields
.field private final a:Lio/bidmachine/ads/networks/gam_dynamic/o;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field b:Lio/bidmachine/ads/networks/gam_dynamic/w;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field c:Lio/bidmachine/ads/networks/gam_dynamic/v;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lio/bidmachine/ads/networks/gam_dynamic/o;)V
    .locals 0
    .param p1    # Lio/bidmachine/ads/networks/gam_dynamic/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lxq/e;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/h;->a:Lio/bidmachine/ads/networks/gam_dynamic/o;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/h;->c:Lio/bidmachine/ads/networks/gam_dynamic/v;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->getCustomParamsMap()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public bridge synthetic b(Lio/bidmachine/ContextProvider;Lxq/c;Lxq/d;Lxq/k;Lio/bidmachine/NetworkAdUnit;)V
    .locals 0
    .param p1    # Lio/bidmachine/ContextProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lxq/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lxq/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lxq/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lio/bidmachine/NetworkAdUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    check-cast p2, Lxq/f;

    .line 2
    .line 3
    check-cast p3, Lxq/g;

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/ads/networks/gam_dynamic/h;->j(Lio/bidmachine/ContextProvider;Lxq/f;Lxq/g;Lxq/k;Lio/bidmachine/NetworkAdUnit;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/h;->b:Lio/bidmachine/ads/networks/gam_dynamic/w;

    .line 3
    .line 4
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/h;->c:Lio/bidmachine/ads/networks/gam_dynamic/v;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->i()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/h;->c:Lio/bidmachine/ads/networks/gam_dynamic/v;

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    invoke-super {p0}, Lxq/b;->h()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/h;->c:Lio/bidmachine/ads/networks/gam_dynamic/v;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->D()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public j(Lio/bidmachine/ContextProvider;Lxq/f;Lxq/g;Lxq/k;Lio/bidmachine/NetworkAdUnit;)V
    .locals 0
    .param p1    # Lio/bidmachine/ContextProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lxq/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lxq/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lxq/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lio/bidmachine/NetworkAdUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    new-instance p1, Lio/bidmachine/ads/networks/gam_dynamic/h$a;

    .line 2
    .line 3
    invoke-direct {p1, p2, p0}, Lio/bidmachine/ads/networks/gam_dynamic/h$a;-><init>(Lxq/f;Lio/bidmachine/ads/networks/gam_dynamic/h;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/h;->b:Lio/bidmachine/ads/networks/gam_dynamic/w;

    .line 7
    .line 8
    iget-object p2, p0, Lio/bidmachine/ads/networks/gam_dynamic/h;->a:Lio/bidmachine/ads/networks/gam_dynamic/o;

    .line 9
    .line 10
    invoke-interface {p2, p5, p1}, Lio/bidmachine/ads/networks/gam_dynamic/o;->g(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam_dynamic/w;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
