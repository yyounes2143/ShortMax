.class final Lio/bidmachine/media3/exoplayer/o2$d;
.super Landroid/content/BroadcastReceiver;
.source "StreamVolumeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/o2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/media3/exoplayer/o2;


# direct methods
.method private constructor <init>(Lio/bidmachine/media3/exoplayer/o2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/o2$d;->a:Lio/bidmachine/media3/exoplayer/o2;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/o2;Lio/bidmachine/media3/exoplayer/o2$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/o2$d;-><init>(Lio/bidmachine/media3/exoplayer/o2;)V

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/media3/exoplayer/o2$d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/o2$d;->b()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/o2$d;->a:Lio/bidmachine/media3/exoplayer/o2;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/o2;->f(Lio/bidmachine/media3/exoplayer/o2;)Lio/bidmachine/media3/exoplayer/o2$d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/o2$d;->a:Lio/bidmachine/media3/exoplayer/o2;

    .line 11
    .line 12
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/o2;->e(Lio/bidmachine/media3/exoplayer/o2;)Lcn/f;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcn/f;->d()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lio/bidmachine/media3/exoplayer/o2$c;

    .line 21
    .line 22
    iget v0, v0, Lio/bidmachine/media3/exoplayer/o2$c;->a:I

    .line 23
    .line 24
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/o2$d;->a:Lio/bidmachine/media3/exoplayer/o2;

    .line 25
    .line 26
    invoke-static {v1}, Lio/bidmachine/media3/exoplayer/o2;->e(Lio/bidmachine/media3/exoplayer/o2;)Lcn/f;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/o2$d;->a:Lio/bidmachine/media3/exoplayer/o2;

    .line 31
    .line 32
    invoke-static {v2, v0}, Lio/bidmachine/media3/exoplayer/o2;->g(Lio/bidmachine/media3/exoplayer/o2;I)Lio/bidmachine/media3/exoplayer/o2$c;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v1, v0}, Lcn/f;->i(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/o2$d;->a:Lio/bidmachine/media3/exoplayer/o2;

    .line 2
    .line 3
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/o2;->e(Lio/bidmachine/media3/exoplayer/o2;)Lcn/f;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance p2, Lio/bidmachine/media3/exoplayer/p2;

    .line 8
    .line 9
    invoke-direct {p2, p0}, Lio/bidmachine/media3/exoplayer/p2;-><init>(Lio/bidmachine/media3/exoplayer/o2$d;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Lcn/f;->h(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
