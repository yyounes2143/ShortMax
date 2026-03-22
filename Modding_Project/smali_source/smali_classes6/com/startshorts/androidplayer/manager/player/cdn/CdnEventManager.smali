.class public final Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;
.super Ljava/lang/Object;
.source "CdnEventManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCdnEventManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CdnEventManager.kt\ncom/startshorts/androidplayer/manager/player/cdn/CdnEventManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,424:1\n1863#2,2:425\n*S KotlinDebug\n*F\n+ 1 CdnEventManager.kt\ncom/startshorts/androidplayer/manager/player/cdn/CdnEventManager\n*L\n78#1:425,2\n*E\n"
    }
.end annotation


# static fields
.field public static final c:Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jiuzhou/cdn/model/request/CdnEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->c:Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->a:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method

.method private final a(Lcom/ss/ttvideoengine/Resolution;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/Resolution;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "toString(...)"

    .line 6
    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object p1
.end method

.method private final b(Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolutionValue()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 p1, 0x70

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method private final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v1, "_720"

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x2

    .line 16
    const/4 v4, 0x0

    .line 17
    invoke-static {p1, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    const-string v0, "720p"

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const-string v1, "_1080"

    .line 27
    .line 28
    invoke-static {p1, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    const-string v0, "1080p"

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const-string v1, "_480"

    .line 38
    .line 39
    invoke-static {p1, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_3

    .line 44
    .line 45
    const-string v0, "480p"

    .line 46
    .line 47
    :cond_3
    :goto_0
    return-object v0
.end method

.method private final d(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
    .locals 3

    .line 1
    sget-object v0, Lpf/k;->a:Lpf/k;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, p2, v1}, Lpf/k;->p(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Z)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->isAuto()Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, p1, v1}, Lpf/k;->l(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Z)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v0, p1}, Lpf/k;->j(Ljava/util/List;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    :cond_0
    return-object v2
.end method

.method private final e(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/ss/ttvideoengine/Resolution;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p2}, Lcom/ss/ttvideoengine/Resolution;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string/jumbo p2, "toString(...)"

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x4

    .line 12
    const/4 v5, 0x0

    .line 13
    const-string v1, "p"

    .line 14
    .line 15
    const-string v2, ""

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->parseVideoUrl(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method

.method private final f()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method


# virtual methods
.method public final g(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;JLjava/lang/String;)V
    .locals 22
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "episode"

    .line 6
    .line 7
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "resolution"

    .line 11
    .line 12
    move-object/from16 v3, p2

    .line 13
    .line 14
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v2, "networkType"

    .line 18
    .line 19
    move-object/from16 v10, p5

    .line 20
    .line 21
    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->f()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iget-object v2, v1, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->b:Ljava/lang/String;

    .line 32
    .line 33
    const-string v8, "CdnEventManager"

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_2

    .line 42
    .line 43
    :cond_1
    move-object v3, v8

    .line 44
    goto/16 :goto_4

    .line 45
    .line 46
    :cond_2
    :try_start_0
    invoke-direct/range {p0 .. p2}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->d(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    if-nez v2, :cond_3

    .line 51
    .line 52
    return-void

    .line 53
    :cond_3
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolutionValue()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-virtual {v0, v3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->parseVideoUrl(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    if-nez v3, :cond_4

    .line 62
    .line 63
    return-void

    .line 64
    :cond_4
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v5, "://"

    .line 81
    .line 82
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getNeedDecrypt()Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-eqz v3, :cond_5

    .line 105
    .line 106
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->b(Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    :goto_0
    move-object v7, v2

    .line 111
    goto :goto_1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    move-object/from16 v21, v8

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_5
    invoke-direct {v1, v6}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    goto :goto_0

    .line 121
    :goto_1
    sget-object v3, Lcom/jiuzhou/cdn/repo/CdnRepo;->a:Lcom/jiuzhou/cdn/repo/CdnRepo;

    .line 122
    .line 123
    const-string v4, "EVENT_FIRST_FRAME"

    .line 124
    .line 125
    iget-object v2, v1, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->b:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getVideoDuration()J

    .line 128
    .line 129
    .line 130
    move-result-wide v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    long-to-int v0, v11

    .line 132
    move/from16 v16, v0

    .line 133
    .line 134
    const/16 v19, 0x27c0

    .line 135
    .line 136
    const/16 v20, 0x0

    .line 137
    .line 138
    const/4 v11, 0x0

    .line 139
    const/4 v12, 0x0

    .line 140
    const/4 v13, 0x0

    .line 141
    const/4 v14, 0x0

    .line 142
    const/4 v15, 0x0

    .line 143
    const/16 v18, 0x0

    .line 144
    .line 145
    move-object/from16 v21, v8

    .line 146
    .line 147
    move-wide/from16 v8, p3

    .line 148
    .line 149
    move-object v10, v2

    .line 150
    move-object/from16 v17, p5

    .line 151
    .line 152
    :try_start_1
    invoke-static/range {v3 .. v20}, Lcom/jiuzhou/cdn/repo/CdnRepo;->b(Lcom/jiuzhou/cdn/repo/CdnRepo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/jiuzhou/cdn/model/request/CdnEvent;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    iget-object v2, v1, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->a:Ljava/util/List;

    .line 157
    .line 158
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 159
    .line 160
    .line 161
    goto :goto_3

    .line 162
    :catch_1
    move-exception v0

    .line 163
    :goto_2
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 164
    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    .line 170
    const-string v4, "logFirstFrame failed -> "

    .line 171
    .line 172
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    move-object/from16 v3, v21

    .line 187
    .line 188
    invoke-virtual {v2, v3, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    :goto_3
    return-void

    .line 192
    :goto_4
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 193
    .line 194
    const-string v2, "logFirstFrame failed -> mPlayId is null"

    .line 195
    .line 196
    invoke-virtual {v0, v3, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    return-void
.end method

.method public final h(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;JLjava/lang/String;Ljava/lang/String;)V
    .locals 22
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "episode"

    .line 6
    .line 7
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "resolution"

    .line 11
    .line 12
    move-object/from16 v3, p2

    .line 13
    .line 14
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v2, "action"

    .line 18
    .line 19
    move-object/from16 v15, p5

    .line 20
    .line 21
    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v2, "networkType"

    .line 25
    .line 26
    move-object/from16 v10, p6

    .line 27
    .line 28
    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->f()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iget-object v2, v1, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->b:Ljava/lang/String;

    .line 39
    .line 40
    const-string v8, "CdnEventManager"

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_2

    .line 49
    .line 50
    :cond_1
    move-object v3, v8

    .line 51
    goto/16 :goto_4

    .line 52
    .line 53
    :cond_2
    :try_start_0
    invoke-direct/range {p0 .. p2}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->d(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    if-nez v2, :cond_3

    .line 58
    .line 59
    return-void

    .line 60
    :cond_3
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolutionValue()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    invoke-virtual {v0, v3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->parseVideoUrl(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    if-nez v3, :cond_4

    .line 69
    .line 70
    return-void

    .line 71
    :cond_4
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v5, "://"

    .line 88
    .line 89
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getNeedDecrypt()Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-eqz v3, :cond_5

    .line 112
    .line 113
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->b(Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    :goto_0
    move-object v7, v2

    .line 118
    goto :goto_1

    .line 119
    :catch_0
    move-exception v0

    .line 120
    move-object/from16 v21, v8

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_5
    invoke-direct {v1, v6}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    goto :goto_0

    .line 128
    :goto_1
    sget-object v3, Lcom/jiuzhou/cdn/repo/CdnRepo;->a:Lcom/jiuzhou/cdn/repo/CdnRepo;

    .line 129
    .line 130
    iget-object v2, v1, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->b:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getVideoDuration()J

    .line 133
    .line 134
    .line 135
    move-result-wide v11

    .line 136
    long-to-int v0, v11

    .line 137
    const-string v4, "EVENT_VIDEO_PLAY_BLOCK_END"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .line 139
    const/16 v19, 0x23c0

    .line 140
    .line 141
    const/16 v20, 0x0

    .line 142
    .line 143
    const/4 v11, 0x0

    .line 144
    const/4 v12, 0x0

    .line 145
    const/4 v13, 0x0

    .line 146
    const/4 v14, 0x0

    .line 147
    const/16 v18, 0x0

    .line 148
    .line 149
    move-object/from16 v21, v8

    .line 150
    .line 151
    move-wide/from16 v8, p3

    .line 152
    .line 153
    move-object v10, v2

    .line 154
    move-object/from16 v15, p5

    .line 155
    .line 156
    move/from16 v16, v0

    .line 157
    .line 158
    move-object/from16 v17, p6

    .line 159
    .line 160
    :try_start_1
    invoke-static/range {v3 .. v20}, Lcom/jiuzhou/cdn/repo/CdnRepo;->b(Lcom/jiuzhou/cdn/repo/CdnRepo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/jiuzhou/cdn/model/request/CdnEvent;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    iget-object v2, v1, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->a:Ljava/util/List;

    .line 165
    .line 166
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 167
    .line 168
    .line 169
    goto :goto_3

    .line 170
    :catch_1
    move-exception v0

    .line 171
    :goto_2
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 172
    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    const-string v4, "logPlayBufferEnd failed -> "

    .line 179
    .line 180
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    move-object/from16 v3, v21

    .line 195
    .line 196
    invoke-virtual {v2, v3, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    :goto_3
    return-void

    .line 200
    :goto_4
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 201
    .line 202
    const-string v2, "logPlayBufferEnd failed -> mPlayId is null"

    .line 203
    .line 204
    invoke-virtual {v0, v3, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    return-void
.end method

.method public final i(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Ljava/lang/String;Ljava/lang/String;)V
    .locals 22
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "episode"

    .line 6
    .line 7
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "resolution"

    .line 11
    .line 12
    move-object/from16 v3, p2

    .line 13
    .line 14
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v2, "action"

    .line 18
    .line 19
    move-object/from16 v15, p3

    .line 20
    .line 21
    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v2, "networkType"

    .line 25
    .line 26
    move-object/from16 v10, p4

    .line 27
    .line 28
    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->f()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iget-object v2, v1, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->b:Ljava/lang/String;

    .line 39
    .line 40
    const-string v7, "CdnEventManager"

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_2

    .line 49
    .line 50
    :cond_1
    move-object v3, v7

    .line 51
    goto/16 :goto_3

    .line 52
    .line 53
    :cond_2
    :try_start_0
    invoke-direct/range {p0 .. p2}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->d(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    if-nez v2, :cond_3

    .line 58
    .line 59
    return-void

    .line 60
    :cond_3
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolutionValue()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    invoke-virtual {v0, v3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->parseVideoUrl(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    if-nez v3, :cond_4

    .line 69
    .line 70
    return-void

    .line 71
    :cond_4
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v5, "://"

    .line 88
    .line 89
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getNeedDecrypt()Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-eqz v3, :cond_5

    .line 112
    .line 113
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->b(Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    move-object/from16 v21, v7

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_5
    invoke-direct {v1, v6}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    :goto_0
    sget-object v3, Lcom/jiuzhou/cdn/repo/CdnRepo;->a:Lcom/jiuzhou/cdn/repo/CdnRepo;

    .line 127
    .line 128
    const-string v4, "EVENT_VIDEO_PLAY_BLOCK_START"

    .line 129
    .line 130
    iget-object v14, v1, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->b:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getVideoDuration()J

    .line 133
    .line 134
    .line 135
    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    long-to-int v0, v8

    .line 137
    move/from16 v16, v0

    .line 138
    .line 139
    const/16 v19, 0x23d0

    .line 140
    .line 141
    const/16 v20, 0x0

    .line 142
    .line 143
    const-wide/16 v8, 0x0

    .line 144
    .line 145
    const/4 v11, 0x0

    .line 146
    const/4 v12, 0x0

    .line 147
    const/4 v13, 0x0

    .line 148
    const/4 v0, 0x0

    .line 149
    move-object/from16 v17, v14

    .line 150
    .line 151
    move-object v14, v0

    .line 152
    const/16 v18, 0x0

    .line 153
    .line 154
    move-object/from16 v21, v7

    .line 155
    .line 156
    move-object v7, v2

    .line 157
    move-object/from16 v10, v17

    .line 158
    .line 159
    move-object/from16 v15, p3

    .line 160
    .line 161
    move-object/from16 v17, p4

    .line 162
    .line 163
    :try_start_1
    invoke-static/range {v3 .. v20}, Lcom/jiuzhou/cdn/repo/CdnRepo;->b(Lcom/jiuzhou/cdn/repo/CdnRepo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/jiuzhou/cdn/model/request/CdnEvent;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    iget-object v2, v1, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->a:Ljava/util/List;

    .line 168
    .line 169
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 170
    .line 171
    .line 172
    goto :goto_2

    .line 173
    :catch_1
    move-exception v0

    .line 174
    :goto_1
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 175
    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .line 180
    .line 181
    const-string v4, "logPlayBufferStart failed -> "

    .line 182
    .line 183
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    move-object/from16 v3, v21

    .line 198
    .line 199
    invoke-virtual {v2, v3, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    :goto_2
    return-void

    .line 203
    :goto_3
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 204
    .line 205
    const-string v2, "logPlayBufferStart failed -> mPlayId is null"

    .line 206
    .line 207
    invoke-virtual {v0, v3, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    return-void
.end method

.method public final j(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Ljava/lang/String;)V
    .locals 22
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "episode"

    .line 6
    .line 7
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "resolution"

    .line 11
    .line 12
    move-object/from16 v3, p2

    .line 13
    .line 14
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v2, "networkType"

    .line 18
    .line 19
    move-object/from16 v10, p3

    .line 20
    .line 21
    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->f()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iget-object v2, v1, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->b:Ljava/lang/String;

    .line 32
    .line 33
    const-string v8, "CdnEventManager"

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_2

    .line 42
    .line 43
    :cond_1
    move-object v3, v8

    .line 44
    goto/16 :goto_4

    .line 45
    .line 46
    :cond_2
    :try_start_0
    invoke-direct/range {p0 .. p2}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->d(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    if-nez v2, :cond_3

    .line 51
    .line 52
    return-void

    .line 53
    :cond_3
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolutionValue()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-virtual {v0, v3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->parseVideoUrl(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    if-nez v3, :cond_4

    .line 62
    .line 63
    return-void

    .line 64
    :cond_4
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v5, "://"

    .line 81
    .line 82
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getNeedDecrypt()Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-eqz v3, :cond_5

    .line 105
    .line 106
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->b(Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    :goto_0
    move-object v7, v2

    .line 111
    goto :goto_1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    move-object/from16 v21, v8

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_5
    invoke-direct {v1, v6}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    goto :goto_0

    .line 121
    :goto_1
    sget-object v3, Lcom/jiuzhou/cdn/repo/CdnRepo;->a:Lcom/jiuzhou/cdn/repo/CdnRepo;

    .line 122
    .line 123
    iget-object v2, v1, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->b:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getVideoDuration()J

    .line 126
    .line 127
    .line 128
    move-result-wide v16

    .line 129
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getVideoDuration()J

    .line 130
    .line 131
    .line 132
    move-result-wide v11

    .line 133
    long-to-int v0, v11

    .line 134
    const-string v4, "EVENT_VIDEO_PLAY_COMPLETE"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .line 136
    const/16 v19, 0x27c0

    .line 137
    .line 138
    const/16 v20, 0x0

    .line 139
    .line 140
    const/4 v11, 0x0

    .line 141
    const/4 v12, 0x0

    .line 142
    const/4 v13, 0x0

    .line 143
    const/4 v14, 0x0

    .line 144
    const/4 v15, 0x0

    .line 145
    const/16 v18, 0x0

    .line 146
    .line 147
    move-object/from16 v21, v8

    .line 148
    .line 149
    move-wide/from16 v8, v16

    .line 150
    .line 151
    move-object v10, v2

    .line 152
    move/from16 v16, v0

    .line 153
    .line 154
    move-object/from16 v17, p3

    .line 155
    .line 156
    :try_start_1
    invoke-static/range {v3 .. v20}, Lcom/jiuzhou/cdn/repo/CdnRepo;->b(Lcom/jiuzhou/cdn/repo/CdnRepo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/jiuzhou/cdn/model/request/CdnEvent;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    iget-object v2, v1, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->a:Ljava/util/List;

    .line 161
    .line 162
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 163
    .line 164
    .line 165
    goto :goto_3

    .line 166
    :catch_1
    move-exception v0

    .line 167
    :goto_2
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 168
    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    const-string v4, "logPlayComplete failed -> "

    .line 175
    .line 176
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    move-object/from16 v3, v21

    .line 191
    .line 192
    invoke-virtual {v2, v3, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    :goto_3
    return-void

    .line 196
    :goto_4
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 197
    .line 198
    const-string v2, "logPlayComplete failed -> mPlayId is null"

    .line 199
    .line 200
    invoke-virtual {v0, v3, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    return-void
.end method

.method public final k(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;JLjava/lang/String;)V
    .locals 22
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "CdnEventManager"

    .line 6
    .line 7
    const-string v3, "episode"

    .line 8
    .line 9
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v3, "resolution"

    .line 13
    .line 14
    move-object/from16 v4, p2

    .line 15
    .line 16
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v3, "networkType"

    .line 20
    .line 21
    move-object/from16 v11, p5

    .line 22
    .line 23
    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->f()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_0

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    :try_start_0
    sget-object v3, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 34
    .line 35
    new-instance v5, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v6, "logPlayEnd -> mPlayId("

    .line 41
    .line 42
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object v6, v1, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->b:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v6, ") playTime("

    .line 51
    .line 52
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    move-wide/from16 v9, p3

    .line 56
    .line 57
    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const/16 v6, 0x29

    .line 61
    .line 62
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-virtual {v3, v2, v5}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v3, v1, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->b:Ljava/lang/String;

    .line 73
    .line 74
    if-eqz v3, :cond_5

    .line 75
    .line 76
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-nez v3, :cond_1

    .line 81
    .line 82
    goto/16 :goto_2

    .line 83
    .line 84
    :cond_1
    invoke-direct/range {p0 .. p2}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->d(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    if-nez v3, :cond_2

    .line 89
    .line 90
    return-void

    .line 91
    :cond_2
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolutionValue()I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    invoke-virtual {v0, v4}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->parseVideoUrl(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    if-nez v4, :cond_3

    .line 100
    .line 101
    return-void

    .line 102
    :cond_3
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    new-instance v5, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v6, "://"

    .line 119
    .line 120
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getNeedDecrypt()Z

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    if-eqz v4, :cond_4

    .line 143
    .line 144
    invoke-direct {v1, v3}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->b(Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    :goto_0
    move-object v8, v3

    .line 149
    goto :goto_1

    .line 150
    :catch_0
    move-exception v0

    .line 151
    goto :goto_4

    .line 152
    :cond_4
    invoke-direct {v1, v7}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    goto :goto_0

    .line 157
    :goto_1
    sget-object v4, Lcom/jiuzhou/cdn/repo/CdnRepo;->a:Lcom/jiuzhou/cdn/repo/CdnRepo;

    .line 158
    .line 159
    const-string v5, "EVENT_VIDEO_PLAY_END"

    .line 160
    .line 161
    iget-object v3, v1, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->b:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getVideoDuration()J

    .line 164
    .line 165
    .line 166
    move-result-wide v12

    .line 167
    long-to-int v0, v12

    .line 168
    move/from16 v17, v0

    .line 169
    .line 170
    const/16 v20, 0x27c0

    .line 171
    .line 172
    const/16 v21, 0x0

    .line 173
    .line 174
    const/4 v12, 0x0

    .line 175
    const/4 v13, 0x0

    .line 176
    const/4 v14, 0x0

    .line 177
    const/4 v15, 0x0

    .line 178
    const/16 v16, 0x0

    .line 179
    .line 180
    const/16 v19, 0x0

    .line 181
    .line 182
    move-wide/from16 v9, p3

    .line 183
    .line 184
    move-object v11, v3

    .line 185
    move-object/from16 v18, p5

    .line 186
    .line 187
    invoke-static/range {v4 .. v21}, Lcom/jiuzhou/cdn/repo/CdnRepo;->b(Lcom/jiuzhou/cdn/repo/CdnRepo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/jiuzhou/cdn/model/request/CdnEvent;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    iget-object v3, v1, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->a:Ljava/util/List;

    .line 192
    .line 193
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    :cond_5
    :goto_2
    const/4 v0, 0x0

    .line 197
    iput-object v0, v1, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->b:Ljava/lang/String;

    .line 198
    .line 199
    iget-object v3, v1, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->a:Ljava/util/List;

    .line 200
    .line 201
    check-cast v3, Ljava/util/Collection;

    .line 202
    .line 203
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    if-nez v3, :cond_7

    .line 208
    .line 209
    new-instance v3, Ljava/util/ArrayList;

    .line 210
    .line 211
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .line 213
    .line 214
    iget-object v4, v1, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->a:Ljava/util/List;

    .line 215
    .line 216
    check-cast v4, Ljava/lang/Iterable;

    .line 217
    .line 218
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 223
    .line 224
    .line 225
    move-result v5

    .line 226
    if-eqz v5, :cond_6

    .line 227
    .line 228
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    check-cast v5, Lcom/jiuzhou/cdn/model/request/CdnEvent;

    .line 233
    .line 234
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    goto :goto_3

    .line 238
    :cond_6
    iget-object v4, v1, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->a:Ljava/util/List;

    .line 239
    .line 240
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 241
    .line 242
    .line 243
    sget-object v5, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 244
    .line 245
    const-string v6, "playEnd:logEvents"

    .line 246
    .line 247
    new-instance v8, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager$logPlayEnd$2;

    .line 248
    .line 249
    invoke-direct {v8, v3, v0}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager$logPlayEnd$2;-><init>(Ljava/util/List;Lrs/c;)V

    .line 250
    .line 251
    .line 252
    const/4 v9, 0x2

    .line 253
    const/4 v10, 0x0

    .line 254
    const/4 v7, 0x0

    .line 255
    invoke-static/range {v5 .. v10}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    .line 257
    .line 258
    goto :goto_5

    .line 259
    :goto_4
    sget-object v3, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 260
    .line 261
    new-instance v4, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .line 265
    .line 266
    const-string v5, "logPlayEnd failed -> "

    .line 267
    .line 268
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    invoke-virtual {v3, v2, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    :cond_7
    :goto_5
    return-void
.end method

.method public final l(Lcom/startshorts/androidplayer/bean/player/PlayerHeaderInfo;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Ljava/lang/String;)V
    .locals 22
    .param p1    # Lcom/startshorts/androidplayer/bean/player/PlayerHeaderInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const-string v3, "headerInfo"

    .line 8
    .line 9
    move-object/from16 v4, p1

    .line 10
    .line 11
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v3, "episode"

    .line 15
    .line 16
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v3, "networkType"

    .line 20
    .line 21
    move-object/from16 v15, p4

    .line 22
    .line 23
    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->f()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_0

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    iget-object v3, v1, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->b:Ljava/lang/String;

    .line 34
    .line 35
    const-string v14, "CdnEventManager"

    .line 36
    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_2

    .line 44
    .line 45
    :cond_1
    move-object v2, v14

    .line 46
    goto/16 :goto_5

    .line 47
    .line 48
    :cond_2
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/player/PlayerHeaderInfo;->getUrl()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    if-nez v3, :cond_3

    .line 53
    .line 54
    return-void

    .line 55
    :cond_3
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    new-instance v5, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v6, "://"

    .line 72
    .line 73
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getNeedDecrypt()Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-eqz v3, :cond_6

    .line 96
    .line 97
    if-nez v2, :cond_4

    .line 98
    .line 99
    const/4 v2, 0x0

    .line 100
    goto :goto_0

    .line 101
    :cond_4
    invoke-direct {v1, v0, v2}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->d(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    :goto_0
    if-eqz v2, :cond_5

    .line 106
    .line 107
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->b(Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    :goto_1
    move-object v8, v2

    .line 112
    goto :goto_2

    .line 113
    :catch_0
    move-exception v0

    .line 114
    move-object v2, v14

    .line 115
    goto :goto_3

    .line 116
    :cond_5
    const-string v2, ""

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_6
    invoke-direct {v1, v7}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    goto :goto_1

    .line 124
    :goto_2
    sget-object v2, Lcom/jiuzhou/cdn/repo/CdnRepo;->a:Lcom/jiuzhou/cdn/repo/CdnRepo;

    .line 125
    .line 126
    const-string v5, "EVENT_VIDEO_PLAY_FAIL"

    .line 127
    .line 128
    iget-object v11, v1, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->b:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/player/PlayerHeaderInfo;->getReqHeaders()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v12

    .line 134
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/player/PlayerHeaderInfo;->getRespHeaders()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v13

    .line 138
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/player/PlayerHeaderInfo;->getErrorCode()J

    .line 139
    .line 140
    .line 141
    move-result-wide v9

    .line 142
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/player/PlayerHeaderInfo;->getStatusCode()I

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v18

    .line 154
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getVideoDuration()J

    .line 155
    .line 156
    .line 157
    move-result-wide v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    long-to-int v0, v9

    .line 159
    move/from16 v17, v0

    .line 160
    .line 161
    const/16 v20, 0x2410

    .line 162
    .line 163
    const/16 v21, 0x0

    .line 164
    .line 165
    const-wide/16 v9, 0x0

    .line 166
    .line 167
    const/16 v16, 0x0

    .line 168
    .line 169
    const/16 v19, 0x0

    .line 170
    .line 171
    move-object v4, v2

    .line 172
    move-object v2, v14

    .line 173
    move-object v14, v3

    .line 174
    move-object/from16 v15, v18

    .line 175
    .line 176
    move-object/from16 v18, p4

    .line 177
    .line 178
    :try_start_1
    invoke-static/range {v4 .. v21}, Lcom/jiuzhou/cdn/repo/CdnRepo;->b(Lcom/jiuzhou/cdn/repo/CdnRepo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/jiuzhou/cdn/model/request/CdnEvent;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    iget-object v3, v1, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->a:Ljava/util/List;

    .line 183
    .line 184
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 185
    .line 186
    .line 187
    goto :goto_4

    .line 188
    :catch_1
    move-exception v0

    .line 189
    :goto_3
    sget-object v3, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 190
    .line 191
    new-instance v4, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    const-string v5, "logPlayFailed failed -> "

    .line 197
    .line 198
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-virtual {v3, v2, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    :goto_4
    return-void

    .line 216
    :goto_5
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 217
    .line 218
    const-string v3, "logPlayFailed failed -> mPlayId is null"

    .line 219
    .line 220
    invoke-virtual {v0, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    return-void
.end method

.method public final m(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 22
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "episode"

    .line 6
    .line 7
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "resolution"

    .line 11
    .line 12
    move-object/from16 v3, p2

    .line 13
    .line 14
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v2, "errorCode"

    .line 18
    .line 19
    move-object/from16 v13, p3

    .line 20
    .line 21
    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v2, "networkType"

    .line 25
    .line 26
    move-object/from16 v10, p5

    .line 27
    .line 28
    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->f()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iget-object v2, v1, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->b:Ljava/lang/String;

    .line 39
    .line 40
    const-string v7, "CdnEventManager"

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_2

    .line 49
    .line 50
    :cond_1
    move-object v3, v7

    .line 51
    goto/16 :goto_3

    .line 52
    .line 53
    :cond_2
    :try_start_0
    invoke-direct/range {p0 .. p2}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->d(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    if-nez v2, :cond_3

    .line 58
    .line 59
    return-void

    .line 60
    :cond_3
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolutionValue()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    invoke-virtual {v0, v3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->parseVideoUrl(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    if-nez v3, :cond_4

    .line 69
    .line 70
    return-void

    .line 71
    :cond_4
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v5, "://"

    .line 88
    .line 89
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getNeedDecrypt()Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-eqz v3, :cond_5

    .line 112
    .line 113
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->b(Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    move-object/from16 v21, v7

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_5
    invoke-direct {v1, v6}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    :goto_0
    sget-object v3, Lcom/jiuzhou/cdn/repo/CdnRepo;->a:Lcom/jiuzhou/cdn/repo/CdnRepo;

    .line 127
    .line 128
    const-string v4, "EVENT_VIDEO_PLAY_REAL_FAIL"

    .line 129
    .line 130
    iget-object v15, v1, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->b:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getVideoDuration()J

    .line 133
    .line 134
    .line 135
    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    long-to-int v0, v8

    .line 137
    move/from16 v16, v0

    .line 138
    .line 139
    const/16 v19, 0x6d0

    .line 140
    .line 141
    const/16 v20, 0x0

    .line 142
    .line 143
    const-wide/16 v8, 0x0

    .line 144
    .line 145
    const/4 v11, 0x0

    .line 146
    const/4 v12, 0x0

    .line 147
    const/4 v14, 0x0

    .line 148
    const/4 v0, 0x0

    .line 149
    move-object/from16 v17, v15

    .line 150
    .line 151
    move-object v15, v0

    .line 152
    move-object/from16 v21, v7

    .line 153
    .line 154
    move-object v7, v2

    .line 155
    move-object/from16 v10, v17

    .line 156
    .line 157
    move-object/from16 v13, p3

    .line 158
    .line 159
    move-object/from16 v17, p5

    .line 160
    .line 161
    move-object/from16 v18, p4

    .line 162
    .line 163
    :try_start_1
    invoke-static/range {v3 .. v20}, Lcom/jiuzhou/cdn/repo/CdnRepo;->b(Lcom/jiuzhou/cdn/repo/CdnRepo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/jiuzhou/cdn/model/request/CdnEvent;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    iget-object v2, v1, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->a:Ljava/util/List;

    .line 168
    .line 169
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 170
    .line 171
    .line 172
    goto :goto_2

    .line 173
    :catch_1
    move-exception v0

    .line 174
    :goto_1
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 175
    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .line 180
    .line 181
    const-string v4, "logPlayRealFailed failed -> "

    .line 182
    .line 183
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    move-object/from16 v3, v21

    .line 198
    .line 199
    invoke-virtual {v2, v3, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    :goto_2
    return-void

    .line 203
    :goto_3
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 204
    .line 205
    const-string v2, "logPlayRealFailed failed -> mPlayId is null"

    .line 206
    .line 207
    invoke-virtual {v0, v3, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    return-void
.end method

.method public final n(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 21
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "episode"

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string/jumbo v0, "videoUrl"

    .line 11
    .line 12
    .line 13
    move-object/from16 v3, p2

    .line 14
    .line 15
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v0, "errCode"

    .line 19
    .line 20
    move-object/from16 v12, p4

    .line 21
    .line 22
    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "networkType"

    .line 26
    .line 27
    move-object/from16 v9, p6

    .line 28
    .line 29
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->f()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    iget-object v0, v1, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->b:Ljava/lang/String;

    .line 40
    .line 41
    const-string v6, "CdnEventManager"

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    :cond_1
    move-object v3, v6

    .line 52
    goto/16 :goto_2

    .line 53
    .line 54
    :cond_2
    :try_start_0
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v4, "://"

    .line 71
    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    sget-object v0, Lcom/jiuzhou/cdn/repo/CdnRepo;->a:Lcom/jiuzhou/cdn/repo/CdnRepo;

    .line 91
    .line 92
    const-string v3, "EVENT_VIDEO_PLAY_REAL_FAIL"

    .line 93
    .line 94
    new-instance v7, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    move/from16 v8, p3

    .line 100
    .line 101
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const/16 v8, 0x70

    .line 105
    .line 106
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v16

    .line 113
    iget-object v14, v1, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->b:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getVideoDuration()J

    .line 116
    .line 117
    .line 118
    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 119
    long-to-int v15, v7

    .line 120
    const/16 v18, 0x6d0

    .line 121
    .line 122
    const/16 v19, 0x0

    .line 123
    .line 124
    const-wide/16 v7, 0x0

    .line 125
    .line 126
    const/4 v10, 0x0

    .line 127
    const/4 v11, 0x0

    .line 128
    const/4 v13, 0x0

    .line 129
    const/4 v2, 0x0

    .line 130
    move-object/from16 v17, v14

    .line 131
    .line 132
    move-object v14, v2

    .line 133
    move-object v2, v0

    .line 134
    move-object/from16 v20, v6

    .line 135
    .line 136
    move-object/from16 v6, v16

    .line 137
    .line 138
    move-object/from16 v9, v17

    .line 139
    .line 140
    move-object/from16 v12, p4

    .line 141
    .line 142
    move-object/from16 v16, p6

    .line 143
    .line 144
    move-object/from16 v17, p5

    .line 145
    .line 146
    :try_start_1
    invoke-static/range {v2 .. v19}, Lcom/jiuzhou/cdn/repo/CdnRepo;->b(Lcom/jiuzhou/cdn/repo/CdnRepo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/jiuzhou/cdn/model/request/CdnEvent;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    iget-object v2, v1, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->a:Ljava/util/List;

    .line 151
    .line 152
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :catch_0
    move-exception v0

    .line 157
    goto :goto_0

    .line 158
    :catch_1
    move-exception v0

    .line 159
    move-object/from16 v20, v6

    .line 160
    .line 161
    :goto_0
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 162
    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    const-string v4, "logPlayRealFailed failed -> "

    .line 169
    .line 170
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    move-object/from16 v3, v20

    .line 185
    .line 186
    invoke-virtual {v2, v3, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    :goto_1
    return-void

    .line 190
    :goto_2
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 191
    .line 192
    const-string v2, "logPlayRealFailed failed -> mPlayId is null"

    .line 193
    .line 194
    invoke-virtual {v0, v3, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    return-void
.end method

.method public final o(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/ss/ttvideoengine/Resolution;Ljava/lang/String;)V
    .locals 21
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/ss/ttvideoengine/Resolution;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    const-string v2, "episode"

    .line 6
    .line 7
    move-object/from16 v3, p1

    .line 8
    .line 9
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v2, "resolution"

    .line 13
    .line 14
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v2, "networkType"

    .line 18
    .line 19
    move-object/from16 v10, p3

    .line 20
    .line 21
    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->f()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iget-object v2, v1, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->b:Ljava/lang/String;

    .line 32
    .line 33
    const-string v7, "CdnEventManager"

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_2

    .line 42
    .line 43
    :cond_1
    move-object v2, v7

    .line 44
    goto/16 :goto_3

    .line 45
    .line 46
    :cond_2
    :try_start_0
    invoke-direct/range {p0 .. p2}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->e(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/ss/ttvideoengine/Resolution;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    if-nez v2, :cond_3

    .line 51
    .line 52
    return-void

    .line 53
    :cond_3
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v5, "://"

    .line 70
    .line 71
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getNeedDecrypt()Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_4

    .line 94
    .line 95
    invoke-direct {v1, v0}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->a(Lcom/ss/ttvideoengine/Resolution;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    move-object v2, v7

    .line 102
    goto :goto_1

    .line 103
    :cond_4
    invoke-direct {v1, v6}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    :goto_0
    sget-object v2, Lcom/jiuzhou/cdn/repo/CdnRepo;->a:Lcom/jiuzhou/cdn/repo/CdnRepo;

    .line 108
    .line 109
    const-string v4, "EVENT_VIDEO_PLAY_INTERRUPT"

    .line 110
    .line 111
    iget-object v15, v1, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->b:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getVideoDuration()J

    .line 114
    .line 115
    .line 116
    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    long-to-int v3, v8

    .line 118
    move/from16 v16, v3

    .line 119
    .line 120
    const/16 v19, 0x27d0

    .line 121
    .line 122
    const/16 v20, 0x0

    .line 123
    .line 124
    const-wide/16 v8, 0x0

    .line 125
    .line 126
    const/4 v11, 0x0

    .line 127
    const/4 v12, 0x0

    .line 128
    const/4 v13, 0x0

    .line 129
    const/4 v14, 0x0

    .line 130
    const/4 v3, 0x0

    .line 131
    move-object/from16 v17, v15

    .line 132
    .line 133
    move-object v15, v3

    .line 134
    const/16 v18, 0x0

    .line 135
    .line 136
    move-object v3, v2

    .line 137
    move-object v2, v7

    .line 138
    move-object v7, v0

    .line 139
    move-object/from16 v10, v17

    .line 140
    .line 141
    move-object/from16 v17, p3

    .line 142
    .line 143
    :try_start_1
    invoke-static/range {v3 .. v20}, Lcom/jiuzhou/cdn/repo/CdnRepo;->b(Lcom/jiuzhou/cdn/repo/CdnRepo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/jiuzhou/cdn/model/request/CdnEvent;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iget-object v3, v1, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->a:Ljava/util/List;

    .line 148
    .line 149
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :catch_1
    move-exception v0

    .line 154
    :goto_1
    sget-object v3, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 155
    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    const-string v5, "logPlayRetry failed -> "

    .line 162
    .line 163
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v3, v2, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    :goto_2
    return-void

    .line 181
    :goto_3
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 182
    .line 183
    const-string v3, "logPlayRetry failed -> mPlayId is null"

    .line 184
    .line 185
    invoke-virtual {v0, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    return-void
.end method

.method public final p(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Ljava/lang/String;)V
    .locals 22
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "episode"

    .line 6
    .line 7
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "resolution"

    .line 11
    .line 12
    move-object/from16 v3, p2

    .line 13
    .line 14
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v2, "networkType"

    .line 18
    .line 19
    move-object/from16 v10, p3

    .line 20
    .line 21
    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->f()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iget-object v2, v1, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->b:Ljava/lang/String;

    .line 32
    .line 33
    const-string v7, "CdnEventManager"

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_2

    .line 42
    .line 43
    :cond_1
    move-object v3, v7

    .line 44
    goto/16 :goto_3

    .line 45
    .line 46
    :cond_2
    :try_start_0
    invoke-direct/range {p0 .. p2}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->d(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    if-nez v2, :cond_3

    .line 51
    .line 52
    return-void

    .line 53
    :cond_3
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolutionValue()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-virtual {v0, v3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->parseVideoUrl(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    if-nez v3, :cond_4

    .line 62
    .line 63
    return-void

    .line 64
    :cond_4
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v5, "://"

    .line 81
    .line 82
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getNeedDecrypt()Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-eqz v3, :cond_5

    .line 105
    .line 106
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->b(Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    move-object/from16 v21, v7

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_5
    invoke-direct {v1, v6}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    :goto_0
    sget-object v3, Lcom/jiuzhou/cdn/repo/CdnRepo;->a:Lcom/jiuzhou/cdn/repo/CdnRepo;

    .line 120
    .line 121
    const-string v4, "EVENT_VIDEO_PLAY_INTERRUPT"

    .line 122
    .line 123
    iget-object v15, v1, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->b:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getVideoDuration()J

    .line 126
    .line 127
    .line 128
    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    long-to-int v0, v8

    .line 130
    move/from16 v16, v0

    .line 131
    .line 132
    const/16 v19, 0x27d0

    .line 133
    .line 134
    const/16 v20, 0x0

    .line 135
    .line 136
    const-wide/16 v8, 0x0

    .line 137
    .line 138
    const/4 v11, 0x0

    .line 139
    const/4 v12, 0x0

    .line 140
    const/4 v13, 0x0

    .line 141
    const/4 v14, 0x0

    .line 142
    const/4 v0, 0x0

    .line 143
    move-object/from16 v17, v15

    .line 144
    .line 145
    move-object v15, v0

    .line 146
    const/16 v18, 0x0

    .line 147
    .line 148
    move-object/from16 v21, v7

    .line 149
    .line 150
    move-object v7, v2

    .line 151
    move-object/from16 v10, v17

    .line 152
    .line 153
    move-object/from16 v17, p3

    .line 154
    .line 155
    :try_start_1
    invoke-static/range {v3 .. v20}, Lcom/jiuzhou/cdn/repo/CdnRepo;->b(Lcom/jiuzhou/cdn/repo/CdnRepo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/jiuzhou/cdn/model/request/CdnEvent;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    iget-object v2, v1, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->a:Ljava/util/List;

    .line 160
    .line 161
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :catch_1
    move-exception v0

    .line 166
    :goto_1
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 167
    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    const-string v4, "logPlayRetry failed -> "

    .line 174
    .line 175
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    move-object/from16 v3, v21

    .line 190
    .line 191
    invoke-virtual {v2, v3, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    :goto_2
    return-void

    .line 195
    :goto_3
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 196
    .line 197
    const-string v2, "logPlayRetry failed -> mPlayId is null"

    .line 198
    .line 199
    invoke-virtual {v0, v3, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    return-void
.end method

.method public final q(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Ljava/lang/String;)V
    .locals 22
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "episode"

    .line 6
    .line 7
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "resolution"

    .line 11
    .line 12
    move-object/from16 v3, p2

    .line 13
    .line 14
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v2, "networkType"

    .line 18
    .line 19
    move-object/from16 v10, p3

    .line 20
    .line 21
    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->f()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    iget-object v2, v1, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->b:Ljava/lang/String;

    .line 32
    .line 33
    const-string v7, "CdnEventManager"

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_2

    .line 42
    .line 43
    :cond_1
    move-object v3, v7

    .line 44
    goto/16 :goto_3

    .line 45
    .line 46
    :cond_2
    :try_start_0
    invoke-direct/range {p0 .. p2}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->d(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    if-nez v2, :cond_3

    .line 51
    .line 52
    return-void

    .line 53
    :cond_3
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolutionValue()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-virtual {v0, v3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->parseVideoUrl(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    if-nez v3, :cond_4

    .line 62
    .line 63
    return-void

    .line 64
    :cond_4
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v5, "://"

    .line 81
    .line 82
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getNeedDecrypt()Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-eqz v3, :cond_5

    .line 105
    .line 106
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->b(Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    move-object/from16 v21, v7

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_5
    invoke-direct {v1, v6}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    :goto_0
    sget-object v3, Lcom/jiuzhou/cdn/repo/CdnRepo;->a:Lcom/jiuzhou/cdn/repo/CdnRepo;

    .line 120
    .line 121
    const-string v4, "EVENT_VIDEO_SEEK"

    .line 122
    .line 123
    iget-object v15, v1, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->b:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getVideoDuration()J

    .line 126
    .line 127
    .line 128
    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    long-to-int v0, v8

    .line 130
    move/from16 v16, v0

    .line 131
    .line 132
    const/16 v19, 0x27d0

    .line 133
    .line 134
    const/16 v20, 0x0

    .line 135
    .line 136
    const-wide/16 v8, 0x0

    .line 137
    .line 138
    const/4 v11, 0x0

    .line 139
    const/4 v12, 0x0

    .line 140
    const/4 v13, 0x0

    .line 141
    const/4 v14, 0x0

    .line 142
    const/4 v0, 0x0

    .line 143
    move-object/from16 v17, v15

    .line 144
    .line 145
    move-object v15, v0

    .line 146
    const/16 v18, 0x0

    .line 147
    .line 148
    move-object/from16 v21, v7

    .line 149
    .line 150
    move-object v7, v2

    .line 151
    move-object/from16 v10, v17

    .line 152
    .line 153
    move-object/from16 v17, p3

    .line 154
    .line 155
    :try_start_1
    invoke-static/range {v3 .. v20}, Lcom/jiuzhou/cdn/repo/CdnRepo;->b(Lcom/jiuzhou/cdn/repo/CdnRepo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/jiuzhou/cdn/model/request/CdnEvent;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    iget-object v2, v1, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->a:Ljava/util/List;

    .line 160
    .line 161
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :catch_1
    move-exception v0

    .line 166
    :goto_1
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 167
    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    const-string v4, "logPlaySeek failed -> "

    .line 174
    .line 175
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    move-object/from16 v3, v21

    .line 190
    .line 191
    invoke-virtual {v2, v3, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    :goto_2
    return-void

    .line 195
    :goto_3
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 196
    .line 197
    const-string v2, "logPlaySeek failed -> mPlayId is null"

    .line 198
    .line 199
    invoke-virtual {v0, v3, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    return-void
.end method

.method public final r(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Ljava/lang/String;)V
    .locals 22
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "CdnEventManager"

    .line 6
    .line 7
    const-string v3, "episode"

    .line 8
    .line 9
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v3, "resolution"

    .line 13
    .line 14
    move-object/from16 v4, p2

    .line 15
    .line 16
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v3, "networkType"

    .line 20
    .line 21
    move-object/from16 v11, p3

    .line 22
    .line 23
    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->f()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_0

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    iput-object v3, v1, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->b:Ljava/lang/String;

    .line 42
    .line 43
    invoke-direct/range {p0 .. p2}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->d(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    if-nez v3, :cond_1

    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolutionValue()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    invoke-virtual {v0, v4}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->parseVideoUrl(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    if-nez v4, :cond_2

    .line 59
    .line 60
    return-void

    .line 61
    :cond_2
    sget-object v5, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 62
    .line 63
    new-instance v6, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v7, "logPlayStart -> mPlayId("

    .line 69
    .line 70
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-object v7, v1, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->b:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const/16 v7, 0x29

    .line 79
    .line 80
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    invoke-virtual {v5, v2, v6}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    new-instance v5, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v6, "://"

    .line 107
    .line 108
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getNeedDecrypt()Z

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    if-eqz v4, :cond_3

    .line 131
    .line 132
    invoke-direct {v1, v3}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->b(Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    :goto_0
    move-object v8, v3

    .line 137
    goto :goto_1

    .line 138
    :catch_0
    move-exception v0

    .line 139
    goto :goto_2

    .line 140
    :cond_3
    invoke-direct {v1, v7}, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    goto :goto_0

    .line 145
    :goto_1
    sget-object v4, Lcom/jiuzhou/cdn/repo/CdnRepo;->a:Lcom/jiuzhou/cdn/repo/CdnRepo;

    .line 146
    .line 147
    const-string v5, "EVENT_VIDEO_PLAY_START"

    .line 148
    .line 149
    iget-object v3, v1, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->b:Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getVideoDuration()J

    .line 152
    .line 153
    .line 154
    move-result-wide v9

    .line 155
    long-to-int v0, v9

    .line 156
    move/from16 v17, v0

    .line 157
    .line 158
    const/16 v20, 0x27d0

    .line 159
    .line 160
    const/16 v21, 0x0

    .line 161
    .line 162
    const-wide/16 v9, 0x0

    .line 163
    .line 164
    const/4 v12, 0x0

    .line 165
    const/4 v13, 0x0

    .line 166
    const/4 v14, 0x0

    .line 167
    const/4 v15, 0x0

    .line 168
    const/16 v16, 0x0

    .line 169
    .line 170
    const/16 v19, 0x0

    .line 171
    .line 172
    move-object v11, v3

    .line 173
    move-object/from16 v18, p3

    .line 174
    .line 175
    invoke-static/range {v4 .. v21}, Lcom/jiuzhou/cdn/repo/CdnRepo;->b(Lcom/jiuzhou/cdn/repo/CdnRepo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/jiuzhou/cdn/model/request/CdnEvent;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    iget-object v3, v1, Lcom/startshorts/androidplayer/manager/player/cdn/CdnEventManager;->a:Ljava/util/List;

    .line 180
    .line 181
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .line 183
    .line 184
    goto :goto_3

    .line 185
    :goto_2
    sget-object v3, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 186
    .line 187
    new-instance v4, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    .line 192
    const-string v5, "logPlayStart failed -> "

    .line 193
    .line 194
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-virtual {v3, v2, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    :goto_3
    return-void
.end method
