.class final Lio/bidmachine/ads/networks/gam/d$b;
.super Lio/bidmachine/ads/networks/gam/c;
.source "GAMInterstitial.java"

# interfaces
.implements Lio/bidmachine/ads/networks/gam/k0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/gam/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/ads/networks/gam/c<",
        "Lio/bidmachine/ads/networks/gam/j0;",
        ">;",
        "Lio/bidmachine/ads/networks/gam/k0;"
    }
.end annotation


# instance fields
.field private final b:Lio/bidmachine/ads/networks/gam/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lxq/i;Lio/bidmachine/ads/networks/gam/d;)V
    .locals 0
    .param p1    # Lxq/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/ads/networks/gam/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/ads/networks/gam/c;-><init>(Lxq/i;)V

    .line 3
    iput-object p2, p0, Lio/bidmachine/ads/networks/gam/d$b;->b:Lio/bidmachine/ads/networks/gam/d;

    return-void
.end method

.method synthetic constructor <init>(Lxq/i;Lio/bidmachine/ads/networks/gam/d;Lio/bidmachine/ads/networks/gam/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/ads/networks/gam/d$b;-><init>(Lxq/i;Lio/bidmachine/ads/networks/gam/d;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V
    .locals 0
    .param p1    # Lio/bidmachine/ads/networks/gam/InternalGAMAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lio/bidmachine/ads/networks/gam/j0;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/gam/d$b;->e(Lio/bidmachine/ads/networks/gam/j0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(Lio/bidmachine/ads/networks/gam/j0;)V
    .locals 1
    .param p1    # Lio/bidmachine/ads/networks/gam/j0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/d$b;->b:Lio/bidmachine/ads/networks/gam/d;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lio/bidmachine/ads/networks/gam/d;->l(Lio/bidmachine/ads/networks/gam/d;Lio/bidmachine/ads/networks/gam/j0;)Lio/bidmachine/ads/networks/gam/j0;

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lio/bidmachine/ads/networks/gam/c;->d(Lio/bidmachine/ads/networks/gam/h0;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
