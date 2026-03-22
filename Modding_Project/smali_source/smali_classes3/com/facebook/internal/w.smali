.class public final Lcom/facebook/internal/w;
.super Ljava/lang/Object;
.source "FileLruCache.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/w$a;,
        Lcom/facebook/internal/w$b;,
        Lcom/facebook/internal/w$c;,
        Lcom/facebook/internal/w$d;,
        Lcom/facebook/internal/w$e;,
        Lcom/facebook/internal/w$f;,
        Lcom/facebook/internal/w$g;,
        Lcom/facebook/internal/w$h;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final i:Lcom/facebook/internal/w$c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final j:Ljava/lang/String;

.field private static final k:Ljava/util/concurrent/atomic/AtomicLong;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lcom/facebook/internal/w$e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private d:Z

.field private e:Z

.field private final f:Ljava/util/concurrent/locks/ReentrantLock;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/locks/Condition;

.field private final h:Ljava/util/concurrent/atomic/AtomicLong;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/internal/w$c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/facebook/internal/w$c;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/facebook/internal/w;->i:Lcom/facebook/internal/w$c;

    .line 8
    .line 9
    const-class v0, Lcom/facebook/internal/w;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/facebook/internal/w;->j:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/facebook/internal/w;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/internal/w$e;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/internal/w$e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "tag"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "limits"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/facebook/internal/w;->a:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/facebook/internal/w;->b:Lcom/facebook/internal/w$e;

    .line 17
    .line 18
    new-instance p2, Ljava/io/File;

    .line 19
    .line 20
    invoke-static {}, Lcom/facebook/v;->q()Ljava/io/File;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-direct {p2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iput-object p2, p0, Lcom/facebook/internal/w;->c:Ljava/io/File;

    .line 28
    .line 29
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/facebook/internal/w;->f:Ljava/util/concurrent/locks/ReentrantLock;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/facebook/internal/w;->g:Ljava/util/concurrent/locks/Condition;

    .line 41
    .line 42
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 43
    .line 44
    const-wide/16 v0, 0x0

    .line 45
    .line 46
    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lcom/facebook/internal/w;->h:Ljava/util/concurrent/atomic/AtomicLong;

    .line 50
    .line 51
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-nez p1, :cond_0

    .line 56
    .line 57
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    :cond_0
    sget-object p1, Lcom/facebook/internal/w$a;->a:Lcom/facebook/internal/w$a;

    .line 64
    .line 65
    invoke-virtual {p1, p2}, Lcom/facebook/internal/w$a;->c(Ljava/io/File;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/facebook/internal/w;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/facebook/internal/w;->l(Lcom/facebook/internal/w;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic b()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/internal/w;->k:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic c(Lcom/facebook/internal/w;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/internal/w;->h:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/internal/w;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic e(Lcom/facebook/internal/w;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/facebook/internal/w;->m(Ljava/lang/String;Ljava/io/File;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g(Lcom/facebook/internal/w;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/internal/w;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static synthetic j(Lcom/facebook/internal/w;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/io/OutputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/internal/w;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private final k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/internal/w;->f:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-boolean v1, p0, Lcom/facebook/internal/w;->d:Z

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Lcom/facebook/internal/w;->d:Z

    .line 12
    .line 13
    invoke-static {}, Lcom/facebook/v;->u()Ljava/util/concurrent/Executor;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Lcom/facebook/internal/t;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Lcom/facebook/internal/t;-><init>(Lcom/facebook/internal/w;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v1

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :goto_0
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 35
    .line 36
    .line 37
    throw v1
.end method

.method private static final l(Lcom/facebook/internal/w;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/facebook/internal/w;->n()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final m(Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/internal/w;->c:Ljava/io/File;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/facebook/internal/u0;->n0(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-direct {p0}, Lcom/facebook/internal/w;->k()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private final n()V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const-string v2, "TAG"

    .line 5
    .line 6
    iget-object v3, v1, Lcom/facebook/internal/w;->f:Ljava/util/concurrent/locks/ReentrantLock;

    .line 7
    .line 8
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    :try_start_0
    iput-boolean v4, v1, Lcom/facebook/internal/w;->d:Z

    .line 13
    .line 14
    iput-boolean v0, v1, Lcom/facebook/internal/w;->e:Z

    .line 15
    .line 16
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 17
    .line 18
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 19
    .line 20
    .line 21
    :try_start_1
    sget-object v3, Lcom/facebook/internal/i0;->e:Lcom/facebook/internal/i0$a;

    .line 22
    .line 23
    sget-object v5, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    .line 24
    .line 25
    sget-object v6, Lcom/facebook/internal/w;->j:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v7, "trim started"

    .line 31
    .line 32
    invoke-virtual {v3, v5, v6, v7}, Lcom/facebook/internal/i0$a;->b(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance v3, Ljava/util/PriorityQueue;

    .line 36
    .line 37
    invoke-direct {v3}, Ljava/util/PriorityQueue;-><init>()V

    .line 38
    .line 39
    .line 40
    iget-object v5, v1, Lcom/facebook/internal/w;->c:Ljava/io/File;

    .line 41
    .line 42
    sget-object v6, Lcom/facebook/internal/w$a;->a:Lcom/facebook/internal/w$a;

    .line 43
    .line 44
    invoke-virtual {v6}, Lcom/facebook/internal/w$a;->d()Ljava/io/FilenameFilter;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-virtual {v5, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    const-wide/16 v6, 0x0

    .line 53
    .line 54
    if-eqz v5, :cond_0

    .line 55
    .line 56
    array-length v8, v5

    .line 57
    move v11, v4

    .line 58
    move-wide v9, v6

    .line 59
    :goto_0
    if-ge v11, v8, :cond_1

    .line 60
    .line 61
    aget-object v12, v5, v11

    .line 62
    .line 63
    new-instance v13, Lcom/facebook/internal/w$f;

    .line 64
    .line 65
    const-string v14, "file"

    .line 66
    .line 67
    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-direct {v13, v12}, Lcom/facebook/internal/w$f;-><init>(Ljava/io/File;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v13}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    sget-object v14, Lcom/facebook/internal/i0;->e:Lcom/facebook/internal/i0$a;

    .line 77
    .line 78
    sget-object v15, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    .line 79
    .line 80
    sget-object v4, Lcom/facebook/internal/w;->j:Ljava/lang/String;

    .line 81
    .line 82
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    move-object/from16 v16, v5

    .line 91
    .line 92
    const-string v5, "  trim considering time="

    .line 93
    .line 94
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v13}, Lcom/facebook/internal/w$f;->c()J

    .line 98
    .line 99
    .line 100
    move-result-wide v17

    .line 101
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v5, " name="

    .line 109
    .line 110
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v13}, Lcom/facebook/internal/w$f;->b()Ljava/io/File;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v14, v15, v4, v0}, Lcom/facebook/internal/i0$a;->b(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v12}, Ljava/io/File;->length()J

    .line 132
    .line 133
    .line 134
    move-result-wide v4

    .line 135
    add-long/2addr v6, v4

    .line 136
    const-wide/16 v4, 0x1

    .line 137
    .line 138
    add-long/2addr v9, v4

    .line 139
    const/4 v0, 0x1

    .line 140
    add-int/2addr v11, v0

    .line 141
    move-object/from16 v5, v16

    .line 142
    .line 143
    const/4 v4, 0x0

    .line 144
    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    .line 146
    goto :goto_3

    .line 147
    :cond_0
    move-wide v9, v6

    .line 148
    :cond_1
    :goto_1
    iget-object v0, v1, Lcom/facebook/internal/w;->b:Lcom/facebook/internal/w$e;

    .line 149
    .line 150
    invoke-virtual {v0}, Lcom/facebook/internal/w$e;->a()I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    int-to-long v4, v0

    .line 155
    cmp-long v0, v6, v4

    .line 156
    .line 157
    if-gtz v0, :cond_3

    .line 158
    .line 159
    iget-object v0, v1, Lcom/facebook/internal/w;->b:Lcom/facebook/internal/w$e;

    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/facebook/internal/w$e;->b()I

    .line 162
    .line 163
    .line 164
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    int-to-long v4, v0

    .line 166
    cmp-long v0, v9, v4

    .line 167
    .line 168
    if-lez v0, :cond_2

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_2
    iget-object v2, v1, Lcom/facebook/internal/w;->f:Ljava/util/concurrent/locks/ReentrantLock;

    .line 172
    .line 173
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 174
    .line 175
    .line 176
    const/4 v3, 0x0

    .line 177
    :try_start_2
    iput-boolean v3, v1, Lcom/facebook/internal/w;->e:Z

    .line 178
    .line 179
    iget-object v0, v1, Lcom/facebook/internal/w;->g:Ljava/util/concurrent/locks/Condition;

    .line 180
    .line 181
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 182
    .line 183
    .line 184
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 185
    .line 186
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 187
    .line 188
    .line 189
    return-void

    .line 190
    :catchall_1
    move-exception v0

    .line 191
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 192
    .line 193
    .line 194
    throw v0

    .line 195
    :cond_3
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/util/AbstractQueue;->remove()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    check-cast v0, Lcom/facebook/internal/w$f;

    .line 200
    .line 201
    invoke-virtual {v0}, Lcom/facebook/internal/w$f;->b()Ljava/io/File;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    sget-object v4, Lcom/facebook/internal/i0;->e:Lcom/facebook/internal/i0$a;

    .line 206
    .line 207
    sget-object v5, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    .line 208
    .line 209
    sget-object v8, Lcom/facebook/internal/w;->j:Ljava/lang/String;

    .line 210
    .line 211
    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    new-instance v11, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .line 218
    .line 219
    const-string v12, "  trim removing "

    .line 220
    .line 221
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v12

    .line 228
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v11

    .line 235
    invoke-virtual {v4, v5, v8, v11}, Lcom/facebook/internal/i0$a;->b(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 239
    .line 240
    .line 241
    move-result-wide v4

    .line 242
    sub-long/2addr v6, v4

    .line 243
    const-wide/16 v4, -0x1

    .line 244
    .line 245
    add-long/2addr v9, v4

    .line 246
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 247
    .line 248
    .line 249
    goto :goto_1

    .line 250
    :goto_3
    iget-object v2, v1, Lcom/facebook/internal/w;->f:Ljava/util/concurrent/locks/ReentrantLock;

    .line 251
    .line 252
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 253
    .line 254
    .line 255
    const/4 v3, 0x0

    .line 256
    :try_start_4
    iput-boolean v3, v1, Lcom/facebook/internal/w;->e:Z

    .line 257
    .line 258
    iget-object v3, v1, Lcom/facebook/internal/w;->g:Ljava/util/concurrent/locks/Condition;

    .line 259
    .line 260
    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 261
    .line 262
    .line 263
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 264
    .line 265
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 266
    .line 267
    .line 268
    throw v0

    .line 269
    :catchall_2
    move-exception v0

    .line 270
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 271
    .line 272
    .line 273
    throw v0

    .line 274
    :catchall_3
    move-exception v0

    .line 275
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 276
    .line 277
    .line 278
    throw v0
.end method


# virtual methods
.method public final f(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/io/File;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/facebook/internal/w;->c:Ljava/io/File;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/facebook/internal/u0;->n0(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    .line 19
    .line 20
    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    new-instance v4, Ljava/io/BufferedInputStream;

    .line 24
    .line 25
    const/16 v5, 0x2000

    .line 26
    .line 27
    invoke-direct {v4, v3, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 28
    .line 29
    .line 30
    :try_start_1
    sget-object v3, Lcom/facebook/internal/w$h;->a:Lcom/facebook/internal/w$h;

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Lcom/facebook/internal/w$h;->a(Ljava/io/InputStream;)Lorg/json/JSONObject;

    .line 33
    .line 34
    .line 35
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    if-nez v3, :cond_0

    .line 37
    .line 38
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 39
    .line 40
    .line 41
    return-object v2

    .line 42
    :cond_0
    :try_start_2
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    if-nez p1, :cond_1

    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 53
    .line 54
    .line 55
    return-object v2

    .line 56
    :cond_1
    :try_start_3
    const-string p1, "tag"

    .line 57
    .line 58
    invoke-virtual {v3, p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-nez p2, :cond_2

    .line 63
    .line 64
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 68
    if-nez p1, :cond_2

    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 71
    .line 72
    .line 73
    return-object v2

    .line 74
    :catchall_0
    move-exception p1

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    :try_start_4
    new-instance p1, Ljava/util/Date;

    .line 77
    .line 78
    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 82
    .line 83
    .line 84
    move-result-wide p1

    .line 85
    sget-object v0, Lcom/facebook/internal/i0;->e:Lcom/facebook/internal/i0$a;

    .line 86
    .line 87
    sget-object v2, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    .line 88
    .line 89
    sget-object v3, Lcom/facebook/internal/w;->j:Ljava/lang/String;

    .line 90
    .line 91
    const-string v5, "TAG"

    .line 92
    .line 93
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    new-instance v5, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string v6, "Setting lastModified to "

    .line 102
    .line 103
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v6, " for "

    .line 114
    .line 115
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    invoke-virtual {v0, v2, v3, v5}, Lcom/facebook/internal/i0$a;->b(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, p1, p2}, Ljava/io/File;->setLastModified(J)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 133
    .line 134
    .line 135
    return-object v4

    .line 136
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 137
    .line 138
    .line 139
    throw p1

    .line 140
    :catch_0
    return-object v2
.end method

.method public final h(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "input"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x2

    .line 13
    invoke-static {p0, p1, v0, v1, v0}, Lcom/facebook/internal/w;->j(Lcom/facebook/internal/w;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/io/OutputStream;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v0, Lcom/facebook/internal/w$d;

    .line 18
    .line 19
    invoke-direct {v0, p2, p1}, Lcom/facebook/internal/w$d;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "TAG"

    .line 2
    .line 3
    const-string v1, "key"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v2, Lcom/facebook/internal/w$a;->a:Lcom/facebook/internal/w$a;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/facebook/internal/w;->c:Ljava/io/File;

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Lcom/facebook/internal/w$a;->h(Ljava/io/File;)Ljava/io/File;

    .line 13
    .line 14
    .line 15
    move-result-object v8

    .line 16
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 17
    .line 18
    .line 19
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    const/4 v2, 0x5

    .line 26
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    .line 27
    .line 28
    invoke-direct {v3, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 29
    .line 30
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v5

    .line 35
    new-instance v10, Lcom/facebook/internal/w$i;

    .line 36
    .line 37
    move-object v4, v10

    .line 38
    move-object v7, p0

    .line 39
    move-object v9, p1

    .line 40
    invoke-direct/range {v4 .. v9}, Lcom/facebook/internal/w$i;-><init>(JLcom/facebook/internal/w;Ljava/io/File;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    new-instance v4, Lcom/facebook/internal/w$b;

    .line 44
    .line 45
    invoke-direct {v4, v3, v10}, Lcom/facebook/internal/w$b;-><init>(Ljava/io/OutputStream;Lcom/facebook/internal/w$g;)V

    .line 46
    .line 47
    .line 48
    new-instance v3, Ljava/io/BufferedOutputStream;

    .line 49
    .line 50
    const/16 v5, 0x2000

    .line 51
    .line 52
    invoke-direct {v3, v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 53
    .line 54
    .line 55
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    .line 56
    .line 57
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    .line 62
    .line 63
    invoke-static {p2}, Lcom/facebook/internal/u0;->d0(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-nez p1, :cond_0

    .line 68
    .line 69
    const-string p1, "tag"

    .line 70
    .line 71
    invoke-virtual {v4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catchall_0
    move-exception p1

    .line 76
    goto :goto_2

    .line 77
    :catch_0
    move-exception p1

    .line 78
    goto :goto_1

    .line 79
    :cond_0
    :goto_0
    sget-object p1, Lcom/facebook/internal/w$h;->a:Lcom/facebook/internal/w$h;

    .line 80
    .line 81
    invoke-virtual {p1, v3, v4}, Lcom/facebook/internal/w$h;->b(Ljava/io/OutputStream;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    .line 83
    .line 84
    return-object v3

    .line 85
    :goto_1
    :try_start_2
    sget-object p2, Lcom/facebook/internal/i0;->e:Lcom/facebook/internal/i0$a;

    .line 86
    .line 87
    sget-object v1, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    .line 88
    .line 89
    sget-object v4, Lcom/facebook/internal/w;->j:Ljava/lang/String;

    .line 90
    .line 91
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v5, "Error creating JSON header for cache file: "

    .line 100
    .line 101
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {p2, v1, v2, v4, v0}, Lcom/facebook/internal/i0$a;->a(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    new-instance p2, Ljava/io/IOException;

    .line 115
    .line 116
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    :goto_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 125
    .line 126
    .line 127
    throw p1

    .line 128
    :catch_1
    move-exception p1

    .line 129
    sget-object p2, Lcom/facebook/internal/i0;->e:Lcom/facebook/internal/i0$a;

    .line 130
    .line 131
    sget-object v1, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    .line 132
    .line 133
    sget-object v3, Lcom/facebook/internal/w;->j:Ljava/lang/String;

    .line 134
    .line 135
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    const-string v4, "Error creating buffer output stream: "

    .line 144
    .line 145
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {p2, v1, v2, v3, v0}, Lcom/facebook/internal/i0$a;->a(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    new-instance p2, Ljava/io/IOException;

    .line 159
    .line 160
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw p2

    .line 168
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 169
    .line 170
    new-instance p2, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    const-string v0, "Could not create file at "

    .line 176
    .line 177
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "{FileLruCache: tag:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/facebook/internal/w;->a:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, " file:"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/facebook/internal/w;->c:Ljava/io/File;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const/16 v1, 0x7d

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0
.end method
