.class Lio/bidmachine/ads/networks/gam/a;
.super Lxq/e;
.source "GAMBanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/gam/a$b;
    }
.end annotation


# instance fields
.field private final a:Lio/bidmachine/ads/networks/gam/o;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private b:Lio/bidmachine/ads/networks/gam/f0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Lio/bidmachine/ads/networks/gam/e0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method protected constructor <init>(Lio/bidmachine/ads/networks/gam/o;)V
    .locals 0
    .param p1    # Lio/bidmachine/ads/networks/gam/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lxq/e;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/a;->a:Lio/bidmachine/ads/networks/gam/o;

    .line 5
    .line 6
    return-void
.end method

.method static synthetic j(Lio/bidmachine/ads/networks/gam/a;Lio/bidmachine/ads/networks/gam/e0;)Lio/bidmachine/ads/networks/gam/e0;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/a;->c:Lio/bidmachine/ads/networks/gam/e0;

    .line 2
    .line 3
    return-object p1
.end method


# virtual methods
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
    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/ads/networks/gam/a;->k(Lio/bidmachine/ContextProvider;Lxq/f;Lxq/g;Lxq/k;Lio/bidmachine/NetworkAdUnit;)V

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
    iput-object v0, p0, Lio/bidmachine/ads/networks/gam/a;->b:Lio/bidmachine/ads/networks/gam/f0;

    .line 3
    .line 4
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam/a;->c:Lio/bidmachine/ads/networks/gam/e0;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->h()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lio/bidmachine/ads/networks/gam/a;->c:Lio/bidmachine/ads/networks/gam/e0;

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
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/a;->c:Lio/bidmachine/ads/networks/gam/e0;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->D()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public k(Lio/bidmachine/ContextProvider;Lxq/f;Lxq/g;Lxq/k;Lio/bidmachine/NetworkAdUnit;)V
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
    new-instance p1, Lio/bidmachine/ads/networks/gam/p;

    .line 2
    .line 3
    invoke-direct {p1, p4}, Lio/bidmachine/ads/networks/gam/p;-><init>(Lxq/k;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p2}, Lio/bidmachine/ads/networks/gam/p;->a(Lxq/c;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object p1, p0, Lio/bidmachine/ads/networks/gam/a;->a:Lio/bidmachine/ads/networks/gam/o;

    .line 14
    .line 15
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/gam/o;->i()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    sget-object p1, Lio/bidmachine/core/VisibilitySource;->BidMachine:Lio/bidmachine/core/VisibilitySource;

    .line 22
    .line 23
    invoke-interface {p2, p1}, Lxq/c;->setVisibilitySource(Lio/bidmachine/core/VisibilitySource;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    new-instance p1, Lio/bidmachine/ads/networks/gam/a$b;

    .line 27
    .line 28
    const/4 p3, 0x0

    .line 29
    invoke-direct {p1, p0, p2, p3}, Lio/bidmachine/ads/networks/gam/a$b;-><init>(Lio/bidmachine/ads/networks/gam/a;Lxq/f;Lio/bidmachine/ads/networks/gam/a$a;)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/a;->b:Lio/bidmachine/ads/networks/gam/f0;

    .line 33
    .line 34
    iget-object p2, p0, Lio/bidmachine/ads/networks/gam/a;->a:Lio/bidmachine/ads/networks/gam/o;

    .line 35
    .line 36
    invoke-virtual {p2, p5, p1}, Lio/bidmachine/ads/networks/gam/o;->m(Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/ads/networks/gam/f0;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
