.class public Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$IFrameStream;
.super Ljava/lang/Object;
.source "MasterPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IFrameStream"
.end annotation


# instance fields
.field public mAverageBandWidth:J

.field public mBandWidth:J

.field public mCodecs:Ljava/lang/String;

.field public mHDCPLevel:Ljava/lang/String;

.field public mProgramId:J

.field public mResolution:Ljava/lang/String;

.field public mUri:Ljava/lang/String;


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
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$IFrameStream;->mCodecs:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$IFrameStream;->mResolution:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$IFrameStream;->mHDCPLevel:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$IFrameStream;->mUri:Ljava/lang/String;

    .line 12
    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$IFrameStream;->mBandWidth:J

    .line 16
    .line 17
    iput-wide v0, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$IFrameStream;->mAverageBandWidth:J

    .line 18
    .line 19
    iput-wide v0, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$IFrameStream;->mProgramId:J

    .line 20
    .line 21
    return-void
.end method
