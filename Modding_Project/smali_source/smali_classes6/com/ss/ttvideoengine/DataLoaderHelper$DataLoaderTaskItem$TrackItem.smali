.class public Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;
.super Ljava/lang/Object;
.source "DataLoaderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TrackItem"
.end annotation


# instance fields
.field public mCacheSize:J

.field public mCustomHeader:Ljava/lang/String;

.field public mDecryptionKey:Ljava/lang/String;

.field public mExternalInfo:Ljava/lang/String;

.field public mIsFooterPreloaded:Z

.field public mLocalFilePath:Ljava/lang/String;

.field public mMediaSize:J

.field public mPreSize:J

.field public mPreloadFooterSize:J

.field public mPreloadHeaderSize:J

.field public mPreloadOffset:J

.field public mProxyUrl:Ljava/lang/String;

.field public mTaskKey:Ljava/lang/String;

.field public mUrlExpireTimes:[Ljava/lang/String;

.field public mUrls:[Ljava/lang/String;

.field public mUsingResolution:Lcom/ss/ttvideoengine/Resolution;

.field public mVideoInfo:Lcom/ss/ttvideoengine/model/VideoInfo;

.field final synthetic this$0:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->this$0:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mTaskKey:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mProxyUrl:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v0, Lcom/ss/ttvideoengine/Resolution;->Undefine:Lcom/ss/ttvideoengine/Resolution;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mUsingResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mDecryptionKey:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mVideoInfo:Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mUrls:[Ljava/lang/String;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mUrlExpireTimes:[Ljava/lang/String;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mExternalInfo:Ljava/lang/String;

    .line 24
    .line 25
    const-wide/16 v0, 0x0

    .line 26
    .line 27
    iput-wide v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreloadHeaderSize:J

    .line 28
    .line 29
    iput-wide v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreloadOffset:J

    .line 30
    .line 31
    iput-wide v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreSize:J

    .line 32
    .line 33
    iput-wide v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mMediaSize:J

    .line 34
    .line 35
    iput-wide v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mCacheSize:J

    .line 36
    .line 37
    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mLocalFilePath:Ljava/lang/String;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mCustomHeader:Ljava/lang/String;

    .line 40
    .line 41
    iput-wide v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mPreloadFooterSize:J

    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem$TrackItem;->mIsFooterPreloaded:Z

    .line 45
    .line 46
    return-void
.end method
