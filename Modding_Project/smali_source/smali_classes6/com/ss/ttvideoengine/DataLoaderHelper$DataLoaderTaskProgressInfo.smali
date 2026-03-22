.class public Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;
.super Ljava/lang/Object;
.source "DataLoaderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/DataLoaderHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataLoaderTaskProgressInfo"
.end annotation


# instance fields
.field public mCacheSizeFromZero:J

.field public mDecryptionKey:Ljava/lang/String;

.field public mKey:Ljava/lang/String;

.field public mLocalFilePath:Ljava/lang/String;

.field public mMediaSize:J

.field public mResolution:Lcom/ss/ttvideoengine/Resolution;

.field public mTaskType:I

.field public mUsingVideoInfo:Lcom/ss/ttvideoengine/model/VideoInfo;

.field public mVideoId:Ljava/lang/String;

.field final synthetic this$0:Lcom/ss/ttvideoengine/DataLoaderHelper;


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/DataLoaderHelper;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;->this$0:Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;->mKey:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;->mVideoId:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;->mLocalFilePath:Ljava/lang/String;

    .line 12
    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;->mMediaSize:J

    .line 16
    .line 17
    iput-wide v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;->mCacheSizeFromZero:J

    .line 18
    .line 19
    sget-object v0, Lcom/ss/ttvideoengine/Resolution;->Undefine:Lcom/ss/ttvideoengine/Resolution;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;->mResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;->mDecryptionKey:Ljava/lang/String;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;->mUsingVideoInfo:Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;->mTaskType:I

    .line 29
    .line 30
    return-void
.end method
