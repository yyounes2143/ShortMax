.class public Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;
.super Ljava/lang/Object;
.source "TTAVPreloaderItem.java"


# instance fields
.field public mBackUpUrls:[Ljava/lang/String;

.field public mCurFileSize:J

.field public mCurUrlIndex:I

.field public mFileHash:Ljava/lang/String;

.field public mFileKey:Ljava/lang/String;

.field public mFilePath:Ljava/lang/String;

.field public mFileSize:J

.field public mHeight:I

.field public mResolution:I

.field public mSupportResMask:J

.field public mUrl:Ljava/lang/String;

.field public mUrlTime:J

.field public mVideoID:Ljava/lang/String;

.field public mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mSupportResMask:J

    const/4 v2, 0x0

    .line 3
    iput v2, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mWidth:I

    .line 4
    iput v2, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mHeight:I

    .line 5
    iput v2, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mCurUrlIndex:I

    .line 6
    iput-wide v0, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mCurFileSize:J

    .line 7
    iput-wide v0, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mFileSize:J

    .line 8
    iput-object p6, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mUrl:Ljava/lang/String;

    .line 9
    iput-wide p3, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mUrlTime:J

    .line 10
    iput-object p5, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mFileKey:Ljava/lang/String;

    .line 11
    iput-object p7, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mFilePath:Ljava/lang/String;

    .line 12
    iput-object p1, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mVideoID:Ljava/lang/String;

    .line 13
    iput p2, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mResolution:I

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mBackUpUrls:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mWidth:I

    .line 17
    iput v0, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mHeight:I

    .line 18
    iput v0, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mCurUrlIndex:I

    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mCurFileSize:J

    .line 20
    iput-wide v0, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mFileSize:J

    .line 21
    iput-object p6, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mUrl:Ljava/lang/String;

    .line 22
    iput-wide p3, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mUrlTime:J

    .line 23
    iput-object p5, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mFileKey:Ljava/lang/String;

    .line 24
    iput-object p7, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mFilePath:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mVideoID:Ljava/lang/String;

    .line 26
    iput p2, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mResolution:I

    .line 27
    iput-wide p8, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mSupportResMask:J

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mBackUpUrls:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mCurUrlIndex:I

    const-wide/16 v0, 0x0

    .line 31
    iput-wide v0, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mCurFileSize:J

    .line 32
    iput-wide v0, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mFileSize:J

    .line 33
    iput-object p6, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mUrl:Ljava/lang/String;

    .line 34
    iput-wide p3, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mUrlTime:J

    .line 35
    iput-object p5, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mFileKey:Ljava/lang/String;

    .line 36
    iput-object p7, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mFilePath:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mVideoID:Ljava/lang/String;

    .line 38
    iput p2, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mResolution:I

    .line 39
    iput-wide p8, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mSupportResMask:J

    .line 40
    iput p10, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mWidth:I

    .line 41
    iput p11, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mHeight:I

    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mBackUpUrls:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mCurUrlIndex:I

    const-wide/16 v0, 0x0

    .line 45
    iput-wide v0, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mCurFileSize:J

    .line 46
    iput-wide v0, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mFileSize:J

    .line 47
    iput-object p6, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mUrl:Ljava/lang/String;

    .line 48
    iput-wide p3, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mUrlTime:J

    .line 49
    iput-object p5, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mFileKey:Ljava/lang/String;

    .line 50
    iput-object p7, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mFilePath:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mVideoID:Ljava/lang/String;

    .line 52
    iput p2, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mResolution:I

    .line 53
    iput-wide p8, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mSupportResMask:J

    .line 54
    iput p10, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mWidth:I

    .line 55
    iput p11, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mHeight:I

    .line 56
    iput-object p12, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mFileHash:Ljava/lang/String;

    const/4 p1, 0x0

    .line 57
    iput-object p1, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mBackUpUrls:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;JJ)V
    .locals 3

    move-object v0, p0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 59
    iput v1, v0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mCurUrlIndex:I

    move-object v1, p6

    .line 60
    iput-object v1, v0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mUrl:Ljava/lang/String;

    move-wide v1, p3

    .line 61
    iput-wide v1, v0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mUrlTime:J

    move-object v1, p5

    .line 62
    iput-object v1, v0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mFileKey:Ljava/lang/String;

    move-object v1, p7

    .line 63
    iput-object v1, v0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mFilePath:Ljava/lang/String;

    move-object v1, p1

    .line 64
    iput-object v1, v0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mVideoID:Ljava/lang/String;

    move v1, p2

    .line 65
    iput v1, v0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mResolution:I

    move-wide v1, p8

    .line 66
    iput-wide v1, v0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mSupportResMask:J

    move v1, p10

    .line 67
    iput v1, v0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mWidth:I

    move v1, p11

    .line 68
    iput v1, v0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mHeight:I

    move-object v1, p12

    .line 69
    iput-object v1, v0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mFileHash:Ljava/lang/String;

    const/4 v1, 0x0

    .line 70
    iput-object v1, v0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mBackUpUrls:[Ljava/lang/String;

    move-wide/from16 v1, p13

    .line 71
    iput-wide v1, v0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mCurFileSize:J

    move-wide/from16 v1, p15

    .line 72
    iput-wide v1, v0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mFileSize:J

    return-void
.end method


# virtual methods
.method public supportResolutions()[Lcom/ss/ttvideoengine/Resolution;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mSupportResMask:J

    .line 7
    .line 8
    const-wide/16 v3, 0x2

    .line 9
    .line 10
    and-long/2addr v1, v3

    .line 11
    cmp-long v1, v1, v3

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->Standard:Lcom/ss/ttvideoengine/Resolution;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-wide v1, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mSupportResMask:J

    .line 21
    .line 22
    const-wide/16 v3, 0x4

    .line 23
    .line 24
    and-long/2addr v1, v3

    .line 25
    cmp-long v1, v1, v3

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->High:Lcom/ss/ttvideoengine/Resolution;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-wide v1, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mSupportResMask:J

    .line 35
    .line 36
    const-wide/16 v3, 0x8

    .line 37
    .line 38
    and-long/2addr v1, v3

    .line 39
    cmp-long v1, v1, v3

    .line 40
    .line 41
    if-nez v1, :cond_2

    .line 42
    .line 43
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->SuperHigh:Lcom/ss/ttvideoengine/Resolution;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    :cond_2
    iget-wide v1, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mSupportResMask:J

    .line 49
    .line 50
    const-wide/16 v3, 0x10

    .line 51
    .line 52
    and-long/2addr v1, v3

    .line 53
    cmp-long v1, v1, v3

    .line 54
    .line 55
    if-nez v1, :cond_3

    .line 56
    .line 57
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->ExtremelyHigh:Lcom/ss/ttvideoengine/Resolution;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    :cond_3
    iget-wide v1, p0, Lcom/ss/ttvideoengine/preloader/TTAVPreloaderItem;->mSupportResMask:J

    .line 63
    .line 64
    const-wide/16 v3, 0x20

    .line 65
    .line 66
    and-long/2addr v1, v3

    .line 67
    cmp-long v1, v1, v3

    .line 68
    .line 69
    if-nez v1, :cond_4

    .line 70
    .line 71
    sget-object v1, Lcom/ss/ttvideoengine/Resolution;->FourK:Lcom/ss/ttvideoengine/Resolution;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    new-array v1, v1, [Lcom/ss/ttvideoengine/Resolution;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, [Lcom/ss/ttvideoengine/Resolution;

    .line 87
    .line 88
    return-object v0
.end method
