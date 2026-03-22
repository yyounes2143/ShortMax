.class final Lio/bidmachine/media3/exoplayer/video/d$b;
.super Ljava/lang/Object;
.source "DefaultVideoSink.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/video/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/video/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private a:Lio/bidmachine/media3/common/a;

.field final synthetic b:Lio/bidmachine/media3/exoplayer/video/d;


# direct methods
.method private constructor <init>(Lio/bidmachine/media3/exoplayer/video/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/d$b;->b:Lio/bidmachine/media3/exoplayer/video/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/video/d;Lio/bidmachine/media3/exoplayer/video/d$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/video/d$b;-><init>(Lio/bidmachine/media3/exoplayer/video/d;)V

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/media3/exoplayer/video/d$b;Lzm/i0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/video/d$b;->e(Lzm/i0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lio/bidmachine/media3/exoplayer/video/d$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/video/d$b;->d()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lio/bidmachine/media3/exoplayer/video/d$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/video/d$b;->f()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/d$b;->b:Lio/bidmachine/media3/exoplayer/video/d;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/d;->D(Lio/bidmachine/media3/exoplayer/video/d;)Lio/bidmachine/media3/exoplayer/video/VideoSink$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/d$b;->b:Lio/bidmachine/media3/exoplayer/video/d;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lio/bidmachine/media3/exoplayer/video/VideoSink$a;->b(Lio/bidmachine/media3/exoplayer/video/VideoSink;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic e(Lzm/i0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/d$b;->b:Lio/bidmachine/media3/exoplayer/video/d;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/d;->D(Lio/bidmachine/media3/exoplayer/video/d;)Lio/bidmachine/media3/exoplayer/video/VideoSink$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/d$b;->b:Lio/bidmachine/media3/exoplayer/video/d;

    .line 8
    .line 9
    invoke-interface {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/video/VideoSink$a;->a(Lio/bidmachine/media3/exoplayer/video/VideoSink;Lzm/i0;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/d$b;->b:Lio/bidmachine/media3/exoplayer/video/d;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/d;->D(Lio/bidmachine/media3/exoplayer/video/d;)Lio/bidmachine/media3/exoplayer/video/VideoSink$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/d$b;->b:Lio/bidmachine/media3/exoplayer/video/d;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lio/bidmachine/media3/exoplayer/video/VideoSink$a;->c(Lio/bidmachine/media3/exoplayer/video/VideoSink;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public m(Lzm/i0;)V
    .locals 2

    .line 1
    new-instance v0, Lio/bidmachine/media3/common/a$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/bidmachine/media3/common/a$b;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p1, Lzm/i0;->a:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/a$b;->B0(I)Lio/bidmachine/media3/common/a$b;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget v1, p1, Lzm/i0;->b:I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/a$b;->d0(I)Lio/bidmachine/media3/common/a$b;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "video/raw"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/a$b;->u0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lio/bidmachine/media3/common/a$b;->N()Lio/bidmachine/media3/common/a;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/d$b;->a:Lio/bidmachine/media3/common/a;

    .line 29
    .line 30
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/d$b;->b:Lio/bidmachine/media3/exoplayer/video/d;

    .line 31
    .line 32
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/d;->q(Lio/bidmachine/media3/exoplayer/video/d;)Ljava/util/concurrent/Executor;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Lio/bidmachine/media3/exoplayer/video/e;

    .line 37
    .line 38
    invoke-direct {v1, p0, p1}, Lio/bidmachine/media3/exoplayer/video/e;-><init>(Lio/bidmachine/media3/exoplayer/video/d$b;Lzm/i0;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public n(JJZ)V
    .locals 7

    .line 1
    if-eqz p5, :cond_0

    .line 2
    .line 3
    iget-object p5, p0, Lio/bidmachine/media3/exoplayer/video/d$b;->b:Lio/bidmachine/media3/exoplayer/video/d;

    .line 4
    .line 5
    invoke-static {p5}, Lio/bidmachine/media3/exoplayer/video/d;->z(Lio/bidmachine/media3/exoplayer/video/d;)Landroid/view/Surface;

    .line 6
    .line 7
    .line 8
    move-result-object p5

    .line 9
    if-eqz p5, :cond_0

    .line 10
    .line 11
    iget-object p5, p0, Lio/bidmachine/media3/exoplayer/video/d$b;->b:Lio/bidmachine/media3/exoplayer/video/d;

    .line 12
    .line 13
    invoke-static {p5}, Lio/bidmachine/media3/exoplayer/video/d;->q(Lio/bidmachine/media3/exoplayer/video/d;)Ljava/util/concurrent/Executor;

    .line 14
    .line 15
    .line 16
    move-result-object p5

    .line 17
    new-instance v0, Lio/bidmachine/media3/exoplayer/video/f;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lio/bidmachine/media3/exoplayer/video/f;-><init>(Lio/bidmachine/media3/exoplayer/video/d$b;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p5, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p5, p0, Lio/bidmachine/media3/exoplayer/video/d$b;->a:Lio/bidmachine/media3/common/a;

    .line 26
    .line 27
    if-nez p5, :cond_1

    .line 28
    .line 29
    new-instance p5, Lio/bidmachine/media3/common/a$b;

    .line 30
    .line 31
    invoke-direct {p5}, Lio/bidmachine/media3/common/a$b;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p5}, Lio/bidmachine/media3/common/a$b;->N()Lio/bidmachine/media3/common/a;

    .line 35
    .line 36
    .line 37
    move-result-object p5

    .line 38
    :cond_1
    move-object v5, p5

    .line 39
    iget-object p5, p0, Lio/bidmachine/media3/exoplayer/video/d$b;->b:Lio/bidmachine/media3/exoplayer/video/d;

    .line 40
    .line 41
    invoke-static {p5}, Lio/bidmachine/media3/exoplayer/video/d;->B(Lio/bidmachine/media3/exoplayer/video/d;)Lyn/f;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object p5, p0, Lio/bidmachine/media3/exoplayer/video/d$b;->b:Lio/bidmachine/media3/exoplayer/video/d;

    .line 46
    .line 47
    invoke-static {p5}, Lio/bidmachine/media3/exoplayer/video/d;->A(Lio/bidmachine/media3/exoplayer/video/d;)Lcn/h;

    .line 48
    .line 49
    .line 50
    move-result-object p5

    .line 51
    invoke-interface {p5}, Lcn/h;->nanoTime()J

    .line 52
    .line 53
    .line 54
    move-result-wide v3

    .line 55
    const/4 v6, 0x0

    .line 56
    move-wide v1, p3

    .line 57
    invoke-interface/range {v0 .. v6}, Lyn/f;->c(JJLio/bidmachine/media3/common/a;Landroid/media/MediaFormat;)V

    .line 58
    .line 59
    .line 60
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/video/d$b;->b:Lio/bidmachine/media3/exoplayer/video/d;

    .line 61
    .line 62
    invoke-static {p3}, Lio/bidmachine/media3/exoplayer/video/d;->C(Lio/bidmachine/media3/exoplayer/video/d;)Ljava/util/Queue;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    invoke-interface {p3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    check-cast p3, Lio/bidmachine/media3/exoplayer/video/VideoSink$b;

    .line 71
    .line 72
    invoke-interface {p3, p1, p2}, Lio/bidmachine/media3/exoplayer/video/VideoSink$b;->b(J)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/d$b;->b:Lio/bidmachine/media3/exoplayer/video/d;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/d;->q(Lio/bidmachine/media3/exoplayer/video/d;)Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lio/bidmachine/media3/exoplayer/video/g;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lio/bidmachine/media3/exoplayer/video/g;-><init>(Lio/bidmachine/media3/exoplayer/video/d$b;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/d$b;->b:Lio/bidmachine/media3/exoplayer/video/d;

    .line 16
    .line 17
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/d;->C(Lio/bidmachine/media3/exoplayer/video/d;)Ljava/util/Queue;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lio/bidmachine/media3/exoplayer/video/VideoSink$b;

    .line 26
    .line 27
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/video/VideoSink$b;->a()V

    .line 28
    .line 29
    .line 30
    return-void
.end method
