.class public interface abstract Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherListener;
.super Ljava/lang/Object;
.source "MDLFetcherListener.java"


# virtual methods
.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getFallbackApi()Ljava/lang/String;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getOldVideoModel()Lcom/ss/ttvideoengine/model/VideoModel;
.end method

.method public abstract onCompletion(Lcom/ss/ttvideoengine/model/VideoModel;ZLjava/lang/String;)V
.end method

.method public abstract onError(Lcom/ss/ttvideoengine/utils/Error;Ljava/lang/String;)V
.end method

.method public abstract onLog(Ljava/lang/String;)V
.end method

.method public abstract onRetry(Lcom/ss/ttvideoengine/utils/Error;)V
.end method
