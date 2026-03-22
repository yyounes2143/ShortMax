.class public Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;
.super Ljava/lang/Object;
.source "BareVideoInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/model/BareVideoInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBareGearInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/model/BareVideoInfo$BareGearInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBitrate:J

.field private mCheckInfo:Ljava/lang/String;

.field private mCodecType:Ljava/lang/String;

.field private mDuration:J

.field private mExpire:J

.field private mFileHash:Ljava/lang/String;

.field private mFileId:Ljava/lang/String;

.field private mFormat:Ljava/lang/String;

.field private mGear:Ljava/lang/String;

.field private mMediaType:I

.field private mQuality:Ljava/lang/String;

.field private mQualityDesc:Ljava/lang/String;

.field private mResolution:Lcom/ss/ttvideoengine/Resolution;

.field private mSegmentSizeInfo:Ljava/lang/String;

.field private mSize:J

.field private mSpadea:Ljava/lang/String;

.field private mUrlExpires:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVHeight:I

.field private mVWidth:I


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
    iput v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mMediaType:I

    .line 6
    .line 7
    iput v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mVWidth:I

    .line 8
    .line 9
    iput v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mVHeight:I

    .line 10
    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mBitrate:J

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mDuration:J

    .line 16
    .line 17
    iput-wide v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mSize:J

    .line 18
    .line 19
    const-wide/16 v0, -0x1

    .line 20
    .line 21
    iput-wide v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mExpire:J

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mFileHash:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mFileId:Ljava/lang/String;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mCodecType:Ljava/lang/String;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mFormat:Ljava/lang/String;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mCheckInfo:Ljava/lang/String;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mQuality:Ljava/lang/String;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mQualityDesc:Ljava/lang/String;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mGear:Ljava/lang/String;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mSpadea:Ljava/lang/String;

    .line 43
    .line 44
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mSegmentSizeInfo:Ljava/lang/String;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mUrls:Ljava/util/List;

    .line 47
    .line 48
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mUrlExpires:Ljava/util/List;

    .line 49
    .line 50
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mBareGearInfo:Ljava/util/List;

    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public addUrl(Ljava/lang/String;)Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mUrls:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mUrls:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mUrls:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public addUrlExpire(Ljava/lang/String;)Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mUrlExpires:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mUrlExpires:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mUrlExpires:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public bitrate(J)Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mBitrate:J

    .line 2
    .line 3
    return-object p0
.end method

.method public build()Lcom/ss/ttvideoengine/model/BareVideoInfo;
    .locals 3

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/model/BareVideoInfo;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/ss/ttvideoengine/model/BareVideoInfo;-><init>(Lcom/ss/ttvideoengine/model/BareVideoInfo$1;)V

    .line 5
    .line 6
    .line 7
    iget v1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mMediaType:I

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/model/BareVideoInfo;->access$102(Lcom/ss/ttvideoengine/model/BareVideoInfo;I)I

    .line 10
    .line 11
    .line 12
    iget v1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mVWidth:I

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/model/BareVideoInfo;->access$202(Lcom/ss/ttvideoengine/model/BareVideoInfo;I)I

    .line 15
    .line 16
    .line 17
    iget v1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mVHeight:I

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/model/BareVideoInfo;->access$302(Lcom/ss/ttvideoengine/model/BareVideoInfo;I)I

    .line 20
    .line 21
    .line 22
    iget-wide v1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mBitrate:J

    .line 23
    .line 24
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/model/BareVideoInfo;->access$402(Lcom/ss/ttvideoengine/model/BareVideoInfo;J)J

    .line 25
    .line 26
    .line 27
    iget-wide v1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mDuration:J

    .line 28
    .line 29
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/model/BareVideoInfo;->access$502(Lcom/ss/ttvideoengine/model/BareVideoInfo;J)J

    .line 30
    .line 31
    .line 32
    iget-wide v1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mSize:J

    .line 33
    .line 34
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/model/BareVideoInfo;->access$602(Lcom/ss/ttvideoengine/model/BareVideoInfo;J)J

    .line 35
    .line 36
    .line 37
    iget-wide v1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mExpire:J

    .line 38
    .line 39
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/model/BareVideoInfo;->access$702(Lcom/ss/ttvideoengine/model/BareVideoInfo;J)J

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mFileHash:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/model/BareVideoInfo;->access$802(Lcom/ss/ttvideoengine/model/BareVideoInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mFileId:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/model/BareVideoInfo;->access$902(Lcom/ss/ttvideoengine/model/BareVideoInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mCodecType:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/model/BareVideoInfo;->access$1002(Lcom/ss/ttvideoengine/model/BareVideoInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mFormat:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/model/BareVideoInfo;->access$1102(Lcom/ss/ttvideoengine/model/BareVideoInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mCheckInfo:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/model/BareVideoInfo;->access$1202(Lcom/ss/ttvideoengine/model/BareVideoInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 68
    .line 69
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/model/BareVideoInfo;->access$1302(Lcom/ss/ttvideoengine/model/BareVideoInfo;Lcom/ss/ttvideoengine/Resolution;)Lcom/ss/ttvideoengine/Resolution;

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mQuality:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/model/BareVideoInfo;->access$1402(Lcom/ss/ttvideoengine/model/BareVideoInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mQualityDesc:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/model/BareVideoInfo;->access$1502(Lcom/ss/ttvideoengine/model/BareVideoInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mGear:Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/model/BareVideoInfo;->access$1602(Lcom/ss/ttvideoengine/model/BareVideoInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mSpadea:Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/model/BareVideoInfo;->access$1702(Lcom/ss/ttvideoengine/model/BareVideoInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mUrls:Ljava/util/List;

    .line 93
    .line 94
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/model/BareVideoInfo;->access$1802(Lcom/ss/ttvideoengine/model/BareVideoInfo;Ljava/util/List;)Ljava/util/List;

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mUrlExpires:Ljava/util/List;

    .line 98
    .line 99
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/model/BareVideoInfo;->access$1902(Lcom/ss/ttvideoengine/model/BareVideoInfo;Ljava/util/List;)Ljava/util/List;

    .line 100
    .line 101
    .line 102
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mBareGearInfo:Ljava/util/List;

    .line 103
    .line 104
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/model/BareVideoInfo;->access$2002(Lcom/ss/ttvideoengine/model/BareVideoInfo;Ljava/util/List;)Ljava/util/List;

    .line 105
    .line 106
    .line 107
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mSegmentSizeInfo:Ljava/lang/String;

    .line 108
    .line 109
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/model/BareVideoInfo;->access$2102(Lcom/ss/ttvideoengine/model/BareVideoInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    invoke-static {v0, p0}, Lcom/ss/ttvideoengine/model/BareVideoInfo;->access$2202(Lcom/ss/ttvideoengine/model/BareVideoInfo;Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;)Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;

    .line 113
    .line 114
    .line 115
    return-object v0
.end method

.method public checkInfo(Ljava/lang/String;)Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mCheckInfo:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public codecType(Ljava/lang/String;)Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mCodecType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public duration(J)Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mDuration:J

    .line 2
    .line 3
    return-object p0
.end method

.method public expire(J)Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mExpire:J

    .line 2
    .line 3
    return-object p0
.end method

.method public fileHash(Ljava/lang/String;)Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mFileHash:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public fileId(Ljava/lang/String;)Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mFileId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public format(Ljava/lang/String;)Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mFormat:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public gear(Ljava/lang/String;)Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mGear:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public gearInfo(Lcom/ss/ttvideoengine/model/BareVideoInfo$GearType;II)Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mBareGearInfo:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mBareGearInfo:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mBareGearInfo:Ljava/util/List;

    .line 13
    .line 14
    new-instance v1, Lcom/ss/ttvideoengine/model/BareVideoInfo$BareGearInfo;

    .line 15
    .line 16
    invoke-direct {v1, p1, p2, p3}, Lcom/ss/ttvideoengine/model/BareVideoInfo$BareGearInfo;-><init>(Lcom/ss/ttvideoengine/model/BareVideoInfo$GearType;II)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    return-object p0
.end method

.method public mediaType(I)Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mMediaType:I

    .line 2
    .line 3
    return-object p0
.end method

.method public quality(Ljava/lang/String;)Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mQuality:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public qualityDesc(Ljava/lang/String;)Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mQualityDesc:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public resolution(Lcom/ss/ttvideoengine/Resolution;)Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 2
    .line 3
    return-object p0
.end method

.method public segmentSizeInfo(Ljava/lang/String;)Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mSegmentSizeInfo:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public size(J)Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mSize:J

    .line 2
    .line 3
    return-object p0
.end method

.method public spadea(Ljava/lang/String;)Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mSpadea:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public urlExpires(Ljava/util/List;)Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mUrlExpires:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public urls(Ljava/util/List;)Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mUrls:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public vHeight(I)Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mVHeight:I

    .line 2
    .line 3
    return-object p0
.end method

.method public vWidth(I)Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mVWidth:I

    .line 2
    .line 3
    return-object p0
.end method
