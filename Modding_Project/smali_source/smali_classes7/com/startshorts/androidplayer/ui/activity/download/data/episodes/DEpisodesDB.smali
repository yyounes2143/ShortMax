.class public final Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB;
.super Ljava/lang/Object;
.source "DEpisodesDB.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDEpisodesDB.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DEpisodesDB.kt\ncom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,133:1\n1863#2,2:134\n1863#2,2:136\n*S KotlinDebug\n*F\n+ 1 DEpisodesDB.kt\ncom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB\n*L\n91#1:134,2\n103#1:136,2\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB;->a:Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB;

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

.method private final f()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private final g()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->z0()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method


# virtual methods
.method public final a(Lrs/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-static {}, Lgt/q0;->a()Lgt/c0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB$clearAll$2;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB$clearAll$2;-><init>(Lrs/c;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1, p1}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-ne p1, v0, :cond_0

    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_1
    sget-object p1, Lxh/g;->a:Lxh/g;

    .line 32
    .line 33
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 34
    .line 35
    invoke-virtual {v0}, Lfk/u;->b()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Lxh/g;->a(Landroid/content/Context;)Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DownloadEpisodesDB;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DownloadEpisodesDB;->e()Lxh/a;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-interface {p1}, Lxh/a;->a()V

    .line 48
    .line 49
    .line 50
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 51
    .line 52
    return-object p1
.end method

.method public final b(ILrs/c;)Ljava/lang/Object;
    .locals 3
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lrs/c<",
            "-",
            "Lxh/f;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lgt/q0;->a()Lgt/c0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB$getEpisodesByShortPlayId$2;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, p1, v2}, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB$getEpisodesByShortPlayId$2;-><init>(ILrs/c;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1, p2}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_0
    sget-object p2, Lxh/g;->a:Lxh/g;

    .line 23
    .line 24
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 25
    .line 26
    invoke-virtual {v0}, Lfk/u;->b()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p2, v0}, Lxh/g;->a(Landroid/content/Context;)Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DownloadEpisodesDB;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DownloadEpisodesDB;->e()Lxh/a;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-interface {p2, p1}, Lxh/a;->c(I)Lxh/f;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    return-object p1
.end method

.method public final c(I)Lxh/f;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lxh/g;->a:Lxh/g;

    .line 2
    .line 3
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 4
    .line 5
    invoke-virtual {v1}, Lfk/u;->b()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lxh/g;->a(Landroid/content/Context;)Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DownloadEpisodesDB;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DownloadEpisodesDB;->e()Lxh/a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0, p1}, Lxh/a;->c(I)Lxh/f;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public final d(IIILrs/c;)Ljava/lang/Object;
    .locals 16
    .param p4    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    instance-of v3, v2, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB$getEpisodesResultByShortPlayId$1;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB$getEpisodesResultByShortPlayId$1;

    .line 13
    .line 14
    iget v4, v3, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB$getEpisodesResultByShortPlayId$1;->o:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB$getEpisodesResultByShortPlayId$1;->o:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v3, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB$getEpisodesResultByShortPlayId$1;

    .line 27
    .line 28
    invoke-direct {v3, v0, v2}, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB$getEpisodesResultByShortPlayId$1;-><init>(Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB;Lrs/c;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v2, v3, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB$getEpisodesResultByShortPlayId$1;->m:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    iget v5, v3, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB$getEpisodesResultByShortPlayId$1;->o:I

    .line 38
    .line 39
    const/4 v6, 0x2

    .line 40
    const/4 v7, 0x0

    .line 41
    const/4 v8, 0x1

    .line 42
    if-eqz v5, :cond_3

    .line 43
    .line 44
    if-eq v5, v8, :cond_2

    .line 45
    .line 46
    if-ne v5, v6, :cond_1

    .line 47
    .line 48
    iget v1, v3, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB$getEpisodesResultByShortPlayId$1;->k:I

    .line 49
    .line 50
    iget v4, v3, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB$getEpisodesResultByShortPlayId$1;->j:I

    .line 51
    .line 52
    iget-object v5, v3, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB$getEpisodesResultByShortPlayId$1;->i:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 55
    .line 56
    iget-object v3, v3, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB$getEpisodesResultByShortPlayId$1;->h:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v3, Lcom/startshorts/androidplayer/bean/shorts/QueryDownloadEpisodesResult;

    .line 59
    .line 60
    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    goto/16 :goto_4

    .line 64
    .line 65
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 66
    .line 67
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 68
    .line 69
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v1

    .line 73
    :cond_2
    iget v1, v3, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB$getEpisodesResultByShortPlayId$1;->l:I

    .line 74
    .line 75
    iget v5, v3, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB$getEpisodesResultByShortPlayId$1;->k:I

    .line 76
    .line 77
    iget v9, v3, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB$getEpisodesResultByShortPlayId$1;->j:I

    .line 78
    .line 79
    iget-object v10, v3, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB$getEpisodesResultByShortPlayId$1;->h:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v10, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB;

    .line 82
    .line 83
    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    move v15, v5

    .line 87
    move v5, v1

    .line 88
    move v1, v9

    .line 89
    move-object v9, v2

    .line 90
    move v2, v15

    .line 91
    goto :goto_1

    .line 92
    :cond_3
    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    iput-object v0, v3, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB$getEpisodesResultByShortPlayId$1;->h:Ljava/lang/Object;

    .line 96
    .line 97
    iput v1, v3, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB$getEpisodesResultByShortPlayId$1;->j:I

    .line 98
    .line 99
    move/from16 v2, p2

    .line 100
    .line 101
    iput v2, v3, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB$getEpisodesResultByShortPlayId$1;->k:I

    .line 102
    .line 103
    move/from16 v5, p3

    .line 104
    .line 105
    iput v5, v3, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB$getEpisodesResultByShortPlayId$1;->l:I

    .line 106
    .line 107
    iput v8, v3, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB$getEpisodesResultByShortPlayId$1;->o:I

    .line 108
    .line 109
    invoke-virtual {v0, v1, v3}, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB;->b(ILrs/c;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v9

    .line 113
    if-ne v9, v4, :cond_4

    .line 114
    .line 115
    return-object v4

    .line 116
    :cond_4
    move-object v10, v0

    .line 117
    :goto_1
    check-cast v9, Lxh/f;

    .line 118
    .line 119
    if-eqz v9, :cond_10

    .line 120
    .line 121
    invoke-virtual {v9}, Lxh/f;->b()Lcom/startshorts/androidplayer/bean/shorts/QueryDownloadEpisodesResult;

    .line 122
    .line 123
    .line 124
    move-result-object v9

    .line 125
    if-eqz v9, :cond_10

    .line 126
    .line 127
    new-instance v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 128
    .line 129
    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/shorts/QueryDownloadEpisodesResult;->getDramaResponseList()Ljava/util/List;

    .line 133
    .line 134
    .line 135
    move-result-object v12

    .line 136
    if-eqz v12, :cond_5

    .line 137
    .line 138
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 139
    .line 140
    .line 141
    move-result v12

    .line 142
    goto :goto_2

    .line 143
    :cond_5
    move v12, v7

    .line 144
    :goto_2
    if-gtz v12, :cond_6

    .line 145
    .line 146
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 147
    .line 148
    sget-object v1, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->Companion:Lcom/startshorts/androidplayer/bean/exception/ResponseException$Companion;

    .line 149
    .line 150
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/exception/ResponseException$Companion;->getUNKNOWN_EXCEPTION()Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-static {v1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    return-object v1

    .line 163
    :cond_6
    invoke-direct {v10}, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB;->g()Z

    .line 164
    .line 165
    .line 166
    move-result v10

    .line 167
    if-nez v10, :cond_8

    .line 168
    .line 169
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/shorts/QueryDownloadEpisodesResult;->getDramaResponseList()Ljava/util/List;

    .line 170
    .line 171
    .line 172
    move-result-object v10

    .line 173
    if-eqz v10, :cond_8

    .line 174
    .line 175
    check-cast v10, Ljava/lang/Iterable;

    .line 176
    .line 177
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 178
    .line 179
    .line 180
    move-result-object v10

    .line 181
    :cond_7
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 182
    .line 183
    .line 184
    move-result v12

    .line 185
    if-eqz v12, :cond_8

    .line 186
    .line 187
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v12

    .line 191
    check-cast v12, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 192
    .line 193
    invoke-virtual {v12}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isVipFree()Z

    .line 194
    .line 195
    .line 196
    move-result v13

    .line 197
    if-eqz v13, :cond_7

    .line 198
    .line 199
    invoke-virtual {v12}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->setNotVipFree()V

    .line 200
    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_8
    sget-object v10, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->a:Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;

    .line 204
    .line 205
    iput-object v9, v3, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB$getEpisodesResultByShortPlayId$1;->h:Ljava/lang/Object;

    .line 206
    .line 207
    iput-object v11, v3, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB$getEpisodesResultByShortPlayId$1;->i:Ljava/lang/Object;

    .line 208
    .line 209
    iput v2, v3, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB$getEpisodesResultByShortPlayId$1;->j:I

    .line 210
    .line 211
    iput v5, v3, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB$getEpisodesResultByShortPlayId$1;->k:I

    .line 212
    .line 213
    iput v6, v3, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB$getEpisodesResultByShortPlayId$1;->o:I

    .line 214
    .line 215
    invoke-virtual {v10, v1, v3}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->J(ILrs/c;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    if-ne v1, v4, :cond_9

    .line 220
    .line 221
    return-object v4

    .line 222
    :cond_9
    move v4, v2

    .line 223
    move-object v3, v9

    .line 224
    move-object v2, v1

    .line 225
    move v1, v5

    .line 226
    move-object v5, v11

    .line 227
    :goto_4
    check-cast v2, Ljava/util/Set;

    .line 228
    .line 229
    new-instance v6, Ljava/util/ArrayList;

    .line 230
    .line 231
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/QueryDownloadEpisodesResult;->getDramaResponseList()Ljava/util/List;

    .line 235
    .line 236
    .line 237
    move-result-object v9

    .line 238
    if-eqz v9, :cond_c

    .line 239
    .line 240
    check-cast v9, Ljava/lang/Iterable;

    .line 241
    .line 242
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 243
    .line 244
    .line 245
    move-result-object v9

    .line 246
    :cond_a
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 247
    .line 248
    .line 249
    move-result v10

    .line 250
    if-eqz v10, :cond_c

    .line 251
    .line 252
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v10

    .line 256
    check-cast v10, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 257
    .line 258
    invoke-virtual {v10}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 259
    .line 260
    .line 261
    move-result v11

    .line 262
    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 263
    .line 264
    .line 265
    move-result-object v11

    .line 266
    invoke-interface {v2, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v11

    .line 270
    if-eqz v11, :cond_b

    .line 271
    .line 272
    invoke-virtual {v10, v8}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->setDownloadFinished(Z)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v10, v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->setDownloadResolution(I)V

    .line 276
    .line 277
    .line 278
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    :cond_b
    invoke-virtual {v10}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getEpisodeNum()I

    .line 282
    .line 283
    .line 284
    move-result v11

    .line 285
    if-ne v11, v4, :cond_a

    .line 286
    .line 287
    iput-object v10, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 288
    .line 289
    goto :goto_5

    .line 290
    :cond_c
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 291
    .line 292
    .line 293
    move-result v1

    .line 294
    iget-object v2, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 295
    .line 296
    if-eqz v2, :cond_d

    .line 297
    .line 298
    invoke-interface {v6, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 299
    .line 300
    .line 301
    move-result v2

    .line 302
    goto :goto_6

    .line 303
    :cond_d
    move v2, v7

    .line 304
    :goto_6
    const/4 v4, 0x0

    .line 305
    if-lez v2, :cond_e

    .line 306
    .line 307
    invoke-interface {v6, v7, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 308
    .line 309
    .line 310
    move-result-object v7

    .line 311
    move-object v10, v7

    .line 312
    goto :goto_7

    .line 313
    :cond_e
    move-object v10, v4

    .line 314
    :goto_7
    if-le v1, v2, :cond_f

    .line 315
    .line 316
    add-int/2addr v2, v8

    .line 317
    invoke-interface {v6, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 318
    .line 319
    .line 320
    move-result-object v4

    .line 321
    :cond_f
    move-object v13, v4

    .line 322
    new-instance v1, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;

    .line 323
    .line 324
    iget-object v2, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 325
    .line 326
    move-object v12, v2

    .line 327
    check-cast v12, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 328
    .line 329
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/QueryDownloadEpisodesResult;->getShortPlayContentRatingResponse()Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;

    .line 330
    .line 331
    .line 332
    move-result-object v14

    .line 333
    const/4 v11, -0x1

    .line 334
    move-object v9, v1

    .line 335
    invoke-direct/range {v9 .. v14}, Lcom/startshorts/androidplayer/bean/shorts/QueryEpisodesResult;-><init>(Ljava/util/List;ILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/util/List;Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;)V

    .line 336
    .line 337
    .line 338
    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v1

    .line 342
    return-object v1

    .line 343
    :cond_10
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 344
    .line 345
    sget-object v1, Lcom/startshorts/androidplayer/bean/exception/ResponseException;->Companion:Lcom/startshorts/androidplayer/bean/exception/ResponseException$Companion;

    .line 346
    .line 347
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/exception/ResponseException$Companion;->getUNKNOWN_EXCEPTION()Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    invoke-static {v1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    return-object v1
.end method

.method public final e(Lxh/f;Lrs/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lxh/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxh/f;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-static {}, Lgt/q0;->a()Lgt/c0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB$insert$2;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, p1, v2}, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DEpisodesDB$insert$2;-><init>(Lxh/f;Lrs/c;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1, p2}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    if-ne p1, p2, :cond_0

    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_1
    sget-object p2, Lxh/g;->a:Lxh/g;

    .line 32
    .line 33
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 34
    .line 35
    invoke-virtual {v0}, Lfk/u;->b()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p2, v0}, Lxh/g;->a(Landroid/content/Context;)Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DownloadEpisodesDB;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DownloadEpisodesDB;->e()Lxh/a;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-interface {p2, p1}, Lxh/a;->b(Lxh/f;)V

    .line 48
    .line 49
    .line 50
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 51
    .line 52
    return-object p1
.end method
