.class public Lio/bidmachine/BidMachineTrackingObject;
.super Lwq/h;
.source "BidMachineTrackingObject.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/j2;->e()Lio/bidmachine/j2;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/j2;->r()Lwq/f;

    move-result-object v0

    invoke-direct {p0, v0}, Lwq/h;-><init>(Lwq/f;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-static {}, Lio/bidmachine/j2;->e()Lio/bidmachine/j2;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/j2;->r()Lwq/f;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lwq/h;-><init>(Ljava/lang/Object;Lwq/f;)V

    return-void
.end method


# virtual methods
.method public eventFinish(Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/u;Lfr/a;)V
    .locals 6
    .param p1    # Lio/bidmachine/TrackEventType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/AdsType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/u;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lfr/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/BidMachineTrackingObject;->eventFinish(Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/u;Lfr/a;Ljava/util/Map;)V

    return-void
.end method

.method public eventFinish(Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/u;Lfr/a;Ljava/util/Map;)V
    .locals 3
    .param p1    # Lio/bidmachine/TrackEventType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/AdsType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/u;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lfr/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/TrackEventType;",
            "Lio/bidmachine/AdsType;",
            "Lio/bidmachine/u;",
            "Lfr/a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 2
    new-instance v0, Lwq/a;

    invoke-direct {v0}, Lwq/a;-><init>()V

    .line 3
    invoke-virtual {p3}, Lio/bidmachine/u;->D()Llp/c;

    move-result-object v1

    invoke-interface {v1}, Llp/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lwq/a;->h(Ljava/lang/String;)Lwq/a;

    move-result-object v0

    .line 4
    invoke-virtual {p3}, Lio/bidmachine/u;->F()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lwq/a;->i(Ljava/lang/Double;)Lwq/a;

    move-result-object v0

    if-eqz p5, :cond_0

    .line 5
    invoke-virtual {v0, p5}, Lwq/a;->a(Ljava/util/Map;)Lwq/a;

    .line 6
    :cond_0
    invoke-virtual {p3}, Lio/bidmachine/u;->A()Llp/a;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 7
    invoke-interface {p3}, Llp/a;->getCustomParams()Ljava/util/Map;

    move-result-object p3

    invoke-virtual {v0, p3}, Lwq/a;->a(Ljava/util/Map;)Lwq/a;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 8
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2, v0, p4}, Lwq/h;->eventFinish(Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lwq/a;Lfr/a;)V

    return-void
.end method

.method public bridge synthetic eventStart(Lio/bidmachine/TrackEventType;)V
    .locals 0
    .param p1    # Lio/bidmachine/TrackEventType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lwq/k;->eventStart(Lio/bidmachine/TrackEventType;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
