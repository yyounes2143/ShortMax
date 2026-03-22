.class final Lio/bidmachine/media3/exoplayer/d;
.super Ljava/lang/Object;
.source "AudioBecomingNoisyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/d$a;,
        Lio/bidmachine/media3/exoplayer/d$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lio/bidmachine/media3/exoplayer/d$a;

.field private final c:Lcn/n;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Lio/bidmachine/media3/exoplayer/d$b;Lcn/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/d;->a:Landroid/content/Context;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-interface {p5, p2, p1}, Lcn/h;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcn/n;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/d;->c:Lcn/n;

    .line 16
    .line 17
    new-instance p2, Lio/bidmachine/media3/exoplayer/d$a;

    .line 18
    .line 19
    invoke-interface {p5, p3, p1}, Lcn/h;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcn/n;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-direct {p2, p0, p1, p4}, Lio/bidmachine/media3/exoplayer/d$a;-><init>(Lio/bidmachine/media3/exoplayer/d;Lcn/n;Lio/bidmachine/media3/exoplayer/d$b;)V

    .line 24
    .line 25
    .line 26
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/d;->b:Lio/bidmachine/media3/exoplayer/d$a;

    .line 27
    .line 28
    return-void
.end method

.method public static synthetic a(Lio/bidmachine/media3/exoplayer/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/d;->e()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lio/bidmachine/media3/exoplayer/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/d;->d()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic c(Lio/bidmachine/media3/exoplayer/d;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/d;->d:Z

    .line 2
    .line 3
    return p0
.end method

.method private synthetic d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/d;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/d;->b:Lio/bidmachine/media3/exoplayer/d$a;

    .line 4
    .line 5
    new-instance v2, Landroid/content/IntentFilter;

    .line 6
    .line 7
    const-string v3, "android.media.AUDIO_BECOMING_NOISY"

    .line 8
    .line 9
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private synthetic e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/d;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/d;->b:Lio/bidmachine/media3/exoplayer/d$a;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public f(Z)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnprotectedReceiver"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/d;->d:Z

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/d;->c:Lcn/n;

    .line 9
    .line 10
    new-instance v0, Lio/bidmachine/media3/exoplayer/a;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lio/bidmachine/media3/exoplayer/a;-><init>(Lio/bidmachine/media3/exoplayer/d;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lcn/n;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/d;->d:Z

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/d;->c:Lcn/n;

    .line 23
    .line 24
    new-instance v0, Lio/bidmachine/media3/exoplayer/b;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lio/bidmachine/media3/exoplayer/b;-><init>(Lio/bidmachine/media3/exoplayer/d;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, v0}, Lcn/n;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/d;->d:Z

    .line 34
    .line 35
    :goto_0
    return-void
.end method
