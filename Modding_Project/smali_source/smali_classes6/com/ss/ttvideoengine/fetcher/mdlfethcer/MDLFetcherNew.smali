.class public Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;
.super Ljava/lang/Object;
.source "MDLFetcherNew.java"

# interfaces
.implements Lcom/ss/mediakit/fetcher/AVMDLURLFetcherInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew$MyFetcherListener;
    }
.end annotation


# static fields
.field private static final CALLBACK_URLS_TO_MDL:I = 0x0

.field private static final MDL_GET_URLS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MDLFetcherNew"


# instance fields
.field private mFetcher:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

.field private mFileHash:Ljava/lang/String;

.field private mListener:Lcom/ss/mediakit/fetcher/AVMDLURLFetcherListener;

.field private mMDLFetcherListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNewUrls:[Ljava/lang/String;

.field private mOldUrl:Ljava/lang/String;

.field private mVideoID:Ljava/lang/String;

.field private mVideoModel:Lcom/ss/ttvideoengine/model/VideoModel;


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->mNewUrls:[Ljava/lang/String;

    .line 6
    .line 7
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->mMDLFetcherListener:Ljava/lang/ref/WeakReference;

    .line 13
    .line 14
    return-void
.end method

.method static synthetic access$000(Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;)Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherListener;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->getMDLFetcherListener()Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherListener;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$100(Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;Lcom/ss/ttvideoengine/utils/Error;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->onError(Lcom/ss/ttvideoengine/utils/Error;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->mNewUrls:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$202(Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->mNewUrls:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$300(Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->mFileHash:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;Lcom/ss/ttvideoengine/model/VideoModel;Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->getUrlsFromVideoModelByFileHash(Lcom/ss/ttvideoengine/model/VideoModel;Ljava/lang/String;)[Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$500(Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->mOldUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$600([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->isNewUrlsValid([Ljava/lang/String;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$700(Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->mVideoID:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$800(Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;)Lcom/ss/mediakit/fetcher/AVMDLURLFetcherListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->mListener:Lcom/ss/mediakit/fetcher/AVMDLURLFetcherListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$900(Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;Lcom/ss/ttvideoengine/model/VideoModel;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->onCompletion(Lcom/ss/ttvideoengine/model/VideoModel;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private getMDLFetcherListener()Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherListener;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->mMDLFetcherListener:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "MDLFetcherNew"

    .line 6
    .line 7
    const-string v1, "getMDLFetcherListener is null"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherListener;

    .line 19
    .line 20
    return-object v0
.end method

.method private getURLsFromCache(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/VideoModelCache;->getInstance()Lcom/ss/ttvideoengine/VideoModelCache;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->mVideoID:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/ss/ttvideoengine/VideoModelCache;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/ttvideoengine/VideoModelCache$VideoModelCacheInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const-string v2, "MDLFetcherNew"

    .line 13
    .line 14
    if-eqz v0, :cond_4

    .line 15
    .line 16
    iget-boolean v3, v0, Lcom/ss/ttvideoengine/VideoModelCache$VideoModelCacheInfo;->isExpired:Z

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget-object v0, v0, Lcom/ss/ttvideoengine/VideoModelCache$VideoModelCacheInfo;->model:Lcom/ss/ttvideoengine/model/VideoModel;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->mVideoModel:Lcom/ss/ttvideoengine/model/VideoModel;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->mFileHash:Ljava/lang/String;

    .line 26
    .line 27
    invoke-direct {p0, v0, v3}, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->getUrlsFromVideoModelByFileHash(Lcom/ss/ttvideoengine/model/VideoModel;Ljava/lang/String;)[Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    array-length v3, v0

    .line 34
    if-gtz v3, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-static {v0, p2}, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->isNewUrlsValid([Ljava/lang/String;Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-nez p2, :cond_2

    .line 42
    .line 43
    invoke-static {}, Lcom/ss/ttvideoengine/VideoModelCache;->getInstance()Lcom/ss/ttvideoengine/VideoModelCache;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->mVideoID:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {p2, v0, p1}, Lcom/ss/ttvideoengine/VideoModelCache;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string p1, "getURLsFromCache urls is invalid"

    .line 53
    .line 54
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-object v1

    .line 58
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string p2, "getURLsFromCache "

    .line 64
    .line 65
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return-object v0

    .line 83
    :cond_3
    :goto_0
    const-string p1, "getURLsFromCache temUrls is null"

    .line 84
    .line 85
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return-object v1

    .line 89
    :cond_4
    :goto_1
    const-string p1, "getURLsFromCache cacheInfo is null or isExpired"

    .line 90
    .line 91
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return-object v1
.end method

.method private getUrlsFromVideoModelByFileHash(Lcom/ss/ttvideoengine/model/VideoModel;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "MDLFetcherNew"

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
    goto :goto_1

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
    const-string v3, "fileid"

    .line 28
    .line 29
    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    const/4 v3, 0x6

    .line 36
    :try_start_0
    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    const/16 v3, 0x1c

    .line 41
    .line 42
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    const-string p2, "fileid index out of bounds"

    .line 51
    .line 52
    invoke-static {v1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_0
    invoke-virtual {p1, v2}, Lcom/ss/ttvideoengine/model/VideoModel;->getVideoInfo(Ljava/util/Map;)Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-nez p1, :cond_2

    .line 60
    .line 61
    const-string p1, "getUrlsFromVideoModelByFileHash videoInfo is null"

    .line 62
    .line 63
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-object v0

    .line 67
    :cond_2
    const/16 p2, 0x10

    .line 68
    .line 69
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStrArr(I)[Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    new-instance p2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v0, "getUrlsFromVideoModelByFileHash "

    .line 79
    .line 80
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-static {v1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return-object p1

    .line 98
    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v2, "getUrlsFromVideoModelByFileHash videoModel is null or fileHash is empty "

    .line 104
    .line 105
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    return-object v0
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
    const-string p0, "MDLFetcherNew"

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

.method private onCompletion(Lcom/ss/ttvideoengine/model/VideoModel;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->getMDLFetcherListener()Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherListener;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->mFileHash:Ljava/lang/String;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2, v1}, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherListener;->onCompletion(Lcom/ss/ttvideoengine/model/VideoModel;ZLjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->close()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private onError(Lcom/ss/ttvideoengine/utils/Error;Z)V
    .locals 4

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->mListener:Lcom/ss/mediakit/fetcher/AVMDLURLFetcherListener;

    .line 4
    .line 5
    iget v0, p1, Lcom/ss/ttvideoengine/utils/Error;->code:I

    .line 6
    .line 7
    iget-object v1, p0, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->mVideoID:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->mFileHash:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-interface {p2, v0, v1, v2, v3}, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherListener;->onCompletion(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-direct {p0}, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->getMDLFetcherListener()Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherListener;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->mFileHash:Ljava/lang/String;

    .line 22
    .line 23
    invoke-interface {p2, p1, v0}, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherListener;->onError(Lcom/ss/ttvideoengine/utils/Error;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget p1, p1, Lcom/ss/ttvideoengine/utils/Error;->code:I

    .line 27
    .line 28
    const/16 v0, -0x2713

    .line 29
    .line 30
    if-ne p1, v0, :cond_1

    .line 31
    .line 32
    invoke-interface {p2}, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherListener;->getOldVideoModel()Lcom/ss/ttvideoengine/model/VideoModel;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/model/VideoModel;->getMediaInfo()Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string p2, "old video model: %s"

    .line 53
    .line 54
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const-string p2, "MDLFetcherNew"

    .line 59
    .line 60
    invoke-static {p2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->close()V

    .line 64
    .line 65
    .line 66
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->mFetcher:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

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
    iput-object v1, p0, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->mFetcher:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

    .line 10
    .line 11
    :cond_0
    iput-object v1, p0, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->mMDLFetcherListener:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    return-void
.end method

.method public getURLs()[Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "mdl getURLs "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->mNewUrls:[Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "MDLFetcherNew"

    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->mNewUrls:[Ljava/lang/String;

    .line 30
    .line 31
    return-object v0
.end method

.method public start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/mediakit/fetcher/AVMDLURLFetcherListener;)I
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "start rawKey "

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ", fileKey "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", olderUrl "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ", listener "

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, "MDLFetcherNew"

    .line 44
    .line 45
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->mVideoID:Ljava/lang/String;

    .line 49
    .line 50
    iput-object p2, p0, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->mFileHash:Ljava/lang/String;

    .line 51
    .line 52
    iput-object p4, p0, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->mListener:Lcom/ss/mediakit/fetcher/AVMDLURLFetcherListener;

    .line 53
    .line 54
    iput-object p3, p0, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->mOldUrl:Ljava/lang/String;

    .line 55
    .line 56
    invoke-direct {p0}, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->getMDLFetcherListener()Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherListener;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    const-string p4, "kTTVideoErrorDomainMDLRetry"

    .line 61
    .line 62
    const/4 v0, 0x1

    .line 63
    const/4 v2, 0x0

    .line 64
    if-nez p2, :cond_0

    .line 65
    .line 66
    const-string/jumbo p1, "start MDLFetcherListener is null return MDL_GET_URLS"

    .line 67
    .line 68
    .line 69
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    new-instance p1, Lcom/ss/ttvideoengine/utils/Error;

    .line 73
    .line 74
    const/16 p2, -0x2711

    .line 75
    .line 76
    const-string p3, "MDLFetcherListener is empty"

    .line 77
    .line 78
    invoke-direct {p1, p4, p2, p3}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-direct {p0, p1, v2}, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->onError(Lcom/ss/ttvideoengine/utils/Error;Z)V

    .line 82
    .line 83
    .line 84
    return v0

    .line 85
    :cond_0
    invoke-interface {p2}, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherListener;->getFallbackApi()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-eqz v4, :cond_1

    .line 94
    .line 95
    const-string/jumbo p1, "start fallbackApi is empty return MDL_GET_URLS"

    .line 96
    .line 97
    .line 98
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    new-instance p1, Lcom/ss/ttvideoengine/utils/Error;

    .line 102
    .line 103
    const/16 p2, -0x2712

    .line 104
    .line 105
    const-string p3, "fallbackApi is empty"

    .line 106
    .line 107
    invoke-direct {p1, p4, p2, p3}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-direct {p0, p1, v2}, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->onError(Lcom/ss/ttvideoengine/utils/Error;Z)V

    .line 111
    .line 112
    .line 113
    return v0

    .line 114
    :cond_1
    invoke-direct {p0, v3, p3}, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->getURLsFromCache(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p3

    .line 118
    if-eqz p3, :cond_2

    .line 119
    .line 120
    array-length p4, p3

    .line 121
    if-lez p4, :cond_2

    .line 122
    .line 123
    iput-object p3, p0, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->mNewUrls:[Ljava/lang/String;

    .line 124
    .line 125
    const-string/jumbo p1, "start return MDL_GET_URLS"

    .line 126
    .line 127
    .line 128
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget-object p1, p0, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->mVideoModel:Lcom/ss/ttvideoengine/model/VideoModel;

    .line 132
    .line 133
    invoke-direct {p0, p1, v2}, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->onCompletion(Lcom/ss/ttvideoengine/model/VideoModel;Z)V

    .line 134
    .line 135
    .line 136
    return v0

    .line 137
    :cond_2
    invoke-interface {p2}, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherListener;->getContext()Landroid/content/Context;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    new-instance p3, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

    .line 142
    .line 143
    const/4 p4, 0x0

    .line 144
    invoke-direct {p3, p2, p4}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;-><init>(Landroid/content/Context;Lcom/ss/ttvideoengine/net/TTVNetClient;)V

    .line 145
    .line 146
    .line 147
    iput-object p3, p0, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->mFetcher:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

    .line 148
    .line 149
    if-eqz p2, :cond_3

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_3
    move v0, v2

    .line 153
    :goto_0
    invoke-virtual {p3, v0}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->setUseVideoModelCache(Z)V

    .line 154
    .line 155
    .line 156
    iget-object p2, p0, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->mFetcher:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

    .line 157
    .line 158
    invoke-virtual {p2, p1}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->setVideoID(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    iget-object p1, p0, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->mFetcher:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

    .line 162
    .line 163
    new-instance p2, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew$MyFetcherListener;

    .line 164
    .line 165
    invoke-direct {p2, p0}, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew$MyFetcherListener;-><init>(Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->setListener(Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher$FetcherListener;)V

    .line 169
    .line 170
    .line 171
    iget-object p1, p0, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->mFetcher:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

    .line 172
    .line 173
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 174
    .line 175
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->setUseFallbakApi(Ljava/lang/Boolean;)V

    .line 176
    .line 177
    .line 178
    iget-object p1, p0, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->mFetcher:Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;

    .line 179
    .line 180
    invoke-virtual {p1, v3, p4, v2, p4}, Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher;->fetchInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 181
    .line 182
    .line 183
    const-string/jumbo p1, "start return CALLBACK_URLS_TO_MDL"

    .line 184
    .line 185
    .line 186
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    return v2
.end method
