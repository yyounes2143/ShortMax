.class public Lcom/ss/ttvideoengine/VideoModelCache$VideoModelCacheInfo;
.super Ljava/lang/Object;
.source "VideoModelCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/VideoModelCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoModelCacheInfo"
.end annotation


# instance fields
.field public isExpired:Z

.field public model:Lcom/ss/ttvideoengine/model/VideoModel;

.field public modelGotTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ss/ttvideoengine/VideoModelCache$VideoModelCacheInfo;->model:Lcom/ss/ttvideoengine/model/VideoModel;

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/ss/ttvideoengine/VideoModelCache$VideoModelCacheInfo;->modelGotTime:J

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/VideoModelCache$VideoModelCacheInfo;->isExpired:Z

    .line 13
    .line 14
    return-void
.end method
