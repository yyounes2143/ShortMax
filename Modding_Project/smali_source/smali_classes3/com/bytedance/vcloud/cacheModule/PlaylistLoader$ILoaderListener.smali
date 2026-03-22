.class public interface abstract Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$ILoaderListener;
.super Ljava/lang/Object;
.source "PlaylistLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/vcloud/cacheModule/PlaylistLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ILoaderListener"
.end annotation


# virtual methods
.method public abstract onCancel(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onCompleted(Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
.end method

.method public abstract onError(Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
.end method

.method public abstract onStart(Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
.end method
