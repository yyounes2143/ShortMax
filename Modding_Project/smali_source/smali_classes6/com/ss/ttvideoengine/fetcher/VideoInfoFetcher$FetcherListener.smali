.class public interface abstract Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher$FetcherListener;
.super Ljava/lang/Object;
.source "VideoInfoFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FetcherListener"
.end annotation


# virtual methods
.method public abstract onCompletion(Lcom/ss/ttvideoengine/model/VideoModel;Lcom/ss/ttvideoengine/utils/Error;)V
.end method

.method public abstract onLog(Ljava/lang/String;)V
.end method

.method public abstract onRetry(Lcom/ss/ttvideoengine/utils/Error;)V
.end method

.method public abstract onStatusException(ILjava/lang/String;)V
.end method
