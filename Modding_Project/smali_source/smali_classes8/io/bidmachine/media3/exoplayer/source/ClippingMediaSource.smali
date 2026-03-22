.class public final Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;
.super Lio/bidmachine/media3/exoplayer/source/l0;
.source "ClippingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$b;,
        Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;,
        Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$c;
    }
.end annotation


# instance fields
.field private final m:J

.field private final n:J

.field private final o:Z

.field private final p:Z

.field private final q:Z

.field private final r:Z

.field private final s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/media3/exoplayer/source/b;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Lzm/a0$c;

.field private u:Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private v:Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private w:J

.field private x:J


# direct methods
.method private constructor <init>(Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$b;)V
    .locals 2

    .line 2
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$b;->a(Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$b;)Lio/bidmachine/media3/exoplayer/source/r;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/bidmachine/media3/exoplayer/source/l0;-><init>(Lio/bidmachine/media3/exoplayer/source/r;)V

    .line 3
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$b;->b(Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->m:J

    .line 4
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$b;->c(Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->n:J

    .line 5
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$b;->d(Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$b;)Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->o:Z

    .line 6
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$b;->e(Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$b;)Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->p:Z

    .line 7
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$b;->f(Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$b;)Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->q:Z

    .line 8
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$b;->g(Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$b;)Z

    move-result p1

    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->r:Z

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->s:Ljava/util/ArrayList;

    .line 10
    new-instance p1, Lzm/a0$c;

    invoke-direct {p1}, Lzm/a0$c;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->t:Lzm/a0$c;

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$b;Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;-><init>(Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$b;)V

    return-void
.end method

.method private S(Lzm/a0;)V
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->t:Lzm/a0$c;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    move-object/from16 v4, p1

    .line 6
    .line 7
    invoke-virtual {v4, v2, v0}, Lzm/a0;->n(ILzm/a0$c;)Lzm/a0$c;

    .line 8
    .line 9
    .line 10
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->t:Lzm/a0$c;

    .line 11
    .line 12
    invoke-virtual {v0}, Lzm/a0$c;->e()J

    .line 13
    .line 14
    .line 15
    move-result-wide v5

    .line 16
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->u:Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$c;

    .line 17
    .line 18
    const-wide/high16 v7, -0x8000000000000000L

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->s:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    iget-boolean v0, v1, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->p:Z

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    iget-wide v9, v1, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->w:J

    .line 36
    .line 37
    sub-long/2addr v9, v5

    .line 38
    iget-wide v11, v1, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->n:J

    .line 39
    .line 40
    cmp-long v0, v11, v7

    .line 41
    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-wide v7, v1, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->x:J

    .line 46
    .line 47
    sub-long/2addr v7, v5

    .line 48
    :goto_0
    move-wide v5, v9

    .line 49
    goto :goto_4

    .line 50
    :cond_2
    :goto_1
    iget-wide v9, v1, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->m:J

    .line 51
    .line 52
    iget-wide v11, v1, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->n:J

    .line 53
    .line 54
    iget-boolean v0, v1, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->q:Z

    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->t:Lzm/a0$c;

    .line 59
    .line 60
    invoke-virtual {v0}, Lzm/a0$c;->c()J

    .line 61
    .line 62
    .line 63
    move-result-wide v13

    .line 64
    add-long/2addr v9, v13

    .line 65
    add-long/2addr v11, v13

    .line 66
    :cond_3
    add-long v13, v5, v9

    .line 67
    .line 68
    iput-wide v13, v1, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->w:J

    .line 69
    .line 70
    iget-wide v13, v1, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->n:J

    .line 71
    .line 72
    cmp-long v0, v13, v7

    .line 73
    .line 74
    if-nez v0, :cond_4

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_4
    add-long v7, v5, v11

    .line 78
    .line 79
    :goto_2
    iput-wide v7, v1, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->x:J

    .line 80
    .line 81
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->s:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    move v3, v2

    .line 88
    :goto_3
    if-ge v3, v0, :cond_5

    .line 89
    .line 90
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->s:Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    check-cast v5, Lio/bidmachine/media3/exoplayer/source/b;

    .line 97
    .line 98
    iget-wide v6, v1, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->w:J

    .line 99
    .line 100
    iget-wide v13, v1, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->x:J

    .line 101
    .line 102
    invoke-virtual {v5, v6, v7, v13, v14}, Lio/bidmachine/media3/exoplayer/source/b;->n(JJ)V

    .line 103
    .line 104
    .line 105
    add-int/lit8 v3, v3, 0x1

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_5
    move-wide v5, v9

    .line 109
    move-wide v7, v11

    .line 110
    :goto_4
    :try_start_0
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$c;

    .line 111
    .line 112
    iget-boolean v9, v1, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->r:Z

    .line 113
    .line 114
    move-object v3, v0

    .line 115
    move-object/from16 v4, p1

    .line 116
    .line 117
    invoke-direct/range {v3 .. v9}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$c;-><init>(Lzm/a0;JJZ)V

    .line 118
    .line 119
    .line 120
    iput-object v0, v1, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->u:Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$c;
    :try_end_0
    .catch Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .line 122
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/source/a;->z(Lzm/a0;)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    iput-object v0, v1, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->v:Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    .line 128
    .line 129
    :goto_5
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->s:Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-ge v2, v0, :cond_6

    .line 136
    .line 137
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->s:Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    check-cast v0, Lio/bidmachine/media3/exoplayer/source/b;

    .line 144
    .line 145
    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->v:Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    .line 146
    .line 147
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/exoplayer/source/b;->l(Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;)V

    .line 148
    .line 149
    .line 150
    add-int/lit8 v2, v2, 0x1

    .line 151
    .line 152
    goto :goto_5

    .line 153
    :cond_6
    return-void
.end method


# virtual methods
.method protected A()V
    .locals 1

    .line 1
    invoke-super {p0}, Lio/bidmachine/media3/exoplayer/source/c;->A()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->v:Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    .line 6
    .line 7
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->u:Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$c;

    .line 8
    .line 9
    return-void
.end method

.method protected P(Lzm/a0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->v:Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->S(Lzm/a0;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public f(Lio/bidmachine/media3/exoplayer/source/r$b;Lwn/b;J)Lio/bidmachine/media3/exoplayer/source/q;
    .locals 8

    .line 1
    new-instance v7, Lio/bidmachine/media3/exoplayer/source/b;

    .line 2
    .line 3
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/l0;->k:Lio/bidmachine/media3/exoplayer/source/r;

    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/source/r;->f(Lio/bidmachine/media3/exoplayer/source/r$b;Lwn/b;J)Lio/bidmachine/media3/exoplayer/source/q;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->o:Z

    .line 10
    .line 11
    iget-wide v3, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->w:J

    .line 12
    .line 13
    iget-wide v5, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->x:J

    .line 14
    .line 15
    move-object v0, v7

    .line 16
    invoke-direct/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/source/b;-><init>(Lio/bidmachine/media3/exoplayer/source/q;ZJJ)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->s:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    return-object v7
.end method

.method public m(Lio/bidmachine/media3/exoplayer/source/q;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->s:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Lcn/a;->g(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/l0;->k:Lio/bidmachine/media3/exoplayer/source/r;

    .line 11
    .line 12
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/b;

    .line 13
    .line 14
    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/source/b;->a:Lio/bidmachine/media3/exoplayer/source/q;

    .line 15
    .line 16
    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/source/r;->m(Lio/bidmachine/media3/exoplayer/source/q;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->s:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->p:Z

    .line 28
    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->u:Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$c;

    .line 32
    .line 33
    invoke-static {p1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$c;

    .line 38
    .line 39
    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/source/m;->e:Lzm/a0;

    .line 40
    .line 41
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->S(Lzm/a0;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->v:Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Lio/bidmachine/media3/exoplayer/source/c;->maybeThrowSourceInfoRefreshError()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    throw v0
.end method
