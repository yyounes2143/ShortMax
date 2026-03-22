.class public interface abstract Lcom/ss/ttvideoengine/TTVideoEnginePreloadHLSChooseUrlCallback;
.super Ljava/lang/Object;
.source "TTVideoEnginePreloadHLSChooseUrlCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/TTVideoEnginePreloadHLSChooseUrlCallback$TTVideoEnginePreloadUrlInfo;
    }
.end annotation


# virtual methods
.method public abstract chooseUrls(Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/TTVideoEnginePreloadHLSChooseUrlCallback$TTVideoEnginePreloadUrlInfo;",
            ">;"
        }
    .end annotation
.end method
