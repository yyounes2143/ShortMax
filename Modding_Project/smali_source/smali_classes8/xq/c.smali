.class public interface abstract Lxq/c;
.super Ljava/lang/Object;
.source "UnifiedAdCallback.java"


# virtual methods
.method public abstract onAdClicked()V
.end method

.method public abstract onAdExpired()V
.end method

.method public abstract onAdLoadFailed(Lfr/a;)V
    .param p1    # Lfr/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onAdShowFailed(Lfr/a;)V
    .param p1    # Lfr/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onAdShown()V
.end method

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

.method public abstract setVisibilitySource(Lio/bidmachine/core/VisibilitySource;)V
    .param p1    # Lio/bidmachine/core/VisibilitySource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
