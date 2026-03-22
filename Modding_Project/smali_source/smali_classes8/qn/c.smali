.class public final Lqn/c;
.super Lio/bidmachine/media3/exoplayer/h;
.source "MetadataRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private A:Lzm/t;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private B:J

.field private final r:Lqn/a;

.field private final s:Lqn/b;

.field private final t:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final u:Lko/b;

.field private final v:Z

.field private w:Lko/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private x:Z

.field private y:Z

.field private z:J


# direct methods
.method public constructor <init>(Lqn/b;Landroid/os/Looper;)V
    .locals 1
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lqn/a;->a:Lqn/a;

    invoke-direct {p0, p1, p2, v0}, Lqn/c;-><init>(Lqn/b;Landroid/os/Looper;Lqn/a;)V

    return-void
.end method

.method public constructor <init>(Lqn/b;Landroid/os/Looper;Lqn/a;)V
    .locals 1
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lqn/c;-><init>(Lqn/b;Landroid/os/Looper;Lqn/a;Z)V

    return-void
.end method

.method public constructor <init>(Lqn/b;Landroid/os/Looper;Lqn/a;Z)V
    .locals 1
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x5

    .line 3
    invoke-direct {p0, v0}, Lio/bidmachine/media3/exoplayer/h;-><init>(I)V

    .line 4
    invoke-static {p1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lqn/b;

    iput-object p1, p0, Lqn/c;->s:Lqn/b;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p2, p0}, Lcn/m0;->z(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lqn/c;->t:Landroid/os/Handler;

    .line 6
    invoke-static {p3}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lqn/a;

    iput-object p1, p0, Lqn/c;->r:Lqn/a;

    .line 7
    iput-boolean p4, p0, Lqn/c;->v:Z

    .line 8
    new-instance p1, Lko/b;

    invoke-direct {p1}, Lko/b;-><init>()V

    iput-object p1, p0, Lqn/c;->u:Lko/b;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    iput-wide p1, p0, Lqn/c;->B:J

    return-void
.end method

.method private b0(Lzm/t;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzm/t;",
            "Ljava/util/List<",
            "Lzm/t$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Lzm/t;->e()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lzm/t;->d(I)Lzm/t$a;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Lzm/t$a;->r()Lio/bidmachine/media3/common/a;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v2, p0, Lqn/c;->r:Lqn/a;

    .line 19
    .line 20
    invoke-interface {v2, v1}, Lqn/a;->a(Lio/bidmachine/media3/common/a;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    iget-object v2, p0, Lqn/c;->r:Lqn/a;

    .line 27
    .line 28
    invoke-interface {v2, v1}, Lqn/a;->b(Lio/bidmachine/media3/common/a;)Lko/a;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p1, v0}, Lzm/t;->d(I)Lzm/t$a;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-interface {v2}, Lzm/t$a;->q()[B

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v2}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, [B

    .line 45
    .line 46
    iget-object v3, p0, Lqn/c;->u:Lko/b;

    .line 47
    .line 48
    invoke-virtual {v3}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->b()V

    .line 49
    .line 50
    .line 51
    iget-object v3, p0, Lqn/c;->u:Lko/b;

    .line 52
    .line 53
    array-length v4, v2

    .line 54
    invoke-virtual {v3, v4}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->m(I)V

    .line 55
    .line 56
    .line 57
    iget-object v3, p0, Lqn/c;->u:Lko/b;

    .line 58
    .line 59
    iget-object v3, v3, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->d:Ljava/nio/ByteBuffer;

    .line 60
    .line 61
    invoke-static {v3}, Lcn/m0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    check-cast v3, Ljava/nio/ByteBuffer;

    .line 66
    .line 67
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 68
    .line 69
    .line 70
    iget-object v2, p0, Lqn/c;->u:Lko/b;

    .line 71
    .line 72
    invoke-virtual {v2}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->n()V

    .line 73
    .line 74
    .line 75
    iget-object v2, p0, Lqn/c;->u:Lko/b;

    .line 76
    .line 77
    invoke-interface {v1, v2}, Lko/a;->a(Lko/b;)Lzm/t;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    if-eqz v1, :cond_1

    .line 82
    .line 83
    invoke-direct {p0, v1, p2}, Lqn/c;->b0(Lzm/t;Ljava/util/List;)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_0
    invoke-virtual {p1, v0}, Lzm/t;->d(I)Lzm/t$a;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_2
    return-void
.end method

.method private c0(J)J
    .locals 7

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    cmp-long v2, p1, v0

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    move v2, v4

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v2, v3

    .line 15
    :goto_0
    invoke-static {v2}, Lcn/a;->g(Z)V

    .line 16
    .line 17
    .line 18
    iget-wide v5, p0, Lqn/c;->B:J

    .line 19
    .line 20
    cmp-long v0, v5, v0

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    move v3, v4

    .line 25
    :cond_1
    invoke-static {v3}, Lcn/a;->g(Z)V

    .line 26
    .line 27
    .line 28
    iget-wide v0, p0, Lqn/c;->B:J

    .line 29
    .line 30
    sub-long/2addr p1, v0

    .line 31
    return-wide p1
.end method

.method private d0(Lzm/t;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lqn/c;->t:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-direct {p0, p1}, Lqn/c;->e0(Lzm/t;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method private e0(Lzm/t;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lqn/c;->s:Lqn/b;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lqn/b;->v(Lzm/t;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private f0(J)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lqn/c;->A:Lzm/t;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-boolean v2, p0, Lqn/c;->v:Z

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    iget-wide v2, v0, Lzm/t;->b:J

    .line 11
    .line 12
    invoke-direct {p0, p1, p2}, Lqn/c;->c0(J)J

    .line 13
    .line 14
    .line 15
    move-result-wide p1

    .line 16
    cmp-long p1, v2, p1

    .line 17
    .line 18
    if-gtz p1, :cond_1

    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Lqn/c;->A:Lzm/t;

    .line 21
    .line 22
    invoke-direct {p0, p1}, Lqn/c;->d0(Lzm/t;)V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lqn/c;->A:Lzm/t;

    .line 27
    .line 28
    move p1, v1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 p1, 0x0

    .line 31
    :goto_0
    iget-boolean p2, p0, Lqn/c;->x:Z

    .line 32
    .line 33
    if-eqz p2, :cond_2

    .line 34
    .line 35
    iget-object p2, p0, Lqn/c;->A:Lzm/t;

    .line 36
    .line 37
    if-nez p2, :cond_2

    .line 38
    .line 39
    iput-boolean v1, p0, Lqn/c;->y:Z

    .line 40
    .line 41
    :cond_2
    return p1
.end method

.method private g0()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lqn/c;->x:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lqn/c;->A:Lzm/t;

    .line 6
    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lqn/c;->u:Lko/b;

    .line 10
    .line 11
    invoke-virtual {v0}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->b()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/h;->F()Lgn/c0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lqn/c;->u:Lko/b;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {p0, v0, v1, v2}, Lio/bidmachine/media3/exoplayer/h;->Y(Lgn/c0;Lio/bidmachine/media3/decoder/DecoderInputBuffer;I)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, -0x4

    .line 26
    if-ne v1, v2, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lqn/c;->u:Lko/b;

    .line 29
    .line 30
    invoke-virtual {v0}, Lfn/a;->f()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lqn/c;->x:Z

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lqn/c;->u:Lko/b;

    .line 41
    .line 42
    iget-wide v0, v0, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->f:J

    .line 43
    .line 44
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/h;->H()J

    .line 45
    .line 46
    .line 47
    move-result-wide v2

    .line 48
    cmp-long v0, v0, v2

    .line 49
    .line 50
    if-ltz v0, :cond_2

    .line 51
    .line 52
    iget-object v0, p0, Lqn/c;->u:Lko/b;

    .line 53
    .line 54
    iget-wide v1, p0, Lqn/c;->z:J

    .line 55
    .line 56
    iput-wide v1, v0, Lko/b;->j:J

    .line 57
    .line 58
    invoke-virtual {v0}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->n()V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lqn/c;->w:Lko/a;

    .line 62
    .line 63
    invoke-static {v0}, Lcn/m0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Lko/a;

    .line 68
    .line 69
    iget-object v1, p0, Lqn/c;->u:Lko/b;

    .line 70
    .line 71
    invoke-interface {v0, v1}, Lko/a;->a(Lko/b;)Lzm/t;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    new-instance v1, Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-virtual {v0}, Lzm/t;->e()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    .line 85
    .line 86
    invoke-direct {p0, v0, v1}, Lqn/c;->b0(Lzm/t;Ljava/util/List;)V

    .line 87
    .line 88
    .line 89
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-nez v0, :cond_2

    .line 94
    .line 95
    new-instance v0, Lzm/t;

    .line 96
    .line 97
    iget-object v2, p0, Lqn/c;->u:Lko/b;

    .line 98
    .line 99
    iget-wide v2, v2, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->f:J

    .line 100
    .line 101
    invoke-direct {p0, v2, v3}, Lqn/c;->c0(J)J

    .line 102
    .line 103
    .line 104
    move-result-wide v2

    .line 105
    invoke-direct {v0, v2, v3, v1}, Lzm/t;-><init>(JLjava/util/List;)V

    .line 106
    .line 107
    .line 108
    iput-object v0, p0, Lqn/c;->A:Lzm/t;

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_1
    const/4 v2, -0x5

    .line 112
    if-ne v1, v2, :cond_2

    .line 113
    .line 114
    iget-object v0, v0, Lgn/c0;->b:Lio/bidmachine/media3/common/a;

    .line 115
    .line 116
    invoke-static {v0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Lio/bidmachine/media3/common/a;

    .line 121
    .line 122
    iget-wide v0, v0, Lio/bidmachine/media3/common/a;->t:J

    .line 123
    .line 124
    iput-wide v0, p0, Lqn/c;->z:J

    .line 125
    .line 126
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected N()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lqn/c;->A:Lzm/t;

    .line 3
    .line 4
    iput-object v0, p0, Lqn/c;->w:Lko/a;

    .line 5
    .line 6
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    iput-wide v0, p0, Lqn/c;->B:J

    .line 12
    .line 13
    return-void
.end method

.method protected Q(JZ)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lqn/c;->A:Lzm/t;

    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lqn/c;->x:Z

    .line 6
    .line 7
    iput-boolean p1, p0, Lqn/c;->y:Z

    .line 8
    .line 9
    return-void
.end method

.method protected W([Lio/bidmachine/media3/common/a;JJLio/bidmachine/media3/exoplayer/source/r$b;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lqn/c;->r:Lqn/a;

    .line 2
    .line 3
    const/4 p3, 0x0

    .line 4
    aget-object p1, p1, p3

    .line 5
    .line 6
    invoke-interface {p2, p1}, Lqn/a;->b(Lio/bidmachine/media3/common/a;)Lko/a;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lqn/c;->w:Lko/a;

    .line 11
    .line 12
    iget-object p1, p0, Lqn/c;->A:Lzm/t;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-wide p2, p1, Lzm/t;->b:J

    .line 17
    .line 18
    iget-wide v0, p0, Lqn/c;->B:J

    .line 19
    .line 20
    add-long/2addr p2, v0

    .line 21
    sub-long/2addr p2, p4

    .line 22
    invoke-virtual {p1, p2, p3}, Lzm/t;->c(J)Lzm/t;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lqn/c;->A:Lzm/t;

    .line 27
    .line 28
    :cond_0
    iput-wide p4, p0, Lqn/c;->B:J

    .line 29
    .line 30
    return-void
.end method

.method public a(Lio/bidmachine/media3/common/a;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lqn/c;->r:Lqn/a;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lqn/a;->a(Lio/bidmachine/media3/common/a;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget p1, p1, Lio/bidmachine/media3/common/a;->N:I

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x4

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x2

    .line 16
    :goto_0
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/i2;->k(I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1

    .line 21
    :cond_1
    const/4 p1, 0x0

    .line 22
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/i2;->k(I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "MetadataRenderer"

    .line 2
    .line 3
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Lzm/t;

    .line 9
    .line 10
    invoke-direct {p0, p1}, Lqn/c;->e0(Lzm/t;)V

    .line 11
    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 17
    .line 18
    .line 19
    throw p1
.end method

.method public isEnded()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lqn/c;->y:Z

    .line 2
    .line 3
    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public render(JJ)V
    .locals 0

    .line 1
    const/4 p3, 0x1

    .line 2
    :goto_0
    if-eqz p3, :cond_0

    .line 3
    .line 4
    invoke-direct {p0}, Lqn/c;->g0()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Lqn/c;->f0(J)Z

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    return-void
.end method
