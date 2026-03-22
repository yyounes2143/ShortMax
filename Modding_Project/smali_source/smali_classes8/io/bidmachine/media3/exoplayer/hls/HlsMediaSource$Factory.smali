.class public final Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;
.super Ljava/lang/Object;
.source "HlsMediaSource.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/source/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# static fields
.field public static final synthetic s:I


# instance fields
.field private final c:Lmn/d;

.field private d:Lmn/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Lyo/r$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Z

.field private g:I

.field private h:Lnn/e;

.field private i:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$a;

.field private j:Lsn/e;

.field private k:Lwn/e$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private l:Lln/k;

.field private m:Lio/bidmachine/media3/exoplayer/upstream/b;

.field private n:Z

.field private o:I

.field private p:Z

.field private q:J

.field private r:J


# direct methods
.method public constructor <init>(Len/d$a;)V
    .locals 1

    .line 1
    new-instance v0, Lmn/b;

    invoke-direct {v0, p1}, Lmn/b;-><init>(Len/d$a;)V

    invoke-direct {p0, v0}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;-><init>(Lmn/d;)V

    return-void
.end method

.method public constructor <init>(Lmn/d;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmn/d;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->c:Lmn/d;

    .line 4
    new-instance p1, Lio/bidmachine/media3/exoplayer/drm/g;

    invoke-direct {p1}, Lio/bidmachine/media3/exoplayer/drm/g;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->l:Lln/k;

    .line 5
    new-instance p1, Lnn/a;

    invoke-direct {p1}, Lnn/a;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->h:Lnn/e;

    .line 6
    sget-object p1, Lio/bidmachine/media3/exoplayer/hls/playlist/a;->p:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$a;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->i:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$a;

    .line 7
    new-instance p1, Lio/bidmachine/media3/exoplayer/upstream/a;

    invoke-direct {p1}, Lio/bidmachine/media3/exoplayer/upstream/a;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->m:Lio/bidmachine/media3/exoplayer/upstream/b;

    .line 8
    new-instance p1, Lsn/f;

    invoke-direct {p1}, Lsn/f;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->j:Lsn/e;

    const/4 p1, 0x1

    .line 9
    iput p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->o:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->q:J

    .line 11
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->n:Z

    .line 12
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->i(Z)Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lyo/r$a;)Lio/bidmachine/media3/exoplayer/source/r$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->n(Lyo/r$a;)Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic b(I)Lio/bidmachine/media3/exoplayer/source/r$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->j(I)Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic c(Z)Lio/bidmachine/media3/exoplayer/source/r$a;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->i(Z)Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic d(Lzm/q;)Lio/bidmachine/media3/exoplayer/source/r;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->h(Lzm/q;)Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic e(Lln/k;)Lio/bidmachine/media3/exoplayer/source/r$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->l(Lln/k;)Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic f(Lio/bidmachine/media3/exoplayer/upstream/b;)Lio/bidmachine/media3/exoplayer/source/r$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->m(Lio/bidmachine/media3/exoplayer/upstream/b;)Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic g(Lwn/e$a;)Lio/bidmachine/media3/exoplayer/source/r$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->k(Lwn/e$a;)Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public h(Lzm/q;)Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    iget-object v1, v2, Lzm/q;->b:Lzm/q$h;

    .line 6
    .line 7
    invoke-static {v1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->d:Lmn/e;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Lmn/c;

    .line 15
    .line 16
    invoke-direct {v1}, Lmn/c;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->d:Lmn/e;

    .line 20
    .line 21
    :cond_0
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->e:Lyo/r$a;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->d:Lmn/e;

    .line 26
    .line 27
    invoke-interface {v3, v1}, Lmn/e;->a(Lyo/r$a;)Lmn/e;

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->d:Lmn/e;

    .line 31
    .line 32
    iget-boolean v3, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->f:Z

    .line 33
    .line 34
    invoke-interface {v1, v3}, Lmn/e;->c(Z)Lmn/e;

    .line 35
    .line 36
    .line 37
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->d:Lmn/e;

    .line 38
    .line 39
    iget v3, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->g:I

    .line 40
    .line 41
    invoke-interface {v1, v3}, Lmn/e;->b(I)Lmn/e;

    .line 42
    .line 43
    .line 44
    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->d:Lmn/e;

    .line 45
    .line 46
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->h:Lnn/e;

    .line 47
    .line 48
    iget-object v3, v2, Lzm/q;->b:Lzm/q$h;

    .line 49
    .line 50
    iget-object v3, v3, Lzm/q$h;->d:Ljava/util/List;

    .line 51
    .line 52
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-nez v5, :cond_2

    .line 57
    .line 58
    new-instance v5, Lnn/c;

    .line 59
    .line 60
    invoke-direct {v5, v1, v3}, Lnn/c;-><init>(Lnn/e;Ljava/util/List;)V

    .line 61
    .line 62
    .line 63
    move-object v9, v5

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    move-object v9, v1

    .line 66
    :goto_0
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->k:Lwn/e$a;

    .line 67
    .line 68
    if-nez v1, :cond_3

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    invoke-interface {v1, v2}, Lwn/e$a;->a(Lzm/q;)Lwn/e;

    .line 72
    .line 73
    .line 74
    :goto_1
    new-instance v18, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;

    .line 75
    .line 76
    move-object/from16 v1, v18

    .line 77
    .line 78
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->c:Lmn/d;

    .line 79
    .line 80
    iget-object v5, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->j:Lsn/e;

    .line 81
    .line 82
    iget-object v6, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->l:Lln/k;

    .line 83
    .line 84
    invoke-interface {v6, v2}, Lln/k;->a(Lzm/q;)Lio/bidmachine/media3/exoplayer/drm/i;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    iget-object v10, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->m:Lio/bidmachine/media3/exoplayer/upstream/b;

    .line 89
    .line 90
    move-object v8, v10

    .line 91
    iget-object v11, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->i:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$a;

    .line 92
    .line 93
    iget-object v12, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->c:Lmn/d;

    .line 94
    .line 95
    const/4 v13, 0x0

    .line 96
    move-object v6, v13

    .line 97
    invoke-interface {v11, v12, v10, v9, v13}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$a;->a(Lmn/d;Lio/bidmachine/media3/exoplayer/upstream/b;Lnn/e;Lwn/e;)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 98
    .line 99
    .line 100
    move-result-object v9

    .line 101
    iget-wide v10, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->q:J

    .line 102
    .line 103
    iget-boolean v12, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->n:Z

    .line 104
    .line 105
    iget v13, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->o:I

    .line 106
    .line 107
    iget-boolean v14, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->p:Z

    .line 108
    .line 109
    move-object/from16 v19, v7

    .line 110
    .line 111
    iget-wide v6, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->r:J

    .line 112
    .line 113
    move-wide v15, v6

    .line 114
    const/16 v17, 0x0

    .line 115
    .line 116
    move-object/from16 v2, p1

    .line 117
    .line 118
    move-object/from16 v7, v19

    .line 119
    .line 120
    const/4 v6, 0x0

    .line 121
    invoke-direct/range {v1 .. v17}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;-><init>(Lzm/q;Lmn/d;Lmn/e;Lsn/e;Lwn/e;Lio/bidmachine/media3/exoplayer/drm/i;Lio/bidmachine/media3/exoplayer/upstream/b;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;JZIZJLio/bidmachine/media3/exoplayer/hls/HlsMediaSource$a;)V

    .line 122
    .line 123
    .line 124
    return-object v18
.end method

.method public i(Z)Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->f:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public j(I)Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->g:I

    .line 2
    .line 3
    return-object p0
.end method

.method public k(Lwn/e$a;)Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;
    .locals 0

    .line 1
    invoke-static {p1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lwn/e$a;

    .line 6
    .line 7
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->k:Lwn/e$a;

    .line 8
    .line 9
    return-object p0
.end method

.method public l(Lln/k;)Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;
    .locals 1

    .line 1
    const-string v0, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcn/a;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lln/k;

    .line 8
    .line 9
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->l:Lln/k;

    .line 10
    .line 11
    return-object p0
.end method

.method public m(Lio/bidmachine/media3/exoplayer/upstream/b;)Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;
    .locals 1

    .line 1
    const-string v0, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcn/a;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lio/bidmachine/media3/exoplayer/upstream/b;

    .line 8
    .line 9
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->m:Lio/bidmachine/media3/exoplayer/upstream/b;

    .line 10
    .line 11
    return-object p0
.end method

.method public n(Lyo/r$a;)Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->e:Lyo/r$a;

    .line 2
    .line 3
    return-object p0
.end method
