.class public Lnp/d;
.super Ljava/lang/Object;
.source "DownloadVastVideoTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnp/d$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lnp/d$b;

.field private d:Ljava/lang/String;

.field private e:Ljava/io/File;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnp/d$b;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lnp/d$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lnp/d$a;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, p0, v1}, Lnp/d$a;-><init>(Lnp/d;Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lnp/d;->a:Landroid/os/Handler;

    .line 14
    .line 15
    if-eqz p3, :cond_2

    .line 16
    .line 17
    invoke-static {}, Lio/bidmachine/core/g;->f()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 25
    .line 26
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lnp/d;->b:Ljava/lang/ref/WeakReference;

    .line 30
    .line 31
    iput-object p2, p0, Lnp/d;->c:Lnp/d$b;

    .line 32
    .line 33
    iput-object p3, p0, Lnp/d;->d:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {}, Lio/bidmachine/core/g;->f()Z

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    if-eqz p3, :cond_1

    .line 40
    .line 41
    const-string p2, "native_video"

    .line 42
    .line 43
    invoke-static {p1, p2}, Lio/bidmachine/core/g;->w(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lnp/d;->e:Ljava/io/File;

    .line 48
    .line 49
    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lnp/d;->f:Z

    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    invoke-interface {p2, p0}, Lnp/d$b;->b(Lnp/d;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    :goto_0
    invoke-interface {p2, p0}, Lnp/d$b;->b(Lnp/d;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method static synthetic a(Lnp/d;)Lnp/d$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lnp/d;->c:Lnp/d$b;

    .line 2
    .line 3
    return-object p0
.end method

.method private c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lnp/d;->a:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method private d(Ljava/io/File;Lio/bidmachine/iab/vast/a;)V
    .locals 2
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/iab/vast/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lnp/d;->a:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Landroid/util/Pair;

    .line 6
    .line 7
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p2, p0, Lnp/d;->a:Landroid/os/Handler;

    .line 20
    .line 21
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lnp/d;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lnp/d;->c()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lnp/d;->b:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/content/Context;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-direct {p0}, Lnp/d;->c()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    :try_start_0
    invoke-static {}, Lio/bidmachine/iab/vast/a;->V()Lio/bidmachine/iab/vast/a$a;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    sget-object v2, Lio/bidmachine/iab/CacheControl;->Stream:Lio/bidmachine/iab/CacheControl;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Lio/bidmachine/iab/vast/a$a;->d(Lio/bidmachine/iab/CacheControl;)Lio/bidmachine/iab/vast/a$a;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lio/bidmachine/iab/vast/a$a;->a()Lio/bidmachine/iab/vast/a;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v2, p0, Lnp/d;->d:Ljava/lang/String;

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-virtual {v1, v0, v2, v3}, Lio/bidmachine/iab/vast/a;->U(Landroid/content/Context;Ljava/lang/String;Ltm/e;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Lio/bidmachine/iab/vast/a;->M()Lio/bidmachine/iab/vast/processor/VastAd;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/processor/VastAd;->x()Lio/bidmachine/iab/vast/tags/MediaFileTag;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2}, Lio/bidmachine/iab/vast/tags/MediaFileTag;->a0()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const-string v3, "video/.*(?i)(mp4|3gpp|mp2t|webm|matroska)"

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_2

    .line 64
    .line 65
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/processor/VastAd;->x()Lio/bidmachine/iab/vast/tags/MediaFileTag;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->P()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-object v2, p0, Lnp/d;->e:Ljava/io/File;

    .line 74
    .line 75
    const/16 v3, 0x4e20

    .line 76
    .line 77
    invoke-static {v0, v2, v3}, Lnp/a;->a(Ljava/lang/String;Ljava/io/File;I)Ljava/io/File;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    invoke-direct {p0, v0, v1}, Lnp/d;->d(Ljava/io/File;Lio/bidmachine/iab/vast/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    invoke-static {v0}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    :cond_2
    invoke-direct {p0}, Lnp/d;->c()V

    .line 92
    .line 93
    .line 94
    return-void
.end method
