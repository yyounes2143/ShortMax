.class public interface abstract Lio/bidmachine/AdProcessCallback;
.super Ljava/lang/Object;
.source "AdProcessCallback.java"


# virtual methods
.method public abstract onBrokenCreativeEvent(Ljava/util/Map;)V
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract processClicked()V
.end method

.method public abstract processClosed()V
.end method

.method public abstract processDestroy()V
.end method

.method public abstract processExpired()V
.end method

.method public abstract processFillAd()V
.end method

.method public abstract processFinished()V
.end method

.method public abstract processLoadFail(Lfr/a;)V
    .param p1    # Lfr/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract processLoadSuccess()V
.end method

.method public abstract processShowFail(Lfr/a;)V
    .param p1    # Lfr/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract processShown()V
.end method

.method public abstract processStartVisibilityTracker()V
.end method

.method public abstract processVisibilityTrackerImpression()V
.end method

.method public abstract processVisibilityTrackerShown()Z
.end method

.method public abstract setVisibilitySource(Lio/bidmachine/core/VisibilitySource;)V
    .param p1    # Lio/bidmachine/core/VisibilitySource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
