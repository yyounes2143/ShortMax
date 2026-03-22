.class public Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo$CacheRange;
.super Ljava/lang/Object;
.source "DataLoaderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CacheRange"
.end annotation


# instance fields
.field public mOffset:J

.field public mSize:J

.field final synthetic this$2:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo;


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo$CacheRange;->this$2:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo$CacheRange;->mOffset:J

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskLoadProgress$CacheInfo$CacheRange;->mSize:J

    .line 11
    .line 12
    return-void
.end method
