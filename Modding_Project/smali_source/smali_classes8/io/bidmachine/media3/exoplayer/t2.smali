.class final Lio/bidmachine/media3/exoplayer/t2;
.super Ljava/lang/Object;
.source "WakeLockManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/t2$a;
    }
.end annotation


# instance fields
.field private final a:Lio/bidmachine/media3/exoplayer/t2$a;

.field private final b:Lcn/n;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcn/h;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/bidmachine/media3/exoplayer/t2$a;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-direct {v0, p1}, Lio/bidmachine/media3/exoplayer/t2$a;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/t2;->a:Lio/bidmachine/media3/exoplayer/t2$a;

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-interface {p3, p2, p1}, Lcn/h;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcn/n;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/t2;->b:Lcn/n;

    .line 21
    .line 22
    return-void
.end method

.method public static synthetic a(Lio/bidmachine/media3/exoplayer/t2;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/t2;->d(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lio/bidmachine/media3/exoplayer/t2;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/t2;->c(ZZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic c(ZZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/t2;->a:Lio/bidmachine/media3/exoplayer/t2$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/t2$a;->a(ZZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic d(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/t2;->a:Lio/bidmachine/media3/exoplayer/t2$a;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/t2$a;->a(ZZ)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public e(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/t2;->c:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/t2;->c:Z

    .line 7
    .line 8
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/t2;->d:Z

    .line 9
    .line 10
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/t2;->b:Lcn/n;

    .line 11
    .line 12
    new-instance v2, Lio/bidmachine/media3/exoplayer/r2;

    .line 13
    .line 14
    invoke-direct {v2, p0, p1, v0}, Lio/bidmachine/media3/exoplayer/r2;-><init>(Lio/bidmachine/media3/exoplayer/t2;ZZ)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v1, v2}, Lcn/n;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public f(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/t2;->d:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/t2;->d:Z

    .line 7
    .line 8
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/t2;->c:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/t2;->b:Lcn/n;

    .line 13
    .line 14
    new-instance v1, Lio/bidmachine/media3/exoplayer/s2;

    .line 15
    .line 16
    invoke-direct {v1, p0, p1}, Lio/bidmachine/media3/exoplayer/s2;-><init>(Lio/bidmachine/media3/exoplayer/t2;Z)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1}, Lcn/n;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method
