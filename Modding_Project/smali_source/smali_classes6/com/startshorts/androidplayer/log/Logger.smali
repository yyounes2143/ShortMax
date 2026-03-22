.class public final Lcom/startshorts/androidplayer/log/Logger;
.super Ljava/lang/Object;
.source "Logger.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/log/Logger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lzd/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzd/c;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/log/Logger;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 7
    .line 8
    new-instance v0, Lzd/d;

    .line 9
    .line 10
    invoke-direct {v0}, Lzd/d;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/startshorts/androidplayer/log/Logger;->b:Lzd/d;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    new-array v1, v1, [Lzd/c;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    aput-object v0, v1, v2

    .line 20
    .line 21
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/startshorts/androidplayer/log/Logger;->c:Ljava/util/List;

    .line 26
    .line 27
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

.method public static final synthetic a(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/startshorts/androidplayer/log/Logger;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic b(Lcom/startshorts/androidplayer/log/Logger;Ljava/io/File;Ljava/lang/String;Lyd/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/log/Logger;->n(Ljava/io/File;Ljava/lang/String;Lyd/f;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic c(Lcom/startshorts/androidplayer/log/Logger;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/log/Logger;->o(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final j(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->c:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_4

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lzd/c;

    .line 18
    .line 19
    invoke-interface {v1}, Lzd/c;->type()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-ne v2, p1, :cond_0

    .line 24
    .line 25
    const/16 p1, 0xa

    .line 26
    .line 27
    if-eq p2, p1, :cond_3

    .line 28
    .line 29
    const/16 p1, 0x14

    .line 30
    .line 31
    if-eq p2, p1, :cond_2

    .line 32
    .line 33
    const/16 p1, 0x15

    .line 34
    .line 35
    if-eq p2, p1, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-interface {v1, p3, p4, p5}, Lzd/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    invoke-interface {v1, p3, p4}, Lzd/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    invoke-interface {v1, p3, p4}, Lzd/c;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    :catch_0
    :cond_4
    :goto_0
    return-void
.end method

.method public static synthetic m(Lcom/startshorts/androidplayer/log/Logger;Lyd/f;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/log/Logger;->l(Lyd/f;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final n(Ljava/io/File;Ljava/lang/String;Lyd/f;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/c;->a:Lcom/startshorts/androidplayer/log/c;

    .line 2
    .line 3
    new-instance v1, Lcom/startshorts/androidplayer/log/Logger$a;

    .line 4
    .line 5
    invoke-direct {v1, p1, p3}, Lcom/startshorts/androidplayer/log/Logger$a;-><init>(Ljava/io/File;Lyd/f;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, v1}, Lcom/startshorts/androidplayer/log/c;->b(Ljava/io/File;Ljava/lang/String;Lcom/startshorts/androidplayer/log/c$a;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private final o(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 6

    .line 1
    const-string v0, "Logger"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    new-instance v2, Lfk/p;

    .line 5
    .line 6
    invoke-direct {v2}, Lfk/p;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v2}, Lfk/p;->d()Lfk/p;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    new-instance v3, Ljava/io/File;

    .line 14
    .line 15
    sget-object v4, Lcf/a;->a:Lcf/a;

    .line 16
    .line 17
    invoke-virtual {v4}, Lcf/a;->b()Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-direct {v3, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 22
    .line 23
    .line 24
    :try_start_1
    sget-object p1, Lcom/startshorts/androidplayer/utils/FileUtil;->a:Lcom/startshorts/androidplayer/utils/FileUtil;

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v4, "getAbsolutePath(...)"

    .line 31
    .line 32
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    const/16 v5, 0x14

    .line 37
    .line 38
    invoke-virtual {p1, p2, v1, v4, v5}, Lcom/startshorts/androidplayer/utils/FileUtil;->e(Ljava/io/File;Ljava/lang/String;ZI)V

    .line 39
    .line 40
    .line 41
    new-instance p1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string/jumbo p2, "zip success took "

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Lfk/p;->b()J

    .line 53
    .line 54
    .line 55
    move-result-wide v1

    .line 56
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string p2, "ms -> "

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p0, v0, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :catch_0
    move-exception p1

    .line 80
    move-object v1, v3

    .line 81
    goto :goto_0

    .line 82
    :catch_1
    move-exception p1

    .line 83
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string/jumbo v2, "zipAppLog exception -> "

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p0, v0, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    move-object v3, v1

    .line 109
    :goto_1
    return-object v3
.end method


# virtual methods
.method public final d(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/16 v2, 0x14

    .line 2
    .line 3
    const-string v5, ""

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    move v1, p1

    .line 7
    move-object v3, p2

    .line 8
    move-object v4, p3

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/log/Logger;->j(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Lcom/startshorts/androidplayer/log/Logger;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final f()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/tencent/mars/xlog/Log;->appenderFlush()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final g(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/16 v2, 0xa

    .line 2
    .line 3
    const-string v5, ""

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    move v1, p1

    .line 7
    move-object v3, p2

    .line 8
    move-object v4, p3

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/log/Logger;->j(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Lcom/startshorts/androidplayer/log/Logger;->g(ILjava/lang/String;Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final i()V
    .locals 11

    .line 1
    const-string v0, "c++_shared"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "marsxlog"

    .line 7
    .line 8
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lid/a;->a:Lid/a;

    .line 12
    .line 13
    invoke-virtual {v0}, Lid/a;->a()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "release"

    .line 18
    .line 19
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const/4 v1, 0x3

    .line 26
    :goto_0
    move v2, v1

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    const/4 v1, 0x2

    .line 29
    goto :goto_0

    .line 30
    :goto_1
    sget-object v1, Lcf/a;->a:Lcf/a;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcf/a;->a()Ljava/io/File;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v4, "/xlog_cache"

    .line 49
    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v1, "/xlog"

    .line 66
    .line 67
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    new-instance v1, Lcom/tencent/mars/xlog/Xlog;

    .line 75
    .line 76
    invoke-direct {v1}, Lcom/tencent/mars/xlog/Xlog;-><init>()V

    .line 77
    .line 78
    .line 79
    const-wide/32 v6, 0x3f480

    .line 80
    .line 81
    .line 82
    const-wide/16 v8, 0x0

    .line 83
    .line 84
    invoke-virtual {v1, v8, v9, v6, v7}, Lcom/tencent/mars/xlog/Xlog;->setMaxAliveTime(JJ)V

    .line 85
    .line 86
    .line 87
    invoke-static {v1}, Lcom/tencent/mars/xlog/Log;->setLogImp(Lcom/tencent/mars/xlog/Log$LogImp;)V

    .line 88
    .line 89
    .line 90
    const/4 v10, 0x0

    .line 91
    invoke-static {v10}, Lcom/tencent/mars/xlog/Log;->setConsoleLogOpen(Z)V

    .line 92
    .line 93
    .line 94
    const-string v6, "Xlog"

    .line 95
    .line 96
    const/4 v7, 0x0

    .line 97
    const/4 v3, 0x0

    .line 98
    invoke-static/range {v2 .. v7}, Lcom/tencent/mars/xlog/Log;->appenderOpen(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Lid/a;->a()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    const-string/jumbo v3, "test"

    .line 106
    .line 107
    .line 108
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-nez v2, :cond_1

    .line 113
    .line 114
    invoke-virtual {v0}, Lid/a;->a()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    const-string v2, "noflow"

    .line 119
    .line 120
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_2

    .line 125
    .line 126
    :cond_1
    const/4 v10, 0x1

    .line 127
    :cond_2
    invoke-static {v10}, Lcom/tencent/mars/xlog/Log;->setConsoleLogOpen(Z)V

    .line 128
    .line 129
    .line 130
    const-wide/32 v2, 0x500000

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, v8, v9, v2, v3}, Lcom/tencent/mars/xlog/Xlog;->setMaxFileSize(JJ)V

    .line 134
    .line 135
    .line 136
    return-void
.end method

.method public final k(Lzd/c;)V
    .locals 5
    .param p1    # Lzd/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "logger"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->c:Ljava/util/List;

    .line 7
    .line 8
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->b:Lzd/d;

    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    check-cast v0, Ljava/lang/Iterable;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    move-object v3, v2

    .line 31
    check-cast v3, Lzd/c;

    .line 32
    .line 33
    invoke-interface {p1}, Lzd/c;->type()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-interface {v3}, Lzd/c;->type()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-ne v4, v3, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 v2, 0x0

    .line 45
    :goto_0
    if-eqz v2, :cond_2

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->c:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    :goto_1
    const-string p1, "Logger"

    .line 54
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v2, "MemoryLogger output -> removeResult="

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v2, ",size="

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->b:Lzd/d;

    .line 74
    .line 75
    invoke-virtual {v2}, Lzd/d;->b()Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {p0, p1, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    if-eqz v1, :cond_3

    .line 94
    .line 95
    invoke-virtual {v2}, Lzd/d;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .line 97
    .line 98
    :catch_0
    :cond_3
    return-void
.end method

.method public final l(Lyd/f;)V
    .locals 8
    .param p1    # Lyd/f;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-boolean v0, Lcom/startshorts/androidplayer/log/Logger;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    sput-boolean v0, Lcom/startshorts/androidplayer/log/Logger;->d:Z

    .line 8
    .line 9
    const-string v0, "Logger"

    .line 10
    .line 11
    const-string/jumbo v1, "uploadAppLog"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/log/Logger;->f()V

    .line 18
    .line 19
    .line 20
    sget-object v2, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 21
    .line 22
    new-instance v5, Lcom/startshorts/androidplayer/log/Logger$uploadAppLog$1;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-direct {v5, p1, v0}, Lcom/startshorts/androidplayer/log/Logger$uploadAppLog$1;-><init>(Lyd/f;Lrs/c;)V

    .line 26
    .line 27
    .line 28
    const/4 v6, 0x2

    .line 29
    const/4 v7, 0x0

    .line 30
    const-string/jumbo v3, "uploadAppLog"

    .line 31
    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-static/range {v2 .. v7}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 35
    .line 36
    .line 37
    return-void
.end method
