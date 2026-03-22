.class final Lio/bidmachine/media3/exoplayer/audio/b$e;
.super Landroid/content/BroadcastReceiver;
.source "AudioCapabilitiesReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/audio/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/media3/exoplayer/audio/b;


# direct methods
.method private constructor <init>(Lio/bidmachine/media3/exoplayer/audio/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/b$e;->a:Lio/bidmachine/media3/exoplayer/audio/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/audio/b;Lio/bidmachine/media3/exoplayer/audio/b$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/audio/b$e;-><init>(Lio/bidmachine/media3/exoplayer/audio/b;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/b$e;->a:Lio/bidmachine/media3/exoplayer/audio/b;

    .line 8
    .line 9
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/audio/b;->a(Lio/bidmachine/media3/exoplayer/audio/b;)Lzm/c;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/b$e;->a:Lio/bidmachine/media3/exoplayer/audio/b;

    .line 14
    .line 15
    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/audio/b;->b(Lio/bidmachine/media3/exoplayer/audio/b;)Lio/bidmachine/media3/exoplayer/audio/c;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {p1, p2, v1, v2}, Lio/bidmachine/media3/exoplayer/audio/a;->e(Landroid/content/Context;Landroid/content/Intent;Lzm/c;Lio/bidmachine/media3/exoplayer/audio/c;)Lio/bidmachine/media3/exoplayer/audio/a;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/audio/b;->d(Lio/bidmachine/media3/exoplayer/audio/b;Lio/bidmachine/media3/exoplayer/audio/a;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
