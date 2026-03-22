.class public final Lio/bidmachine/media3/exoplayer/source/l;
.super Lio/bidmachine/media3/exoplayer/source/a;
.source "ExternallyLoadedMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/source/l$b;
    }
.end annotation


# instance fields
.field private final h:Lio/bidmachine/media3/exoplayer/source/j;

.field private final i:J

.field private j:Lzm/q;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lzm/q;JLio/bidmachine/media3/exoplayer/source/j;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/a;-><init>()V

    .line 3
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/l;->j:Lzm/q;

    .line 4
    iput-wide p2, p0, Lio/bidmachine/media3/exoplayer/source/l;->i:J

    .line 5
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/source/l;->h:Lio/bidmachine/media3/exoplayer/source/j;

    return-void
.end method

.method synthetic constructor <init>(Lzm/q;JLio/bidmachine/media3/exoplayer/source/j;Lio/bidmachine/media3/exoplayer/source/l$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/source/l;-><init>(Lzm/q;JLio/bidmachine/media3/exoplayer/source/j;)V

    return-void
.end method


# virtual methods
.method protected A()V
    .locals 0

    .line 1
    return-void
.end method

.method public declared-synchronized a()Lzm/q;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/l;->j:Lzm/q;
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
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/l;->j:Lzm/q;
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
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/l;->a()Lzm/q;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p2, p1, Lzm/q;->b:Lzm/q$h;

    .line 6
    .line 7
    invoke-static {p2}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    iget-object p2, p1, Lzm/q;->b:Lzm/q$h;

    .line 11
    .line 12
    iget-object p2, p2, Lzm/q$h;->b:Ljava/lang/String;

    .line 13
    .line 14
    const-string p3, "Externally loaded mediaItems require a MIME type."

    .line 15
    .line 16
    invoke-static {p2, p3}, Lcn/a;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    new-instance p2, Lio/bidmachine/media3/exoplayer/source/k;

    .line 20
    .line 21
    iget-object p1, p1, Lzm/q;->b:Lzm/q$h;

    .line 22
    .line 23
    iget-object p3, p1, Lzm/q$h;->a:Landroid/net/Uri;

    .line 24
    .line 25
    iget-object p1, p1, Lzm/q$h;->b:Ljava/lang/String;

    .line 26
    .line 27
    iget-object p4, p0, Lio/bidmachine/media3/exoplayer/source/l;->h:Lio/bidmachine/media3/exoplayer/source/j;

    .line 28
    .line 29
    invoke-direct {p2, p3, p1, p4}, Lio/bidmachine/media3/exoplayer/source/k;-><init>(Landroid/net/Uri;Ljava/lang/String;Lio/bidmachine/media3/exoplayer/source/j;)V

    .line 30
    .line 31
    .line 32
    return-object p2
.end method

.method public m(Lio/bidmachine/media3/exoplayer/source/q;)V
    .locals 0

    .line 1
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/k;

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/source/k;->h()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 0

    .line 1
    return-void
.end method

.method protected y(Len/o;)V
    .locals 8
    .param p1    # Len/o;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance p1, Lsn/u;

    .line 2
    .line 3
    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/source/l;->i:J

    .line 4
    .line 5
    const/4 v6, 0x0

    .line 6
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/l;->a()Lzm/q;

    .line 7
    .line 8
    .line 9
    move-result-object v7

    .line 10
    const/4 v3, 0x1

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    move-object v0, p1

    .line 14
    invoke-direct/range {v0 .. v7}, Lsn/u;-><init>(JZZZLjava/lang/Object;Lzm/q;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/a;->z(Lzm/a0;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
