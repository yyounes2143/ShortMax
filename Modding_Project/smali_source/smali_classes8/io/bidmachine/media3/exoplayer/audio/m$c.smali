.class final Lio/bidmachine/media3/exoplayer/audio/m$c;
.super Ljava/lang/Object;
.source "MediaCodecAudioRenderer.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/audio/AudioSink$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/audio/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/media3/exoplayer/audio/m;


# direct methods
.method private constructor <init>(Lio/bidmachine/media3/exoplayer/audio/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/m$c;->a:Lio/bidmachine/media3/exoplayer/audio/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/audio/m;Lio/bidmachine/media3/exoplayer/audio/m$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/audio/m$c;-><init>(Lio/bidmachine/media3/exoplayer/audio/m;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/m$c;->a:Lio/bidmachine/media3/exoplayer/audio/m;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/audio/m;->J1(Lio/bidmachine/media3/exoplayer/audio/m;)Lio/bidmachine/media3/exoplayer/audio/e$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/audio/e$a;->I(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public b(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    const-string v0, "MediaCodecAudioRenderer"

    .line 2
    .line 3
    const-string v1, "Audio sink error"

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcn/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/m$c;->a:Lio/bidmachine/media3/exoplayer/audio/m;

    .line 9
    .line 10
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/audio/m;->J1(Lio/bidmachine/media3/exoplayer/audio/m;)Lio/bidmachine/media3/exoplayer/audio/e$a;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/audio/e$a;->n(Ljava/lang/Exception;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public c(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/m$c;->a:Lio/bidmachine/media3/exoplayer/audio/m;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/audio/m;->J1(Lio/bidmachine/media3/exoplayer/audio/m;)Lio/bidmachine/media3/exoplayer/audio/e$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/audio/e$a;->H(J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/m$c;->a:Lio/bidmachine/media3/exoplayer/audio/m;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/audio/m;->L1(Lio/bidmachine/media3/exoplayer/audio/m;)Lio/bidmachine/media3/exoplayer/h2$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/h2$a;->a()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/m$c;->a:Lio/bidmachine/media3/exoplayer/audio/m;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/audio/m;->K1(Lio/bidmachine/media3/exoplayer/audio/m;)Lio/bidmachine/media3/exoplayer/h2$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/h2$a;->b()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/m$c;->a:Lio/bidmachine/media3/exoplayer/audio/m;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/audio/m;->I1(Lio/bidmachine/media3/exoplayer/audio/m;Z)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/m$c;->a:Lio/bidmachine/media3/exoplayer/audio/m;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/audio/m;->M1(Lio/bidmachine/media3/exoplayer/audio/m;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l(Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/m$c;->a:Lio/bidmachine/media3/exoplayer/audio/m;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/audio/m;->J1(Lio/bidmachine/media3/exoplayer/audio/m;)Lio/bidmachine/media3/exoplayer/audio/e$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/audio/e$a;->p(Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public n(Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/m$c;->a:Lio/bidmachine/media3/exoplayer/audio/m;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/audio/m;->J1(Lio/bidmachine/media3/exoplayer/audio/m;)Lio/bidmachine/media3/exoplayer/audio/e$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/audio/e$a;->o(Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onPositionDiscontinuity()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/m$c;->a:Lio/bidmachine/media3/exoplayer/audio/m;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/audio/m;->V1()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onUnderrun(IJJ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/m$c;->a:Lio/bidmachine/media3/exoplayer/audio/m;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/audio/m;->J1(Lio/bidmachine/media3/exoplayer/audio/m;)Lio/bidmachine/media3/exoplayer/audio/e$a;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    move v2, p1

    .line 8
    move-wide v3, p2

    .line 9
    move-wide v5, p4

    .line 10
    invoke-virtual/range {v1 .. v6}, Lio/bidmachine/media3/exoplayer/audio/e$a;->J(IJJ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
