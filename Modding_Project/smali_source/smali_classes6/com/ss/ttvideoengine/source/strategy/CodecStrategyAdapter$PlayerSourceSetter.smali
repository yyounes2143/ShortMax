.class Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$PlayerSourceSetter;
.super Ljava/lang/Object;
.source "CodecStrategyAdapter.java"

# interfaces
.implements Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$SourceSetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlayerSourceSetter"
.end annotation


# instance fields
.field mEngine:Lcom/ss/ttvideoengine/TTVideoEngineImpl;


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$PlayerSourceSetter;->mEngine:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 5
    .line 6
    return-void
.end method

.method static synthetic access$000(Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$PlayerSourceSetter;Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$PlayerSourceSetter;->configPlayerWithDimension(Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private configPlayerWithDimension(Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$PlayerSourceSetter;->mEngine:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 5
    .line 6
    const/16 v1, 0x3e8

    .line 7
    .line 8
    iget-object v2, p1, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;->encodeType:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->setStringOption(ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget v0, p1, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;->decoder:I

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x7

    .line 17
    const/4 v3, 0x1

    .line 18
    if-ne v0, v3, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$PlayerSourceSetter;->mEngine:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 21
    .line 22
    invoke-virtual {v0, v2, v3}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->setIntOption(II)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p1, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;->encodeType:Ljava/lang/String;

    .line 26
    .line 27
    const-string v2, "h265"

    .line 28
    .line 29
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object p1, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$PlayerSourceSetter;->mEngine:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 36
    .line 37
    invoke-virtual {p1, v3, v3}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->setAsyncInit(ZI)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object p1, p1, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;->encodeType:Ljava/lang/String;

    .line 42
    .line 43
    const-string v0, "h264"

    .line 44
    .line 45
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    iget-object p1, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$PlayerSourceSetter;->mEngine:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 52
    .line 53
    invoke-virtual {p1, v3, v1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->setAsyncInit(ZI)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    iget-object p1, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$PlayerSourceSetter;->mEngine:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 58
    .line 59
    invoke-virtual {p1, v2, v1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->setIntOption(II)V

    .line 60
    .line 61
    .line 62
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public createTag()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$PlayerSourceSetter;->mEngine:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/ss/ttvideoengine/TTVideoEngineInternal;->logcatTag(Lcom/ss/ttvideoengine/TTVideoEngineInternal;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, "_"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, "CodecStrategy"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method public play()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$PlayerSourceSetter;->mEngine:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->play()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDirectUrl(Ljava/lang/String;Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;Z)V
    .locals 8
    .param p3    # Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$PlayerSourceSetter;->createTag()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string/jumbo v2, "setDirectUrl vid = "

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, ", urlItem = "

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, ", dimension = "

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, ", isFetchSmartUrl = "

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    if-eqz p4, :cond_0

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_0
    invoke-virtual {p2}, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;->getUrlExpiredTime()J

    .line 54
    .line 55
    .line 56
    move-result-wide v0

    .line 57
    const-wide/16 v2, 0x0

    .line 58
    .line 59
    cmp-long p4, v0, v2

    .line 60
    .line 61
    if-gtz p4, :cond_2

    .line 62
    .line 63
    invoke-virtual {p2}, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;->getUrlExpires()[Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p4

    .line 67
    if-eqz p4, :cond_1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    iget-object p4, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$PlayerSourceSetter;->mEngine:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 71
    .line 72
    invoke-virtual {p2}, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;->getUrls()[Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p2}, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;->getCacheKey()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {p4, v0, v1, p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->setDirectUrlUseDataLoader([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    :goto_0
    iget-object p4, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$PlayerSourceSetter;->mEngine:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 85
    .line 86
    new-instance v7, Lcom/ss/ttvideoengine/DirectUrlItem;

    .line 87
    .line 88
    invoke-virtual {p2}, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;->getUrls()[Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {p2}, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;->getCacheKey()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {p2}, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;->getUrlExpiredTime()J

    .line 97
    .line 98
    .line 99
    move-result-wide v4

    .line 100
    invoke-virtual {p2}, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;->getUrlExpires()[Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    move-object v0, v7

    .line 105
    move-object v3, p1

    .line 106
    invoke-direct/range {v0 .. v6}, Lcom/ss/ttvideoengine/DirectUrlItem;-><init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p4, v7}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->setDirectUrlUseDataLoader(Lcom/ss/ttvideoengine/DirectUrlItem;)V

    .line 110
    .line 111
    .line 112
    :goto_1
    invoke-virtual {p2}, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;->getPlayAuth()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    if-eqz p1, :cond_3

    .line 117
    .line 118
    iget-object p1, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$PlayerSourceSetter;->mEngine:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 119
    .line 120
    invoke-virtual {p2}, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;->getPlayAuth()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->setEncodedKey(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :cond_3
    :goto_2
    const/16 p1, 0x29e

    .line 128
    .line 129
    if-eqz p3, :cond_4

    .line 130
    .line 131
    invoke-direct {p0, p3}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$PlayerSourceSetter;->configPlayerWithDimension(Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;)V

    .line 132
    .line 133
    .line 134
    iget-object p2, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$PlayerSourceSetter;->mEngine:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 135
    .line 136
    const/4 p3, 0x0

    .line 137
    invoke-virtual {p2, p1, p3}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->setIntOption(II)V

    .line 138
    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_4
    iget-object p2, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$PlayerSourceSetter;->mEngine:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 142
    .line 143
    const/4 p3, 0x1

    .line 144
    invoke-virtual {p2, p1, p3}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->setIntOption(II)V

    .line 145
    .line 146
    .line 147
    :goto_3
    return-void
.end method

.method public setEncodedKey(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$PlayerSourceSetter;->mEngine:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->setEncodedKey(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setStringOption(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$PlayerSourceSetter;->mEngine:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->setStringOption(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setVideoID(Ljava/lang/String;Ljava/lang/String;Lcom/ss/ttvideoengine/Resolution;Ljava/lang/String;Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;)V
    .locals 3
    .param p3    # Lcom/ss/ttvideoengine/Resolution;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$PlayerSourceSetter;->createTag()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string/jumbo v2, "setVideoID vid = "

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, ", playAuthToken = "

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, ", dimension = "

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$PlayerSourceSetter;->mEngine:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->setVideoID(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$PlayerSourceSetter;->mEngine:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->setPlayAuthToken(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/16 p1, 0x29e

    .line 53
    .line 54
    if-eqz p5, :cond_0

    .line 55
    .line 56
    invoke-direct {p0, p5}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$PlayerSourceSetter;->configPlayerWithDimension(Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;)V

    .line 57
    .line 58
    .line 59
    iget-object p2, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$PlayerSourceSetter;->mEngine:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 60
    .line 61
    const/4 p4, 0x0

    .line 62
    invoke-virtual {p2, p1, p4}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->setIntOption(II)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    if-eqz p4, :cond_1

    .line 67
    .line 68
    iget-object p2, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$PlayerSourceSetter;->mEngine:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 69
    .line 70
    const/16 p5, 0x3e8

    .line 71
    .line 72
    invoke-virtual {p2, p5, p4}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->setStringOption(ILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object p2, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$PlayerSourceSetter;->mEngine:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 76
    .line 77
    const/4 p4, 0x1

    .line 78
    invoke-virtual {p2, p1, p4}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->setIntOption(II)V

    .line 79
    .line 80
    .line 81
    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 82
    .line 83
    iget-object p1, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$PlayerSourceSetter;->mEngine:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 84
    .line 85
    invoke-virtual {p1, p3}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->configResolution(Lcom/ss/ttvideoengine/Resolution;)V

    .line 86
    .line 87
    .line 88
    :cond_2
    return-void
.end method

.method public setVideoModel(Ljava/lang/String;Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/Resolution;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$PlayerSourceSetter;->createTag()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string/jumbo v2, "setVideoModel vid = "

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p1, ", videoModel = "

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p1, ", resolution = "

    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$PlayerSourceSetter;->mEngine:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->setVideoModel(Lcom/ss/ttvideoengine/model/IVideoModel;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$PlayerSourceSetter;->mEngine:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 48
    .line 49
    invoke-virtual {p1, p3}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->configResolution(Lcom/ss/ttvideoengine/Resolution;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$PlayerSourceSetter;->mEngine:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->stop()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public type()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
