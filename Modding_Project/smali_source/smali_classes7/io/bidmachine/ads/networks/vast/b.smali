.class Lio/bidmachine/ads/networks/vast/b;
.super Ljava/lang/Object;
.source "VastFullScreenAdLoadListener.java"

# interfaces
.implements Ltm/e;


# instance fields
.field private final a:Lxq/i;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lxq/i;)V
    .locals 0
    .param p1    # Lxq/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/ads/networks/vast/b;->a:Lxq/i;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/iab/vast/a;Lqm/a;)V
    .locals 1
    .param p1    # Lio/bidmachine/iab/vast/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lqm/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Lqm/a;->c()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x6

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lio/bidmachine/ads/networks/vast/b;->a:Lxq/i;

    .line 9
    .line 10
    invoke-interface {p1}, Lxq/c;->onAdExpired()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Lio/bidmachine/ads/networks/vast/b;->a:Lxq/i;

    .line 15
    .line 16
    invoke-static {p2}, Lfr/d;->a(Lqm/a;)Lfr/a;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-interface {p1, p2}, Lxq/c;->onAdLoadFailed(Lfr/a;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method public b(Lio/bidmachine/iab/vast/a;)V
    .locals 0
    .param p1    # Lio/bidmachine/iab/vast/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lio/bidmachine/ads/networks/vast/b;->a:Lxq/i;

    .line 2
    .line 3
    invoke-interface {p1}, Lxq/i;->onAdLoaded()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
