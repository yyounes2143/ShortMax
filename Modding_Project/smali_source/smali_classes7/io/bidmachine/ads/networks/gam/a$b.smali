.class final Lio/bidmachine/ads/networks/gam/a$b;
.super Lio/bidmachine/ads/networks/gam/b;
.source "GAMBanner.java"

# interfaces
.implements Lio/bidmachine/ads/networks/gam/f0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/gam/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/ads/networks/gam/b<",
        "Lio/bidmachine/ads/networks/gam/e0;",
        "Lxq/f;",
        ">;",
        "Lio/bidmachine/ads/networks/gam/f0;"
    }
.end annotation


# instance fields
.field private final b:Lio/bidmachine/ads/networks/gam/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lio/bidmachine/ads/networks/gam/a;Lxq/f;)V
    .locals 0
    .param p1    # Lio/bidmachine/ads/networks/gam/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lxq/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p2}, Lio/bidmachine/ads/networks/gam/b;-><init>(Lxq/c;)V

    .line 3
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam/a$b;->b:Lio/bidmachine/ads/networks/gam/a;

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/ads/networks/gam/a;Lxq/f;Lio/bidmachine/ads/networks/gam/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/ads/networks/gam/a$b;-><init>(Lio/bidmachine/ads/networks/gam/a;Lxq/f;)V

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
    check-cast p1, Lio/bidmachine/ads/networks/gam/e0;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/ads/networks/gam/a$b;->d(Lio/bidmachine/ads/networks/gam/e0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d(Lio/bidmachine/ads/networks/gam/e0;)V
    .locals 1
    .param p1    # Lio/bidmachine/ads/networks/gam/e0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam/a$b;->b:Lio/bidmachine/ads/networks/gam/a;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lio/bidmachine/ads/networks/gam/a;->j(Lio/bidmachine/ads/networks/gam/a;Lio/bidmachine/ads/networks/gam/e0;)Lio/bidmachine/ads/networks/gam/e0;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/gam/b;->c()Lxq/c;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lxq/f;

    .line 11
    .line 12
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/gam/e0;->H()Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {v0, p1}, Lxq/f;->onAdLoaded(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
