.class Lcom/ss/ttvideoengine/preload/PreloadUtil$PlayInfo;
.super Ljava/lang/Object;
.source "PreloadUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/preload/PreloadUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PlayInfo"
.end annotation


# instance fields
.field mCacheEnd:Z

.field mDuration:J

.field mLastPlayPosition:J

.field mLastPlayableBuffer:J

.field mTriggered:Z

.field mVideoID:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/ss/ttvideoengine/preload/PreloadUtil$PlayInfo;->mLastPlayableBuffer:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/ss/ttvideoengine/preload/PreloadUtil$PlayInfo;->mLastPlayPosition:J

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/ss/ttvideoengine/preload/PreloadUtil$PlayInfo;->mDuration:J

    .line 11
    .line 12
    const-string v0, ""

    .line 13
    .line 14
    iput-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadUtil$PlayInfo;->mVideoID:Ljava/lang/String;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/preload/PreloadUtil$PlayInfo;->mCacheEnd:Z

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/preload/PreloadUtil$PlayInfo;->mTriggered:Z

    .line 20
    .line 21
    return-void
.end method
