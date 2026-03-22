.class final Lio/bidmachine/media3/exoplayer/u0$b;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1f
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/u0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# direct methods
.method public static synthetic a(Landroid/content/Context;ZLio/bidmachine/media3/exoplayer/u0;Lhn/b2;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/u0$b;->b(Landroid/content/Context;ZLio/bidmachine/media3/exoplayer/u0;Lhn/b2;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic b(Landroid/content/Context;ZLio/bidmachine/media3/exoplayer/u0;Lhn/b2;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lhn/z1;->E0(Landroid/content/Context;)Lhn/z1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const-string p0, "ExoPlayerImpl"

    .line 8
    .line 9
    const-string p1, "MediaMetricsService unavailable."

    .line 10
    .line 11
    invoke-static {p0, p1}, Lcn/r;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p2, p0}, Lio/bidmachine/media3/exoplayer/u0;->U0(Lhn/b;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-virtual {p0}, Lhn/z1;->L0()Landroid/media/metrics/LogSessionId;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p3, p0}, Lhn/b2;->b(Landroid/media/metrics/LogSessionId;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static c(Landroid/content/Context;Lio/bidmachine/media3/exoplayer/u0;ZLhn/b2;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/u0;->g1()Lcn/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/u0;->k1()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-interface {v0, v1, v2}, Lcn/h;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcn/n;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lio/bidmachine/media3/exoplayer/v0;

    .line 15
    .line 16
    invoke-direct {v1, p0, p2, p1, p3}, Lio/bidmachine/media3/exoplayer/v0;-><init>(Landroid/content/Context;ZLio/bidmachine/media3/exoplayer/u0;Lhn/b2;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1}, Lcn/n;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method
