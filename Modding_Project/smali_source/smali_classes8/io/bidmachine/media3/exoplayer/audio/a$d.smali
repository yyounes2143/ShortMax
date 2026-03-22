.class final Lio/bidmachine/media3/exoplayer/audio/a$d;
.super Ljava/lang/Object;
.source "AudioCapabilities.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x21
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/audio/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# direct methods
.method public static a(Landroid/media/AudioManager;Lzm/c;)Lio/bidmachine/media3/exoplayer/audio/a;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lzm/c;->a()Lzm/c$d;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p1, p1, Lzm/c$d;->a:Landroid/media/AudioAttributes;

    .line 6
    .line 7
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/v;->a(Landroid/media/AudioManager;Landroid/media/AudioAttributes;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    new-instance p1, Lio/bidmachine/media3/exoplayer/audio/a;

    .line 12
    .line 13
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/audio/a;->a(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-direct {p1, p0, v0}, Lio/bidmachine/media3/exoplayer/audio/a;-><init>(Ljava/util/List;Lio/bidmachine/media3/exoplayer/audio/a$a;)V

    .line 19
    .line 20
    .line 21
    return-object p1
.end method

.method public static b(Landroid/media/AudioManager;Lzm/c;)Lio/bidmachine/media3/exoplayer/audio/c;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    check-cast p0, Landroid/media/AudioManager;

    .line 7
    .line 8
    invoke-virtual {p1}, Lzm/c;->a()Lzm/c$d;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object p1, p1, Lzm/c$d;->a:Landroid/media/AudioAttributes;

    .line 13
    .line 14
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/a0;->a(Landroid/media/AudioManager;Landroid/media/AudioAttributes;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_0
    new-instance p1, Lio/bidmachine/media3/exoplayer/audio/c;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Landroid/media/AudioDeviceInfo;

    .line 33
    .line 34
    invoke-direct {p1, p0}, Lio/bidmachine/media3/exoplayer/audio/c;-><init>(Landroid/media/AudioDeviceInfo;)V

    .line 35
    .line 36
    .line 37
    return-object p1

    .line 38
    :catch_0
    return-object v0
.end method
