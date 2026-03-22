.class public Lcom/ss/ttvideoengine/strategrycenter/MediaInfo;
.super Ljava/lang/Object;
.source "MediaInfo.java"


# instance fields
.field private mComments:I

.field private mDuration:D

.field private mFormat:Ljava/lang/String;

.field private mLikes:I

.field private mMediaID:Ljava/lang/String;

.field private mRepresentations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/strategrycenter/Representation;",
            ">;"
        }
    .end annotation
.end field

.field private mUserComment:I

.field private mUserLike:I

.field private mUserShare:I


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
.method public getComments()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/strategrycenter/MediaInfo;->mComments:I

    .line 2
    .line 3
    return v0
.end method

.method public getDuration()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/strategrycenter/MediaInfo;->mDuration:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/MediaInfo;->mFormat:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLikes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/strategrycenter/MediaInfo;->mLikes:I

    .line 2
    .line 3
    return v0
.end method

.method public getMediaID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategrycenter/MediaInfo;->mMediaID:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUserComment()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/strategrycenter/MediaInfo;->mUserComment:I

    .line 2
    .line 3
    return v0
.end method

.method public getUserLike()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/strategrycenter/MediaInfo;->mUserLike:I

    .line 2
    .line 3
    return v0
.end method

.method public getUserShare()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/strategrycenter/MediaInfo;->mUserShare:I

    .line 2
    .line 3
    return v0
.end method

.method public setComments(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/strategrycenter/MediaInfo;->mComments:I

    .line 2
    .line 3
    return-void
.end method

.method public setDuration(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/ttvideoengine/strategrycenter/MediaInfo;->mDuration:D

    .line 2
    .line 3
    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategrycenter/MediaInfo;->mFormat:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setLikes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/strategrycenter/MediaInfo;->mLikes:I

    .line 2
    .line 3
    return-void
.end method

.method public setMediaID(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategrycenter/MediaInfo;->mMediaID:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setUserComment(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/strategrycenter/MediaInfo;->mUserComment:I

    .line 2
    .line 3
    return-void
.end method

.method public setUserLike(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/strategrycenter/MediaInfo;->mUserLike:I

    .line 2
    .line 3
    return-void
.end method

.method public setUserShare(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/strategrycenter/MediaInfo;->mUserShare:I

    .line 2
    .line 3
    return-void
.end method
