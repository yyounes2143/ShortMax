.class public Lcom/ss/ttvideoengine/model/DubbedInfo$Builder;
.super Ljava/lang/Object;
.source "DubbedInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/model/DubbedInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBackupUrl1:Ljava/lang/String;

.field private mBackupUrl2:Ljava/lang/String;

.field private mBackupUrl3:Ljava/lang/String;

.field private mBitrate:I

.field private mCheckInfo:Ljava/lang/String;

.field private mFileKey:Ljava/lang/String;

.field private mInfoId:I

.field private mLoudness:F

.field private mMainUrl:Ljava/lang/String;

.field private mMediaType:I

.field private mPeak:F


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
    iput v0, p0, Lcom/ss/ttvideoengine/model/DubbedInfo$Builder;->mMediaType:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/ss/ttvideoengine/model/DubbedInfo$Builder;->mMainUrl:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v1, p0, Lcom/ss/ttvideoengine/model/DubbedInfo$Builder;->mBackupUrl1:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v1, p0, Lcom/ss/ttvideoengine/model/DubbedInfo$Builder;->mBackupUrl2:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/ss/ttvideoengine/model/DubbedInfo$Builder;->mBackupUrl3:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v1, p0, Lcom/ss/ttvideoengine/model/DubbedInfo$Builder;->mCheckInfo:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v2, -0x1

    .line 19
    iput v2, p0, Lcom/ss/ttvideoengine/model/DubbedInfo$Builder;->mInfoId:I

    .line 20
    .line 21
    iput v0, p0, Lcom/ss/ttvideoengine/model/DubbedInfo$Builder;->mBitrate:I

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/ss/ttvideoengine/model/DubbedInfo$Builder;->mLoudness:F

    .line 25
    .line 26
    iput v0, p0, Lcom/ss/ttvideoengine/model/DubbedInfo$Builder;->mPeak:F

    .line 27
    .line 28
    iput-object v1, p0, Lcom/ss/ttvideoengine/model/DubbedInfo$Builder;->mFileKey:Ljava/lang/String;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public backupUrl1(Ljava/lang/String;)Lcom/ss/ttvideoengine/model/DubbedInfo$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/DubbedInfo$Builder;->mBackupUrl1:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public backupUrl2(Ljava/lang/String;)Lcom/ss/ttvideoengine/model/DubbedInfo$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/DubbedInfo$Builder;->mBackupUrl2:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public backupUrl3(Ljava/lang/String;)Lcom/ss/ttvideoengine/model/DubbedInfo$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/DubbedInfo$Builder;->mBackupUrl3:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public bitrate(I)Lcom/ss/ttvideoengine/model/DubbedInfo$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/model/DubbedInfo$Builder;->mBitrate:I

    .line 2
    .line 3
    return-object p0
.end method

.method public build()Lcom/ss/ttvideoengine/model/DubbedInfo;
    .locals 2

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/model/DubbedInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/ss/ttvideoengine/model/DubbedInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/ss/ttvideoengine/model/DubbedInfo$Builder;->mMediaType:I

    .line 7
    .line 8
    iput v1, v0, Lcom/ss/ttvideoengine/model/DubbedInfo;->mMediaType:I

    .line 9
    .line 10
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/DubbedInfo$Builder;->mMainUrl:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v1, v0, Lcom/ss/ttvideoengine/model/DubbedInfo;->mMainUrl:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/DubbedInfo$Builder;->mBackupUrl1:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v1, v0, Lcom/ss/ttvideoengine/model/DubbedInfo;->mBackupUrl1:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/DubbedInfo$Builder;->mBackupUrl2:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v1, v0, Lcom/ss/ttvideoengine/model/DubbedInfo;->mBackupUrl2:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/DubbedInfo$Builder;->mBackupUrl3:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v1, v0, Lcom/ss/ttvideoengine/model/DubbedInfo;->mBackupUrl3:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/DubbedInfo$Builder;->mCheckInfo:Ljava/lang/String;

    .line 27
    .line 28
    iput-object v1, v0, Lcom/ss/ttvideoengine/model/DubbedInfo;->mCheckInfo:Ljava/lang/String;

    .line 29
    .line 30
    iget v1, p0, Lcom/ss/ttvideoengine/model/DubbedInfo$Builder;->mInfoId:I

    .line 31
    .line 32
    iput v1, v0, Lcom/ss/ttvideoengine/model/DubbedInfo;->mInfoId:I

    .line 33
    .line 34
    iget v1, p0, Lcom/ss/ttvideoengine/model/DubbedInfo$Builder;->mBitrate:I

    .line 35
    .line 36
    iput v1, v0, Lcom/ss/ttvideoengine/model/DubbedInfo;->mBitrate:I

    .line 37
    .line 38
    iget v1, p0, Lcom/ss/ttvideoengine/model/DubbedInfo$Builder;->mLoudness:F

    .line 39
    .line 40
    iput v1, v0, Lcom/ss/ttvideoengine/model/DubbedInfo;->mLoudness:F

    .line 41
    .line 42
    iget v1, p0, Lcom/ss/ttvideoengine/model/DubbedInfo$Builder;->mPeak:F

    .line 43
    .line 44
    iput v1, v0, Lcom/ss/ttvideoengine/model/DubbedInfo;->mPeak:F

    .line 45
    .line 46
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/DubbedInfo$Builder;->mFileKey:Ljava/lang/String;

    .line 47
    .line 48
    iput-object v1, v0, Lcom/ss/ttvideoengine/model/DubbedInfo;->mFileKey:Ljava/lang/String;

    .line 49
    .line 50
    return-object v0
.end method

.method public checkInfo(Ljava/lang/String;)Lcom/ss/ttvideoengine/model/DubbedInfo$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/DubbedInfo$Builder;->mCheckInfo:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public fileKey(Ljava/lang/String;)Lcom/ss/ttvideoengine/model/DubbedInfo$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/DubbedInfo$Builder;->mFileKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public infoId(I)Lcom/ss/ttvideoengine/model/DubbedInfo$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/model/DubbedInfo$Builder;->mInfoId:I

    .line 2
    .line 3
    return-object p0
.end method

.method public loudness(F)Lcom/ss/ttvideoengine/model/DubbedInfo$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/model/DubbedInfo$Builder;->mLoudness:F

    .line 2
    .line 3
    return-object p0
.end method

.method public mainUrl(Ljava/lang/String;)Lcom/ss/ttvideoengine/model/DubbedInfo$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/DubbedInfo$Builder;->mMainUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public mediaType(I)Lcom/ss/ttvideoengine/model/DubbedInfo$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/model/DubbedInfo$Builder;->mMediaType:I

    .line 2
    .line 3
    return-object p0
.end method

.method public peak(F)Lcom/ss/ttvideoengine/model/DubbedInfo$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/model/DubbedInfo$Builder;->mPeak:F

    .line 2
    .line 3
    return-object p0
.end method
