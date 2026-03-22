.class public final Lio/bidmachine/media3/exoplayer/upstream/Loader;
.super Ljava/lang/Object;
.source "Loader.java"

# interfaces
.implements Lwn/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/upstream/Loader$d;,
        Lio/bidmachine/media3/exoplayer/upstream/Loader$c;,
        Lio/bidmachine/media3/exoplayer/upstream/Loader$e;,
        Lio/bidmachine/media3/exoplayer/upstream/Loader$b;,
        Lio/bidmachine/media3/exoplayer/upstream/Loader$f;,
        Lio/bidmachine/media3/exoplayer/upstream/Loader$g;,
        Lio/bidmachine/media3/exoplayer/upstream/Loader$UnexpectedLoaderException;
    }
.end annotation


# static fields
.field public static final d:Lio/bidmachine/media3/exoplayer/upstream/Loader$c;

.field public static final e:Lio/bidmachine/media3/exoplayer/upstream/Loader$c;

.field public static final f:Lio/bidmachine/media3/exoplayer/upstream/Loader$c;

.field public static final g:Lio/bidmachine/media3/exoplayer/upstream/Loader$c;


# instance fields
.field private final a:Lxn/a;

.field private b:Lio/bidmachine/media3/exoplayer/upstream/Loader$d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/media3/exoplayer/upstream/Loader$d<",
            "+",
            "Lio/bidmachine/media3/exoplayer/upstream/Loader$e;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/io/IOException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->g(ZJ)Lio/bidmachine/media3/exoplayer/upstream/Loader$c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lio/bidmachine/media3/exoplayer/upstream/Loader;->d:Lio/bidmachine/media3/exoplayer/upstream/Loader$c;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-static {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->g(ZJ)Lio/bidmachine/media3/exoplayer/upstream/Loader$c;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lio/bidmachine/media3/exoplayer/upstream/Loader;->e:Lio/bidmachine/media3/exoplayer/upstream/Loader$c;

    .line 19
    .line 20
    new-instance v0, Lio/bidmachine/media3/exoplayer/upstream/Loader$c;

    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-direct {v0, v3, v1, v2, v4}, Lio/bidmachine/media3/exoplayer/upstream/Loader$c;-><init>(IJLio/bidmachine/media3/exoplayer/upstream/Loader$a;)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lio/bidmachine/media3/exoplayer/upstream/Loader;->f:Lio/bidmachine/media3/exoplayer/upstream/Loader$c;

    .line 28
    .line 29
    new-instance v0, Lio/bidmachine/media3/exoplayer/upstream/Loader$c;

    .line 30
    .line 31
    const/4 v3, 0x3

    .line 32
    invoke-direct {v0, v3, v1, v2, v4}, Lio/bidmachine/media3/exoplayer/upstream/Loader$c;-><init>(IJLio/bidmachine/media3/exoplayer/upstream/Loader$a;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lio/bidmachine/media3/exoplayer/upstream/Loader;->g:Lio/bidmachine/media3/exoplayer/upstream/Loader$c;

    .line 36
    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExoPlayer:Loader:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcn/m0;->T0(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lwn/j;

    invoke-direct {v0}, Lwn/j;-><init>()V

    .line 3
    invoke-static {p1, v0}, Lxn/a;->r(Ljava/util/concurrent/Executor;Lcn/l;)Lxn/a;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/upstream/Loader;-><init>(Lxn/a;)V

    return-void
.end method

.method public constructor <init>(Lxn/a;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader;->a:Lxn/a;

    return-void
.end method

.method static synthetic a(Lio/bidmachine/media3/exoplayer/upstream/Loader;)Lio/bidmachine/media3/exoplayer/upstream/Loader$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader;->b:Lio/bidmachine/media3/exoplayer/upstream/Loader$d;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lio/bidmachine/media3/exoplayer/upstream/Loader;Lio/bidmachine/media3/exoplayer/upstream/Loader$d;)Lio/bidmachine/media3/exoplayer/upstream/Loader$d;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader;->b:Lio/bidmachine/media3/exoplayer/upstream/Loader$d;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic c(Lio/bidmachine/media3/exoplayer/upstream/Loader;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader;->c:Ljava/io/IOException;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic d(Lio/bidmachine/media3/exoplayer/upstream/Loader;)Lxn/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader;->a:Lxn/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static g(ZJ)Lio/bidmachine/media3/exoplayer/upstream/Loader$c;
    .locals 2

    .line 1
    new-instance v0, Lio/bidmachine/media3/exoplayer/upstream/Loader$c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, p2, v1}, Lio/bidmachine/media3/exoplayer/upstream/Loader$c;-><init>(IJLio/bidmachine/media3/exoplayer/upstream/Loader$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method


# virtual methods
.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader;->b:Lio/bidmachine/media3/exoplayer/upstream/Loader$d;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/bidmachine/media3/exoplayer/upstream/Loader$d;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/upstream/Loader$d;->a(Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader;->c:Ljava/io/IOException;

    .line 3
    .line 4
    return-void
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader;->c:Ljava/io/IOException;

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

.method public i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader;->b:Lio/bidmachine/media3/exoplayer/upstream/Loader$d;

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

.method public j(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader;->c:Ljava/io/IOException;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader;->b:Lio/bidmachine/media3/exoplayer/upstream/Loader$d;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const/high16 v1, -0x80000000

    .line 10
    .line 11
    if-ne p1, v1, :cond_0

    .line 12
    .line 13
    iget p1, v0, Lio/bidmachine/media3/exoplayer/upstream/Loader$d;->a:I

    .line 14
    .line 15
    :cond_0
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/upstream/Loader$d;->f(I)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void

    .line 19
    :cond_2
    throw v0
.end method

.method public k()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->l(Lio/bidmachine/media3/exoplayer/upstream/Loader$f;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public l(Lio/bidmachine/media3/exoplayer/upstream/Loader$f;)V
    .locals 2
    .param p1    # Lio/bidmachine/media3/exoplayer/upstream/Loader$f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader;->b:Lio/bidmachine/media3/exoplayer/upstream/Loader$d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/upstream/Loader$d;->a(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    if-eqz p1, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader;->a:Lxn/a;

    .line 12
    .line 13
    new-instance v1, Lio/bidmachine/media3/exoplayer/upstream/Loader$g;

    .line 14
    .line 15
    invoke-direct {v1, p1}, Lio/bidmachine/media3/exoplayer/upstream/Loader$g;-><init>(Lio/bidmachine/media3/exoplayer/upstream/Loader$f;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader;->a:Lxn/a;

    .line 22
    .line 23
    invoke-interface {p1}, Lxn/a;->release()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public m(Lio/bidmachine/media3/exoplayer/upstream/Loader$e;Lio/bidmachine/media3/exoplayer/upstream/Loader$b;I)J
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/bidmachine/media3/exoplayer/upstream/Loader$e;",
            ">(TT;",
            "Lio/bidmachine/media3/exoplayer/upstream/Loader$b<",
            "TT;>;I)J"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcn/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    move-object v3, v0

    .line 10
    check-cast v3, Landroid/os/Looper;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/upstream/Loader;->c:Ljava/io/IOException;

    .line 14
    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 16
    .line 17
    .line 18
    move-result-wide v9

    .line 19
    new-instance v0, Lio/bidmachine/media3/exoplayer/upstream/Loader$d;

    .line 20
    .line 21
    move-object v1, v0

    .line 22
    move-object v2, p0

    .line 23
    move-object v4, p1

    .line 24
    move-object v5, p2

    .line 25
    move v6, p3

    .line 26
    move-wide v7, v9

    .line 27
    invoke-direct/range {v1 .. v8}, Lio/bidmachine/media3/exoplayer/upstream/Loader$d;-><init>(Lio/bidmachine/media3/exoplayer/upstream/Loader;Landroid/os/Looper;Lio/bidmachine/media3/exoplayer/upstream/Loader$e;Lio/bidmachine/media3/exoplayer/upstream/Loader$b;IJ)V

    .line 28
    .line 29
    .line 30
    const-wide/16 p1, 0x0

    .line 31
    .line 32
    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/upstream/Loader$d;->g(J)V

    .line 33
    .line 34
    .line 35
    return-wide v9
.end method

.method public maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->j(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
