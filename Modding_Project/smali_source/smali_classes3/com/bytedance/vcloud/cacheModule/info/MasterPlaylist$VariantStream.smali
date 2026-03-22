.class public Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$VariantStream;
.super Ljava/lang/Object;
.source "MasterPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VariantStream"
.end annotation


# instance fields
.field public mAudioGroupId:Ljava/lang/String;

.field public mAverageBandWidth:J

.field public mBandWidth:J

.field public mClosedCaptionsGroupId:Ljava/lang/String;

.field public mCodecs:Ljava/lang/String;

.field public mFrameRate:F

.field public mHDCPLevel:Ljava/lang/String;

.field public mProgramId:J

.field public mResolution:Ljava/lang/String;

.field public mSubtitleGroupId:Ljava/lang/String;

.field public mUri:Ljava/lang/String;

.field public mVideoGroupId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$VariantStream;->mCodecs:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$VariantStream;->mResolution:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$VariantStream;->mHDCPLevel:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$VariantStream;->mAudioGroupId:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$VariantStream;->mVideoGroupId:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$VariantStream;->mSubtitleGroupId:Ljava/lang/String;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$VariantStream;->mClosedCaptionsGroupId:Ljava/lang/String;

    .line 18
    .line 19
    const-wide/16 v1, 0x0

    .line 20
    .line 21
    iput-wide v1, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$VariantStream;->mBandWidth:J

    .line 22
    .line 23
    iput-wide v1, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$VariantStream;->mAverageBandWidth:J

    .line 24
    .line 25
    iput-wide v1, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$VariantStream;->mProgramId:J

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    iput v1, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$VariantStream;->mFrameRate:F

    .line 29
    .line 30
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$VariantStream;->mUri:Ljava/lang/String;

    .line 31
    .line 32
    return-void
.end method
