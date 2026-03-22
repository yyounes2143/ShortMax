.class public Lcom/ss/ttvideoengine/fetcher/MDLFetcher;
.super Ljava/lang/Object;
.source "MDLFetcher.java"

# interfaces
.implements Lcom/ss/mediakit/fetcher/AVMDLURLFetcherInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/fetcher/MDLFetcher$MyFetcherListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MDLFetcher"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFallbackAPI:Ljava/lang/String;

.field private mFetcher:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

.field private mFileHash:Ljava/lang/String;

.field private mKeyseed:Ljava/lang/String;

.field private mListener:Lcom/ss/mediakit/fetcher/AVMDLURLFetcherListener;

.field private mNewUrls:[Ljava/lang/String;

.field private mOldUrl:Ljava/lang/String;

.field private mVideoID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->mNewUrls:[Ljava/lang/String;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineUtils;->BuildHttpsApi(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->mFallbackAPI:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->mKeyseed:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private _getUrlsFromVideoModelByFileHash(Lcom/ss/ttvideoengine/model/VideoModel;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "MDLFetcher"

    .line 3
    .line 4
    if-eqz p1, :cond_3

    .line 5
    .line 6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    const/16 v3, 0xf

    .line 19
    .line 20
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v2}, Lcom/ss/ttvideoengine/model/VideoModel;->getVideoInfo(Ljava/util/Map;)Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    const/16 p2, 0x10

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStrArr(I)[Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    new-instance p2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v2, "_getUrlsFromVideoModel "

    .line 45
    .line 46
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-static {v1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    array-length p2, p1

    .line 66
    if-lez p2, :cond_1

    .line 67
    .line 68
    return-object p1

    .line 69
    :cond_1
    return-object v0

    .line 70
    :cond_2
    const-string p1, "_getUrlsFromVideoModel videoInfo is null"

    .line 71
    .line 72
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-object v0

    .line 76
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string v2, "_getUrlsFromVideoModel videoModel is null or fileHash is empty "

    .line 82
    .line 83
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return-object v0
.end method

.method static synthetic access$000(Lcom/ss/ttvideoengine/fetcher/MDLFetcher;)Lcom/ss/mediakit/fetcher/AVMDLURLFetcherListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->mListener:Lcom/ss/mediakit/fetcher/AVMDLURLFetcherListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/ss/ttvideoengine/fetcher/MDLFetcher;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->mVideoID:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/ss/ttvideoengine/fetcher/MDLFetcher;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->mFileHash:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/ss/ttvideoengine/fetcher/MDLFetcher;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->mNewUrls:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$302(Lcom/ss/ttvideoengine/fetcher/MDLFetcher;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->mNewUrls:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$400(Lcom/ss/ttvideoengine/fetcher/MDLFetcher;Lcom/ss/ttvideoengine/model/VideoModel;Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->_getUrlsFromVideoModelByFileHash(Lcom/ss/ttvideoengine/model/VideoModel;Ljava/lang/String;)[Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$500(Lcom/ss/ttvideoengine/fetcher/MDLFetcher;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->mOldUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$600([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->isNewUrlsValid([Ljava/lang/String;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static isNewUrlsValid([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_4

    .line 3
    .line 4
    array-length v1, p0

    .line 5
    if-gtz v1, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    return v2

    .line 16
    :cond_1
    array-length v1, p0

    .line 17
    move v3, v0

    .line 18
    :goto_0
    if-ge v3, v1, :cond_3

    .line 19
    .line 20
    aget-object v4, p0, v3

    .line 21
    .line 22
    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_2

    .line 27
    .line 28
    const-string p0, "MDLFetcher"

    .line 29
    .line 30
    const-string p1, "new urls is invalid"

    .line 31
    .line 32
    invoke-static {p0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return v0

    .line 36
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    return v2

    .line 40
    :cond_4
    :goto_1
    return v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->mFetcher:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->cancel()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->mFetcher:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

    .line 10
    .line 11
    :cond_0
    iput-object v1, p0, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->mNewUrls:[Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public getURLs()[Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->mNewUrls:[Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    array-length v0, v0

    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "get urls from cache. + urls.length = "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->mNewUrls:[Ljava/lang/String;

    .line 19
    .line 20
    array-length v1, v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "MDLFetcher"

    .line 29
    .line 30
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->mNewUrls:[Ljava/lang/String;

    .line 34
    .line 35
    return-object v0

    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 37
    return-object v0
.end method

.method public start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/mediakit/fetcher/AVMDLURLFetcherListener;)I
    .locals 6

    .line 1
    const-string v0, "MDLFetcher"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v2, "start rawKey "

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, ", fileKey "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, ", olderUrl "

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, ", listener "

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->mVideoID:Ljava/lang/String;

    .line 49
    .line 50
    iput-object p2, p0, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->mFileHash:Ljava/lang/String;

    .line 51
    .line 52
    iput-object p4, p0, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->mListener:Lcom/ss/mediakit/fetcher/AVMDLURLFetcherListener;

    .line 53
    .line 54
    iput-object p3, p0, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->mOldUrl:Ljava/lang/String;

    .line 55
    .line 56
    const-class p2, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;

    .line 57
    .line 58
    monitor-enter p2

    .line 59
    :try_start_0
    invoke-static {}, Lcom/ss/ttvideoengine/VideoModelCache;->getInstance()Lcom/ss/ttvideoengine/VideoModelCache;

    .line 60
    .line 61
    .line 62
    move-result-object p4

    .line 63
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->mVideoID:Ljava/lang/String;

    .line 64
    .line 65
    iget-object v1, p0, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->mFallbackAPI:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {p4, v0, v1}, Lcom/ss/ttvideoengine/VideoModelCache;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/ttvideoengine/VideoModelCache$VideoModelCacheInfo;

    .line 68
    .line 69
    .line 70
    move-result-object p4

    .line 71
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 72
    const/4 p2, 0x0

    .line 73
    const/4 v0, 0x0

    .line 74
    const/4 v1, 0x1

    .line 75
    if-eqz p4, :cond_2

    .line 76
    .line 77
    iget-boolean v2, p4, Lcom/ss/ttvideoengine/VideoModelCache$VideoModelCacheInfo;->isExpired:Z

    .line 78
    .line 79
    if-nez v2, :cond_2

    .line 80
    .line 81
    const-string v2, "MDLFetcher"

    .line 82
    .line 83
    const-string v3, "get videoModel from cache,key is %s; videoId = %s"

    .line 84
    .line 85
    iget-object v4, p0, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->mFileHash:Ljava/lang/String;

    .line 86
    .line 87
    iget-object v5, p0, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->mVideoID:Ljava/lang/String;

    .line 88
    .line 89
    filled-new-array {v4, v5}, [Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-static {v2, v3}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object p4, p4, Lcom/ss/ttvideoengine/VideoModelCache$VideoModelCacheInfo;->model:Lcom/ss/ttvideoengine/model/VideoModel;

    .line 101
    .line 102
    iget-object v2, p0, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->mFileHash:Ljava/lang/String;

    .line 103
    .line 104
    invoke-direct {p0, p4, v2}, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->_getUrlsFromVideoModelByFileHash(Lcom/ss/ttvideoengine/model/VideoModel;Ljava/lang/String;)[Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p4

    .line 108
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-nez v2, :cond_1

    .line 113
    .line 114
    if-eqz p4, :cond_1

    .line 115
    .line 116
    array-length v2, p4

    .line 117
    if-lez v2, :cond_1

    .line 118
    .line 119
    iput-object p4, p0, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->mNewUrls:[Ljava/lang/String;

    .line 120
    .line 121
    move v2, v0

    .line 122
    :goto_0
    array-length v3, p4

    .line 123
    if-ge v2, v3, :cond_1

    .line 124
    .line 125
    aget-object v3, p4, v2

    .line 126
    .line 127
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    if-eqz v3, :cond_0

    .line 132
    .line 133
    iput-object p2, p0, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->mNewUrls:[Ljava/lang/String;

    .line 134
    .line 135
    const-class v3, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;

    .line 136
    .line 137
    monitor-enter v3

    .line 138
    :try_start_1
    invoke-static {}, Lcom/ss/ttvideoengine/VideoModelCache;->getInstance()Lcom/ss/ttvideoengine/VideoModelCache;

    .line 139
    .line 140
    .line 141
    move-result-object p3

    .line 142
    iget-object p4, p0, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->mVideoID:Ljava/lang/String;

    .line 143
    .line 144
    iget-object v2, p0, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->mFallbackAPI:Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {p3, p4, v2}, Lcom/ss/ttvideoengine/VideoModelCache;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    monitor-exit v3

    .line 150
    goto :goto_1

    .line 151
    :catchall_0
    move-exception p1

    .line 152
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    throw p1

    .line 154
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_1
    iget-object p3, p0, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->mNewUrls:[Ljava/lang/String;

    .line 158
    .line 159
    if-eqz p3, :cond_2

    .line 160
    .line 161
    const-string p1, "MDLFetcher"

    .line 162
    .line 163
    new-instance p2, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    const-string/jumbo p3, "start get urls from cache "

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    iget-object p3, p0, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->mNewUrls:[Ljava/lang/String;

    .line 175
    .line 176
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p3

    .line 180
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    return v1

    .line 191
    :cond_2
    :goto_1
    new-instance p3, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

    .line 192
    .line 193
    iget-object p4, p0, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->mContext:Landroid/content/Context;

    .line 194
    .line 195
    invoke-direct {p3, p4, p2}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;-><init>(Landroid/content/Context;Lcom/ss/ttvideoengine/net/TTVNetClient;)V

    .line 196
    .line 197
    .line 198
    iput-object p3, p0, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->mFetcher:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

    .line 199
    .line 200
    iget-object p4, p0, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->mContext:Landroid/content/Context;

    .line 201
    .line 202
    if-eqz p4, :cond_3

    .line 203
    .line 204
    invoke-virtual {p3, v1}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->setUseVideoModelCache(Z)V

    .line 205
    .line 206
    .line 207
    :cond_3
    iget-object p3, p0, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->mFetcher:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

    .line 208
    .line 209
    invoke-virtual {p3, p1}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->setVideoID(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    iget-object p1, p0, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->mFetcher:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

    .line 213
    .line 214
    new-instance p3, Lcom/ss/ttvideoengine/fetcher/MDLFetcher$MyFetcherListener;

    .line 215
    .line 216
    invoke-direct {p3, p0}, Lcom/ss/ttvideoengine/fetcher/MDLFetcher$MyFetcherListener;-><init>(Lcom/ss/ttvideoengine/fetcher/MDLFetcher;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1, p3}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->setListener(Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher$FetcherListener;)V

    .line 220
    .line 221
    .line 222
    iget-object p1, p0, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->mFetcher:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

    .line 223
    .line 224
    iget-object p3, p0, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->mFallbackAPI:Ljava/lang/String;

    .line 225
    .line 226
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 227
    .line 228
    .line 229
    move-result p3

    .line 230
    xor-int/2addr p3, v1

    .line 231
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 232
    .line 233
    .line 234
    move-result-object p3

    .line 235
    invoke-virtual {p1, p3}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->setUseFallbakApi(Ljava/lang/Boolean;)V

    .line 236
    .line 237
    .line 238
    iget-object p1, p0, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->mFetcher:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

    .line 239
    .line 240
    iget-object p3, p0, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->mFallbackAPI:Ljava/lang/String;

    .line 241
    .line 242
    iget-object p4, p0, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->mKeyseed:Ljava/lang/String;

    .line 243
    .line 244
    invoke-virtual {p1, p3, p2, v0, p4}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->fetchInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 245
    .line 246
    .line 247
    return v0

    .line 248
    :catchall_1
    move-exception p1

    .line 249
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 250
    throw p1
.end method
