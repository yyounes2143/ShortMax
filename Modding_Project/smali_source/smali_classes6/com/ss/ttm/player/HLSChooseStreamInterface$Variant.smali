.class public Lcom/ss/ttm/player/HLSChooseStreamInterface$Variant;
.super Ljava/lang/Object;
.source "HLSChooseStreamInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttm/player/HLSChooseStreamInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Variant"
.end annotation


# instance fields
.field public mAudioGroup:Ljava/lang/String;

.field public mAverageBandwidth:I

.field public mBandWidth:I

.field public mClosedCaptions:Ljava/lang/String;

.field public mCodecs:Ljava/lang/String;

.field public mFrameRate:F

.field public mHDCPLevel:Ljava/lang/String;

.field public mHeight:I

.field public mPlaylists:[Lcom/ss/ttm/player/HLSChooseStreamInterface$Playlist;

.field public mSubtitlesGroup:Ljava/lang/String;

.field public mVideoGroup:Ljava/lang/String;

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/ss/ttm/player/HLSChooseStreamInterface$Variant;->mBandWidth:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/ss/ttm/player/HLSChooseStreamInterface$Variant;->mAudioGroup:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/ss/ttm/player/HLSChooseStreamInterface$Variant;->mVideoGroup:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/ss/ttm/player/HLSChooseStreamInterface$Variant;->mSubtitlesGroup:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/ss/ttm/player/HLSChooseStreamInterface$Variant;->mPlaylists:[Lcom/ss/ttm/player/HLSChooseStreamInterface$Playlist;

    .line 15
    .line 16
    return-void
.end method
