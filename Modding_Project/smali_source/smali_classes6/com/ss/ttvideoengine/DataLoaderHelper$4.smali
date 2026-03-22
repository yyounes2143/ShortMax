.class Lcom/ss/ttvideoengine/DataLoaderHelper$4;
.super Ljava/lang/Object;
.source "DataLoaderHelper.java"

# interfaces
.implements Lcom/ss/mediakit/medialoader/AVMDLCopyOperationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/DataLoaderHelper;->copyCache(Lcom/ss/ttvideoengine/cache/CopyCacheItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttvideoengine/DataLoaderHelper;

.field final synthetic val$parameters:Lcom/ss/ttvideoengine/cache/CopyCacheItem;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/DataLoaderHelper;Lcom/ss/ttvideoengine/cache/CopyCacheItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$4;->this$0:Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$4;->val$parameters:Lcom/ss/ttvideoengine/cache/CopyCacheItem;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onCopyComplete(ZILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$4;->val$parameters:Lcom/ss/ttvideoengine/cache/CopyCacheItem;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/ss/ttvideoengine/cache/CopyCacheItem;->mListener:Lcom/ss/ttvideoengine/cache/CopyCacheListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1, p2, p3}, Lcom/ss/ttvideoengine/cache/CopyCacheListener;->onCopyComplete(ZILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onFileInfo(Lcom/ss/mediakit/medialoader/AVMDLFileInfo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$4;->val$parameters:Lcom/ss/ttvideoengine/cache/CopyCacheItem;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/ss/ttvideoengine/cache/CopyCacheItem;->mListener:Lcom/ss/ttvideoengine/cache/CopyCacheListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheInfo;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$4;->this$0:Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheInfo;-><init>(Lcom/ss/ttvideoengine/DataLoaderHelper;)V

    .line 12
    .line 13
    .line 14
    iget-wide v1, p1, Lcom/ss/mediakit/medialoader/AVMDLFileInfo;->mContentLenght:J

    .line 15
    .line 16
    iput-wide v1, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheInfo;->mMediaSize:J

    .line 17
    .line 18
    iget-wide v1, p1, Lcom/ss/mediakit/medialoader/AVMDLFileInfo;->mCacheSize:J

    .line 19
    .line 20
    iput-wide v1, v0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheInfo;->mCacheSizeFromZero:J

    .line 21
    .line 22
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$4;->val$parameters:Lcom/ss/ttvideoengine/cache/CopyCacheItem;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/ss/ttvideoengine/cache/CopyCacheItem;->mListener:Lcom/ss/ttvideoengine/cache/CopyCacheListener;

    .line 25
    .line 26
    invoke-interface {p1, v0}, Lcom/ss/ttvideoengine/cache/CopyCacheListener;->onFileInfo(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheInfo;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method
