.class public final Lpf/l;
.super Ljava/lang/Object;
.source "StrategySourceUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nStrategySourceUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StrategySourceUtil.kt\ncom/startshorts/androidplayer/manager/player/util/StrategySourceUtil\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,153:1\n1863#2,2:154\n*S KotlinDebug\n*F\n+ 1 StrategySourceUtil.kt\ncom/startshorts/androidplayer/manager/player/util/StrategySourceUtil\n*L\n80#1:154,2\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lpf/l;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lpf/l;

    .line 2
    .line 3
    invoke-direct {v0}, Lpf/l;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lpf/l;->a:Lpf/l;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/ss/ttvideoengine/Resolution;Ljava/lang/Long;Ljava/lang/String;Z)Lcom/ss/ttvideoengine/model/BareVideoInfo;
    .locals 2

    .line 1
    if-eqz p9, :cond_0

    .line 2
    .line 3
    sget-object p9, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "createBareVideoInfo -> fileHash("

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ") url("

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ") expiryTime("

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, ") duration("

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, ") resolution("

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, ") bitrate("

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v1, ") codec("

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const/16 v1, 0x29

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const-string v1, "StrategySourceUtil"

    .line 76
    .line 77
    invoke-virtual {p9, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :cond_0
    new-instance p9, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;

    .line 81
    .line 82
    invoke-direct {p9}, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p9, p1}, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->fileHash(Ljava/lang/String;)Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    const/4 p9, 0x0

    .line 90
    invoke-virtual {p1, p9}, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->mediaType(I)Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->addUrl(Ljava/lang/String;)Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p1, p3}, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->addUrlExpire(Ljava/lang/String;)Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1, p4, p5}, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->duration(J)Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    const-string p2, "hls"

    .line 107
    .line 108
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->format(Ljava/lang/String;)Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    if-eqz p7, :cond_1

    .line 113
    .line 114
    invoke-virtual {p7}, Ljava/lang/Long;->longValue()J

    .line 115
    .line 116
    .line 117
    move-result-wide p2

    .line 118
    goto :goto_0

    .line 119
    :cond_1
    const-wide/16 p2, 0x0

    .line 120
    .line 121
    :goto_0
    invoke-virtual {p1, p2, p3}, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->bitrate(J)Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p1, p8}, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->codecType(Ljava/lang/String;)Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {p1, p6}, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->resolution(Lcom/ss/ttvideoengine/Resolution;)Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/model/BareVideoInfo$Builder;->build()Lcom/ss/ttvideoengine/model/BareVideoInfo;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    const-string p2, "build(...)"

    .line 138
    .line 139
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    return-object p1
.end method

.method private final d(Ljava/lang/String;JLjava/util/ArrayList;Lcom/ss/ttvideoengine/Resolution;Z)Lcom/ss/ttvideoengine/strategy/source/StrategySource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/ArrayList<",
            "Lcom/ss/ttvideoengine/model/BareVideoInfo;",
            ">;",
            "Lcom/ss/ttvideoengine/Resolution;",
            "Z)",
            "Lcom/ss/ttvideoengine/strategy/source/StrategySource;"
        }
    .end annotation

    .line 1
    if-eqz p6, :cond_0

    .line 2
    .line 3
    sget-object p6, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "createVideoModelSource -> cacheKey("

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ") duration("

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ") resolution("

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const/16 v1, 0x29

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, "StrategySourceUtil"

    .line 44
    .line 45
    invoke-virtual {p6, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    new-instance p6, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;

    .line 49
    .line 50
    invoke-direct {p6}, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p6, p1}, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;->vid(Ljava/lang/String;)Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;

    .line 54
    .line 55
    .line 56
    move-result-object p6

    .line 57
    invoke-virtual {p6, p2, p3}, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;->duration(J)Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p2, p4}, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;->setVideoInfos(Ljava/util/List;)Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    const/4 p3, 0x1

    .line 66
    invoke-virtual {p2, p3}, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;->adaptive(Z)Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p2}, Lcom/ss/ttvideoengine/model/BareVideoModel$Builder;->build()Lcom/ss/ttvideoengine/model/BareVideoModel;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    new-instance p3, Lcom/ss/ttvideoengine/source/VideoModelSource$Builder;

    .line 75
    .line 76
    invoke-direct {p3}, Lcom/ss/ttvideoengine/source/VideoModelSource$Builder;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3, p1}, Lcom/ss/ttvideoengine/source/VideoModelSource$Builder;->setVid(Ljava/lang/String;)Lcom/ss/ttvideoengine/source/VideoModelSource$Builder;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/source/VideoModelSource$Builder;->setVideoModel(Lcom/ss/ttvideoengine/model/IVideoModel;)Lcom/ss/ttvideoengine/source/VideoModelSource$Builder;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p1, p5}, Lcom/ss/ttvideoengine/source/VideoModelSource$Builder;->setResolution(Lcom/ss/ttvideoengine/Resolution;)Lcom/ss/ttvideoengine/source/VideoModelSource$Builder;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/source/VideoModelSource$Builder;->build()Lcom/ss/ttvideoengine/source/VideoModelSource;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const-string p2, "build(...)"

    .line 96
    .line 97
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    return-object p1
.end method

.method public static synthetic e(Lpf/l;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;ZILjava/lang/Object;)Lcom/ss/ttvideoengine/strategy/source/StrategySource;
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x4

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    :cond_0
    and-int/lit8 p5, p5, 0x8

    .line 7
    .line 8
    if-eqz p5, :cond_1

    .line 9
    .line 10
    const/4 p4, 0x1

    .line 11
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lpf/l;->c(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Z)Lcom/ss/ttvideoengine/strategy/source/StrategySource;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lcom/ss/ttvideoengine/source/DirectUrlSource;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string/jumbo v0, "url"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ljk/v;->e(Ljava/lang/String;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    sget-object v2, Lpf/a;->a:Lpf/a;

    .line 12
    .line 13
    invoke-virtual {v2, p1}, Lpf/a;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    sget-object v3, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 18
    .line 19
    new-instance v4, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v5, "createDirectUrlSource -> url("

    .line 25
    .line 26
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v5, ") cacheKey("

    .line 33
    .line 34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v5, ") expiryTime("

    .line 41
    .line 42
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const/16 v5, 0x29

    .line 49
    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    const-string v5, "StrategySourceUtil"

    .line 58
    .line 59
    invoke-virtual {v3, v5, v4}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    new-instance v3, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;

    .line 63
    .line 64
    invoke-direct {v3}, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, p1}, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;->setUrl(Ljava/lang/String;)Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1, v2}, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;->setCacheKey(Ljava/lang/String;)Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;->setUrlExpire(Ljava/lang/String;)Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem$Builder;->build()Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    new-instance v0, Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;

    .line 88
    .line 89
    invoke-direct {v0}, Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v2}, Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;->setVid(Ljava/lang/String;)Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;->addItem(Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;)Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/source/DirectUrlSource$Builder;->build()Lcom/ss/ttvideoengine/source/DirectUrlSource;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    const-string v0, "build(...)"

    .line 105
    .line 106
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    return-object p1
.end method

.method public final c(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Z)Lcom/ss/ttvideoengine/strategy/source/StrategySource;
    .locals 20
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move/from16 v11, p4

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isDownloadFinished()Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v3, v2

    .line 16
    :goto_0
    if-eqz v3, :cond_1

    .line 17
    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getDownloadResolution()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-virtual {v0, v3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->parseVideoUrl(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    sget-object v0, Lpf/l;->a:Lpf/l;

    .line 29
    .line 30
    invoke-virtual {v0, v3}, Lpf/l;->b(Ljava/lang/String;)Lcom/ss/ttvideoengine/source/DirectUrlSource;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0

    .line 35
    :cond_1
    const/4 v12, 0x0

    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    return-object v12

    .line 39
    :cond_2
    sget-object v3, Lpf/k;->a:Lpf/k;

    .line 40
    .line 41
    invoke-virtual {v3, v0, v11}, Lpf/k;->l(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Z)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_3

    .line 50
    .line 51
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 52
    .line 53
    const-string v2, "StrategySourceUtil"

    .line 54
    .line 55
    const-string v3, "createVideoModelSource failed -> playableResolution is empty"

    .line 56
    .line 57
    invoke-virtual {v1, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    sget-object v4, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 61
    .line 62
    invoke-virtual {v4, v0}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    const/4 v9, 0x4

    .line 67
    const/4 v10, 0x0

    .line 68
    const-string v5, "reel_playable_resolution_empty"

    .line 69
    .line 70
    const-wide/16 v7, 0x0

    .line 71
    .line 72
    invoke-static/range {v4 .. v10}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    return-object v12

    .line 76
    :cond_3
    if-eqz v0, :cond_4

    .line 77
    .line 78
    const/4 v5, 0x1

    .line 79
    invoke-static {v0, v2, v5, v12}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->parseVideoUrl$default(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;IILjava/lang/Object;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    if-nez v2, :cond_5

    .line 84
    .line 85
    :cond_4
    move-object v0, v12

    .line 86
    goto/16 :goto_5

    .line 87
    .line 88
    :cond_5
    invoke-virtual {v3, v0, v1, v11}, Lpf/k;->p(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Z)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    if-nez v5, :cond_6

    .line 93
    .line 94
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->isAuto()Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-eqz v1, :cond_6

    .line 99
    .line 100
    move-object/from16 v5, p3

    .line 101
    .line 102
    :cond_6
    if-nez v5, :cond_7

    .line 103
    .line 104
    invoke-virtual {v3, v4}, Lpf/k;->j(Ljava/util/List;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    :cond_7
    move-object v13, v5

    .line 109
    invoke-static {v2}, Ljk/v;->e(Ljava/lang/String;)J

    .line 110
    .line 111
    .line 112
    move-result-wide v14

    .line 113
    sget-object v1, Lpf/a;->a:Lpf/a;

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Lpf/a;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v16

    .line 119
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getVideoDuration()J

    .line 120
    .line 121
    .line 122
    move-result-wide v17

    .line 123
    new-instance v10, Ljava/util/ArrayList;

    .line 124
    .line 125
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3, v0}, Lpf/k;->r(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    check-cast v1, Ljava/lang/Iterable;

    .line 133
    .line 134
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 135
    .line 136
    .line 137
    move-result-object v19

    .line 138
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-eqz v1, :cond_a

    .line 143
    .line 144
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    check-cast v1, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 149
    .line 150
    sget-object v2, Lpf/l;->a:Lpf/l;

    .line 151
    .line 152
    sget-object v3, Lpf/a;->a:Lpf/a;

    .line 153
    .line 154
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getUrl()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    invoke-virtual {v3, v4}, Lpf/a;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getUrl()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolution()Lcom/ss/ttvideoengine/Resolution;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getParsedBitrate()Lcom/startshorts/androidplayer/bean/shorts/EpisodeBitrate;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    if-eqz v6, :cond_8

    .line 179
    .line 180
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolutionValue()I

    .line 181
    .line 182
    .line 183
    move-result v8

    .line 184
    invoke-virtual {v6, v8}, Lcom/startshorts/androidplayer/bean/shorts/EpisodeBitrate;->getBitrate(I)Ljava/lang/Long;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    move-object v8, v6

    .line 189
    goto :goto_2

    .line 190
    :cond_8
    move-object v8, v12

    .line 191
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getParsedCodec()Lcom/startshorts/androidplayer/bean/shorts/EpisodeCodec;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    if-eqz v6, :cond_9

    .line 196
    .line 197
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolutionValue()I

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    invoke-virtual {v6, v1}, Lcom/startshorts/androidplayer/bean/shorts/EpisodeCodec;->getCodec(I)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    move-object v9, v1

    .line 206
    goto :goto_3

    .line 207
    :cond_9
    move-object v9, v12

    .line 208
    :goto_3
    move-object v1, v2

    .line 209
    move-object v2, v3

    .line 210
    move-object v3, v4

    .line 211
    move-object v4, v5

    .line 212
    move-wide/from16 v5, v17

    .line 213
    .line 214
    move-object v12, v10

    .line 215
    move/from16 v10, p4

    .line 216
    .line 217
    invoke-direct/range {v1 .. v10}, Lpf/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/ss/ttvideoengine/Resolution;Ljava/lang/Long;Ljava/lang/String;Z)Lcom/ss/ttvideoengine/model/BareVideoInfo;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-object v10, v12

    .line 225
    const/4 v12, 0x0

    .line 226
    goto :goto_1

    .line 227
    :cond_a
    move-object v12, v10

    .line 228
    if-eqz v13, :cond_b

    .line 229
    .line 230
    invoke-virtual {v13}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolution()Lcom/ss/ttvideoengine/Resolution;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    move-object v5, v0

    .line 235
    goto :goto_4

    .line 236
    :cond_b
    const/4 v5, 0x0

    .line 237
    :goto_4
    move-object/from16 v0, p0

    .line 238
    .line 239
    move-object/from16 v1, v16

    .line 240
    .line 241
    move-wide/from16 v2, v17

    .line 242
    .line 243
    move-object v4, v12

    .line 244
    move/from16 v6, p4

    .line 245
    .line 246
    invoke-direct/range {v0 .. v6}, Lpf/l;->d(Ljava/lang/String;JLjava/util/ArrayList;Lcom/ss/ttvideoengine/Resolution;Z)Lcom/ss/ttvideoengine/strategy/source/StrategySource;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    :goto_5
    return-object v0
.end method
