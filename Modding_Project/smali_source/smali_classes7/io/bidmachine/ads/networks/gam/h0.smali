.class public abstract Lio/bidmachine/ads/networks/gam/h0;
.super Lio/bidmachine/ads/networks/gam/InternalGAMAd;
.source "InternalGAMFullscreenAd.java"


# direct methods
.method public constructor <init>(Lio/bidmachine/ads/networks/gam/j;Lio/bidmachine/AdsFormat;Lio/bidmachine/ads/networks/gam/t;)V
    .locals 0
    .param p1    # Lio/bidmachine/ads/networks/gam/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/AdsFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/ads/networks/gam/t;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;-><init>(Lio/bidmachine/ads/networks/gam/j;Lio/bidmachine/AdsFormat;Lio/bidmachine/ads/networks/gam/t;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic H(Lio/bidmachine/ads/networks/gam/h0;Landroid/app/Activity;Lio/bidmachine/ads/networks/gam/i0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/ads/networks/gam/h0;->I(Landroid/app/Activity;Lio/bidmachine/ads/networks/gam/i0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic I(Landroid/app/Activity;Lio/bidmachine/ads/networks/gam/i0;)V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;->Showing:Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lio/bidmachine/ads/networks/gam/InternalGAMAd;->G(Lio/bidmachine/ads/networks/gam/InternalGAMAd$Status;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/ads/networks/gam/h0;->K(Landroid/app/Activity;Lio/bidmachine/ads/networks/gam/i0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    invoke-static {p1}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "Exception showing InternalGAM object"

    .line 15
    .line 16
    invoke-static {v0, p1}, Lfr/a;->l(Ljava/lang/String;Ljava/lang/Throwable;)Lfr/a;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p2, p1}, Lio/bidmachine/ads/networks/gam/d0;->onAdShowFailed(Lfr/a;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method


# virtual methods
.method public final J(Landroid/app/Activity;Lio/bidmachine/ads/networks/gam/i0;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/ads/networks/gam/i0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/bidmachine/ads/networks/gam/g0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lio/bidmachine/ads/networks/gam/g0;-><init>(Lio/bidmachine/ads/networks/gam/h0;Landroid/app/Activity;Lio/bidmachine/ads/networks/gam/i0;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected abstract K(Landroid/app/Activity;Lio/bidmachine/ads/networks/gam/i0;)V
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/ads/networks/gam/i0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
