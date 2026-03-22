.class public Lcom/ss/ttvideoengine/strategrycenter/PlayerInfo;
.super Ljava/lang/Object;
.source "PlayerInfo.java"


# instance fields
.field private mFrameRate:F

.field private mPlaybackPos:I

.field private mPlaybackSpeed:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getFrameRate()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/strategrycenter/PlayerInfo;->mFrameRate:F

    .line 2
    .line 3
    return v0
.end method

.method public getPlaybackPos()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/strategrycenter/PlayerInfo;->mPlaybackPos:I

    .line 2
    .line 3
    return v0
.end method

.method public getPlaybackSpeed()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/strategrycenter/PlayerInfo;->mPlaybackSpeed:F

    .line 2
    .line 3
    return v0
.end method

.method public setFrameRate(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/strategrycenter/PlayerInfo;->mFrameRate:F

    .line 2
    .line 3
    return-void
.end method

.method public setPlaybackPos(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/strategrycenter/PlayerInfo;->mPlaybackPos:I

    .line 2
    .line 3
    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/strategrycenter/PlayerInfo;->mPlaybackSpeed:F

    .line 2
    .line 3
    return-void
.end method
