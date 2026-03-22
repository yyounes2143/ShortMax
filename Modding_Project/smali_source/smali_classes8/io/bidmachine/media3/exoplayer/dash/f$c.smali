.class public final Lio/bidmachine/media3/exoplayer/dash/f$c;
.super Ljava/lang/Object;
.source "PlayerEmsgHandler.java"

# interfaces
.implements Lao/o0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/dash/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field private final a:Lio/bidmachine/media3/exoplayer/source/f0;

.field private final b:Lgn/c0;

.field private final c:Lko/b;

.field private d:J

.field final synthetic e:Lio/bidmachine/media3/exoplayer/dash/f;


# direct methods
.method constructor <init>(Lio/bidmachine/media3/exoplayer/dash/f;Lwn/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/f$c;->e:Lio/bidmachine/media3/exoplayer/dash/f;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/source/f0;->m(Lwn/b;)Lio/bidmachine/media3/exoplayer/source/f0;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/f$c;->a:Lio/bidmachine/media3/exoplayer/source/f0;

    .line 11
    .line 12
    new-instance p1, Lgn/c0;

    .line 13
    .line 14
    invoke-direct {p1}, Lgn/c0;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/f$c;->b:Lgn/c0;

    .line 18
    .line 19
    new-instance p1, Lko/b;

    .line 20
    .line 21
    invoke-direct {p1}, Lko/b;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/f$c;->c:Lko/b;

    .line 25
    .line 26
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/dash/f$c;->d:J

    .line 32
    .line 33
    return-void
.end method

.method private h()Lko/b;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/f$c;->c:Lko/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->b()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/f$c;->a:Lio/bidmachine/media3/exoplayer/source/f0;

    .line 7
    .line 8
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/dash/f$c;->b:Lgn/c0;

    .line 9
    .line 10
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/dash/f$c;->c:Lko/b;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v0, v1, v2, v3, v3}, Lio/bidmachine/media3/exoplayer/source/f0;->V(Lgn/c0;Lio/bidmachine/media3/decoder/DecoderInputBuffer;IZ)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, -0x4

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/f$c;->c:Lko/b;

    .line 21
    .line 22
    invoke-virtual {v0}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->n()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/f$c;->c:Lko/b;

    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    return-object v0
.end method

.method private l(JJ)V
    .locals 1

    .line 1
    new-instance v0, Lio/bidmachine/media3/exoplayer/dash/f$a;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/dash/f$a;-><init>(JJ)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/f$c;->e:Lio/bidmachine/media3/exoplayer/dash/f;

    .line 7
    .line 8
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/dash/f;->d(Lio/bidmachine/media3/exoplayer/dash/f;)Landroid/os/Handler;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/dash/f$c;->e:Lio/bidmachine/media3/exoplayer/dash/f;

    .line 13
    .line 14
    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/dash/f;->d(Lio/bidmachine/media3/exoplayer/dash/f;)Landroid/os/Handler;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const/4 p3, 0x1

    .line 19
    invoke-virtual {p2, p3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private m()V
    .locals 5

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/f$c;->a:Lio/bidmachine/media3/exoplayer/source/f0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/source/f0;->N(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/dash/f$c;->h()Lko/b;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-wide v2, v0, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->f:J

    .line 18
    .line 19
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/dash/f$c;->e:Lio/bidmachine/media3/exoplayer/dash/f;

    .line 20
    .line 21
    invoke-static {v4}, Lio/bidmachine/media3/exoplayer/dash/f;->a(Lio/bidmachine/media3/exoplayer/dash/f;)Lmo/b;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v4, v0}, Lko/c;->a(Lko/b;)Lzm/t;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {v0, v1}, Lzm/t;->d(I)Lzm/t$a;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lmo/a;

    .line 37
    .line 38
    iget-object v1, v0, Lmo/a;->a:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v4, v0, Lmo/a;->b:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v1, v4}, Lio/bidmachine/media3/exoplayer/dash/f;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    invoke-direct {p0, v2, v3, v0}, Lio/bidmachine/media3/exoplayer/dash/f$c;->n(JLmo/a;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/f$c;->a:Lio/bidmachine/media3/exoplayer/source/f0;

    .line 53
    .line 54
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/source/f0;->t()V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method private n(JLmo/a;)V
    .locals 4

    .line 1
    invoke-static {p3}, Lio/bidmachine/media3/exoplayer/dash/f;->c(Lmo/a;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmp-long p3, v0, v2

    .line 11
    .line 12
    if-nez p3, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-direct {p0, p1, p2, v0, v1}, Lio/bidmachine/media3/exoplayer/dash/f$c;->l(JJ)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public c(JIIILao/o0$a;)V
    .locals 7
    .param p6    # Lao/o0$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/f$c;->a:Lio/bidmachine/media3/exoplayer/source/f0;

    .line 2
    .line 3
    move-wide v1, p1

    .line 4
    move v3, p3

    .line 5
    move v4, p4

    .line 6
    move v5, p5

    .line 7
    move-object v6, p6

    .line 8
    invoke-virtual/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/source/f0;->c(JIIILao/o0$a;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/dash/f$c;->m()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public e(Lzm/h;IZI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p4, p0, Lio/bidmachine/media3/exoplayer/dash/f$c;->a:Lio/bidmachine/media3/exoplayer/source/f0;

    .line 2
    .line 3
    invoke-interface {p4, p1, p2, p3}, Lao/o0;->b(Lzm/h;IZ)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public f(Lcn/b0;II)V
    .locals 0

    .line 1
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/dash/f$c;->a:Lio/bidmachine/media3/exoplayer/source/f0;

    .line 2
    .line 3
    invoke-interface {p3, p1, p2}, Lao/o0;->a(Lcn/b0;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public g(Lio/bidmachine/media3/common/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/f$c;->a:Lio/bidmachine/media3/exoplayer/source/f0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/source/f0;->g(Lio/bidmachine/media3/common/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public i(J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/f$c;->e:Lio/bidmachine/media3/exoplayer/dash/f;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/dash/f;->j(J)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public j(Ltn/e;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/dash/f$c;->d:J

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
    iget-wide v2, p1, Ltn/e;->h:J

    .line 13
    .line 14
    cmp-long v0, v2, v0

    .line 15
    .line 16
    if-lez v0, :cond_1

    .line 17
    .line 18
    :cond_0
    iget-wide v0, p1, Ltn/e;->h:J

    .line 19
    .line 20
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/dash/f$c;->d:J

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/f$c;->e:Lio/bidmachine/media3/exoplayer/dash/f;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/dash/f;->m(Ltn/e;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public k(Ltn/e;)Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/dash/f$c;->d:J

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
    iget-wide v2, p1, Ltn/e;->g:J

    .line 13
    .line 14
    cmp-long p1, v0, v2

    .line 15
    .line 16
    if-gez p1, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/f$c;->e:Lio/bidmachine/media3/exoplayer/dash/f;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/dash/f;->n(Z)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1
.end method

.method public o()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/f$c;->a:Lio/bidmachine/media3/exoplayer/source/f0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/source/f0;->W()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
