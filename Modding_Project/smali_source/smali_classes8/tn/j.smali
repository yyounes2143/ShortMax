.class public Ltn/j;
.super Ltn/a;
.source "ContainerMediaChunk.java"


# instance fields
.field private final o:I

.field private final p:J

.field private final q:Ltn/f;

.field private r:J

.field private volatile s:Z

.field private t:Z


# direct methods
.method public constructor <init>(Len/d;Len/g;Lio/bidmachine/media3/common/a;ILjava/lang/Object;JJJJJIJLtn/f;)V
    .locals 3
    .param p5    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct/range {p0 .. p15}, Ltn/a;-><init>(Len/d;Len/g;Lio/bidmachine/media3/common/a;ILjava/lang/Object;JJJJJ)V

    .line 3
    .line 4
    .line 5
    move/from16 v1, p16

    .line 6
    .line 7
    iput v1, v0, Ltn/j;->o:I

    .line 8
    .line 9
    move-wide/from16 v1, p17

    .line 10
    .line 11
    iput-wide v1, v0, Ltn/j;->p:J

    .line 12
    .line 13
    move-object/from16 v1, p19

    .line 14
    .line 15
    iput-object v1, v0, Ltn/j;->q:Ltn/f;

    .line 16
    .line 17
    return-void
.end method

.method private k(Ltn/c;)V
    .locals 12

    .line 1
    iget-object v0, p0, Ltn/e;->d:Lio/bidmachine/media3/common/a;

    .line 2
    .line 3
    iget-object v0, v0, Lio/bidmachine/media3/common/a;->n:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Lzm/u;->q(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Ltn/e;->d:Lio/bidmachine/media3/common/a;

    .line 13
    .line 14
    iget v1, v0, Lio/bidmachine/media3/common/a;->L:I

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    if-gt v1, v2, :cond_1

    .line 18
    .line 19
    iget v3, v0, Lio/bidmachine/media3/common/a;->M:I

    .line 20
    .line 21
    if-le v3, v2, :cond_3

    .line 22
    .line 23
    :cond_1
    const/4 v3, -0x1

    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    iget v0, v0, Lio/bidmachine/media3/common/a;->M:I

    .line 27
    .line 28
    if-ne v0, v3, :cond_2

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    const/4 v0, 0x4

    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {p1, v1, v0}, Ltn/c;->track(II)Lao/o0;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object v0, p0, Ltn/e;->d:Lio/bidmachine/media3/common/a;

    .line 38
    .line 39
    iget v3, v0, Lio/bidmachine/media3/common/a;->L:I

    .line 40
    .line 41
    iget v0, v0, Lio/bidmachine/media3/common/a;->M:I

    .line 42
    .line 43
    mul-int/2addr v0, v3

    .line 44
    iget-wide v3, p0, Ltn/e;->h:J

    .line 45
    .line 46
    iget-wide v5, p0, Ltn/e;->g:J

    .line 47
    .line 48
    sub-long/2addr v3, v5

    .line 49
    int-to-long v5, v0

    .line 50
    div-long v10, v3, v5

    .line 51
    .line 52
    :goto_0
    if-ge v2, v0, :cond_3

    .line 53
    .line 54
    int-to-long v3, v2

    .line 55
    mul-long v4, v3, v10

    .line 56
    .line 57
    new-instance v3, Lcn/b0;

    .line 58
    .line 59
    invoke-direct {v3}, Lcn/b0;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-interface {p1, v3, v1}, Lao/o0;->a(Lcn/b0;I)V

    .line 63
    .line 64
    .line 65
    const/4 v8, 0x0

    .line 66
    const/4 v9, 0x0

    .line 67
    const/4 v6, 0x0

    .line 68
    const/4 v7, 0x0

    .line 69
    move-object v3, p1

    .line 70
    invoke-interface/range {v3 .. v9}, Lao/o0;->c(JIIILao/o0$a;)V

    .line 71
    .line 72
    .line 73
    add-int/lit8 v2, v2, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public final cancelLoad()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ltn/j;->s:Z

    .line 3
    .line 4
    return-void
.end method

.method public e()J
    .locals 4

    .line 1
    iget-wide v0, p0, Ltn/m;->j:J

    .line 2
    .line 3
    iget v2, p0, Ltn/j;->o:I

    .line 4
    .line 5
    int-to-long v2, v2

    .line 6
    add-long/2addr v0, v2

    .line 7
    return-wide v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ltn/j;->t:Z

    .line 2
    .line 3
    return v0
.end method

.method protected j(Ltn/c;)Ltn/f$b;
    .locals 0

    .line 1
    return-object p1
.end method

.method protected l()V
    .locals 0

    .line 1
    return-void
.end method

.method public final load()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ltn/a;->h()Ltn/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-wide v1, p0, Ltn/j;->r:J

    .line 6
    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    cmp-long v1, v1, v3

    .line 10
    .line 11
    if-nez v1, :cond_2

    .line 12
    .line 13
    iget-wide v1, p0, Ltn/j;->p:J

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Ltn/c;->b(J)V

    .line 16
    .line 17
    .line 18
    iget-object v3, p0, Ltn/j;->q:Ltn/f;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Ltn/j;->j(Ltn/c;)Ltn/f$b;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    iget-wide v1, p0, Ltn/a;->k:J

    .line 25
    .line 26
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    cmp-long v7, v1, v5

    .line 32
    .line 33
    if-nez v7, :cond_0

    .line 34
    .line 35
    move-wide v1, v5

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-wide v7, p0, Ltn/j;->p:J

    .line 38
    .line 39
    sub-long/2addr v1, v7

    .line 40
    :goto_0
    iget-wide v7, p0, Ltn/a;->l:J

    .line 41
    .line 42
    cmp-long v9, v7, v5

    .line 43
    .line 44
    if-nez v9, :cond_1

    .line 45
    .line 46
    move-wide v7, v5

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    iget-wide v5, p0, Ltn/j;->p:J

    .line 49
    .line 50
    sub-long/2addr v7, v5

    .line 51
    :goto_1
    move-wide v5, v1

    .line 52
    invoke-interface/range {v3 .. v8}, Ltn/f;->e(Ltn/f$b;JJ)V

    .line 53
    .line 54
    .line 55
    :cond_2
    :try_start_0
    iget-object v1, p0, Ltn/e;->b:Len/g;

    .line 56
    .line 57
    iget-wide v2, p0, Ltn/j;->r:J

    .line 58
    .line 59
    invoke-virtual {v1, v2, v3}, Len/g;->e(J)Len/g;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    new-instance v8, Lao/i;

    .line 64
    .line 65
    iget-object v3, p0, Ltn/e;->i:Len/n;

    .line 66
    .line 67
    iget-wide v4, v1, Len/g;->g:J

    .line 68
    .line 69
    invoke-virtual {v3, v1}, Len/n;->b(Len/g;)J

    .line 70
    .line 71
    .line 72
    move-result-wide v6

    .line 73
    move-object v2, v8

    .line 74
    invoke-direct/range {v2 .. v7}, Lao/i;-><init>(Lzm/h;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 75
    .line 76
    .line 77
    :goto_2
    :try_start_1
    iget-boolean v1, p0, Ltn/j;->s:Z

    .line 78
    .line 79
    if-nez v1, :cond_3

    .line 80
    .line 81
    iget-object v1, p0, Ltn/j;->q:Ltn/f;

    .line 82
    .line 83
    invoke-interface {v1, v8}, Ltn/f;->a(Lao/q;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_3

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :catchall_0
    move-exception v0

    .line 91
    goto :goto_3

    .line 92
    :cond_3
    invoke-direct {p0, v0}, Ltn/j;->k(Ltn/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    .line 94
    .line 95
    :try_start_2
    invoke-interface {v8}, Lao/q;->getPosition()J

    .line 96
    .line 97
    .line 98
    move-result-wide v0

    .line 99
    iget-object v2, p0, Ltn/e;->b:Len/g;

    .line 100
    .line 101
    iget-wide v2, v2, Len/g;->g:J

    .line 102
    .line 103
    sub-long/2addr v0, v2

    .line 104
    iput-wide v0, p0, Ltn/j;->r:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 105
    .line 106
    invoke-virtual {p0}, Ltn/j;->l()V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Ltn/e;->i:Len/n;

    .line 110
    .line 111
    invoke-static {v0}, Len/f;->a(Len/d;)V

    .line 112
    .line 113
    .line 114
    iget-boolean v0, p0, Ltn/j;->s:Z

    .line 115
    .line 116
    xor-int/lit8 v0, v0, 0x1

    .line 117
    .line 118
    iput-boolean v0, p0, Ltn/j;->t:Z

    .line 119
    .line 120
    return-void

    .line 121
    :catchall_1
    move-exception v0

    .line 122
    goto :goto_4

    .line 123
    :goto_3
    :try_start_3
    invoke-interface {v8}, Lao/q;->getPosition()J

    .line 124
    .line 125
    .line 126
    move-result-wide v1

    .line 127
    iget-object v3, p0, Ltn/e;->b:Len/g;

    .line 128
    .line 129
    iget-wide v3, v3, Len/g;->g:J

    .line 130
    .line 131
    sub-long/2addr v1, v3

    .line 132
    iput-wide v1, p0, Ltn/j;->r:J

    .line 133
    .line 134
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 135
    :goto_4
    invoke-virtual {p0}, Ltn/j;->l()V

    .line 136
    .line 137
    .line 138
    iget-object v1, p0, Ltn/e;->i:Len/n;

    .line 139
    .line 140
    invoke-static {v1}, Len/f;->a(Len/d;)V

    .line 141
    .line 142
    .line 143
    throw v0
.end method
