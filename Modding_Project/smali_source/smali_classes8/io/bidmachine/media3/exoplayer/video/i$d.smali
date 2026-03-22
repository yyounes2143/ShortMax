.class final Lio/bidmachine/media3/exoplayer/video/i$d;
.super Ljava/lang/Object;
.source "PlaybackVideoGraphWrapper.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/video/VideoSink;
.implements Lio/bidmachine/media3/exoplayer/video/i$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/video/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private c:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lzm/g0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Lio/bidmachine/media3/common/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:I

.field private g:J

.field private h:J

.field private i:Lio/bidmachine/media3/exoplayer/video/VideoSink$a;

.field private j:Ljava/util/concurrent/Executor;

.field private k:Z

.field final synthetic l:Lio/bidmachine/media3/exoplayer/video/i;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/video/i;Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->l:Lio/bidmachine/media3/exoplayer/video/i;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p3, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->b:I

    .line 7
    .line 8
    invoke-static {p2}, Lcn/m0;->f0(Landroid/content/Context;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->a:I

    .line 13
    .line 14
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->A()Lcom/google/common/collect/ImmutableList;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->c:Lcom/google/common/collect/ImmutableList;

    .line 19
    .line 20
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->h:J

    .line 26
    .line 27
    sget-object p1, Lio/bidmachine/media3/exoplayer/video/VideoSink$a;->a:Lio/bidmachine/media3/exoplayer/video/VideoSink$a;

    .line 28
    .line 29
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->i:Lio/bidmachine/media3/exoplayer/video/VideoSink$a;

    .line 30
    .line 31
    invoke-static {}, Lio/bidmachine/media3/exoplayer/video/i;->c()Ljava/util/concurrent/Executor;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->j:Ljava/util/concurrent/Executor;

    .line 36
    .line 37
    return-void
.end method

.method public static synthetic A(Lio/bidmachine/media3/exoplayer/video/i$d;Lio/bidmachine/media3/exoplayer/video/VideoSink$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/video/i$d;->C(Lio/bidmachine/media3/exoplayer/video/VideoSink$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic B(Lio/bidmachine/media3/exoplayer/video/i$d;Lio/bidmachine/media3/exoplayer/video/VideoSink$a;Lzm/i0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/video/i$d;->E(Lio/bidmachine/media3/exoplayer/video/VideoSink$a;Lzm/i0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic C(Lio/bidmachine/media3/exoplayer/video/VideoSink$a;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lio/bidmachine/media3/exoplayer/video/VideoSink$a;->c(Lio/bidmachine/media3/exoplayer/video/VideoSink;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic D(Lio/bidmachine/media3/exoplayer/video/VideoSink$a;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcn/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 6
    .line 7
    invoke-interface {p1, v0}, Lio/bidmachine/media3/exoplayer/video/VideoSink$a;->b(Lio/bidmachine/media3/exoplayer/video/VideoSink;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private synthetic E(Lio/bidmachine/media3/exoplayer/video/VideoSink$a;Lzm/i0;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0, p2}, Lio/bidmachine/media3/exoplayer/video/VideoSink$a;->a(Lio/bidmachine/media3/exoplayer/video/VideoSink;Lzm/i0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private F(Lio/bidmachine/media3/common/a;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/media3/common/a;->b()Lio/bidmachine/media3/common/a$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p1, p1, Lio/bidmachine/media3/common/a;->C:Lzm/g;

    .line 6
    .line 7
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/i;->v(Lzm/g;)Lzm/g;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/a$b;->T(Lzm/g;)Lio/bidmachine/media3/common/a$b;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lio/bidmachine/media3/common/a$b;->N()Lio/bidmachine/media3/common/a;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->d:Lzm/g0;

    .line 20
    .line 21
    invoke-static {p1}, Lcn/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    move-object v0, p1

    .line 26
    check-cast v0, Lzm/g0;

    .line 27
    .line 28
    iget v1, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->f:I

    .line 29
    .line 30
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->c:Lcom/google/common/collect/ImmutableList;

    .line 31
    .line 32
    const-wide/16 v4, 0x0

    .line 33
    .line 34
    invoke-interface/range {v0 .. v5}, Lzm/g0;->b(ILio/bidmachine/media3/common/a;Ljava/util/List;J)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method private G(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->l:Lio/bidmachine/media3/exoplayer/video/i;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/i;->t(Lio/bidmachine/media3/exoplayer/video/i;)Lzm/x$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lzm/x$a;->b()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->u(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->c:Lcom/google/common/collect/ImmutableList;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/google/common/collect/ImmutableList$a;

    .line 21
    .line 22
    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$a;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$a;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->l:Lio/bidmachine/media3/exoplayer/video/i;

    .line 30
    .line 31
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/i;->u(Lio/bidmachine/media3/exoplayer/video/i;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$a;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList$a;->k()Lcom/google/common/collect/ImmutableList;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->c:Lcom/google/common/collect/ImmutableList;

    .line 44
    .line 45
    :goto_0
    return-void
.end method

.method public static synthetic z(Lio/bidmachine/media3/exoplayer/video/i$d;Lio/bidmachine/media3/exoplayer/video/VideoSink$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/video/i$d;->D(Lio/bidmachine/media3/exoplayer/video/VideoSink$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()Landroid/view/Surface;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/i$d;->isInitialized()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lcn/a;->g(Z)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->d:Lzm/g0;

    .line 9
    .line 10
    invoke-static {v0}, Lcn/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lzm/g0;

    .line 15
    .line 16
    invoke-interface {v0}, Lzm/g0;->a()Landroid/view/Surface;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public b(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/i$d;->isInitialized()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->d:Lzm/g0;

    .line 8
    .line 9
    invoke-interface {v0}, Lzm/g0;->flush()V

    .line 10
    .line 11
    .line 12
    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->h:J

    .line 18
    .line 19
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->l:Lio/bidmachine/media3/exoplayer/video/i;

    .line 20
    .line 21
    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/video/i;->f(Lio/bidmachine/media3/exoplayer/video/i;Z)V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->k:Z

    .line 26
    .line 27
    return-void
.end method

.method public c(Lio/bidmachine/media3/exoplayer/video/i;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->i:Lio/bidmachine/media3/exoplayer/video/VideoSink$a;

    .line 2
    .line 3
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->j:Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    new-instance v1, Lio/bidmachine/media3/exoplayer/video/j;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lio/bidmachine/media3/exoplayer/video/j;-><init>(Lio/bidmachine/media3/exoplayer/video/i$d;Lio/bidmachine/media3/exoplayer/video/VideoSink$a;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->l:Lio/bidmachine/media3/exoplayer/video/i;

    .line 2
    .line 3
    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->h:J

    .line 4
    .line 5
    invoke-static {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/video/i;->i(Lio/bidmachine/media3/exoplayer/video/i;J)J

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->l:Lio/bidmachine/media3/exoplayer/video/i;

    .line 9
    .line 10
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/i;->j(Lio/bidmachine/media3/exoplayer/video/i;)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->l:Lio/bidmachine/media3/exoplayer/video/i;

    .line 15
    .line 16
    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/video/i;->h(Lio/bidmachine/media3/exoplayer/video/i;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    cmp-long v0, v0, v2

    .line 21
    .line 22
    if-ltz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->l:Lio/bidmachine/media3/exoplayer/video/i;

    .line 25
    .line 26
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/i;->d(Lio/bidmachine/media3/exoplayer/video/i;)Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->d()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->l:Lio/bidmachine/media3/exoplayer/video/i;

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/video/i;->k(Lio/bidmachine/media3/exoplayer/video/i;Z)Z

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->l:Lio/bidmachine/media3/exoplayer/video/i;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/i;->d(Lio/bidmachine/media3/exoplayer/video/i;)Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->e()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public f(ILio/bidmachine/media3/common/a;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/bidmachine/media3/common/a;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/i$d;->isInitialized()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lcn/a;->g(Z)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    .line 16
    .line 17
    new-instance p3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v0, "Unsupported input type "

    .line 23
    .line 24
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p2

    .line 38
    :cond_1
    :goto_0
    invoke-direct {p0, p3}, Lio/bidmachine/media3/exoplayer/video/i$d;->G(Ljava/util/List;)V

    .line 39
    .line 40
    .line 41
    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->f:I

    .line 42
    .line 43
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->e:Lio/bidmachine/media3/common/a;

    .line 44
    .line 45
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->l:Lio/bidmachine/media3/exoplayer/video/i;

    .line 46
    .line 47
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    invoke-static {p1, v0, v1}, Lio/bidmachine/media3/exoplayer/video/i;->i(Lio/bidmachine/media3/exoplayer/video/i;J)J

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->l:Lio/bidmachine/media3/exoplayer/video/i;

    .line 56
    .line 57
    const/4 p3, 0x0

    .line 58
    invoke-static {p1, p3}, Lio/bidmachine/media3/exoplayer/video/i;->k(Lio/bidmachine/media3/exoplayer/video/i;Z)Z

    .line 59
    .line 60
    .line 61
    invoke-direct {p0, p2}, Lio/bidmachine/media3/exoplayer/video/i$d;->F(Lio/bidmachine/media3/common/a;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public g(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->l:Lio/bidmachine/media3/exoplayer/video/i;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/i;->d(Lio/bidmachine/media3/exoplayer/video/i;)Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->g(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->l:Lio/bidmachine/media3/exoplayer/video/i;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/i;->d(Lio/bidmachine/media3/exoplayer/video/i;)Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->h()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public i(Lio/bidmachine/media3/common/a;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoSinkException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/i$d;->isInitialized()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    xor-int/2addr v0, v1

    .line 7
    invoke-static {v0}, Lcn/a;->g(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->l:Lio/bidmachine/media3/exoplayer/video/i;

    .line 11
    .line 12
    iget v2, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->b:I

    .line 13
    .line 14
    invoke-static {v0, p1, v2}, Lio/bidmachine/media3/exoplayer/video/i;->e(Lio/bidmachine/media3/exoplayer/video/i;Lio/bidmachine/media3/common/a;I)Lzm/g0;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->d:Lzm/g0;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :goto_0
    return v1
.end method

.method public isEnded()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/i$d;->isInitialized()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->l:Lio/bidmachine/media3/exoplayer/video/i;

    .line 8
    .line 9
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/i;->l(Lio/bidmachine/media3/exoplayer/video/i;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->d:Lzm/g0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public j(Lyn/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->l:Lio/bidmachine/media3/exoplayer/video/i;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/video/i;->m(Lio/bidmachine/media3/exoplayer/video/i;Lyn/f;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->l:Lio/bidmachine/media3/exoplayer/video/i;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/i;->d(Lio/bidmachine/media3/exoplayer/video/i;)Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->k(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public l(Lio/bidmachine/media3/exoplayer/h2$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->l:Lio/bidmachine/media3/exoplayer/video/i;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/video/i;->s(Lio/bidmachine/media3/exoplayer/video/i;Lio/bidmachine/media3/exoplayer/h2$a;)Lio/bidmachine/media3/exoplayer/h2$a;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public m(JJ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->l:Lio/bidmachine/media3/exoplayer/video/i;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/i;->o(Lio/bidmachine/media3/exoplayer/video/i;)Lcn/g0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->h:J

    .line 8
    .line 9
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    cmp-long v3, v1, v3

    .line 15
    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    const-wide/16 v1, 0x0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-wide/16 v3, 0x1

    .line 22
    .line 23
    add-long/2addr v1, v3

    .line 24
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, v1, v2, p1}, Lcn/g0;->a(JLjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->g:J

    .line 32
    .line 33
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->l:Lio/bidmachine/media3/exoplayer/video/i;

    .line 34
    .line 35
    invoke-static {p1, p3, p4}, Lio/bidmachine/media3/exoplayer/video/i;->p(Lio/bidmachine/media3/exoplayer/video/i;J)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public n(Lio/bidmachine/media3/exoplayer/video/i;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->i:Lio/bidmachine/media3/exoplayer/video/VideoSink$a;

    .line 2
    .line 3
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->j:Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    new-instance v1, Lio/bidmachine/media3/exoplayer/video/l;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lio/bidmachine/media3/exoplayer/video/l;-><init>(Lio/bidmachine/media3/exoplayer/video/i$d;Lio/bidmachine/media3/exoplayer/video/VideoSink$a;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public o(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->c:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/video/i$d;->G(Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->e:Lio/bidmachine/media3/common/a;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/video/i$d;->F(Lio/bidmachine/media3/common/a;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public p(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->l:Lio/bidmachine/media3/exoplayer/video/i;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/i$d;->isInitialized()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/video/i;->g(Lio/bidmachine/media3/exoplayer/video/i;Z)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public q(Lio/bidmachine/media3/exoplayer/video/i;Lzm/i0;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->i:Lio/bidmachine/media3/exoplayer/video/VideoSink$a;

    .line 2
    .line 3
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->j:Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    new-instance v1, Lio/bidmachine/media3/exoplayer/video/k;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2}, Lio/bidmachine/media3/exoplayer/video/k;-><init>(Lio/bidmachine/media3/exoplayer/video/i$d;Lio/bidmachine/media3/exoplayer/video/VideoSink$a;Lzm/i0;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public r(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->l:Lio/bidmachine/media3/exoplayer/video/i;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/video/i;->n(Lio/bidmachine/media3/exoplayer/video/i;F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->l:Lio/bidmachine/media3/exoplayer/video/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/i;->K()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public render(JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoSinkException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->l:Lio/bidmachine/media3/exoplayer/video/i;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/video/i;->r(Lio/bidmachine/media3/exoplayer/video/i;JJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public s()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->l:Lio/bidmachine/media3/exoplayer/video/i;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/i;->d(Lio/bidmachine/media3/exoplayer/video/i;)Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->s()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public t(JZLio/bidmachine/media3/exoplayer/video/VideoSink$b;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/i$d;->isInitialized()Z

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    invoke-static {p3}, Lcn/a;->g(Z)V

    .line 6
    .line 7
    .line 8
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->l:Lio/bidmachine/media3/exoplayer/video/i;

    .line 9
    .line 10
    invoke-static {p3}, Lio/bidmachine/media3/exoplayer/video/i;->q(Lio/bidmachine/media3/exoplayer/video/i;)Z

    .line 11
    .line 12
    .line 13
    move-result p3

    .line 14
    const/4 v0, 0x0

    .line 15
    if-nez p3, :cond_0

    .line 16
    .line 17
    return v0

    .line 18
    :cond_0
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->d:Lzm/g0;

    .line 19
    .line 20
    invoke-static {p3}, Lcn/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    check-cast p3, Lzm/g0;

    .line 25
    .line 26
    invoke-interface {p3}, Lzm/g0;->d()I

    .line 27
    .line 28
    .line 29
    move-result p3

    .line 30
    iget v1, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->a:I

    .line 31
    .line 32
    if-lt p3, v1, :cond_1

    .line 33
    .line 34
    return v0

    .line 35
    :cond_1
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->d:Lzm/g0;

    .line 36
    .line 37
    invoke-static {p3}, Lcn/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    check-cast p3, Lzm/g0;

    .line 42
    .line 43
    invoke-interface {p3}, Lzm/g0;->c()Z

    .line 44
    .line 45
    .line 46
    move-result p3

    .line 47
    if-nez p3, :cond_2

    .line 48
    .line 49
    return v0

    .line 50
    :cond_2
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->g:J

    .line 51
    .line 52
    sub-long v0, p1, v0

    .line 53
    .line 54
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->h:J

    .line 55
    .line 56
    const-wide/16 v0, 0x3e8

    .line 57
    .line 58
    mul-long/2addr p1, v0

    .line 59
    invoke-interface {p4, p1, p2}, Lio/bidmachine/media3/exoplayer/video/VideoSink$b;->b(J)V

    .line 60
    .line 61
    .line 62
    const/4 p1, 0x1

    .line 63
    return p1
.end method

.method public u()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->l:Lio/bidmachine/media3/exoplayer/video/i;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/i;->d(Lio/bidmachine/media3/exoplayer/video/i;)Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->u()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public v()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->l:Lio/bidmachine/media3/exoplayer/video/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/i;->z()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public w(Lio/bidmachine/media3/exoplayer/video/VideoSink$a;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->i:Lio/bidmachine/media3/exoplayer/video/VideoSink$a;

    .line 2
    .line 3
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->j:Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    return-void
.end method

.method public x(Landroid/view/Surface;Lcn/d0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->l:Lio/bidmachine/media3/exoplayer/video/i;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/video/i;->N(Landroid/view/Surface;Lcn/d0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public y(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i$d;->l:Lio/bidmachine/media3/exoplayer/video/i;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/i;->d(Lio/bidmachine/media3/exoplayer/video/i;)Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->y(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
