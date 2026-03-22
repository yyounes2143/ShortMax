.class public abstract Lio/bidmachine/ads/networks/gam_dynamic/x;
.super Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;
.source "InternalFullscreenAd.java"


# direct methods
.method public constructor <init>(Lhm/s;Lhm/u;Lio/bidmachine/AdsFormat;Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lhm/k;)V
    .locals 0
    .param p1    # Lhm/s;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lhm/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/AdsFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lhm/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct/range {p0 .. p5}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;-><init>(Lhm/s;Lhm/u;Lio/bidmachine/AdsFormat;Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lhm/k;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic K(Lio/bidmachine/ads/networks/gam_dynamic/x;Landroid/app/Activity;Lhm/o;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/ads/networks/gam_dynamic/x;->L(Landroid/app/Activity;Lhm/o;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic L(Landroid/app/Activity;Lhm/o;)V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;->Showing:Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->J(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd$Status;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/ads/networks/gam_dynamic/x;->N(Landroid/app/Activity;Lhm/o;)V
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
    const-string v0, "Exception showing InternalAd object"

    .line 15
    .line 16
    invoke-static {v0, p1}, Lfr/a;->l(Ljava/lang/String;Ljava/lang/Throwable;)Lfr/a;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p2, p1}, Lhm/m;->onAdShowFailed(Lfr/a;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method


# virtual methods
.method public final M(Landroid/app/Activity;Lhm/o;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lhm/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lhm/n;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lhm/n;-><init>(Lio/bidmachine/ads/networks/gam_dynamic/x;Landroid/app/Activity;Lhm/o;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected abstract N(Landroid/app/Activity;Lhm/o;)V
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lhm/o;
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
