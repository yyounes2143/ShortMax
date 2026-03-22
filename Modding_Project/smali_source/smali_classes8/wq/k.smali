.class public interface abstract Lwq/k;
.super Ljava/lang/Object;
.source "TrackingObject.java"


# virtual methods
.method public abstract clearEvent(Lio/bidmachine/TrackEventType;)V
    .param p1    # Lio/bidmachine/TrackEventType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract eventFinish(Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lwq/a;Lfr/a;)V
    .param p1    # Lio/bidmachine/TrackEventType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/AdsType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lwq/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lfr/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public eventStart(Lio/bidmachine/TrackEventType;)V
    .locals 1
    .param p1    # Lio/bidmachine/TrackEventType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, p1, v0}, Lwq/k;->eventStart(Lio/bidmachine/TrackEventType;Lwq/j;)V

    return-void
.end method

.method public abstract eventStart(Lio/bidmachine/TrackEventType;Lwq/j;)V
    .param p1    # Lio/bidmachine/TrackEventType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lwq/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract getEventConfiguration()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getTrackingKey()Ljava/lang/Object;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getTrackingUrls(Lio/bidmachine/TrackEventType;)Ljava/util/List;
    .param p1    # Lio/bidmachine/TrackEventType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/TrackEventType;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
