.class Lio/bidmachine/ads/networks/gam_dynamic/q0$a;
.super Ljava/lang/Object;
.source "WaterfallLoader.java"

# interfaces
.implements Lhm/k;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/gam_dynamic/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/ads/networks/gam_dynamic/q0;


# direct methods
.method constructor <init>(Lio/bidmachine/ads/networks/gam_dynamic/q0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0$a;->a:Lio/bidmachine/ads/networks/gam_dynamic/q0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V
    .locals 2
    .param p1    # Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0$a;->a:Lio/bidmachine/ads/networks/gam_dynamic/q0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/q0;->y(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0$a;->a:Lio/bidmachine/ads/networks/gam_dynamic/q0;

    .line 7
    .line 8
    sget-object v1, Lio/bidmachine/TrackEventType;->AdUnitShown:Lio/bidmachine/TrackEventType;

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Lio/bidmachine/ads/networks/gam_dynamic/q0;->A(Lio/bidmachine/TrackEventType;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public b(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V
    .locals 2
    .param p1    # Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0$a;->a:Lio/bidmachine/ads/networks/gam_dynamic/q0;

    .line 2
    .line 3
    sget-object v1, Lio/bidmachine/TrackEventType;->AdUnitExpired:Lio/bidmachine/TrackEventType;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Lio/bidmachine/ads/networks/gam_dynamic/q0;->A(Lio/bidmachine/TrackEventType;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public c(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Z)V
    .locals 0
    .param p1    # Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0$a;->a:Lio/bidmachine/ads/networks/gam_dynamic/q0;

    .line 4
    .line 5
    invoke-virtual {p2, p1}, Lio/bidmachine/ads/networks/gam_dynamic/q0;->y(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p2, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0$a;->a:Lio/bidmachine/ads/networks/gam_dynamic/q0;

    .line 10
    .line 11
    invoke-static {p2}, Lio/bidmachine/ads/networks/gam_dynamic/q0;->h(Lio/bidmachine/ads/networks/gam_dynamic/q0;)Lio/bidmachine/ads/networks/gam_dynamic/g;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p2, p1}, Lio/bidmachine/ads/networks/gam_dynamic/g;->A(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public d(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V
    .locals 2
    .param p1    # Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0$a;->a:Lio/bidmachine/ads/networks/gam_dynamic/q0;

    .line 2
    .line 3
    sget-object v1, Lio/bidmachine/TrackEventType;->AdUnitPaidEvent:Lio/bidmachine/TrackEventType;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Lio/bidmachine/ads/networks/gam_dynamic/q0;->A(Lio/bidmachine/TrackEventType;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
