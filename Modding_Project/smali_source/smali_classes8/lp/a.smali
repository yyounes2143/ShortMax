.class public interface abstract Llp/a;
.super Ljava/lang/Object;
.source "AdObject.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdObjectParamsType:",
        "Llp/b;",
        "UnifiedAdRequestParamsType::",
        "Lxq/d;",
        "UnifiedAdCallbackType::",
        "Lxq/c;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getCustomParams()Ljava/util/Map;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getParams()Llp/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAdObjectParamsType;"
        }
    .end annotation
.end method

.method public abstract hide()V
.end method

.method public abstract load(Lio/bidmachine/ContextProvider;Lxq/d;Lio/bidmachine/NetworkAdUnit;)V
    .param p1    # Lio/bidmachine/ContextProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lxq/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/NetworkAdUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ContextProvider;",
            "TUnifiedAdRequestParamsType;",
            "Lio/bidmachine/NetworkAdUnit;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract onClicked()V
.end method

.method public abstract onClosed(Z)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onExpired()V
.end method

.method public abstract onFinished()V
.end method

.method public abstract onImpression()V
.end method

.method public abstract onShowFailed()V
.end method

.method public abstract onShown()V
.end method
