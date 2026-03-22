.class public Lcom/ss/ttm/player/VoiceTrait$AudioMediaInfo;
.super Ljava/lang/Object;
.source "VoiceTrait.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttm/player/VoiceTrait;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioMediaInfo"
.end annotation


# instance fields
.field public mBytePerSample:I

.field public mChannels:I

.field public mDuration:I

.field public mFormat:I

.field public mFrameSampleNB:I

.field public mIsPacked:I

.field public mSampleRate:I


# direct methods
.method public constructor <init>(IIIIIII)V
    .locals 0
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/ss/ttm/player/VoiceTrait$AudioMediaInfo;->mSampleRate:I

    .line 5
    .line 6
    iput p2, p0, Lcom/ss/ttm/player/VoiceTrait$AudioMediaInfo;->mFrameSampleNB:I

    .line 7
    .line 8
    iput p3, p0, Lcom/ss/ttm/player/VoiceTrait$AudioMediaInfo;->mBytePerSample:I

    .line 9
    .line 10
    iput p4, p0, Lcom/ss/ttm/player/VoiceTrait$AudioMediaInfo;->mChannels:I

    .line 11
    .line 12
    iput p5, p0, Lcom/ss/ttm/player/VoiceTrait$AudioMediaInfo;->mFormat:I

    .line 13
    .line 14
    iput p6, p0, Lcom/ss/ttm/player/VoiceTrait$AudioMediaInfo;->mIsPacked:I

    .line 15
    .line 16
    iput p7, p0, Lcom/ss/ttm/player/VoiceTrait$AudioMediaInfo;->mDuration:I

    .line 17
    .line 18
    return-void
.end method
