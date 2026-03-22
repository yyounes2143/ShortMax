.class public Lnp/e;
.super Ljava/lang/Object;
.source "DownloadVideoTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnp/e$b;
    }
.end annotation


# instance fields
.field private a:Lnp/e$b;

.field private b:Ljava/lang/String;

.field private c:Ljava/io/File;

.field private final d:Landroid/os/Handler;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnp/e$b;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lnp/e$b;
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
    new-instance v0, Lnp/e$a;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, p0, v1}, Lnp/e$a;-><init>(Lnp/e;Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lnp/e;->d:Landroid/os/Handler;

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
    iput-object p2, p0, Lnp/e;->a:Lnp/e$b;

    .line 25
    .line 26
    iput-object p3, p0, Lnp/e;->b:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {}, Lio/bidmachine/core/g;->f()Z

    .line 29
    .line 30
    .line 31
    move-result p3

    .line 32
    if-eqz p3, :cond_1

    .line 33
    .line 34
    const-string p2, "native_video"

    .line 35
    .line 36
    invoke-static {p1, p2}, Lio/bidmachine/core/g;->w(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lnp/e;->c:Ljava/io/File;

    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lnp/e;->e:Z

    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    invoke-interface {p2, p0}, Lnp/e$b;->b(Lnp/e;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_2
    :goto_0
    invoke-interface {p2, p0}, Lnp/e$b;->b(Lnp/e;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method static synthetic a(Lnp/e;)Lnp/e$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lnp/e;->a:Lnp/e$b;

    .line 2
    .line 3
    return-object p0
.end method

.method private c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lnp/e;->d:Landroid/os/Handler;

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

.method private d(Ljava/io/File;)V
    .locals 2
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lnp/e;->d:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object v0, p0, Lnp/e;->d:Landroid/os/Handler;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lnp/e;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lnp/e;->c()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lnp/e;->b:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v1, p0, Lnp/e;->c:Ljava/io/File;

    .line 12
    .line 13
    const/16 v2, 0x4e20

    .line 14
    .line 15
    invoke-static {v0, v1, v2}, Lnp/a;->a(Ljava/lang/String;Ljava/io/File;I)Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-direct {p0, v0}, Lnp/e;->d(Ljava/io/File;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-direct {p0}, Lnp/e;->c()V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method
