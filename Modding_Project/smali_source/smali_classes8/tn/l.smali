.class public final Ltn/l;
.super Ltn/e;
.source "InitializationChunk.java"


# instance fields
.field private final j:Ltn/f;

.field private k:Ltn/f$b;

.field private l:Lao/g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private m:J

.field private volatile n:Z


# direct methods
.method public constructor <init>(Len/d;Len/g;Lio/bidmachine/media3/common/a;ILjava/lang/Object;Ltn/f;)V
    .locals 11
    .param p5    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    move-object v0, p0

    .line 13
    move-object v1, p1

    .line 14
    move-object v2, p2

    .line 15
    move-object v4, p3

    .line 16
    move v5, p4

    .line 17
    move-object/from16 v6, p5

    .line 18
    .line 19
    invoke-direct/range {v0 .. v10}, Ltn/e;-><init>(Len/d;Len/g;ILio/bidmachine/media3/common/a;ILjava/lang/Object;JJ)V

    .line 20
    .line 21
    .line 22
    move-object/from16 v1, p6

    .line 23
    .line 24
    iput-object v1, v0, Ltn/l;->j:Ltn/f;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public cancelLoad()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ltn/l;->n:Z

    .line 3
    .line 4
    return-void
.end method

.method public e(Ltn/f$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltn/l;->k:Ltn/f$b;

    .line 2
    .line 3
    return-void
.end method

.method public load()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Ltn/l;->m:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Ltn/l;->j:Ltn/f;

    .line 10
    .line 11
    iget-object v2, p0, Ltn/l;->k:Ltn/f$b;

    .line 12
    .line 13
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    invoke-interface/range {v1 .. v6}, Ltn/f;->e(Ltn/f$b;JJ)V

    .line 24
    .line 25
    .line 26
    :cond_0
    :try_start_0
    iget-object v0, p0, Ltn/e;->b:Len/g;

    .line 27
    .line 28
    iget-wide v1, p0, Ltn/l;->m:J

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Len/g;->e(J)Len/g;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v7, Lao/i;

    .line 35
    .line 36
    iget-object v2, p0, Ltn/e;->i:Len/n;

    .line 37
    .line 38
    iget-wide v3, v0, Len/g;->g:J

    .line 39
    .line 40
    invoke-virtual {v2, v0}, Len/n;->b(Len/g;)J

    .line 41
    .line 42
    .line 43
    move-result-wide v5

    .line 44
    move-object v1, v7

    .line 45
    invoke-direct/range {v1 .. v6}, Lao/i;-><init>(Lzm/h;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 46
    .line 47
    .line 48
    :goto_0
    :try_start_1
    iget-boolean v0, p0, Ltn/l;->n:Z

    .line 49
    .line 50
    if-nez v0, :cond_1

    .line 51
    .line 52
    iget-object v0, p0, Ltn/l;->j:Ltn/f;

    .line 53
    .line 54
    invoke-interface {v0, v7}, Ltn/f;->a(Lao/q;)Z

    .line 55
    .line 56
    .line 57
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    :try_start_2
    invoke-interface {v7}, Lao/q;->getPosition()J

    .line 64
    .line 65
    .line 66
    move-result-wide v0

    .line 67
    iget-object v2, p0, Ltn/e;->b:Len/g;

    .line 68
    .line 69
    iget-wide v2, v2, Len/g;->g:J

    .line 70
    .line 71
    sub-long/2addr v0, v2

    .line 72
    iput-wide v0, p0, Ltn/l;->m:J

    .line 73
    .line 74
    iget-object v0, p0, Ltn/l;->j:Ltn/f;

    .line 75
    .line 76
    invoke-interface {v0}, Ltn/f;->b()Lao/g;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, p0, Ltn/l;->l:Lao/g;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 81
    .line 82
    iget-object v0, p0, Ltn/e;->i:Len/n;

    .line 83
    .line 84
    invoke-static {v0}, Len/f;->a(Len/d;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :catchall_1
    move-exception v0

    .line 89
    goto :goto_2

    .line 90
    :goto_1
    :try_start_3
    invoke-interface {v7}, Lao/q;->getPosition()J

    .line 91
    .line 92
    .line 93
    move-result-wide v1

    .line 94
    iget-object v3, p0, Ltn/e;->b:Len/g;

    .line 95
    .line 96
    iget-wide v3, v3, Len/g;->g:J

    .line 97
    .line 98
    sub-long/2addr v1, v3

    .line 99
    iput-wide v1, p0, Ltn/l;->m:J

    .line 100
    .line 101
    iget-object v1, p0, Ltn/l;->j:Ltn/f;

    .line 102
    .line 103
    invoke-interface {v1}, Ltn/f;->b()Lao/g;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    iput-object v1, p0, Ltn/l;->l:Lao/g;

    .line 108
    .line 109
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 110
    :goto_2
    iget-object v1, p0, Ltn/e;->i:Len/n;

    .line 111
    .line 112
    invoke-static {v1}, Len/f;->a(Len/d;)V

    .line 113
    .line 114
    .line 115
    throw v0
.end method
