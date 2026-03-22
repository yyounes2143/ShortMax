.class public final Lcom/ss/ttm/player/PlaybackParams;
.super Ljava/lang/Object;
.source "PlaybackParams.java"


# static fields
.field protected static final DEFAULT_VALUE:I = -0x1


# instance fields
.field private mAudioFallbackMode:I

.field private mDescribeContents:I

.field private mPitch:F

.field private mSpeed:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/ss/ttm/player/PlaybackParams;->mDescribeContents:I

    .line 6
    .line 7
    iput v0, p0, Lcom/ss/ttm/player/PlaybackParams;->mAudioFallbackMode:I

    .line 8
    .line 9
    const/high16 v0, -0x40800000    # -1.0f

    .line 10
    .line 11
    iput v0, p0, Lcom/ss/ttm/player/PlaybackParams;->mPitch:F

    .line 12
    .line 13
    iput v0, p0, Lcom/ss/ttm/player/PlaybackParams;->mSpeed:F

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public allowDefaults()Lcom/ss/ttm/player/PlaybackParams;
    .locals 0

    .line 1
    return-object p0
.end method

.method public describeContents()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttm/player/PlaybackParams;->mDescribeContents:I

    .line 2
    .line 3
    return v0
.end method

.method public getAudioFallbackMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttm/player/PlaybackParams;->mAudioFallbackMode:I

    .line 2
    .line 3
    return v0
.end method

.method public getPitch()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttm/player/PlaybackParams;->mPitch:F

    .line 2
    .line 3
    return v0
.end method

.method public getSpeed()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttm/player/PlaybackParams;->mSpeed:F

    .line 2
    .line 3
    return v0
.end method

.method public setAudioFallbackMode(I)Lcom/ss/ttm/player/PlaybackParams;
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttm/player/PlaybackParams;->mAudioFallbackMode:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setPitch(F)Lcom/ss/ttm/player/PlaybackParams;
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttm/player/PlaybackParams;->mPitch:F

    .line 2
    .line 3
    return-object p0
.end method

.method public setSpeed(F)Lcom/ss/ttm/player/PlaybackParams;
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttm/player/PlaybackParams;->mSpeed:F

    .line 2
    .line 3
    return-object p0
.end method
