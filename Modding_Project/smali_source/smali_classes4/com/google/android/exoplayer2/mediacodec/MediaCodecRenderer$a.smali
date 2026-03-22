.class final Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer$a;
.super Ljava/lang/Object;
.source "MediaCodecRenderer.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1f
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# direct methods
.method public static a(Lcom/google/android/exoplayer2/mediacodec/j$a;Lp5/t3;)V
    .locals 1
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lp5/t3;->a()Landroid/media/metrics/LogSessionId;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {}, Lo5/x;->a()Landroid/media/metrics/LogSessionId;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p1, v0}, Lq5/a0;->a(Landroid/media/metrics/LogSessionId;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/j$a;->b:Landroid/media/MediaFormat;

    .line 16
    .line 17
    const-string v0, "log-session-id"

    .line 18
    .line 19
    invoke-static {p1}, Lf6/h;->a(Landroid/media/metrics/LogSessionId;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
