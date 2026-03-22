.class Lio/bidmachine/ads/networks/gam_dynamic/k;
.super Lwq/e;
.source "GAMEventTrackerImpl.java"

# interfaces
.implements Lio/bidmachine/ads/networks/gam_dynamic/j;


# direct methods
.method constructor <init>(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)V
    .locals 0
    .param p1    # Lio/bidmachine/protobuf/AdExtension$EventConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lwq/e;-><init>(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public f(Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsFormat;Lwq/a;Lfr/a;)V
    .locals 7
    .param p1    # Lio/bidmachine/TrackEventType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/AdsFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lwq/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lfr/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v1, Lwq/i;

    .line 2
    .line 3
    invoke-direct {v1}, Lwq/i;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-virtual {p2}, Lio/bidmachine/AdsFormat;->getAdsType()Lio/bidmachine/AdsType;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    move-object v0, p0

    .line 12
    move-object v2, p1

    .line 13
    move-object v5, p4

    .line 14
    move-object v6, p3

    .line 15
    invoke-virtual/range {v0 .. v6}, Lwq/e;->a(Lwq/k;Lio/bidmachine/TrackEventType;Lwq/j;Lio/bidmachine/AdsType;Lfr/a;Lwq/a;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
