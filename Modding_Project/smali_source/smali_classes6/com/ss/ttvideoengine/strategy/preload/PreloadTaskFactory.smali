.class public interface abstract Lcom/ss/ttvideoengine/strategy/preload/PreloadTaskFactory;
.super Ljava/lang/Object;
.source "PreloadTaskFactory.java"


# virtual methods
.method public createUrlItem(Lcom/ss/ttvideoengine/source/DirectUrlSource;J)Lcom/ss/ttvideoengine/PreloaderURLItem;
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/PreloaderURLItem;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Lcom/ss/ttvideoengine/PreloaderURLItem;-><init>(Lcom/ss/ttvideoengine/source/DirectUrlSource;J)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public createVidItem(Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;J)Lcom/ss/ttvideoengine/PreloaderVidItem;
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/PreloaderVidItem;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Lcom/ss/ttvideoengine/PreloaderVidItem;-><init>(Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;J)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public createVideoModelItem(Lcom/ss/ttvideoengine/source/VideoModelSource;J)Lcom/ss/ttvideoengine/PreloaderVideoModelItem;
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Lcom/ss/ttvideoengine/PreloaderVideoModelItem;-><init>(Lcom/ss/ttvideoengine/source/VideoModelSource;J)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
