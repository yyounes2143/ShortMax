.class public abstract Lfn/f;
.super Ljava/lang/Object;
.source "SimpleDecoder.java"

# interfaces
.implements Lfn/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lio/bidmachine/media3/decoder/DecoderInputBuffer;",
        "O:",
        "Lfn/e;",
        "E:",
        "Lio/bidmachine/media3/decoder/DecoderException;",
        ">",
        "Ljava/lang/Object;",
        "Lfn/d<",
        "TI;TO;TE;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Thread;

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TI;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final e:[Lio/bidmachine/media3/decoder/DecoderInputBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TI;"
        }
    .end annotation
.end field

.field private final f:[Lfn/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TO;"
        }
    .end annotation
.end field

.field private g:I

.field private h:I

.field private i:Lio/bidmachine/media3/decoder/DecoderInputBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field private j:Lio/bidmachine/media3/decoder/DecoderException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:Z

.field private m:I

.field private n:J


# direct methods
.method protected constructor <init>([Lio/bidmachine/media3/decoder/DecoderInputBuffer;[Lfn/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TI;[TO;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lfn/f;->b:Ljava/lang/Object;

    .line 10
    .line 11
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    iput-wide v0, p0, Lfn/f;->n:J

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayDeque;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lfn/f;->c:Ljava/util/ArrayDeque;

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayDeque;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lfn/f;->d:Ljava/util/ArrayDeque;

    .line 31
    .line 32
    iput-object p1, p0, Lfn/f;->e:[Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    .line 33
    .line 34
    array-length p1, p1

    .line 35
    iput p1, p0, Lfn/f;->g:I

    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    move v0, p1

    .line 39
    :goto_0
    iget v1, p0, Lfn/f;->g:I

    .line 40
    .line 41
    if-ge v0, v1, :cond_0

    .line 42
    .line 43
    iget-object v1, p0, Lfn/f;->e:[Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    .line 44
    .line 45
    invoke-virtual {p0}, Lfn/f;->e()Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    aput-object v2, v1, v0

    .line 50
    .line 51
    add-int/lit8 v0, v0, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iput-object p2, p0, Lfn/f;->f:[Lfn/e;

    .line 55
    .line 56
    array-length p2, p2

    .line 57
    iput p2, p0, Lfn/f;->h:I

    .line 58
    .line 59
    :goto_1
    iget p2, p0, Lfn/f;->h:I

    .line 60
    .line 61
    if-ge p1, p2, :cond_1

    .line 62
    .line 63
    iget-object p2, p0, Lfn/f;->f:[Lfn/e;

    .line 64
    .line 65
    invoke-virtual {p0}, Lfn/f;->f()Lfn/e;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    aput-object v0, p2, p1

    .line 70
    .line 71
    add-int/lit8 p1, p1, 0x1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    new-instance p1, Lfn/f$a;

    .line 75
    .line 76
    const-string p2, "ExoPlayer:SimpleDecoder"

    .line 77
    .line 78
    invoke-direct {p1, p0, p2}, Lfn/f$a;-><init>(Lfn/f;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iput-object p1, p0, Lfn/f;->a:Ljava/lang/Thread;

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method static synthetic c(Lfn/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfn/f;->r()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfn/f;->c:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lfn/f;->h:I

    .line 10
    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method private i()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfn/f;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lfn/f;->l:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Lfn/f;->d()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lfn/f;->b:Ljava/lang/Object;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto/16 :goto_5

    .line 22
    .line 23
    :cond_0
    iget-boolean v1, p0, Lfn/f;->l:Z

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return v2

    .line 30
    :cond_1
    iget-object v1, p0, Lfn/f;->c:Ljava/util/ArrayDeque;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    .line 37
    .line 38
    iget-object v3, p0, Lfn/f;->f:[Lfn/e;

    .line 39
    .line 40
    iget v4, p0, Lfn/f;->h:I

    .line 41
    .line 42
    const/4 v5, 0x1

    .line 43
    sub-int/2addr v4, v5

    .line 44
    iput v4, p0, Lfn/f;->h:I

    .line 45
    .line 46
    aget-object v3, v3, v4

    .line 47
    .line 48
    iget-boolean v4, p0, Lfn/f;->k:Z

    .line 49
    .line 50
    iput-boolean v2, p0, Lfn/f;->k:Z

    .line 51
    .line 52
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-virtual {v1}, Lfn/a;->f()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    const/4 v0, 0x4

    .line 60
    invoke-virtual {v3, v0}, Lfn/a;->a(I)V

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    iget-wide v6, v1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->f:J

    .line 65
    .line 66
    iput-wide v6, v3, Lfn/e;->b:J

    .line 67
    .line 68
    invoke-virtual {v1}, Lfn/a;->g()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    const/high16 v0, 0x8000000

    .line 75
    .line 76
    invoke-virtual {v3, v0}, Lfn/a;->a(I)V

    .line 77
    .line 78
    .line 79
    :cond_3
    iget-wide v6, v1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->f:J

    .line 80
    .line 81
    invoke-virtual {p0, v6, v7}, Lfn/f;->l(J)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_4

    .line 86
    .line 87
    iput-boolean v5, v3, Lfn/e;->d:Z

    .line 88
    .line 89
    :cond_4
    :try_start_1
    invoke-virtual {p0, v1, v3, v4}, Lfn/f;->h(Lio/bidmachine/media3/decoder/DecoderInputBuffer;Lfn/e;Z)Lio/bidmachine/media3/decoder/DecoderException;

    .line 90
    .line 91
    .line 92
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    .line 93
    goto :goto_1

    .line 94
    :catch_0
    move-exception v0

    .line 95
    invoke-virtual {p0, v0}, Lfn/f;->g(Ljava/lang/Throwable;)Lio/bidmachine/media3/decoder/DecoderException;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    goto :goto_1

    .line 100
    :catch_1
    move-exception v0

    .line 101
    invoke-virtual {p0, v0}, Lfn/f;->g(Ljava/lang/Throwable;)Lio/bidmachine/media3/decoder/DecoderException;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    :goto_1
    if-eqz v0, :cond_5

    .line 106
    .line 107
    iget-object v4, p0, Lfn/f;->b:Ljava/lang/Object;

    .line 108
    .line 109
    monitor-enter v4

    .line 110
    :try_start_2
    iput-object v0, p0, Lfn/f;->j:Lio/bidmachine/media3/decoder/DecoderException;

    .line 111
    .line 112
    monitor-exit v4

    .line 113
    return v2

    .line 114
    :catchall_1
    move-exception v0

    .line 115
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 116
    throw v0

    .line 117
    :cond_5
    :goto_2
    iget-object v4, p0, Lfn/f;->b:Ljava/lang/Object;

    .line 118
    .line 119
    monitor-enter v4

    .line 120
    :try_start_3
    iget-boolean v0, p0, Lfn/f;->k:Z

    .line 121
    .line 122
    if-eqz v0, :cond_6

    .line 123
    .line 124
    invoke-virtual {v3}, Lfn/e;->l()V

    .line 125
    .line 126
    .line 127
    goto :goto_3

    .line 128
    :catchall_2
    move-exception v0

    .line 129
    goto :goto_4

    .line 130
    :cond_6
    iget-boolean v0, v3, Lfn/e;->d:Z

    .line 131
    .line 132
    if-eqz v0, :cond_7

    .line 133
    .line 134
    iget v0, p0, Lfn/f;->m:I

    .line 135
    .line 136
    add-int/2addr v0, v5

    .line 137
    iput v0, p0, Lfn/f;->m:I

    .line 138
    .line 139
    invoke-virtual {v3}, Lfn/e;->l()V

    .line 140
    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_7
    iget v0, p0, Lfn/f;->m:I

    .line 144
    .line 145
    iput v0, v3, Lfn/e;->c:I

    .line 146
    .line 147
    iput v2, p0, Lfn/f;->m:I

    .line 148
    .line 149
    iget-object v0, p0, Lfn/f;->d:Ljava/util/ArrayDeque;

    .line 150
    .line 151
    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    :goto_3
    invoke-direct {p0, v1}, Lfn/f;->o(Lio/bidmachine/media3/decoder/DecoderInputBuffer;)V

    .line 155
    .line 156
    .line 157
    monitor-exit v4

    .line 158
    return v5

    .line 159
    :goto_4
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 160
    throw v0

    .line 161
    :goto_5
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 162
    throw v1
.end method

.method private m()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lfn/f;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lfn/f;->b:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private n()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/decoder/DecoderException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfn/f;->j:Lio/bidmachine/media3/decoder/DecoderException;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    throw v0
.end method

.method private o(Lio/bidmachine/media3/decoder/DecoderInputBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->b()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lfn/f;->e:[Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    .line 5
    .line 6
    iget v1, p0, Lfn/f;->g:I

    .line 7
    .line 8
    add-int/lit8 v2, v1, 0x1

    .line 9
    .line 10
    iput v2, p0, Lfn/f;->g:I

    .line 11
    .line 12
    aput-object p1, v0, v1

    .line 13
    .line 14
    return-void
.end method

.method private q(Lfn/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lfn/e;->b()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lfn/f;->f:[Lfn/e;

    .line 5
    .line 6
    iget v1, p0, Lfn/f;->h:I

    .line 7
    .line 8
    add-int/lit8 v2, v1, 0x1

    .line 9
    .line 10
    iput v2, p0, Lfn/f;->h:I

    .line 11
    .line 12
    aput-object p1, v0, v1

    .line 13
    .line 14
    return-void
.end method

.method private r()V
    .locals 2

    .line 1
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lfn/f;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    return-void

    .line 9
    :catch_0
    move-exception v0

    .line 10
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    throw v1
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lfn/f;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lfn/f;->g:I

    .line 5
    .line 6
    iget-object v2, p0, Lfn/f;->e:[Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    .line 7
    .line 8
    array-length v2, v2

    .line 9
    if-eq v1, v2, :cond_1

    .line 10
    .line 11
    iget-boolean v1, p0, Lfn/f;->k:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    goto :goto_1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_2

    .line 20
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 21
    :goto_1
    invoke-static {v1}, Lcn/a;->g(Z)V

    .line 22
    .line 23
    .line 24
    iput-wide p1, p0, Lfn/f;->n:J

    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p1
.end method

.method public final b(Lio/bidmachine/media3/decoder/DecoderInputBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/decoder/DecoderException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfn/f;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lfn/f;->n()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lfn/f;->i:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    .line 8
    .line 9
    if-ne p1, v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    invoke-static {v1}, Lcn/a;->a(Z)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lfn/f;->c:Ljava/util/ArrayDeque;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lfn/f;->m()V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lfn/f;->i:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p1
.end method

.method public bridge synthetic dequeueInputBuffer()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/decoder/DecoderException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lfn/f;->j()Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic dequeueOutputBuffer()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/decoder/DecoderException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lfn/f;->k()Lfn/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected abstract e()Lio/bidmachine/media3/decoder/DecoderInputBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation
.end method

.method protected abstract f()Lfn/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation
.end method

.method public final flush()V
    .locals 2

    .line 1
    iget-object v0, p0, Lfn/f;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lfn/f;->k:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lfn/f;->m:I

    .line 9
    .line 10
    iget-object v1, p0, Lfn/f;->i:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-direct {p0, v1}, Lfn/f;->o(Lio/bidmachine/media3/decoder/DecoderInputBuffer;)V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput-object v1, p0, Lfn/f;->i:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    goto :goto_2

    .line 23
    :cond_0
    :goto_0
    iget-object v1, p0, Lfn/f;->c:Ljava/util/ArrayDeque;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Lfn/f;->c:Ljava/util/ArrayDeque;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    .line 38
    .line 39
    invoke-direct {p0, v1}, Lfn/f;->o(Lio/bidmachine/media3/decoder/DecoderInputBuffer;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    :goto_1
    iget-object v1, p0, Lfn/f;->d:Ljava/util/ArrayDeque;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_2

    .line 50
    .line 51
    iget-object v1, p0, Lfn/f;->d:Ljava/util/ArrayDeque;

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Lfn/e;

    .line 58
    .line 59
    invoke-virtual {v1}, Lfn/e;->l()V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    monitor-exit v0

    .line 64
    return-void

    .line 65
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw v1
.end method

.method protected abstract g(Ljava/lang/Throwable;)Lio/bidmachine/media3/decoder/DecoderException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")TE;"
        }
    .end annotation
.end method

.method protected abstract h(Lio/bidmachine/media3/decoder/DecoderInputBuffer;Lfn/e;Z)Lio/bidmachine/media3/decoder/DecoderException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;TO;Z)TE;"
        }
    .end annotation
.end method

.method public final j()Lio/bidmachine/media3/decoder/DecoderInputBuffer;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/decoder/DecoderException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfn/f;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lfn/f;->n()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lfn/f;->i:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    move v1, v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    invoke-static {v1}, Lcn/a;->g(Z)V

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lfn/f;->g:I

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    iget-object v3, p0, Lfn/f;->e:[Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    .line 25
    .line 26
    sub-int/2addr v1, v2

    .line 27
    iput v1, p0, Lfn/f;->g:I

    .line 28
    .line 29
    aget-object v1, v3, v1

    .line 30
    .line 31
    :goto_1
    iput-object v1, p0, Lfn/f;->i:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-object v1

    .line 35
    :catchall_0
    move-exception v1

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw v1
.end method

.method public final k()Lfn/e;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/decoder/DecoderException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfn/f;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lfn/f;->n()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lfn/f;->d:Ljava/util/ArrayDeque;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    const/4 v0, 0x0

    .line 17
    return-object v0

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v1, p0, Lfn/f;->d:Ljava/util/ArrayDeque;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lfn/e;

    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return-object v1

    .line 30
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw v1
.end method

.method protected final l(J)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lfn/f;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-wide v1, p0, Lfn/f;->n:J

    .line 5
    .line 6
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    cmp-long v3, v1, v3

    .line 12
    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    cmp-long p1, p1, v1

    .line 16
    .line 17
    if-ltz p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 23
    :goto_1
    monitor-exit v0

    .line 24
    return p1

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p1
.end method

.method protected p(Lfn/e;)V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfn/f;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lfn/f;->q(Lfn/e;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lfn/f;->m()V

    .line 8
    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p1
.end method

.method public bridge synthetic queueInputBuffer(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/decoder/DecoderException;
        }
    .end annotation

    .line 1
    check-cast p1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lfn/f;->b(Lio/bidmachine/media3/decoder/DecoderInputBuffer;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public release()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lfn/f;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lfn/f;->l:Z

    .line 6
    .line 7
    iget-object v1, p0, Lfn/f;->b:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 10
    .line 11
    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :try_start_1
    iget-object v0, p0, Lfn/f;->a:Ljava/lang/Thread;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void

    .line 27
    :catchall_0
    move-exception v1

    .line 28
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    throw v1
.end method

.method protected final s(I)V
    .locals 4

    .line 1
    iget v0, p0, Lfn/f;->g:I

    .line 2
    .line 3
    iget-object v1, p0, Lfn/f;->e:[Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    .line 4
    .line 5
    array-length v1, v1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v2

    .line 12
    :goto_0
    invoke-static {v0}, Lcn/a;->g(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lfn/f;->e:[Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    .line 16
    .line 17
    array-length v1, v0

    .line 18
    :goto_1
    if-ge v2, v1, :cond_1

    .line 19
    .line 20
    aget-object v3, v0, v2

    .line 21
    .line 22
    invoke-virtual {v3, p1}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->m(I)V

    .line 23
    .line 24
    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    return-void
.end method
