.class public Lcom/ss/ttvideoengine/preload/PreloadURLMedia;
.super Lcom/ss/ttvideoengine/preload/PreloadMedia;
.source "PreloadURLMedia.java"


# instance fields
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

.field private mProvider:Lcom/ss/ttvideoengine/DataLoaderResourceProvider;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mUrls:[Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLcom/ss/ttvideoengine/DataLoaderResourceProvider;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 8
    invoke-direct {p0}, Lcom/ss/ttvideoengine/preload/PreloadMedia;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadURLMedia;->mUrls:[Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadURLMedia;->mHeaders:Ljava/util/HashMap;

    .line 11
    iput-object p5, p0, Lcom/ss/ttvideoengine/preload/PreloadURLMedia;->mProvider:Lcom/ss/ttvideoengine/DataLoaderResourceProvider;

    .line 12
    iput-object p2, p0, Lcom/ss/ttvideoengine/preload/PreloadMedia;->mVideoId:Ljava/lang/String;

    .line 13
    iput-wide p3, p0, Lcom/ss/ttvideoengine/preload/PreloadMedia;->mPreloadSize:J

    .line 14
    iput-object p1, p0, Lcom/ss/ttvideoengine/preload/PreloadMedia;->mCacheKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J[Ljava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/preload/PreloadMedia;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadURLMedia;->mProvider:Lcom/ss/ttvideoengine/DataLoaderResourceProvider;

    .line 3
    iput-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadURLMedia;->mHeaders:Ljava/util/HashMap;

    .line 4
    iput-object p1, p0, Lcom/ss/ttvideoengine/preload/PreloadMedia;->mCacheKey:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/ss/ttvideoengine/preload/PreloadMedia;->mVideoId:Ljava/lang/String;

    .line 6
    iput-wide p3, p0, Lcom/ss/ttvideoengine/preload/PreloadMedia;->mPreloadSize:J

    .line 7
    iput-object p5, p0, Lcom/ss/ttvideoengine/preload/PreloadURLMedia;->mUrls:[Ljava/lang/String;

    return-void
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
    iget-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadURLMedia;->mHeaders:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-super {p0, p1}, Lcom/ss/ttvideoengine/preload/PreloadMedia;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    return v2

    .line 13
    :cond_1
    instance-of v1, p1, Lcom/ss/ttvideoengine/preload/PreloadURLMedia;

    .line 14
    .line 15
    if-nez v1, :cond_2

    .line 16
    .line 17
    return v0

    .line 18
    :cond_2
    check-cast p1, Lcom/ss/ttvideoengine/preload/PreloadURLMedia;

    .line 19
    .line 20
    iget-wide v3, p0, Lcom/ss/ttvideoengine/preload/PreloadMedia;->mPreloadSize:J

    .line 21
    .line 22
    iget-wide v5, p1, Lcom/ss/ttvideoengine/preload/PreloadMedia;->mPreloadSize:J

    .line 23
    .line 24
    cmp-long v1, v3, v5

    .line 25
    .line 26
    if-nez v1, :cond_3

    .line 27
    .line 28
    iget-object v1, p0, Lcom/ss/ttvideoengine/preload/PreloadMedia;->mCacheKey:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v3, p1, Lcom/ss/ttvideoengine/preload/PreloadMedia;->mCacheKey:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    move v1, v2

    .line 39
    goto :goto_0

    .line 40
    :cond_3
    move v1, v0

    .line 41
    :goto_0
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/preload/PreloadMedia;->getCallBackListener()Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    if-nez v3, :cond_4

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/preload/PreloadMedia;->getCallBackListener()Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    if-eqz v3, :cond_8

    .line 52
    .line 53
    :cond_4
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/preload/PreloadMedia;->getCallBackListener()Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    if-eqz v3, :cond_5

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/preload/PreloadMedia;->getCallBackListener()Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    if-nez v3, :cond_6

    .line 64
    .line 65
    :cond_5
    move v1, v0

    .line 66
    :cond_6
    if-eqz v1, :cond_8

    .line 67
    .line 68
    if-eqz v1, :cond_7

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/preload/PreloadMedia;->getCallBackListener()Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/preload/PreloadMedia;->getCallBackListener()Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    if-ne v1, v3, :cond_7

    .line 79
    .line 80
    move v1, v2

    .line 81
    goto :goto_1

    .line 82
    :cond_7
    move v1, v0

    .line 83
    :cond_8
    :goto_1
    iget-object v3, p0, Lcom/ss/ttvideoengine/preload/PreloadURLMedia;->mProvider:Lcom/ss/ttvideoengine/DataLoaderResourceProvider;

    .line 84
    .line 85
    if-nez v3, :cond_9

    .line 86
    .line 87
    iget-object v4, p1, Lcom/ss/ttvideoengine/preload/PreloadURLMedia;->mProvider:Lcom/ss/ttvideoengine/DataLoaderResourceProvider;

    .line 88
    .line 89
    if-eqz v4, :cond_d

    .line 90
    .line 91
    :cond_9
    if-eqz v3, :cond_a

    .line 92
    .line 93
    iget-object v4, p1, Lcom/ss/ttvideoengine/preload/PreloadURLMedia;->mProvider:Lcom/ss/ttvideoengine/DataLoaderResourceProvider;

    .line 94
    .line 95
    if-nez v4, :cond_b

    .line 96
    .line 97
    :cond_a
    move v1, v0

    .line 98
    :cond_b
    if-eqz v1, :cond_d

    .line 99
    .line 100
    if-eqz v1, :cond_c

    .line 101
    .line 102
    iget-object p1, p1, Lcom/ss/ttvideoengine/preload/PreloadURLMedia;->mProvider:Lcom/ss/ttvideoengine/DataLoaderResourceProvider;

    .line 103
    .line 104
    if-ne v3, p1, :cond_c

    .line 105
    .line 106
    move v0, v2

    .line 107
    :cond_c
    move v1, v0

    .line 108
    :cond_d
    return v1
.end method

.method public getProvider()Lcom/ss/ttvideoengine/DataLoaderResourceProvider;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadURLMedia;->mProvider:Lcom/ss/ttvideoengine/DataLoaderResourceProvider;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUrls()[Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadURLMedia;->mUrls:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/ss/ttvideoengine/preload/PreloadMedia;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/ss/ttvideoengine/preload/PreloadURLMedia;->mProvider:Lcom/ss/ttvideoengine/DataLoaderResourceProvider;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-super {p0}, Lcom/ss/ttvideoengine/preload/PreloadMedia;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/ss/ttvideoengine/preload/PreloadURLMedia;->mProvider:Lcom/ss/ttvideoengine/DataLoaderResourceProvider;

    .line 18
    .line 19
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    :cond_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/preload/PreloadURLMedia;->mUrls:[Ljava/lang/String;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    mul-int/lit8 v0, v0, 0x1f

    .line 32
    .line 33
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    add-int/2addr v0, v1

    .line 38
    :cond_1
    return v0
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
    iget-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadURLMedia;->mHeaders:Ljava/util/HashMap;

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
    iput-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadURLMedia;->mHeaders:Ljava/util/HashMap;

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/preload/PreloadURLMedia;->mHeaders:Ljava/util/HashMap;

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

.method public setProvider(Lcom/ss/ttvideoengine/DataLoaderResourceProvider;)V
    .locals 0
    .param p1    # Lcom/ss/ttvideoengine/DataLoaderResourceProvider;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/preload/PreloadURLMedia;->mProvider:Lcom/ss/ttvideoengine/DataLoaderResourceProvider;

    .line 2
    .line 3
    return-void
.end method

.method public setUrls([Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/preload/PreloadURLMedia;->mUrls:[Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
