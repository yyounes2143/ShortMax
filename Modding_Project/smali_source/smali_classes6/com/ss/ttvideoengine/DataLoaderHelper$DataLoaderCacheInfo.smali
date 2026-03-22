.class public Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheInfo;
.super Ljava/lang/Object;
.source "DataLoaderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/DataLoaderHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataLoaderCacheInfo"
.end annotation


# instance fields
.field public mCacheSizeFromZero:J

.field public mLocalFilePath:Ljava/lang/String;

.field public mMediaSize:J

.field final synthetic this$0:Lcom/ss/ttvideoengine/DataLoaderHelper;


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/DataLoaderHelper;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheInfo;->this$0:Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheInfo;->mMediaSize:J

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheInfo;->mCacheSizeFromZero:J

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderCacheInfo;->mLocalFilePath:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method
