.class Lio/bidmachine/ads/networks/gam_dynamic/q0$b;
.super Ljava/lang/Object;
.source "WaterfallLoader.java"

# interfaces
.implements Lhm/q;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/gam_dynamic/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/ads/networks/gam_dynamic/q0;


# direct methods
.method constructor <init>(Lio/bidmachine/ads/networks/gam_dynamic/q0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0$b;->a:Lio/bidmachine/ads/networks/gam_dynamic/q0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Lhm/l;)V
    .locals 4
    .param p1    # Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lhm/l;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0$b;->a:Lio/bidmachine/ads/networks/gam_dynamic/q0;

    .line 2
    .line 3
    sget-object v1, Lio/bidmachine/TrackEventType;->AdUnitLoadFinish:Lio/bidmachine/TrackEventType;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Lio/bidmachine/ads/networks/gam_dynamic/q0;->A(Lio/bidmachine/TrackEventType;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0$b;->a:Lio/bidmachine/ads/networks/gam_dynamic/q0;

    .line 9
    .line 10
    sget-object v1, Lio/bidmachine/TrackEventType;->AdUnitWin:Lio/bidmachine/TrackEventType;

    .line 11
    .line 12
    invoke-virtual {v0, v1, p1}, Lio/bidmachine/ads/networks/gam_dynamic/q0;->A(Lio/bidmachine/TrackEventType;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0$b;->a:Lio/bidmachine/ads/networks/gam_dynamic/q0;

    .line 16
    .line 17
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->m()Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    sget-object v2, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;->STATUS_SUCCESS:Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-virtual {v0, v1, v2, p2, v3}, Lio/bidmachine/ads/networks/gam_dynamic/q0;->j(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;Lhm/l;Lfr/a;)V

    .line 25
    .line 26
    .line 27
    iget-object p2, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0$b;->a:Lio/bidmachine/ads/networks/gam_dynamic/q0;

    .line 28
    .line 29
    invoke-static {p2}, Lio/bidmachine/ads/networks/gam_dynamic/q0;->h(Lio/bidmachine/ads/networks/gam_dynamic/q0;)Lio/bidmachine/ads/networks/gam_dynamic/g;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    iget-object v0, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0$b;->a:Lio/bidmachine/ads/networks/gam_dynamic/q0;

    .line 34
    .line 35
    iget v0, v0, Lio/bidmachine/ads/networks/gam_dynamic/q0;->m:I

    .line 36
    .line 37
    invoke-virtual {p2, p1, v0}, Lio/bidmachine/ads/networks/gam_dynamic/g;->y(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;I)Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    iget-object p2, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0$b;->a:Lio/bidmachine/ads/networks/gam_dynamic/q0;

    .line 44
    .line 45
    sget-object v0, Lio/bidmachine/TrackEventType;->AdUnitCheapestDequeued:Lio/bidmachine/TrackEventType;

    .line 46
    .line 47
    invoke-virtual {p2, v0, p1}, Lio/bidmachine/ads/networks/gam_dynamic/q0;->A(Lio/bidmachine/TrackEventType;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->i()V

    .line 51
    .line 52
    .line 53
    :cond_0
    iget-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0$b;->a:Lio/bidmachine/ads/networks/gam_dynamic/q0;

    .line 54
    .line 55
    invoke-static {p1}, Lio/bidmachine/ads/networks/gam_dynamic/q0;->i(Lio/bidmachine/ads/networks/gam_dynamic/q0;)Lio/bidmachine/ads/networks/gam_dynamic/q0$c;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-interface {p1}, Lio/bidmachine/ads/networks/gam_dynamic/q0$c;->onAdLoaded()V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0$b;->a:Lio/bidmachine/ads/networks/gam_dynamic/q0;

    .line 63
    .line 64
    invoke-virtual {p1, v3}, Lio/bidmachine/ads/networks/gam_dynamic/q0;->w(Ljava/lang/Long;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public b(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Lfr/a;)V
    .locals 4
    .param p1    # Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lfr/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->m()Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0$b;->a:Lio/bidmachine/ads/networks/gam_dynamic/q0;

    .line 6
    .line 7
    sget-object v2, Lio/bidmachine/TrackEventType;->AdUnitLoadFinish:Lio/bidmachine/TrackEventType;

    .line 8
    .line 9
    invoke-virtual {v1, v2, v0, p1, p2}, Lio/bidmachine/ads/networks/gam_dynamic/q0;->B(Lio/bidmachine/TrackEventType;Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;Lfr/a;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0$b;->a:Lio/bidmachine/ads/networks/gam_dynamic/q0;

    .line 13
    .line 14
    sget-object v2, Lio/bidmachine/TrackEventType;->AdUnitLoss:Lio/bidmachine/TrackEventType;

    .line 15
    .line 16
    invoke-virtual {v1, v2, p1}, Lio/bidmachine/ads/networks/gam_dynamic/q0;->A(Lio/bidmachine/TrackEventType;Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0$b;->a:Lio/bidmachine/ads/networks/gam_dynamic/q0;

    .line 20
    .line 21
    sget-object v2, Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;->STATUS_ERROR:Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-virtual {v1, v0, v2, v3, p2}, Lio/bidmachine/ads/networks/gam_dynamic/q0;->j(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lio/bidmachine/protobuf/Waterfall$Result$AdUnit$Status;Lhm/l;Lfr/a;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;->i()V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lio/bidmachine/ads/networks/gam_dynamic/q0$b;->a:Lio/bidmachine/ads/networks/gam_dynamic/q0;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lio/bidmachine/ads/networks/gam_dynamic/q0;->m(Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;)J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p1, p2}, Lio/bidmachine/ads/networks/gam_dynamic/q0;->w(Ljava/lang/Long;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
