.class public final Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;
.super Ljava/lang/Object;
.source "DashMediaSource.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/source/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# static fields
.field public static final synthetic l:I


# instance fields
.field private final c:Lio/bidmachine/media3/exoplayer/dash/a$a;

.field private final d:Len/d$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Lwn/e$a;

.field private f:Lln/k;

.field private g:Lsn/e;

.field private h:Lio/bidmachine/media3/exoplayer/upstream/b;

.field private i:J

.field private j:J

.field private k:Lio/bidmachine/media3/exoplayer/upstream/c$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/media3/exoplayer/upstream/c$a<",
            "+",
            "Lkn/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Len/d$a;)V
    .locals 1

    .line 1
    new-instance v0, Lio/bidmachine/media3/exoplayer/dash/d$a;

    invoke-direct {v0, p1}, Lio/bidmachine/media3/exoplayer/dash/d$a;-><init>(Len/d$a;)V

    invoke-direct {p0, v0, p1}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;-><init>(Lio/bidmachine/media3/exoplayer/dash/a$a;Len/d$a;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/exoplayer/dash/a$a;Len/d$a;)V
    .locals 0
    .param p2    # Len/d$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/dash/a$a;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->c:Lio/bidmachine/media3/exoplayer/dash/a$a;

    .line 4
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->d:Len/d$a;

    .line 5
    new-instance p1, Lio/bidmachine/media3/exoplayer/drm/g;

    invoke-direct {p1}, Lio/bidmachine/media3/exoplayer/drm/g;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->f:Lln/k;

    .line 6
    new-instance p1, Lio/bidmachine/media3/exoplayer/upstream/a;

    invoke-direct {p1}, Lio/bidmachine/media3/exoplayer/upstream/a;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->h:Lio/bidmachine/media3/exoplayer/upstream/b;

    const-wide/16 p1, 0x7530

    .line 7
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->i:J

    const-wide/32 p1, 0x4c4b40

    .line 8
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->j:J

    .line 9
    new-instance p1, Lsn/f;

    invoke-direct {p1}, Lsn/f;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->g:Lsn/e;

    const/4 p1, 0x1

    .line 10
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->i(Z)Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lyo/r$a;)Lio/bidmachine/media3/exoplayer/source/r$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->n(Lyo/r$a;)Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;

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
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->j(I)Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;

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
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->i(Z)Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;

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
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->h(Lzm/q;)Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;

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
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->l(Lln/k;)Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;

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
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->m(Lio/bidmachine/media3/exoplayer/upstream/b;)Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;

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
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->k(Lwn/e$a;)Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public h(Lzm/q;)Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;
    .locals 17

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
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->k:Lio/bidmachine/media3/exoplayer/upstream/c$a;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Lkn/d;

    .line 15
    .line 16
    invoke-direct {v1}, Lkn/d;-><init>()V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v3, v2, Lzm/q;->b:Lzm/q$h;

    .line 20
    .line 21
    iget-object v3, v3, Lzm/q$h;->d:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-nez v4, :cond_1

    .line 28
    .line 29
    new-instance v4, Lrn/c;

    .line 30
    .line 31
    invoke-direct {v4, v1, v3}, Lrn/c;-><init>(Lio/bidmachine/media3/exoplayer/upstream/c$a;Ljava/util/List;)V

    .line 32
    .line 33
    .line 34
    move-object v5, v4

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move-object v5, v1

    .line 37
    :goto_0
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->e:Lwn/e$a;

    .line 38
    .line 39
    if-nez v1, :cond_2

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    invoke-interface {v1, v2}, Lwn/e$a;->a(Lzm/q;)Lwn/e;

    .line 43
    .line 44
    .line 45
    :goto_1
    new-instance v16, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;

    .line 46
    .line 47
    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->d:Len/d$a;

    .line 48
    .line 49
    iget-object v6, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->c:Lio/bidmachine/media3/exoplayer/dash/a$a;

    .line 50
    .line 51
    iget-object v7, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->g:Lsn/e;

    .line 52
    .line 53
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->f:Lln/k;

    .line 54
    .line 55
    invoke-interface {v1, v2}, Lln/k;->a(Lzm/q;)Lio/bidmachine/media3/exoplayer/drm/i;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    iget-object v10, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->h:Lio/bidmachine/media3/exoplayer/upstream/b;

    .line 60
    .line 61
    iget-wide v11, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->i:J

    .line 62
    .line 63
    iget-wide v13, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->j:J

    .line 64
    .line 65
    const/4 v15, 0x0

    .line 66
    const/4 v3, 0x0

    .line 67
    const/4 v8, 0x0

    .line 68
    move-object/from16 v1, v16

    .line 69
    .line 70
    move-object/from16 v2, p1

    .line 71
    .line 72
    invoke-direct/range {v1 .. v15}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;-><init>(Lzm/q;Lkn/c;Len/d$a;Lio/bidmachine/media3/exoplayer/upstream/c$a;Lio/bidmachine/media3/exoplayer/dash/a$a;Lsn/e;Lwn/e;Lio/bidmachine/media3/exoplayer/drm/i;Lio/bidmachine/media3/exoplayer/upstream/b;JJLio/bidmachine/media3/exoplayer/dash/DashMediaSource$a;)V

    .line 73
    .line 74
    .line 75
    return-object v16
.end method

.method public i(Z)Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->c:Lio/bidmachine/media3/exoplayer/dash/a$a;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/dash/a$a;->c(Z)Lio/bidmachine/media3/exoplayer/dash/a$a;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public j(I)Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->c:Lio/bidmachine/media3/exoplayer/dash/a$a;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/dash/a$a;->b(I)Lio/bidmachine/media3/exoplayer/dash/a$a;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public k(Lwn/e$a;)Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;
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
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->e:Lwn/e$a;

    .line 8
    .line 9
    return-object p0
.end method

.method public l(Lln/k;)Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;
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
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->f:Lln/k;

    .line 10
    .line 11
    return-object p0
.end method

.method public m(Lio/bidmachine/media3/exoplayer/upstream/b;)Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;
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
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->h:Lio/bidmachine/media3/exoplayer/upstream/b;

    .line 10
    .line 11
    return-object p0
.end method

.method public n(Lyo/r$a;)Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->c:Lio/bidmachine/media3/exoplayer/dash/a$a;

    .line 2
    .line 3
    invoke-static {p1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lyo/r$a;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/dash/a$a;->a(Lyo/r$a;)Lio/bidmachine/media3/exoplayer/dash/a$a;

    .line 10
    .line 11
    .line 12
    return-object p0
.end method
