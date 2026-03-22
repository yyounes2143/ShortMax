.class public final Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;
.super Lio/bidmachine/media3/exoplayer/source/a;
.source "HlsMediaSource.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;
    }
.end annotation


# instance fields
.field private final h:Lmn/e;

.field private final i:Lmn/d;

.field private final j:Lsn/e;

.field private final k:Lio/bidmachine/media3/exoplayer/drm/i;

.field private final l:Lio/bidmachine/media3/exoplayer/upstream/b;

.field private final m:Z

.field private final n:I

.field private final o:Z

.field private final p:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

.field private final q:J

.field private final r:J

.field private s:Lzm/q$g;

.field private t:Len/o;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private u:Lzm/q;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "media3.exoplayer.hls"

    .line 2
    .line 3
    invoke-static {v0}, Lzm/r;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private constructor <init>(Lzm/q;Lmn/d;Lmn/e;Lsn/e;Lwn/e;Lio/bidmachine/media3/exoplayer/drm/i;Lio/bidmachine/media3/exoplayer/upstream/b;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;JZIZJ)V
    .locals 3
    .param p5    # Lwn/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p1

    .line 2
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/a;-><init>()V

    .line 3
    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->u:Lzm/q;

    .line 4
    iget-object v1, v1, Lzm/q;->d:Lzm/q$g;

    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->s:Lzm/q$g;

    move-object v1, p2

    .line 5
    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->i:Lmn/d;

    move-object v1, p3

    .line 6
    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->h:Lmn/e;

    move-object v1, p4

    .line 7
    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->j:Lsn/e;

    move-object v1, p6

    .line 8
    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->k:Lio/bidmachine/media3/exoplayer/drm/i;

    move-object v1, p7

    .line 9
    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->l:Lio/bidmachine/media3/exoplayer/upstream/b;

    move-object v1, p8

    .line 10
    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->p:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    move-wide v1, p9

    .line 11
    iput-wide v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->q:J

    move v1, p11

    .line 12
    iput-boolean v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->m:Z

    move v1, p12

    .line 13
    iput v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->n:I

    move/from16 v1, p13

    .line 14
    iput-boolean v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->o:Z

    move-wide/from16 v1, p14

    .line 15
    iput-wide v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->r:J

    return-void
.end method

.method synthetic constructor <init>(Lzm/q;Lmn/d;Lmn/e;Lsn/e;Lwn/e;Lio/bidmachine/media3/exoplayer/drm/i;Lio/bidmachine/media3/exoplayer/upstream/b;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;JZIZJLio/bidmachine/media3/exoplayer/hls/HlsMediaSource$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p15}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;-><init>(Lzm/q;Lmn/d;Lmn/e;Lsn/e;Lwn/e;Lio/bidmachine/media3/exoplayer/drm/i;Lio/bidmachine/media3/exoplayer/upstream/b;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;JZIZJ)V

    return-void
.end method

.method private B(Lio/bidmachine/media3/exoplayer/hls/playlist/c;JJLio/bidmachine/media3/exoplayer/hls/c;)Lsn/u;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-wide v2, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/c;->h:J

    .line 6
    .line 7
    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->p:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 8
    .line 9
    invoke-interface {v4}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->a()J

    .line 10
    .line 11
    .line 12
    move-result-wide v4

    .line 13
    sub-long v17, v2, v4

    .line 14
    .line 15
    iget-boolean v2, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/c;->o:Z

    .line 16
    .line 17
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    iget-wide v5, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/c;->u:J

    .line 25
    .line 26
    add-long v5, v17, v5

    .line 27
    .line 28
    move-wide v13, v5

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-wide v13, v3

    .line 31
    :goto_0
    invoke-direct/range {p0 .. p1}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->F(Lio/bidmachine/media3/exoplayer/hls/playlist/c;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v11

    .line 35
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->s:Lzm/q$g;

    .line 36
    .line 37
    iget-wide v5, v2, Lzm/q$g;->a:J

    .line 38
    .line 39
    cmp-long v2, v5, v3

    .line 40
    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    invoke-static {v5, v6}, Lcn/m0;->S0(J)J

    .line 44
    .line 45
    .line 46
    move-result-wide v2

    .line 47
    :goto_1
    move-wide v5, v2

    .line 48
    goto :goto_2

    .line 49
    :cond_1
    invoke-static {v1, v11, v12}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->H(Lio/bidmachine/media3/exoplayer/hls/playlist/c;J)J

    .line 50
    .line 51
    .line 52
    move-result-wide v2

    .line 53
    goto :goto_1

    .line 54
    :goto_2
    iget-wide v2, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/c;->u:J

    .line 55
    .line 56
    add-long v9, v2, v11

    .line 57
    .line 58
    move-wide v7, v11

    .line 59
    invoke-static/range {v5 .. v10}, Lcn/m0;->q(JJJ)J

    .line 60
    .line 61
    .line 62
    move-result-wide v2

    .line 63
    invoke-direct {v0, v1, v2, v3}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->I(Lio/bidmachine/media3/exoplayer/hls/playlist/c;J)V

    .line 64
    .line 65
    .line 66
    invoke-direct {v0, v1, v11, v12}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->G(Lio/bidmachine/media3/exoplayer/hls/playlist/c;J)J

    .line 67
    .line 68
    .line 69
    move-result-wide v19

    .line 70
    iget v2, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/c;->d:I

    .line 71
    .line 72
    const/4 v3, 0x2

    .line 73
    const/4 v4, 0x1

    .line 74
    if-ne v2, v3, :cond_2

    .line 75
    .line 76
    iget-boolean v2, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/c;->f:Z

    .line 77
    .line 78
    if-eqz v2, :cond_2

    .line 79
    .line 80
    move/from16 v23, v4

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_2
    const/4 v2, 0x0

    .line 84
    move/from16 v23, v2

    .line 85
    .line 86
    :goto_3
    new-instance v2, Lsn/u;

    .line 87
    .line 88
    iget-wide v9, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/c;->u:J

    .line 89
    .line 90
    iget-boolean v1, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/c;->o:Z

    .line 91
    .line 92
    xor-int/lit8 v22, v1, 0x1

    .line 93
    .line 94
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->a()Lzm/q;

    .line 95
    .line 96
    .line 97
    move-result-object v25

    .line 98
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->s:Lzm/q$g;

    .line 99
    .line 100
    move-object/from16 v26, v1

    .line 101
    .line 102
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    const/16 v21, 0x1

    .line 108
    .line 109
    move-object v6, v2

    .line 110
    move-wide/from16 v7, p2

    .line 111
    .line 112
    move-wide v3, v9

    .line 113
    move-wide/from16 v9, p4

    .line 114
    .line 115
    move-wide v15, v3

    .line 116
    move-object/from16 v24, p6

    .line 117
    .line 118
    invoke-direct/range {v6 .. v26}, Lsn/u;-><init>(JJJJJJJZZZLjava/lang/Object;Lzm/q;Lzm/q$g;)V

    .line 119
    .line 120
    .line 121
    return-object v2
.end method

.method private C(Lio/bidmachine/media3/exoplayer/hls/playlist/c;JJLio/bidmachine/media3/exoplayer/hls/c;)Lsn/u;
    .locals 24

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    iget-wide v1, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/c;->e:J

    .line 4
    .line 5
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmp-long v1, v1, v3

    .line 11
    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_0
    iget-boolean v1, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/c;->g:Z

    .line 24
    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    iget-wide v1, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/c;->e:J

    .line 28
    .line 29
    iget-wide v3, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/c;->u:J

    .line 30
    .line 31
    cmp-long v3, v1, v3

    .line 32
    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    .line 37
    .line 38
    invoke-static {v3, v1, v2}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->E(Ljava/util/List;J)Lio/bidmachine/media3/exoplayer/hls/playlist/c$f;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-wide v1, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/c$g;->e:J

    .line 43
    .line 44
    :goto_0
    move-wide/from16 v16, v1

    .line 45
    .line 46
    goto :goto_3

    .line 47
    :cond_2
    :goto_1
    iget-wide v1, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/c;->e:J

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    :goto_2
    const-wide/16 v1, 0x0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :goto_3
    new-instance v1, Lsn/u;

    .line 54
    .line 55
    move-object v3, v1

    .line 56
    iget-wide v10, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/c;->u:J

    .line 57
    .line 58
    move-wide v12, v10

    .line 59
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->a()Lzm/q;

    .line 60
    .line 61
    .line 62
    move-result-object v22

    .line 63
    const/16 v23, 0x0

    .line 64
    .line 65
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    const-wide/16 v14, 0x0

    .line 71
    .line 72
    const/16 v18, 0x1

    .line 73
    .line 74
    const/16 v19, 0x0

    .line 75
    .line 76
    const/16 v20, 0x1

    .line 77
    .line 78
    move-wide/from16 v4, p2

    .line 79
    .line 80
    move-wide/from16 v6, p4

    .line 81
    .line 82
    move-object/from16 v21, p6

    .line 83
    .line 84
    invoke-direct/range {v3 .. v23}, Lsn/u;-><init>(JJJJJJJZZZLjava/lang/Object;Lzm/q;Lzm/q$g;)V

    .line 85
    .line 86
    .line 87
    return-object v1
.end method

.method private static D(Ljava/util/List;J)Lio/bidmachine/media3/exoplayer/hls/playlist/c$d;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/c$d;",
            ">;J)",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/c$d;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v1, v2, :cond_2

    .line 8
    .line 9
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lio/bidmachine/media3/exoplayer/hls/playlist/c$d;

    .line 14
    .line 15
    iget-wide v3, v2, Lio/bidmachine/media3/exoplayer/hls/playlist/c$g;->e:J

    .line 16
    .line 17
    cmp-long v5, v3, p1

    .line 18
    .line 19
    if-gtz v5, :cond_0

    .line 20
    .line 21
    iget-boolean v5, v2, Lio/bidmachine/media3/exoplayer/hls/playlist/c$d;->l:Z

    .line 22
    .line 23
    if-eqz v5, :cond_0

    .line 24
    .line 25
    move-object v0, v2

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    cmp-long v2, v3, p1

    .line 28
    .line 29
    if-lez v2, :cond_1

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    :goto_2
    return-object v0
.end method

.method private static E(Ljava/util/List;J)Lio/bidmachine/media3/exoplayer/hls/playlist/c$f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/c$f;",
            ">;J)",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/c$f;"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 p2, 0x1

    .line 6
    invoke-static {p0, p1, p2, p2}, Lcn/m0;->f(Ljava/util/List;Ljava/lang/Comparable;ZZ)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lio/bidmachine/media3/exoplayer/hls/playlist/c$f;

    .line 15
    .line 16
    return-object p0
.end method

.method private F(Lio/bidmachine/media3/exoplayer/hls/playlist/c;)J
    .locals 4

    .line 1
    iget-boolean v0, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/c;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->q:J

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcn/m0;->h0(J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-static {v0, v1}, Lcn/m0;->S0(J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/hls/playlist/c;->d()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    sub-long/2addr v0, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-wide/16 v0, 0x0

    .line 22
    .line 23
    :goto_0
    return-wide v0
.end method

.method private G(Lio/bidmachine/media3/exoplayer/hls/playlist/c;J)J
    .locals 4

    .line 1
    iget-wide v0, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/c;->e:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v2, v0, v2

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-wide v0, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/c;->u:J

    .line 14
    .line 15
    add-long/2addr v0, p2

    .line 16
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->s:Lzm/q$g;

    .line 17
    .line 18
    iget-wide p2, p2, Lzm/q$g;->a:J

    .line 19
    .line 20
    invoke-static {p2, p3}, Lcn/m0;->S0(J)J

    .line 21
    .line 22
    .line 23
    move-result-wide p2

    .line 24
    sub-long/2addr v0, p2

    .line 25
    :goto_0
    iget-boolean p2, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/c;->g:Z

    .line 26
    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    return-wide v0

    .line 30
    :cond_1
    iget-object p2, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/c;->s:Ljava/util/List;

    .line 31
    .line 32
    invoke-static {p2, v0, v1}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->D(Ljava/util/List;J)Lio/bidmachine/media3/exoplayer/hls/playlist/c$d;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    if-eqz p2, :cond_2

    .line 37
    .line 38
    iget-wide p1, p2, Lio/bidmachine/media3/exoplayer/hls/playlist/c$g;->e:J

    .line 39
    .line 40
    return-wide p1

    .line 41
    :cond_2
    iget-object p2, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_3

    .line 48
    .line 49
    const-wide/16 p1, 0x0

    .line 50
    .line 51
    return-wide p1

    .line 52
    :cond_3
    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    .line 53
    .line 54
    invoke-static {p1, v0, v1}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->E(Ljava/util/List;J)Lio/bidmachine/media3/exoplayer/hls/playlist/c$f;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iget-object p2, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/c$f;->m:Ljava/util/List;

    .line 59
    .line 60
    invoke-static {p2, v0, v1}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->D(Ljava/util/List;J)Lio/bidmachine/media3/exoplayer/hls/playlist/c$d;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    if-eqz p2, :cond_4

    .line 65
    .line 66
    iget-wide p1, p2, Lio/bidmachine/media3/exoplayer/hls/playlist/c$g;->e:J

    .line 67
    .line 68
    return-wide p1

    .line 69
    :cond_4
    iget-wide p1, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/c$g;->e:J

    .line 70
    .line 71
    return-wide p1
.end method

.method private static H(Lio/bidmachine/media3/exoplayer/hls/playlist/c;J)J
    .locals 7

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/c;->v:Lio/bidmachine/media3/exoplayer/hls/playlist/c$h;

    .line 2
    .line 3
    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/c;->e:J

    .line 4
    .line 5
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmp-long v5, v1, v3

    .line 11
    .line 12
    if-eqz v5, :cond_0

    .line 13
    .line 14
    iget-wide v3, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/c;->u:J

    .line 15
    .line 16
    sub-long/2addr v3, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-wide v1, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/c$h;->d:J

    .line 19
    .line 20
    cmp-long v5, v1, v3

    .line 21
    .line 22
    if-eqz v5, :cond_1

    .line 23
    .line 24
    iget-wide v5, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/c;->n:J

    .line 25
    .line 26
    cmp-long v5, v5, v3

    .line 27
    .line 28
    if-eqz v5, :cond_1

    .line 29
    .line 30
    move-wide v3, v1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-wide v0, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/c$h;->c:J

    .line 33
    .line 34
    cmp-long v2, v0, v3

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    move-wide v3, v0

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const-wide/16 v0, 0x3

    .line 41
    .line 42
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/c;->m:J

    .line 43
    .line 44
    mul-long v3, v2, v0

    .line 45
    .line 46
    :goto_0
    add-long/2addr v3, p1

    .line 47
    return-wide v3
.end method

.method private I(Lio/bidmachine/media3/exoplayer/hls/playlist/c;J)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->a()Lzm/q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lzm/q;->d:Lzm/q$g;

    .line 6
    .line 7
    iget v1, v0, Lzm/q$g;->d:F

    .line 8
    .line 9
    const v2, -0x800001

    .line 10
    .line 11
    .line 12
    cmpl-float v1, v1, v2

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    iget v0, v0, Lzm/q$g;->e:F

    .line 17
    .line 18
    cmpl-float v0, v0, v2

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/c;->v:Lio/bidmachine/media3/exoplayer/hls/playlist/c$h;

    .line 23
    .line 24
    iget-wide v0, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/c$h;->c:J

    .line 25
    .line 26
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    cmp-long v0, v0, v2

    .line 32
    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    iget-wide v0, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/c$h;->d:J

    .line 36
    .line 37
    cmp-long p1, v0, v2

    .line 38
    .line 39
    if-nez p1, :cond_0

    .line 40
    .line 41
    const/4 p1, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 p1, 0x0

    .line 44
    :goto_0
    new-instance v0, Lzm/q$g$a;

    .line 45
    .line 46
    invoke-direct {v0}, Lzm/q$g$a;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-static {p2, p3}, Lcn/m0;->u1(J)J

    .line 50
    .line 51
    .line 52
    move-result-wide p2

    .line 53
    invoke-virtual {v0, p2, p3}, Lzm/q$g$a;->k(J)Lzm/q$g$a;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    const/high16 p3, 0x3f800000    # 1.0f

    .line 58
    .line 59
    if-eqz p1, :cond_1

    .line 60
    .line 61
    move v0, p3

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->s:Lzm/q$g;

    .line 64
    .line 65
    iget v0, v0, Lzm/q$g;->d:F

    .line 66
    .line 67
    :goto_1
    invoke-virtual {p2, v0}, Lzm/q$g$a;->j(F)Lzm/q$g$a;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_2
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->s:Lzm/q$g;

    .line 75
    .line 76
    iget p3, p1, Lzm/q$g;->e:F

    .line 77
    .line 78
    :goto_2
    invoke-virtual {p2, p3}, Lzm/q$g$a;->h(F)Lzm/q$g$a;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lzm/q$g$a;->f()Lzm/q$g;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->s:Lzm/q$g;

    .line 87
    .line 88
    return-void
.end method


# virtual methods
.method protected A()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->p:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->stop()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->k:Lio/bidmachine/media3/exoplayer/drm/i;

    .line 7
    .line 8
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/drm/i;->release()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public declared-synchronized a()Lzm/q;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->u:Lzm/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method public declared-synchronized d(Lzm/q;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->u:Lzm/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw p1
.end method

.method public f(Lio/bidmachine/media3/exoplayer/source/r$b;Lwn/b;J)Lio/bidmachine/media3/exoplayer/source/q;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v11, p2

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p1}, Lio/bidmachine/media3/exoplayer/source/a;->t(Lio/bidmachine/media3/exoplayer/source/r$b;)Lio/bidmachine/media3/exoplayer/source/s$a;

    .line 6
    .line 7
    .line 8
    move-result-object v10

    .line 9
    invoke-virtual/range {p0 .. p1}, Lio/bidmachine/media3/exoplayer/source/a;->r(Lio/bidmachine/media3/exoplayer/source/r$b;)Lio/bidmachine/media3/exoplayer/drm/h$a;

    .line 10
    .line 11
    .line 12
    move-result-object v8

    .line 13
    new-instance v19, Lio/bidmachine/media3/exoplayer/hls/f;

    .line 14
    .line 15
    move-object/from16 v1, v19

    .line 16
    .line 17
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->h:Lmn/e;

    .line 18
    .line 19
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->p:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 20
    .line 21
    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->i:Lmn/d;

    .line 22
    .line 23
    iget-object v5, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->t:Len/o;

    .line 24
    .line 25
    iget-object v7, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->k:Lio/bidmachine/media3/exoplayer/drm/i;

    .line 26
    .line 27
    iget-object v9, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->l:Lio/bidmachine/media3/exoplayer/upstream/b;

    .line 28
    .line 29
    iget-object v12, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->j:Lsn/e;

    .line 30
    .line 31
    iget-boolean v13, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->m:Z

    .line 32
    .line 33
    iget v14, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->n:I

    .line 34
    .line 35
    iget-boolean v15, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->o:Z

    .line 36
    .line 37
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/exoplayer/source/a;->w()Lhn/b2;

    .line 38
    .line 39
    .line 40
    move-result-object v16

    .line 41
    move-object/from16 p1, v1

    .line 42
    .line 43
    move-object/from16 p2, v2

    .line 44
    .line 45
    iget-wide v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->r:J

    .line 46
    .line 47
    move-wide/from16 v17, v1

    .line 48
    .line 49
    const/4 v6, 0x0

    .line 50
    move-object/from16 v1, p1

    .line 51
    .line 52
    move-object/from16 v2, p2

    .line 53
    .line 54
    invoke-direct/range {v1 .. v18}, Lio/bidmachine/media3/exoplayer/hls/f;-><init>(Lmn/e;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;Lmn/d;Len/o;Lwn/e;Lio/bidmachine/media3/exoplayer/drm/i;Lio/bidmachine/media3/exoplayer/drm/h$a;Lio/bidmachine/media3/exoplayer/upstream/b;Lio/bidmachine/media3/exoplayer/source/s$a;Lwn/b;Lsn/e;ZIZLhn/b2;J)V

    .line 55
    .line 56
    .line 57
    return-object v19
.end method

.method public j(Lio/bidmachine/media3/exoplayer/hls/playlist/c;)V
    .locals 12

    .line 1
    iget-boolean v0, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/c;->p:Z

    .line 2
    .line 3
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-wide v3, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/c;->h:J

    .line 11
    .line 12
    invoke-static {v3, v4}, Lcn/m0;->u1(J)J

    .line 13
    .line 14
    .line 15
    move-result-wide v3

    .line 16
    move-wide v9, v3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-wide v9, v1

    .line 19
    :goto_0
    iget v0, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/c;->d:I

    .line 20
    .line 21
    const/4 v3, 0x2

    .line 22
    if-eq v0, v3, :cond_2

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    if-ne v0, v3, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move-wide v7, v1

    .line 29
    goto :goto_2

    .line 30
    :cond_2
    :goto_1
    move-wide v7, v9

    .line 31
    :goto_2
    new-instance v11, Lio/bidmachine/media3/exoplayer/hls/c;

    .line 32
    .line 33
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->p:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 34
    .line 35
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->k()Lio/bidmachine/media3/exoplayer/hls/playlist/d;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lio/bidmachine/media3/exoplayer/hls/playlist/d;

    .line 44
    .line 45
    invoke-direct {v11, v0, p1}, Lio/bidmachine/media3/exoplayer/hls/c;-><init>(Lio/bidmachine/media3/exoplayer/hls/playlist/d;Lio/bidmachine/media3/exoplayer/hls/playlist/c;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->p:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 49
    .line 50
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->n()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    move-object v5, p0

    .line 57
    move-object v6, p1

    .line 58
    invoke-direct/range {v5 .. v11}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->B(Lio/bidmachine/media3/exoplayer/hls/playlist/c;JJLio/bidmachine/media3/exoplayer/hls/c;)Lsn/u;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    goto :goto_3

    .line 63
    :cond_3
    move-object v5, p0

    .line 64
    move-object v6, p1

    .line 65
    invoke-direct/range {v5 .. v11}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->C(Lio/bidmachine/media3/exoplayer/hls/playlist/c;JJLio/bidmachine/media3/exoplayer/hls/c;)Lsn/u;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    :goto_3
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/a;->z(Lzm/a0;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public m(Lio/bidmachine/media3/exoplayer/source/q;)V
    .locals 0

    .line 1
    check-cast p1, Lio/bidmachine/media3/exoplayer/hls/f;

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/hls/f;->u()V

    .line 4
    .line 5
    .line 6
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
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->p:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->p()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected y(Len/o;)V
    .locals 2
    .param p1    # Len/o;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->t:Len/o;

    .line 2
    .line 3
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->k:Lio/bidmachine/media3/exoplayer/drm/i;

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/os/Looper;

    .line 14
    .line 15
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/a;->w()Lhn/b2;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {p1, v0, v1}, Lio/bidmachine/media3/exoplayer/drm/i;->c(Landroid/os/Looper;Lhn/b2;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->k:Lio/bidmachine/media3/exoplayer/drm/i;

    .line 23
    .line 24
    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/drm/i;->prepare()V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/a;->t(Lio/bidmachine/media3/exoplayer/source/r$b;)Lio/bidmachine/media3/exoplayer/source/s$a;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->p:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 33
    .line 34
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->a()Lzm/q;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object v1, v1, Lzm/q;->b:Lzm/q$h;

    .line 39
    .line 40
    invoke-static {v1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lzm/q$h;

    .line 45
    .line 46
    iget-object v1, v1, Lzm/q$h;->a:Landroid/net/Uri;

    .line 47
    .line 48
    invoke-interface {v0, v1, p1, p0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->i(Landroid/net/Uri;Lio/bidmachine/media3/exoplayer/source/s$a;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$c;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
