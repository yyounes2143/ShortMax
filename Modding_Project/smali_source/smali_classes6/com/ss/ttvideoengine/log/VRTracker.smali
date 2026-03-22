.class public Lcom/ss/ttvideoengine/log/VRTracker;
.super Ljava/lang/Object;
.source "VRTracker.java"


# instance fields
.field private mDimension:I

.field private mProjectStyle:I

.field private mVideoStyle:I

.field private mViewSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, -0x80000000

    .line 5
    .line 6
    iput v0, p0, Lcom/ss/ttvideoengine/log/VRTracker;->mVideoStyle:I

    .line 7
    .line 8
    iput v0, p0, Lcom/ss/ttvideoengine/log/VRTracker;->mDimension:I

    .line 9
    .line 10
    iput v0, p0, Lcom/ss/ttvideoengine/log/VRTracker;->mProjectStyle:I

    .line 11
    .line 12
    iput v0, p0, Lcom/ss/ttvideoengine/log/VRTracker;->mViewSize:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public getDimension()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/log/VRTracker;->mDimension:I

    .line 2
    .line 3
    return v0
.end method

.method public getProjectStyle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/log/VRTracker;->mProjectStyle:I

    .line 2
    .line 3
    return v0
.end method

.method public getVideoStyle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/log/VRTracker;->mVideoStyle:I

    .line 2
    .line 3
    return v0
.end method

.method public getViewSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/log/VRTracker;->mViewSize:I

    .line 2
    .line 3
    return v0
.end method

.method public setDimension(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VRTracker;->mDimension:I

    .line 2
    .line 3
    return-void
.end method

.method public setProjectStyle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VRTracker;->mProjectStyle:I

    .line 2
    .line 3
    return-void
.end method

.method public setVideoStyle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VRTracker;->mVideoStyle:I

    .line 2
    .line 3
    return-void
.end method

.method public setViewSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VRTracker;->mViewSize:I

    .line 2
    .line 3
    return-void
.end method
