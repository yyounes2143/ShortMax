.class public final Lio/bidmachine/media3/exoplayer/f2;
.super Ljava/lang/Object;
.source "PlayerMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/f2$a;,
        Lio/bidmachine/media3/exoplayer/f2$b;
    }
.end annotation


# instance fields
.field private final a:Lio/bidmachine/media3/exoplayer/f2$b;

.field private final b:Lio/bidmachine/media3/exoplayer/f2$a;

.field private final c:Lcn/h;

.field private final d:Lzm/a0;

.field private e:I

.field private f:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g:Landroid/os/Looper;

.field private h:I

.field private i:J

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/f2$a;Lio/bidmachine/media3/exoplayer/f2$b;Lzm/a0;ILcn/h;Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/f2;->b:Lio/bidmachine/media3/exoplayer/f2$a;

    .line 5
    .line 6
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/f2;->a:Lio/bidmachine/media3/exoplayer/f2$b;

    .line 7
    .line 8
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/f2;->d:Lzm/a0;

    .line 9
    .line 10
    iput-object p6, p0, Lio/bidmachine/media3/exoplayer/f2;->g:Landroid/os/Looper;

    .line 11
    .line 12
    iput-object p5, p0, Lio/bidmachine/media3/exoplayer/f2;->c:Lcn/h;

    .line 13
    .line 14
    iput p4, p0, Lio/bidmachine/media3/exoplayer/f2;->h:I

    .line 15
    .line 16
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/f2;->i:J

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/f2;->j:Z

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/f2;->j:Z

    .line 2
    .line 3
    return v0
.end method

.method public b()Landroid/os/Looper;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/f2;->g:Landroid/os/Looper;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/media3/exoplayer/f2;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public d()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/f2;->f:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/f2;->i:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public f()Lio/bidmachine/media3/exoplayer/f2$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/f2;->a:Lio/bidmachine/media3/exoplayer/f2$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Lzm/a0;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/f2;->d:Lzm/a0;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/media3/exoplayer/f2;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public declared-synchronized i()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/f2;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

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

.method public declared-synchronized j(Z)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/f2;->l:Z

    .line 3
    .line 4
    or-int/2addr p1, v0

    .line 5
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/f2;->l:Z

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/f2;->m:Z

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    throw p1
.end method

.method public k()Lio/bidmachine/media3/exoplayer/f2;
    .locals 6

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/f2;->k:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    invoke-static {v0}, Lcn/a;->g(Z)V

    .line 6
    .line 7
    .line 8
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/f2;->i:J

    .line 9
    .line 10
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    cmp-long v0, v2, v4

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/f2;->j:Z

    .line 20
    .line 21
    invoke-static {v0}, Lcn/a;->a(Z)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/f2;->k:Z

    .line 25
    .line 26
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/f2;->b:Lio/bidmachine/media3/exoplayer/f2$a;

    .line 27
    .line 28
    invoke-interface {v0, p0}, Lio/bidmachine/media3/exoplayer/f2$a;->c(Lio/bidmachine/media3/exoplayer/f2;)V

    .line 29
    .line 30
    .line 31
    return-object p0
.end method

.method public l(Ljava/lang/Object;)Lio/bidmachine/media3/exoplayer/f2;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/f2;->k:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    invoke-static {v0}, Lcn/a;->g(Z)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/f2;->f:Ljava/lang/Object;

    .line 9
    .line 10
    return-object p0
.end method

.method public m(I)Lio/bidmachine/media3/exoplayer/f2;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/f2;->k:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    invoke-static {v0}, Lcn/a;->g(Z)V

    .line 6
    .line 7
    .line 8
    iput p1, p0, Lio/bidmachine/media3/exoplayer/f2;->e:I

    .line 9
    .line 10
    return-object p0
.end method
