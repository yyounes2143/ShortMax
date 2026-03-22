.class public Lcom/ss/ttvideoengine/PreloaderURLItem;
.super Ljava/lang/Object;
.source "PreloaderURLItem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreloaderURLItem"


# instance fields
.field public mAdapter:Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;

.field private mCallBackListener:Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mCdnType:I

.field private mFilePath:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mGroupId:Ljava/lang/String;

.field private mHeaders:Ljava/util/HashMap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKey:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mPlayIndexGap:I

.field private mPreloadFooterSize:J

.field private mPreloadSize:J

.field private mPriorityLevel:I

.field private mProvider:Lcom/ss/ttvideoengine/DataLoaderResourceProvider;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public mStartTimestamp:J

.field private mSubTag:Ljava/lang/String;

.field private mTag:Ljava/lang/String;

.field private mUrlExpireTimes:[Ljava/lang/String;

.field private mUrls:[Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mVideoId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/source/DirectUrlSource;J)V
    .locals 3
    .param p1    # Lcom/ss/ttvideoengine/source/DirectUrlSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mKey:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mFilePath:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mVideoId:Ljava/lang/String;

    .line 56
    const-string v1, ""

    iput-object v1, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mTag:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mSubTag:Ljava/lang/String;

    const/4 v2, -0x1

    .line 58
    iput v2, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mPlayIndexGap:I

    .line 59
    iput-object v1, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mGroupId:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 60
    iput-wide v1, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mPreloadSize:J

    .line 61
    iput-wide v1, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mPreloadFooterSize:J

    .line 62
    iput-wide v1, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mStartTimestamp:J

    const/4 v1, 0x0

    .line 63
    iput v1, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mPriorityLevel:I

    .line 64
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mUrls:[Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mUrlExpireTimes:[Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mProvider:Lcom/ss/ttvideoengine/DataLoaderResourceProvider;

    .line 67
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mCallBackListener:Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 68
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mHeaders:Ljava/util/HashMap;

    .line 69
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/source/DirectUrlSource;->vid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mVideoId:Ljava/lang/String;

    .line 70
    iput-wide p2, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mPreloadSize:J

    .line 71
    new-instance p2, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;

    new-instance p3, Lcom/ss/ttvideoengine/PreloaderURLItem$1;

    invoke-direct {p3, p0}, Lcom/ss/ttvideoengine/PreloaderURLItem$1;-><init>(Lcom/ss/ttvideoengine/PreloaderURLItem;)V

    invoke-direct {p2, p3}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;-><init>(Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$SourceSetter;)V

    iput-object p2, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mAdapter:Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;

    .line 72
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->setStrategySource(Lcom/ss/ttvideoengine/strategy/source/StrategySource;)V
    :try_end_0
    .catch Lcom/ss/ttvideoengine/utils/EngineException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 73
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J[Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mKey:Ljava/lang/String;

    .line 37
    const-string v1, ""

    iput-object v1, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mTag:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mSubTag:Ljava/lang/String;

    const/4 v2, -0x1

    .line 39
    iput v2, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mPlayIndexGap:I

    .line 40
    iput-object v1, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mGroupId:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 41
    iput-wide v1, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mPreloadFooterSize:J

    .line 42
    iput-wide v1, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mStartTimestamp:J

    const/4 v1, 0x0

    .line 43
    iput v1, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mPriorityLevel:I

    .line 44
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mUrlExpireTimes:[Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mProvider:Lcom/ss/ttvideoengine/DataLoaderResourceProvider;

    .line 46
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mCallBackListener:Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 47
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mHeaders:Ljava/util/HashMap;

    .line 48
    iput-object p5, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mFilePath:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mVideoId:Ljava/lang/String;

    .line 50
    iput-wide p2, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mPreloadSize:J

    .line 51
    iput-object p4, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mUrls:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLcom/ss/ttvideoengine/DataLoaderResourceProvider;Ljava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mTag:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mSubTag:Ljava/lang/String;

    const/4 v1, -0x1

    .line 77
    iput v1, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mPlayIndexGap:I

    .line 78
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mGroupId:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 79
    iput-wide v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mPreloadFooterSize:J

    .line 80
    iput-wide v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mStartTimestamp:J

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mPriorityLevel:I

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mUrls:[Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mUrlExpireTimes:[Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mCallBackListener:Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 85
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mHeaders:Ljava/util/HashMap;

    .line 86
    iput-object p5, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mProvider:Lcom/ss/ttvideoengine/DataLoaderResourceProvider;

    .line 87
    iput-object p2, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mVideoId:Ljava/lang/String;

    .line 88
    iput-wide p3, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mPreloadSize:J

    .line 89
    iput-object p1, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mKey:Ljava/lang/String;

    .line 90
    iput-object p6, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J[Ljava/lang/String;)V
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mFilePath:Ljava/lang/String;

    .line 20
    const-string v1, ""

    iput-object v1, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mTag:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mSubTag:Ljava/lang/String;

    const/4 v2, -0x1

    .line 22
    iput v2, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mPlayIndexGap:I

    .line 23
    iput-object v1, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mGroupId:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 24
    iput-wide v1, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mPreloadFooterSize:J

    .line 25
    iput-wide v1, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mStartTimestamp:J

    const/4 v1, 0x0

    .line 26
    iput v1, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mPriorityLevel:I

    .line 27
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mUrlExpireTimes:[Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mProvider:Lcom/ss/ttvideoengine/DataLoaderResourceProvider;

    .line 29
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mCallBackListener:Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 30
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mHeaders:Ljava/util/HashMap;

    .line 31
    iput-object p1, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mKey:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mVideoId:Ljava/lang/String;

    .line 33
    iput-wide p3, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mPreloadSize:J

    .line 34
    iput-object p5, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mUrls:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J[Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mTag:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mSubTag:Ljava/lang/String;

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mPlayIndexGap:I

    .line 5
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mGroupId:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mPreloadFooterSize:J

    .line 7
    iput-wide v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mStartTimestamp:J

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mPriorityLevel:I

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mUrlExpireTimes:[Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mProvider:Lcom/ss/ttvideoengine/DataLoaderResourceProvider;

    .line 11
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mCallBackListener:Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 12
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mHeaders:Ljava/util/HashMap;

    .line 13
    iput-object p1, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mKey:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mVideoId:Ljava/lang/String;

    .line 15
    iput-wide p3, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mPreloadSize:J

    .line 16
    iput-object p5, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mUrls:[Ljava/lang/String;

    .line 17
    iput-object p6, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/ss/ttvideoengine/PreloaderURLItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$102(Lcom/ss/ttvideoengine/PreloaderURLItem;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mUrls:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$202(Lcom/ss/ttvideoengine/PreloaderURLItem;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mUrlExpireTimes:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method


# virtual methods
.method public customHeaders()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mHeaders:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCallBackListener()Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mCallBackListener:Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCdnType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mCdnType:I

    .line 2
    .line 3
    return v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mFilePath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mGroupId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlayIndexGap()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mPlayIndexGap:I

    .line 2
    .line 3
    return v0
.end method

.method public getPreloadFooterSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mPreloadFooterSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getPreloadSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mPreloadSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getPriorityLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mPriorityLevel:I

    .line 2
    .line 3
    return v0
.end method

.method public getProvider()Lcom/ss/ttvideoengine/DataLoaderResourceProvider;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mProvider:Lcom/ss/ttvideoengine/DataLoaderResourceProvider;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStartTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mStartTimestamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSubTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mSubTag:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mTag:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUrlExpireTimes()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mUrlExpireTimes:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUrls()[Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mUrls:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mVideoId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setCallBackListener(Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;)V
    .locals 0
    .param p1    # Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mCallBackListener:Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 2
    .line 3
    return-void
.end method

.method public setCdnType(I)V
    .locals 1

    .line 1
    const-string v0, "pcdn"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/ttvideoengine/FeatureManager;->hasPermission(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iput p1, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mCdnType:I

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mHeaders:Ljava/util/HashMap;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    new-instance v0, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mHeaders:Ljava/util/HashMap;

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mHeaders:Ljava/util/HashMap;

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v3, 0x1

    .line 28
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mGroupId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mKey:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPlayIndexGap(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mPlayIndexGap:I

    .line 2
    .line 3
    return-void
.end method

.method public setPreloadFooterSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mPreloadFooterSize:J

    .line 2
    .line 3
    return-void
.end method

.method public setPriorityLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mPriorityLevel:I

    .line 2
    .line 3
    return-void
.end method

.method public setProvider(Lcom/ss/ttvideoengine/DataLoaderResourceProvider;)V
    .locals 0
    .param p1    # Lcom/ss/ttvideoengine/DataLoaderResourceProvider;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mProvider:Lcom/ss/ttvideoengine/DataLoaderResourceProvider;

    .line 2
    .line 3
    return-void
.end method

.method public setStartTimestamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mStartTimestamp:J

    .line 2
    .line 3
    return-void
.end method

.method public setSubTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mSubTag:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/PreloaderURLItem;->mTag:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
