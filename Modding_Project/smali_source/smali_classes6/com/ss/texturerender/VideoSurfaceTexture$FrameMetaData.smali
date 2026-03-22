.class public Lcom/ss/texturerender/VideoSurfaceTexture$FrameMetaData;
.super Ljava/lang/Object;
.source "VideoSurfaceTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/texturerender/VideoSurfaceTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameMetaData"
.end annotation


# instance fields
.field private mFrameMetaData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMasterClockDiff:J

.field private mPts:J

.field private mReleaseNanoTime:J


# direct methods
.method public constructor <init>(JJJLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/ss/texturerender/VideoSurfaceTexture$FrameMetaData;->mPts:J

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/ss/texturerender/VideoSurfaceTexture$FrameMetaData;->mReleaseNanoTime:J

    .line 7
    .line 8
    iput-wide p5, p0, Lcom/ss/texturerender/VideoSurfaceTexture$FrameMetaData;->mMasterClockDiff:J

    .line 9
    .line 10
    iput-object p7, p0, Lcom/ss/texturerender/VideoSurfaceTexture$FrameMetaData;->mFrameMetaData:Ljava/util/Map;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public getReleaseNanoTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture$FrameMetaData;->mReleaseNanoTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getStringifiedTileInfo()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoSurfaceTexture$FrameMetaData;->mFrameMetaData:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    const/16 v1, 0x4a

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/String;

    .line 18
    .line 19
    return-object v0
.end method
