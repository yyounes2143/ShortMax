.class abstract Lwo/i;
.super Ljava/lang/Object;
.source "StreamReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwo/i$b;,
        Lwo/i$c;
    }
.end annotation


# instance fields
.field private final a:Lwo/e;

.field private b:Lao/o0;

.field private c:Lao/r;

.field private d:Lwo/g;

.field private e:J

.field private f:J

.field private g:J

.field private h:I

.field private i:I

.field private j:Lwo/i$b;

.field private k:J

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lwo/e;

    .line 5
    .line 6
    invoke-direct {v0}, Lwo/e;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lwo/i;->a:Lwo/e;

    .line 10
    .line 11
    new-instance v0, Lwo/i$b;

    .line 12
    .line 13
    invoke-direct {v0}, Lwo/i$b;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lwo/i;->j:Lwo/i$b;

    .line 17
    .line 18
    return-void
.end method

.method private a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lwo/i;->b:Lao/o0;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lwo/i;->c:Lao/r;

    .line 7
    .line 8
    invoke-static {v0}, Lcn/m0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private h(Lao/q;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lwo/i;->a:Lwo/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lwo/e;->d(Lao/q;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x3

    .line 10
    iput p1, p0, Lwo/i;->h:I

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    return p1

    .line 14
    :cond_0
    invoke-interface {p1}, Lao/q;->getPosition()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    iget-wide v2, p0, Lwo/i;->f:J

    .line 19
    .line 20
    sub-long/2addr v0, v2

    .line 21
    iput-wide v0, p0, Lwo/i;->k:J

    .line 22
    .line 23
    iget-object v0, p0, Lwo/i;->a:Lwo/e;

    .line 24
    .line 25
    invoke-virtual {v0}, Lwo/e;->c()Lcn/b0;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-wide v1, p0, Lwo/i;->f:J

    .line 30
    .line 31
    iget-object v3, p0, Lwo/i;->j:Lwo/i$b;

    .line 32
    .line 33
    invoke-virtual {p0, v0, v1, v2, v3}, Lwo/i;->i(Lcn/b0;JLwo/i$b;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-interface {p1}, Lao/q;->getPosition()J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    iput-wide v0, p0, Lwo/i;->f:J

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 p1, 0x1

    .line 47
    return p1
.end method

.method private j(Lao/q;)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lwo/i;->h(Lao/q;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    return v0

    .line 9
    :cond_0
    iget-object v0, p0, Lwo/i;->j:Lwo/i$b;

    .line 10
    .line 11
    iget-object v0, v0, Lwo/i$b;->a:Lio/bidmachine/media3/common/a;

    .line 12
    .line 13
    iget v1, v0, Lio/bidmachine/media3/common/a;->F:I

    .line 14
    .line 15
    iput v1, p0, Lwo/i;->i:I

    .line 16
    .line 17
    iget-boolean v1, p0, Lwo/i;->m:Z

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Lwo/i;->b:Lao/o0;

    .line 23
    .line 24
    invoke-interface {v1, v0}, Lao/o0;->g(Lio/bidmachine/media3/common/a;)V

    .line 25
    .line 26
    .line 27
    iput-boolean v2, p0, Lwo/i;->m:Z

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lwo/i;->j:Lwo/i$b;

    .line 30
    .line 31
    iget-object v0, v0, Lwo/i$b;->b:Lwo/g;

    .line 32
    .line 33
    const/4 v11, 0x0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iput-object v0, p0, Lwo/i;->d:Lwo/g;

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    invoke-interface {p1}, Lao/q;->getLength()J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    const-wide/16 v3, -0x1

    .line 44
    .line 45
    cmp-long v0, v0, v3

    .line 46
    .line 47
    if-nez v0, :cond_3

    .line 48
    .line 49
    new-instance v0, Lwo/i$c;

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    invoke-direct {v0, v1}, Lwo/i$c;-><init>(Lwo/i$a;)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lwo/i;->d:Lwo/g;

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    iget-object v0, p0, Lwo/i;->a:Lwo/e;

    .line 59
    .line 60
    invoke-virtual {v0}, Lwo/e;->b()Lwo/f;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget v1, v0, Lwo/f;->b:I

    .line 65
    .line 66
    and-int/lit8 v1, v1, 0x4

    .line 67
    .line 68
    if-eqz v1, :cond_4

    .line 69
    .line 70
    move v10, v2

    .line 71
    goto :goto_0

    .line 72
    :cond_4
    move v10, v11

    .line 73
    :goto_0
    new-instance v12, Lwo/a;

    .line 74
    .line 75
    iget-wide v2, p0, Lwo/i;->f:J

    .line 76
    .line 77
    invoke-interface {p1}, Lao/q;->getLength()J

    .line 78
    .line 79
    .line 80
    move-result-wide v4

    .line 81
    iget v1, v0, Lwo/f;->h:I

    .line 82
    .line 83
    iget v6, v0, Lwo/f;->i:I

    .line 84
    .line 85
    add-int/2addr v1, v6

    .line 86
    int-to-long v6, v1

    .line 87
    iget-wide v8, v0, Lwo/f;->c:J

    .line 88
    .line 89
    move-object v0, v12

    .line 90
    move-object v1, p0

    .line 91
    invoke-direct/range {v0 .. v10}, Lwo/a;-><init>(Lwo/i;JJJJZ)V

    .line 92
    .line 93
    .line 94
    iput-object v12, p0, Lwo/i;->d:Lwo/g;

    .line 95
    .line 96
    :goto_1
    const/4 v0, 0x2

    .line 97
    iput v0, p0, Lwo/i;->h:I

    .line 98
    .line 99
    iget-object v0, p0, Lwo/i;->a:Lwo/e;

    .line 100
    .line 101
    invoke-virtual {v0}, Lwo/e;->f()V

    .line 102
    .line 103
    .line 104
    return v11
.end method

.method private k(Lao/q;Lao/i0;)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lwo/i;->d:Lwo/g;

    .line 6
    .line 7
    invoke-interface {v2, v1}, Lwo/g;->a(Lao/q;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    const-wide/16 v4, 0x0

    .line 12
    .line 13
    cmp-long v6, v2, v4

    .line 14
    .line 15
    const/4 v7, 0x1

    .line 16
    if-ltz v6, :cond_0

    .line 17
    .line 18
    move-object/from16 v6, p2

    .line 19
    .line 20
    iput-wide v2, v6, Lao/i0;->a:J

    .line 21
    .line 22
    return v7

    .line 23
    :cond_0
    const-wide/16 v8, -0x1

    .line 24
    .line 25
    cmp-long v6, v2, v8

    .line 26
    .line 27
    if-gez v6, :cond_1

    .line 28
    .line 29
    const-wide/16 v10, 0x2

    .line 30
    .line 31
    add-long/2addr v2, v10

    .line 32
    neg-long v2, v2

    .line 33
    invoke-virtual {v0, v2, v3}, Lwo/i;->e(J)V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-boolean v2, v0, Lwo/i;->l:Z

    .line 37
    .line 38
    if-nez v2, :cond_2

    .line 39
    .line 40
    iget-object v2, v0, Lwo/i;->d:Lwo/g;

    .line 41
    .line 42
    invoke-interface {v2}, Lwo/g;->createSeekMap()Lao/j0;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static {v2}, Lcn/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Lao/j0;

    .line 51
    .line 52
    iget-object v3, v0, Lwo/i;->c:Lao/r;

    .line 53
    .line 54
    invoke-interface {v3, v2}, Lao/r;->d(Lao/j0;)V

    .line 55
    .line 56
    .line 57
    iget-object v3, v0, Lwo/i;->b:Lao/o0;

    .line 58
    .line 59
    invoke-interface {v2}, Lao/j0;->getDurationUs()J

    .line 60
    .line 61
    .line 62
    move-result-wide v10

    .line 63
    invoke-interface {v3, v10, v11}, Lao/o0;->d(J)V

    .line 64
    .line 65
    .line 66
    iput-boolean v7, v0, Lwo/i;->l:Z

    .line 67
    .line 68
    :cond_2
    iget-wide v2, v0, Lwo/i;->k:J

    .line 69
    .line 70
    cmp-long v2, v2, v4

    .line 71
    .line 72
    if-gtz v2, :cond_4

    .line 73
    .line 74
    iget-object v2, v0, Lwo/i;->a:Lwo/e;

    .line 75
    .line 76
    invoke-virtual {v2, v1}, Lwo/e;->d(Lao/q;)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_3

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    const/4 v1, 0x3

    .line 84
    iput v1, v0, Lwo/i;->h:I

    .line 85
    .line 86
    const/4 v1, -0x1

    .line 87
    return v1

    .line 88
    :cond_4
    :goto_0
    iput-wide v4, v0, Lwo/i;->k:J

    .line 89
    .line 90
    iget-object v1, v0, Lwo/i;->a:Lwo/e;

    .line 91
    .line 92
    invoke-virtual {v1}, Lwo/e;->c()Lcn/b0;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Lwo/i;->f(Lcn/b0;)J

    .line 97
    .line 98
    .line 99
    move-result-wide v2

    .line 100
    cmp-long v4, v2, v4

    .line 101
    .line 102
    if-ltz v4, :cond_5

    .line 103
    .line 104
    iget-wide v4, v0, Lwo/i;->g:J

    .line 105
    .line 106
    add-long v6, v4, v2

    .line 107
    .line 108
    iget-wide v10, v0, Lwo/i;->e:J

    .line 109
    .line 110
    cmp-long v6, v6, v10

    .line 111
    .line 112
    if-ltz v6, :cond_5

    .line 113
    .line 114
    invoke-virtual {v0, v4, v5}, Lwo/i;->b(J)J

    .line 115
    .line 116
    .line 117
    move-result-wide v11

    .line 118
    iget-object v4, v0, Lwo/i;->b:Lao/o0;

    .line 119
    .line 120
    invoke-virtual {v1}, Lcn/b0;->g()I

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    invoke-interface {v4, v1, v5}, Lao/o0;->a(Lcn/b0;I)V

    .line 125
    .line 126
    .line 127
    iget-object v10, v0, Lwo/i;->b:Lao/o0;

    .line 128
    .line 129
    invoke-virtual {v1}, Lcn/b0;->g()I

    .line 130
    .line 131
    .line 132
    move-result v14

    .line 133
    const/4 v15, 0x0

    .line 134
    const/16 v16, 0x0

    .line 135
    .line 136
    const/4 v13, 0x1

    .line 137
    invoke-interface/range {v10 .. v16}, Lao/o0;->c(JIIILao/o0$a;)V

    .line 138
    .line 139
    .line 140
    iput-wide v8, v0, Lwo/i;->e:J

    .line 141
    .line 142
    :cond_5
    iget-wide v4, v0, Lwo/i;->g:J

    .line 143
    .line 144
    add-long/2addr v4, v2

    .line 145
    iput-wide v4, v0, Lwo/i;->g:J

    .line 146
    .line 147
    const/4 v1, 0x0

    .line 148
    return v1
.end method


# virtual methods
.method protected b(J)J
    .locals 2

    .line 1
    const-wide/32 v0, 0xf4240

    .line 2
    .line 3
    .line 4
    mul-long/2addr p1, v0

    .line 5
    iget v0, p0, Lwo/i;->i:I

    .line 6
    .line 7
    int-to-long v0, v0

    .line 8
    div-long/2addr p1, v0

    .line 9
    return-wide p1
.end method

.method protected c(J)J
    .locals 2

    .line 1
    iget v0, p0, Lwo/i;->i:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    mul-long/2addr v0, p1

    .line 5
    const-wide/32 p1, 0xf4240

    .line 6
    .line 7
    .line 8
    div-long/2addr v0, p1

    .line 9
    return-wide v0
.end method

.method d(Lao/r;Lao/o0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwo/i;->c:Lao/r;

    .line 2
    .line 3
    iput-object p2, p0, Lwo/i;->b:Lao/o0;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lwo/i;->l(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected e(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lwo/i;->g:J

    .line 2
    .line 3
    return-void
.end method

.method protected abstract f(Lcn/b0;)J
.end method

.method final g(Lao/q;Lao/i0;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lwo/i;->a()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lwo/i;->h:I

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x2

    .line 10
    if-eq v0, v1, :cond_2

    .line 11
    .line 12
    if-eq v0, v2, :cond_1

    .line 13
    .line 14
    const/4 p1, 0x3

    .line 15
    if-ne v0, p1, :cond_0

    .line 16
    .line 17
    const/4 p1, -0x1

    .line 18
    return p1

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_1
    iget-object v0, p0, Lwo/i;->d:Lwo/g;

    .line 26
    .line 27
    invoke-static {v0}, Lcn/m0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p1, p2}, Lwo/i;->k(Lao/q;Lao/i0;)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    return p1

    .line 35
    :cond_2
    iget-wide v0, p0, Lwo/i;->f:J

    .line 36
    .line 37
    long-to-int p2, v0

    .line 38
    invoke-interface {p1, p2}, Lao/q;->skipFully(I)V

    .line 39
    .line 40
    .line 41
    iput v2, p0, Lwo/i;->h:I

    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    return p1

    .line 45
    :cond_3
    invoke-direct {p0, p1}, Lwo/i;->j(Lao/q;)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    return p1
.end method

.method protected abstract i(Lcn/b0;JLwo/i$b;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected l(Z)V
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Lwo/i$b;

    .line 6
    .line 7
    invoke-direct {p1}, Lwo/i$b;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lwo/i;->j:Lwo/i$b;

    .line 11
    .line 12
    iput-wide v0, p0, Lwo/i;->f:J

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lwo/i;->h:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x1

    .line 19
    iput p1, p0, Lwo/i;->h:I

    .line 20
    .line 21
    :goto_0
    const-wide/16 v2, -0x1

    .line 22
    .line 23
    iput-wide v2, p0, Lwo/i;->e:J

    .line 24
    .line 25
    iput-wide v0, p0, Lwo/i;->g:J

    .line 26
    .line 27
    return-void
.end method

.method final m(JJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lwo/i;->a:Lwo/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lwo/e;->e()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long p1, p1, v0

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    iget-boolean p1, p0, Lwo/i;->l:Z

    .line 13
    .line 14
    xor-int/lit8 p1, p1, 0x1

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lwo/i;->l(Z)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget p1, p0, Lwo/i;->h:I

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0, p3, p4}, Lwo/i;->c(J)J

    .line 25
    .line 26
    .line 27
    move-result-wide p1

    .line 28
    iput-wide p1, p0, Lwo/i;->e:J

    .line 29
    .line 30
    iget-object p1, p0, Lwo/i;->d:Lwo/g;

    .line 31
    .line 32
    invoke-static {p1}, Lcn/m0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lwo/g;

    .line 37
    .line 38
    iget-wide p2, p0, Lwo/i;->e:J

    .line 39
    .line 40
    invoke-interface {p1, p2, p3}, Lwo/g;->startSeek(J)V

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x2

    .line 44
    iput p1, p0, Lwo/i;->h:I

    .line 45
    .line 46
    :cond_1
    :goto_0
    return-void
.end method
