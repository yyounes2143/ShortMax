.class public interface abstract Lio/bidmachine/InternalNetworkInitializationCallback;
.super Ljava/lang/Object;
.source "InternalNetworkInitializationCallback.java"


# virtual methods
.method public abstract onFail(Lio/bidmachine/NetworkAdapter;Ljava/lang/String;)V
    .param p1    # Lio/bidmachine/NetworkAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onSuccess(Lio/bidmachine/NetworkAdapter;)V
    .param p1    # Lio/bidmachine/NetworkAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
