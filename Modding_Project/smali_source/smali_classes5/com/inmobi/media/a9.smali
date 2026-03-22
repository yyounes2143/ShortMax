.class public final Lcom/inmobi/media/a9;
.super Lcom/inmobi/media/T7;
.source "SourceFile"


# instance fields
.field public final U:Ljava/lang/String;

.field public final V:Ljava/lang/String;

.field public final W:Lcom/inmobi/media/z5;

.field public final X:Ljava/lang/String;

.field public final Y:Ljava/lang/String;

.field public Z:Ljava/lang/ref/WeakReference;

.field public final a0:Lcom/inmobi/media/Z8;

.field public final b0:Lcom/inmobi/media/Y8;


# direct methods
.method public constructor <init>(Landroid/content/Context;BLcom/inmobi/media/p8;Ljava/lang/String;Ljava/util/Set;Lcom/inmobi/commons/core/configs/AdConfig;JZLjava/lang/String;Lcom/inmobi/media/e3;Lcom/inmobi/media/S6;Lcom/inmobi/media/z5;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataModel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "impressionId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfig"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "creativeId"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p13}, Lcom/inmobi/media/T7;-><init>(Landroid/content/Context;BLcom/inmobi/media/p8;Ljava/lang/String;Ljava/util/Set;Lcom/inmobi/commons/core/configs/AdConfig;JZLjava/lang/String;Lcom/inmobi/media/e3;Lcom/inmobi/media/S6;Lcom/inmobi/media/z5;)V

    .line 2
    iput-object p4, p0, Lcom/inmobi/media/a9;->U:Ljava/lang/String;

    .line 3
    iput-object p10, p0, Lcom/inmobi/media/a9;->V:Ljava/lang/String;

    .line 4
    iput-object p13, p0, Lcom/inmobi/media/a9;->W:Lcom/inmobi/media/z5;

    .line 5
    const-class p1, Lcom/inmobi/media/a9;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/inmobi/media/a9;->X:Ljava/lang/String;

    .line 6
    const-string p1, "InMobi"

    iput-object p1, p0, Lcom/inmobi/media/a9;->Y:Ljava/lang/String;

    .line 7
    new-instance p1, Lcom/inmobi/media/Z8;

    invoke-direct {p1, p0}, Lcom/inmobi/media/Z8;-><init>(Lcom/inmobi/media/a9;)V

    iput-object p1, p0, Lcom/inmobi/media/a9;->a0:Lcom/inmobi/media/Z8;

    .line 8
    new-instance p1, Lcom/inmobi/media/Y8;

    invoke-direct {p1, p0}, Lcom/inmobi/media/Y8;-><init>(Lcom/inmobi/media/a9;)V

    iput-object p1, p0, Lcom/inmobi/media/a9;->b0:Lcom/inmobi/media/Y8;

    return-void
.end method

.method public static final a(Lcom/inmobi/media/c9;ZLcom/inmobi/media/a9;Lcom/inmobi/media/l9;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 5
    const-string v2, "visible"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    if-eqz p1, :cond_9

    .line 6
    iget-boolean p1, p2, Lcom/inmobi/media/T7;->u:Z

    if-nez p1, :cond_9

    .line 7
    iget-object p1, p0, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "lastVisibleTimestamp"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p3}, Lcom/inmobi/media/l9;->getPauseScheduled()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Lcom/inmobi/media/l9;->getMediaPlayer()Lcom/inmobi/media/G8;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/inmobi/media/c9;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p3}, Lcom/inmobi/media/l9;->k()V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p3}, Lcom/inmobi/media/l9;->c()V

    .line 13
    :cond_1
    :goto_0
    iget-object p1, p3, Lcom/inmobi/media/l9;->s:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    :cond_2
    iput-boolean v1, p3, Lcom/inmobi/media/l9;->t:Z

    .line 15
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 16
    iget-byte p1, p2, Lcom/inmobi/media/T7;->a:B

    if-nez p1, :cond_4

    .line 17
    invoke-virtual {p2}, Lcom/inmobi/media/a9;->k()Z

    move-result p1

    if-nez p1, :cond_4

    .line 18
    invoke-virtual {p3}, Lcom/inmobi/media/l9;->getVideoVolume()I

    move-result p1

    .line 19
    invoke-virtual {p3}, Lcom/inmobi/media/l9;->getLastVolume()I

    move-result v2

    if-eq p1, v2, :cond_4

    .line 20
    invoke-virtual {p3}, Lcom/inmobi/media/l9;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_4

    if-gtz p1, :cond_3

    move v1, v0

    .line 21
    :cond_3
    invoke-virtual {p2, v1}, Lcom/inmobi/media/a9;->a(Z)V

    .line 22
    invoke-virtual {p3, p1}, Lcom/inmobi/media/l9;->setLastVolume(I)V

    .line 23
    :cond_4
    iget-byte p1, p2, Lcom/inmobi/media/T7;->a:B

    const/4 v1, 0x5

    if-nez p1, :cond_5

    .line 24
    invoke-virtual {p2}, Lcom/inmobi/media/a9;->k()Z

    move-result p1

    if-nez p1, :cond_5

    .line 25
    iget-boolean p1, p0, Lcom/inmobi/media/c9;->B:Z

    if-nez p1, :cond_5

    .line 26
    invoke-virtual {p3}, Lcom/inmobi/media/l9;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_5

    .line 27
    invoke-virtual {p3}, Lcom/inmobi/media/l9;->getState()I

    move-result p1

    if-ne p1, v1, :cond_5

    .line 28
    invoke-virtual {p3}, Lcom/inmobi/media/l9;->getVideoVolume()I

    move-result p1

    .line 29
    invoke-virtual {p3}, Lcom/inmobi/media/l9;->getLastVolume()I

    move-result v2

    if-eq p1, v2, :cond_5

    if-lez v2, :cond_5

    .line 30
    invoke-virtual {p2, v0}, Lcom/inmobi/media/a9;->a(Z)V

    .line 31
    invoke-virtual {p3, p1}, Lcom/inmobi/media/l9;->setLastVolume(I)V

    .line 32
    :cond_5
    invoke-virtual {p3}, Lcom/inmobi/media/l9;->getState()I

    move-result p1

    if-ne v0, p1, :cond_7

    .line 33
    invoke-virtual {p3}, Lcom/inmobi/media/l9;->getMediaPlayer()Lcom/inmobi/media/G8;

    move-result-object p0

    if-nez p0, :cond_6

    goto :goto_1

    :cond_6
    const/4 p1, 0x3

    .line 34
    iput p1, p0, Lcom/inmobi/media/G8;->b:I

    goto :goto_1

    .line 35
    :cond_7
    invoke-virtual {p3}, Lcom/inmobi/media/l9;->getState()I

    move-result p1

    const/4 p2, 0x2

    if-eq p2, p1, :cond_8

    .line 36
    invoke-virtual {p3}, Lcom/inmobi/media/l9;->getState()I

    move-result p1

    const/4 p2, 0x4

    if-eq p2, p1, :cond_8

    .line 37
    invoke-virtual {p3}, Lcom/inmobi/media/l9;->getState()I

    move-result p1

    if-ne v1, p1, :cond_b

    .line 38
    iget-boolean p0, p0, Lcom/inmobi/media/c9;->B:Z

    if-eqz p0, :cond_b

    .line 39
    :cond_8
    invoke-virtual {p3}, Lcom/inmobi/media/l9;->start()V

    goto :goto_1

    .line 40
    :cond_9
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 41
    iget-byte p1, p2, Lcom/inmobi/media/T7;->a:B

    if-nez p1, :cond_a

    .line 42
    invoke-virtual {p2}, Lcom/inmobi/media/a9;->k()Z

    move-result p1

    if-nez p1, :cond_a

    .line 43
    iget-boolean p1, p2, Lcom/inmobi/media/T7;->u:Z

    if-nez p1, :cond_a

    .line 44
    invoke-virtual {p3}, Lcom/inmobi/media/l9;->getVideoVolume()I

    move-result p1

    .line 45
    invoke-virtual {p3}, Lcom/inmobi/media/l9;->getLastVolume()I

    move-result v1

    if-eq p1, v1, :cond_a

    if-lez v1, :cond_a

    .line 46
    invoke-virtual {p2, v0}, Lcom/inmobi/media/a9;->a(Z)V

    .line 47
    invoke-virtual {p3, p1}, Lcom/inmobi/media/l9;->setLastVolume(I)V

    .line 48
    :cond_a
    iget p0, p0, Lcom/inmobi/media/c9;->E:I

    .line 49
    invoke-virtual {p3, p0}, Lcom/inmobi/media/l9;->a(I)V

    :cond_b
    :goto_1
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Z)V
    .locals 3

    const v0, 0x7fffffff

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/inmobi/media/l9;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/inmobi/media/c9;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/inmobi/media/c9;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lub/o3;

    invoke-direct {v2, v0, p2, p0, p1}, Lub/o3;-><init>(Lcom/inmobi/media/c9;ZLcom/inmobi/media/a9;Lcom/inmobi/media/l9;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final a(Lcom/inmobi/media/c9;I)V
    .locals 4

    const-string v0, "videoAsset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-boolean v0, p0, Lcom/inmobi/media/T7;->t:Z

    if-eqz v0, :cond_0

    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/a9;->W:Lcom/inmobi/media/z5;

    const-string v1, "TAG"

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/inmobi/media/a9;->X:Ljava/lang/String;

    .line 65
    const-string v3, "Moat onVideoError + "

    invoke-static {v2, v1, v3, p2}, Lcom/inmobi/media/X8;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 66
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v2, p2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_1
    invoke-virtual {p0, p1}, Lcom/inmobi/media/a9;->j(Lcom/inmobi/media/c9;)Ljava/util/HashMap;

    move-result-object p2

    iget-object v0, p0, Lcom/inmobi/media/a9;->W:Lcom/inmobi/media/z5;

    .line 68
    const-string v2, "error"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3, v0}, Lcom/inmobi/media/d8;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/L7;Lcom/inmobi/media/z5;)V

    .line 69
    iget-object p1, p0, Lcom/inmobi/media/a9;->W:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/inmobi/media/a9;->X:Ljava/lang/String;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v0, "onVideoError"

    invoke-virtual {p1, p2, v0}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_2
    iget-object p1, p0, Lcom/inmobi/media/T7;->p:Lcom/inmobi/media/We;

    if-eqz p1, :cond_3

    const/16 p2, 0x11

    .line 71
    invoke-virtual {p1, p2}, Lcom/inmobi/media/Xe;->a(B)V

    :cond_3
    return-void
.end method

.method public final a(Lcom/inmobi/media/c9;Lcom/inmobi/media/l9;)V
    .locals 6

    .line 72
    iget-boolean v0, p0, Lcom/inmobi/media/T7;->t:Z

    if-nez v0, :cond_b

    .line 73
    iget-object v0, p0, Lcom/inmobi/media/T7;->x:Ljava/lang/ref/WeakReference;

    .line 74
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 75
    :cond_0
    iget-object v0, p1, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 76
    const-string v1, "didRequestFullScreen"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    if-nez v0, :cond_b

    .line 77
    iget-object v0, p1, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 78
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-virtual {p2}, Lcom/inmobi/media/l9;->getCurrentPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "seekPosition"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-virtual {p2}, Lcom/inmobi/media/l9;->getVolume()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v5, "lastMediaVolume"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-virtual {p2}, Lcom/inmobi/media/l9;->getMediaPlayer()Lcom/inmobi/media/G8;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    if-eqz v1, :cond_5

    .line 82
    invoke-virtual {p2}, Lcom/inmobi/media/l9;->getMediaPlayer()Lcom/inmobi/media/G8;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 83
    :cond_4
    invoke-virtual {p2}, Lcom/inmobi/media/l9;->getAudioFocusManager$media_release()Lcom/inmobi/media/f8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/media/f8;->a()V

    .line 84
    :cond_5
    invoke-virtual {p2}, Lcom/inmobi/media/l9;->getMediaPlayer()Lcom/inmobi/media/G8;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    const/4 v1, 0x4

    .line 85
    iput v1, v0, Lcom/inmobi/media/G8;->a:I

    .line 86
    :goto_3
    iget-object v0, p1, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 87
    const-string v1, "isFullScreen"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object p1, p1, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 89
    invoke-virtual {p2}, Lcom/inmobi/media/l9;->getMediaPlayer()Lcom/inmobi/media/G8;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    :cond_7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 90
    invoke-virtual {p1, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object p1, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_8

    iget-object p2, p0, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    const-string v0, "TAG"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v0, "launchFullscreen"

    invoke-virtual {p1, p2, v0}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_8
    invoke-static {p0}, Lcom/inmobi/media/T7;->c(Lcom/inmobi/media/T7;)Lcom/inmobi/media/T7;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_4

    .line 93
    :cond_9
    iget-object p2, p1, Lcom/inmobi/media/T7;->w:Lcom/inmobi/media/P0;

    if-eqz p2, :cond_a

    .line 94
    invoke-virtual {p2}, Lcom/inmobi/media/P0;->e()V

    .line 95
    :cond_a
    iget-object p2, p0, Lcom/inmobi/media/T7;->M:Lcom/inmobi/media/A;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    new-instance v1, Lcom/inmobi/media/M7;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/media/M7;-><init>(Lcom/inmobi/media/T7;Lcom/inmobi/media/T7;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/inmobi/media/A;->a(ILcom/inmobi/media/G1;)V

    :cond_b
    :goto_4
    return-void
.end method

.method public final a(Z)V
    .locals 4

    .line 50
    iget-byte v0, p0, Lcom/inmobi/media/T7;->a:B

    if-nez v0, :cond_3

    .line 51
    invoke-virtual {p0}, Lcom/inmobi/media/a9;->k()Z

    move-result v0

    if-nez v0, :cond_3

    .line 52
    iget-object v0, p0, Lcom/inmobi/media/T7;->w:Lcom/inmobi/media/P0;

    if-eqz v0, :cond_3

    .line 53
    iget-object v1, v0, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    .line 54
    iget-object v1, v1, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_0

    .line 55
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    move-result-object v2

    .line 56
    const-string v3, "<get-TAG>(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/A5;

    const-string v3, "onAudioStateChanged"

    invoke-virtual {v1, v2, v3}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_0
    iget-object v1, v0, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    invoke-virtual {v1}, Lcom/inmobi/media/S0;->Z()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 58
    :cond_1
    iget-object v1, v0, Lcom/inmobi/media/P0;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/media/F0;

    if-eqz v1, :cond_2

    .line 59
    invoke-virtual {v1, p1}, Lcom/inmobi/media/F0;->a(Z)V

    goto :goto_0

    .line 60
    :cond_2
    iget-object p1, v0, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    .line 61
    iget-object p1, p1, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_3

    .line 62
    check-cast p1, Lcom/inmobi/media/A5;

    const-string v0, "InMobi"

    const-string v1, "Listener was garbage collected.Unable to give callback"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 2

    .line 48
    iget-boolean v0, p0, Lcom/inmobi/media/T7;->t:Z

    if-eqz v0, :cond_0

    return-void

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/a9;->getVideoContainerView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/inmobi/media/m9;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/inmobi/media/m9;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 50
    invoke-virtual {v0}, Lcom/inmobi/media/m9;->getVideoView()Lcom/inmobi/media/l9;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/inmobi/media/l9;->g()V

    .line 51
    :cond_2
    invoke-super {p0}, Lcom/inmobi/media/T7;->b()V

    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/media/T7;->r:Z

    if-nez v0, :cond_d

    .line 2
    iget-boolean v0, p0, Lcom/inmobi/media/T7;->t:Z

    if-nez v0, :cond_d

    .line 3
    instance-of v0, p1, Lcom/inmobi/media/l9;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/inmobi/media/T7;->r:Z

    .line 5
    iget-object v0, p0, Lcom/inmobi/media/T7;->h:Lcom/inmobi/media/e3;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/inmobi/media/e3;->a()V

    .line 7
    :cond_1
    check-cast p1, Lcom/inmobi/media/l9;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 8
    instance-of v0, p1, Lcom/inmobi/media/c9;

    if-eqz v0, :cond_d

    .line 9
    iget-object v0, p0, Lcom/inmobi/media/a9;->X:Ljava/lang/String;

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    check-cast p1, Lcom/inmobi/media/c9;

    .line 11
    iget-object v0, p1, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 12
    const-string v1, "didImpressionFire"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/Boolean;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    move-object v0, v3

    :goto_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_4

    .line 13
    :cond_3
    iget-object v0, p1, Lcom/inmobi/media/d8;->s:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {p0, p1}, Lcom/inmobi/media/a9;->j(Lcom/inmobi/media/c9;)Ljava/util/HashMap;

    move-result-object v2

    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v4, v3

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/inmobi/media/U8;

    .line 16
    iget-object v7, v5, Lcom/inmobi/media/U8;->b:Ljava/lang/String;

    .line 17
    const-string v8, "VideoImpression"

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 18
    iget-object v4, v5, Lcom/inmobi/media/U8;->d:Ljava/lang/String;

    .line 19
    const-string v7, "http"

    const/4 v8, 0x2

    invoke-static {v4, v7, v6, v8, v3}, Lkotlin/text/StringsKt;->V(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 20
    iget-object v4, p0, Lcom/inmobi/media/a9;->W:Lcom/inmobi/media/z5;

    invoke-static {v5, v2, v3, v4}, Lcom/inmobi/media/d8;->a(Lcom/inmobi/media/U8;Ljava/util/HashMap;Lcom/inmobi/media/L7;Lcom/inmobi/media/z5;)V

    .line 21
    :cond_5
    iget-object v4, v5, Lcom/inmobi/media/U8;->e:Ljava/util/HashMap;

    if-eqz v4, :cond_6

    .line 22
    const-string v5, "referencedEvents"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    :cond_6
    move-object v4, v3

    :goto_1
    instance-of v5, v4, Ljava/util/List;

    if-eqz v5, :cond_7

    check-cast v4, Ljava/util/List;

    goto :goto_2

    :cond_7
    move-object v4, v3

    :goto_2
    if-eqz v4, :cond_4

    .line 23
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 24
    iget-object v7, p0, Lcom/inmobi/media/a9;->W:Lcom/inmobi/media/z5;

    invoke-virtual {p1, v6, v2, v3, v7}, Lcom/inmobi/media/d8;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/L7;Lcom/inmobi/media/z5;)V

    goto :goto_3

    :cond_8
    const-string v0, "Impression"

    if-eqz v4, :cond_9

    .line 25
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 26
    :cond_9
    iget-object v4, p0, Lcom/inmobi/media/a9;->W:Lcom/inmobi/media/z5;

    const-string v5, "start"

    invoke-virtual {p1, v5, v2, v3, v4}, Lcom/inmobi/media/d8;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/L7;Lcom/inmobi/media/z5;)V

    .line 27
    iget-object v3, p0, Lcom/inmobi/media/T7;->O:Lcom/inmobi/media/L7;

    .line 28
    iget-object v4, p0, Lcom/inmobi/media/a9;->W:Lcom/inmobi/media/z5;

    invoke-virtual {p1, v0, v2, v3, v4}, Lcom/inmobi/media/d8;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/L7;Lcom/inmobi/media/z5;)V

    .line 29
    :cond_a
    iget-object v2, p0, Lcom/inmobi/media/T7;->b:Lcom/inmobi/media/p8;

    .line 30
    iget-object v2, v2, Lcom/inmobi/media/p8;->e:Lcom/inmobi/media/h8;

    if-eqz v2, :cond_b

    .line 31
    invoke-virtual {p0, p1}, Lcom/inmobi/media/a9;->j(Lcom/inmobi/media/c9;)Ljava/util/HashMap;

    move-result-object v3

    .line 32
    iget-object v4, p0, Lcom/inmobi/media/T7;->O:Lcom/inmobi/media/L7;

    .line 33
    iget-object v5, p0, Lcom/inmobi/media/a9;->W:Lcom/inmobi/media/z5;

    .line 34
    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/inmobi/media/d8;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/L7;Lcom/inmobi/media/z5;)V

    .line 35
    :cond_b
    iget-object p1, p1, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 36
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object p1, p0, Lcom/inmobi/media/T7;->p:Lcom/inmobi/media/We;

    if-eqz p1, :cond_c

    .line 38
    invoke-virtual {p1, v6}, Lcom/inmobi/media/Xe;->a(B)V

    .line 39
    :cond_c
    iget-object p1, p0, Lcom/inmobi/media/T7;->w:Lcom/inmobi/media/P0;

    if-eqz p1, :cond_d

    .line 40
    invoke-virtual {p1}, Lcom/inmobi/media/P0;->f()V

    :cond_d
    :goto_4
    return-void
.end method

.method public final b(Lcom/inmobi/media/c9;)V
    .locals 3

    const-string v0, "videoAsset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-boolean v0, p0, Lcom/inmobi/media/T7;->t:Z

    if-eqz v0, :cond_0

    return-void

    .line 53
    :cond_0
    iget-object v0, p1, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 54
    const-string v1, "didRequestFullScreen"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 55
    iget-object v0, p1, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 56
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p1, Lcom/inmobi/media/d8;->w:Lcom/inmobi/media/d8;

    if-eqz v0, :cond_2

    .line 58
    iget-object v0, v0, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 59
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/media/T7;->a()V

    .line 61
    iget-object p1, p1, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 62
    const-string v0, "isFullScreen"

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public final b(Lcom/inmobi/media/c9;Lcom/inmobi/media/l9;)V
    .locals 2

    const-string v0, "videoAsset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoView"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object p1, p0, Lcom/inmobi/media/a9;->W:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/inmobi/media/a9;->X:Ljava/lang/String;

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v1, "onVideoViewCreated"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_0
    iget-boolean p1, p0, Lcom/inmobi/media/T7;->D:Z

    .line 43
    invoke-virtual {p2, p1}, Lcom/inmobi/media/l9;->setIsLockScreen(Z)V

    .line 44
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p2, p1, Lcom/inmobi/media/m9;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/inmobi/media/m9;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 45
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/inmobi/media/a9;->Z:Ljava/lang/ref/WeakReference;

    .line 46
    invoke-virtual {p1}, Lcom/inmobi/media/m9;->getVideoView()Lcom/inmobi/media/l9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/inmobi/media/l9;->getMediaController()Lcom/inmobi/media/e9;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 47
    invoke-virtual {p1, p0}, Lcom/inmobi/media/e9;->setVideoAd(Lcom/inmobi/media/a9;)V

    :cond_2
    return-void
.end method

.method public final c(Lcom/inmobi/media/c9;)V
    .locals 5

    const-string v0, "videoAsset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/inmobi/media/a9;->W:Lcom/inmobi/media/z5;

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/inmobi/media/a9;->X:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v3, "Video completed; rewards, if any, will be unlocked and end-card displayed"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_0
    iget-object v0, p1, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 108
    const-string v2, "didSignalVideoCompleted"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 109
    :goto_0
    iget-object v2, p0, Lcom/inmobi/media/T7;->h:Lcom/inmobi/media/e3;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 110
    iget-object v4, v2, Lcom/inmobi/media/e3;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_2

    .line 111
    iget-object v4, v2, Lcom/inmobi/media/e3;->d:Lcom/inmobi/media/i3;

    .line 112
    iput v3, v4, Lcom/inmobi/media/i3;->i:I

    .line 113
    iget-object v2, v2, Lcom/inmobi/media/e3;->c:Ljava/lang/String;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 114
    :cond_2
    iget-object v2, p0, Lcom/inmobi/media/T7;->h:Lcom/inmobi/media/e3;

    .line 115
    invoke-virtual {v2}, Lcom/inmobi/media/e3;->b()V

    .line 116
    :cond_3
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 117
    iget-object v0, p0, Lcom/inmobi/media/a9;->W:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_8

    iget-object v2, p0, Lcom/inmobi/media/a9;->X:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v1, "Ignoring callback onAdRewardsUnlocked(), as it is only fired after first time video is played."

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 118
    :cond_4
    invoke-virtual {p0}, Lcom/inmobi/media/T7;->q()V

    .line 119
    iget-object v0, p0, Lcom/inmobi/media/T7;->w:Lcom/inmobi/media/P0;

    if-eqz v0, :cond_8

    .line 120
    iget-object v1, v0, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    .line 121
    iget-object v1, v1, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_5

    .line 122
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    move-result-object v2

    .line 123
    const-string v4, "<get-TAG>(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/A5;

    const-string v4, "onMediaPlaybackComplete"

    invoke-virtual {v1, v2, v4}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_5
    iget-object v1, v0, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    invoke-virtual {v1}, Lcom/inmobi/media/S0;->Z()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    .line 125
    :cond_6
    iget-object v1, v0, Lcom/inmobi/media/P0;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/media/F0;

    if-eqz v1, :cond_7

    .line 126
    invoke-virtual {v1}, Lcom/inmobi/media/F0;->f()V

    goto :goto_1

    .line 127
    :cond_7
    iget-object v0, v0, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    .line 128
    iget-object v0, v0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_8

    .line 129
    check-cast v0, Lcom/inmobi/media/A5;

    const-string v1, "InMobi"

    const-string v2, "Listener was garbage collected.Unable to give callback"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_8
    :goto_1
    iget-byte v0, p0, Lcom/inmobi/media/T7;->a:B

    if-ne v3, v0, :cond_9

    .line 131
    invoke-virtual {p0, p1}, Lcom/inmobi/media/T7;->b(Lcom/inmobi/media/d8;)V

    :cond_9
    return-void
.end method

.method public final c(Lcom/inmobi/media/d8;)V
    .locals 12

    const-string v0, "shouldAutoPlay"

    const-string v1, "SDK encountered unexpected error in handling the onVideoRequestedFullScreen event; "

    const-string v2, "Action 3 not valid for asset of type: "

    const-string v3, "asset"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-byte v3, p1, Lcom/inmobi/media/d8;->k:B

    if-eqz v3, :cond_25

    const-string v4, "VIDEO"

    const/4 v5, 0x1

    const/4 v6, 0x2

    const-string v7, "event"

    const/4 v8, 0x0

    const-string v9, "TAG"

    const-string v10, "Action 2 not valid for asset of type: "

    if-ne v3, v6, :cond_7

    .line 2
    :try_start_0
    iget-byte v0, p0, Lcom/inmobi/media/T7;->a:B

    if-ne v5, v0, :cond_4

    .line 3
    invoke-super {p0, p1}, Lcom/inmobi/media/T7;->c(Lcom/inmobi/media/d8;)V

    .line 4
    iget-object v0, p1, Lcom/inmobi/media/d8;->c:Ljava/lang/String;

    .line 5
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/inmobi/media/a9;->W:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/inmobi/media/a9;->X:Ljava/lang/String;

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    iget-object v3, p1, Lcom/inmobi/media/d8;->c:Ljava/lang/String;

    .line 8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    return-void

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/a9;->getVideoContainerView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/inmobi/media/m9;

    if-eqz v1, :cond_2

    move-object v8, v0

    check-cast v8, Lcom/inmobi/media/m9;

    :cond_2
    if-eqz v8, :cond_3

    .line 10
    invoke-virtual {v8}, Lcom/inmobi/media/m9;->getVideoView()Lcom/inmobi/media/l9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/media/l9;->c()V

    .line 11
    invoke-virtual {v8}, Lcom/inmobi/media/m9;->getVideoView()Lcom/inmobi/media/l9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/media/l9;->j()V

    .line 12
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/media/a9;->r()V

    goto/16 :goto_b

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/inmobi/media/T7;->w:Lcom/inmobi/media/P0;

    if-eqz v0, :cond_5

    .line 14
    invoke-virtual {v0}, Lcom/inmobi/media/P0;->h()V

    .line 15
    :cond_5
    invoke-virtual {p0}, Lcom/inmobi/media/a9;->r()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_b

    .line 16
    :goto_1
    iget-object v1, p0, Lcom/inmobi/media/a9;->W:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/inmobi/media/a9;->X:Ljava/lang/String;

    .line 17
    invoke-static {v2, v9, v10}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 18
    iget-object p1, p1, Lcom/inmobi/media/d8;->c:Ljava/lang/String;

    .line 19
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast v1, Lcom/inmobi/media/A5;

    invoke-virtual {v1, v2, p1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_6
    sget-object p1, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 21
    invoke-static {v0, v7}, Lcom/inmobi/media/w5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/f2;

    move-result-object p1

    .line 22
    sget-object v0, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    goto/16 :goto_b

    :cond_7
    const/4 v11, 0x3

    if-ne v3, v11, :cond_11

    .line 23
    :try_start_1
    iget-object v0, p1, Lcom/inmobi/media/d8;->c:Ljava/lang/String;

    .line 24
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 25
    iget-object v0, p0, Lcom/inmobi/media/a9;->W:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/inmobi/media/a9;->X:Ljava/lang/String;

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    iget-object p1, p1, Lcom/inmobi/media/d8;->c:Ljava/lang/String;

    .line 27
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v1, p1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_4

    :cond_8
    :goto_2
    return-void

    .line 28
    :cond_9
    iget-object p1, p0, Lcom/inmobi/media/T7;->H:Lcom/inmobi/media/ec;

    if-eqz p1, :cond_b

    .line 29
    iget-object v0, p1, Lcom/inmobi/media/ec;->i:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_a

    sget-object v1, Lcom/inmobi/media/ec;->a1:Ljava/lang/String;

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "replayToInterActive"

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_a
    const-string v0, "window.imraid.broadcastEvent(\'replay\');"

    invoke-virtual {p1, v0}, Lcom/inmobi/media/ec;->c(Ljava/lang/String;)V

    .line 31
    :cond_b
    invoke-virtual {p0}, Lcom/inmobi/media/T7;->g()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 32
    invoke-static {p1}, Lcom/inmobi/media/T7;->a(Landroid/view/View;)Lcom/inmobi/media/T8;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 33
    invoke-virtual {v0}, Lcom/inmobi/media/T8;->d()V

    .line 34
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_d

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_3

    :cond_d
    move-object v0, v8

    :goto_3
    if-eqz v0, :cond_e

    .line 35
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 36
    :cond_e
    invoke-virtual {p0}, Lcom/inmobi/media/a9;->getVideoContainerView()Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Lcom/inmobi/media/m9;

    if-eqz v0, :cond_f

    move-object v8, p1

    check-cast v8, Lcom/inmobi/media/m9;

    :cond_f
    if-eqz v8, :cond_25

    .line 37
    invoke-virtual {v8}, Lcom/inmobi/media/m9;->getVideoView()Lcom/inmobi/media/l9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/inmobi/media/l9;->k()V

    .line 38
    invoke-virtual {v8}, Lcom/inmobi/media/m9;->getVideoView()Lcom/inmobi/media/l9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/inmobi/media/l9;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_b

    .line 39
    :goto_4
    iget-object v0, p0, Lcom/inmobi/media/a9;->W:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/inmobi/media/a9;->X:Ljava/lang/String;

    .line 40
    const-string v2, "Encountered unexpected error in handling replay action on video: "

    invoke-static {v1, v9, v2}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 41
    invoke-static {p1, v2}, Lcom/inmobi/media/rf;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    .line 42
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_10
    iget-object v0, p0, Lcom/inmobi/media/a9;->Y:Ljava/lang/String;

    const-string v1, "SDK encountered unexpected error in replaying video"

    invoke-static {v6, v0, v1}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 44
    sget-object v0, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 45
    invoke-static {p1, v7}, Lcom/inmobi/media/w5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/f2;

    move-result-object p1

    .line 46
    sget-object v0, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    goto/16 :goto_b

    :cond_11
    if-ne v3, v5, :cond_12

    .line 47
    invoke-super {p0, p1}, Lcom/inmobi/media/T7;->c(Lcom/inmobi/media/d8;)V

    goto/16 :goto_b

    :cond_12
    const/4 v2, 0x4

    if-ne v3, v2, :cond_18

    .line 48
    :try_start_2
    iget-byte p1, p0, Lcom/inmobi/media/T7;->a:B

    if-nez p1, :cond_16

    .line 49
    invoke-virtual {p0}, Lcom/inmobi/media/a9;->getVideoContainerView()Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Lcom/inmobi/media/m9;

    if-eqz v0, :cond_13

    check-cast p1, Lcom/inmobi/media/m9;

    goto :goto_5

    :catch_2
    move-exception p1

    goto :goto_6

    :cond_13
    move-object p1, v8

    :goto_5
    if-eqz p1, :cond_25

    .line 50
    invoke-virtual {p1}, Lcom/inmobi/media/m9;->getVideoView()Lcom/inmobi/media/l9;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/inmobi/media/c9;

    if-eqz v2, :cond_14

    move-object v8, v0

    check-cast v8, Lcom/inmobi/media/c9;

    .line 52
    :cond_14
    invoke-virtual {p1}, Lcom/inmobi/media/l9;->getState()I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eq v0, v5, :cond_25

    if-eqz v8, :cond_25

    .line 53
    :try_start_3
    invoke-virtual {p0, v8, p1}, Lcom/inmobi/media/a9;->a(Lcom/inmobi/media/c9;Lcom/inmobi/media/l9;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_b

    :catch_3
    move-exception p1

    .line 54
    :try_start_4
    iget-object v0, p0, Lcom/inmobi/media/a9;->W:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_15

    iget-object v2, p0, Lcom/inmobi/media/a9;->X:Ljava/lang/String;

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_15
    sget-object v0, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    new-instance v0, Lcom/inmobi/media/f2;

    invoke-direct {v0, p1}, Lcom/inmobi/media/f2;-><init>(Ljava/lang/Throwable;)V

    .line 58
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    sget-object p1, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {p1, v0}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    goto/16 :goto_b

    .line 60
    :cond_16
    iget-object p1, p0, Lcom/inmobi/media/a9;->W:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_25

    iget-object v0, p0, Lcom/inmobi/media/a9;->X:Ljava/lang/String;

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Invalid action! Online inline videos can be expanded to fullscreen!"

    check-cast p1, Lcom/inmobi/media/A5;

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_b

    .line 61
    :goto_6
    iget-object v0, p0, Lcom/inmobi/media/a9;->W:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/inmobi/media/a9;->X:Ljava/lang/String;

    .line 62
    const-string v2, "Encountered unexpected error in handling fullscreen action on video: "

    invoke-static {v1, v9, v2}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 63
    invoke-static {p1, v2}, Lcom/inmobi/media/rf;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    .line 64
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_17
    iget-object v0, p0, Lcom/inmobi/media/a9;->Y:Ljava/lang/String;

    const-string v1, "SDK encountered unexpected error in expanding video to fullscreen"

    invoke-static {v6, v0, v1}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object v0, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 67
    invoke-static {p1, v7}, Lcom/inmobi/media/w5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/f2;

    move-result-object p1

    .line 68
    sget-object v0, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    goto/16 :goto_b

    :cond_18
    const/4 v1, 0x5

    if-ne v3, v1, :cond_1d

    .line 69
    :try_start_5
    invoke-virtual {p0}, Lcom/inmobi/media/a9;->getVideoContainerView()Landroid/view/View;

    move-result-object p1

    instance-of v1, p1, Lcom/inmobi/media/m9;

    if-eqz v1, :cond_19

    check-cast p1, Lcom/inmobi/media/m9;

    goto :goto_7

    :catch_4
    move-exception p1

    goto :goto_8

    :cond_19
    move-object p1, v8

    :goto_7
    if-eqz p1, :cond_25

    .line 70
    invoke-virtual {p1}, Lcom/inmobi/media/m9;->getVideoView()Lcom/inmobi/media/l9;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/inmobi/media/c9;

    if-eqz v2, :cond_1a

    move-object v8, v1

    check-cast v8, Lcom/inmobi/media/c9;

    :cond_1a
    if-eqz v8, :cond_1b

    .line 71
    iget-object v1, v8, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 72
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v1, v8, Lcom/inmobi/media/d8;->w:Lcom/inmobi/media/d8;

    if-eqz v1, :cond_1b

    .line 74
    iget-object v1, v1, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 75
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_1b
    invoke-virtual {p1}, Lcom/inmobi/media/m9;->getVideoView()Lcom/inmobi/media/l9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/inmobi/media/l9;->start()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_b

    .line 77
    :goto_8
    iget-object v0, p0, Lcom/inmobi/media/a9;->W:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lcom/inmobi/media/a9;->X:Ljava/lang/String;

    .line 78
    const-string v2, "Encountered unexpected error in handling play action on video: "

    invoke-static {v1, v9, v2}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 79
    invoke-static {p1, v2}, Lcom/inmobi/media/rf;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    .line 80
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_1c
    iget-object v0, p0, Lcom/inmobi/media/a9;->Y:Ljava/lang/String;

    const-string v1, "SDK encountered unexpected error in playing video"

    invoke-static {v6, v0, v1}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 82
    sget-object v0, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 83
    invoke-static {p1, v7}, Lcom/inmobi/media/w5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/f2;

    move-result-object p1

    .line 84
    sget-object v0, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    goto/16 :goto_b

    .line 85
    :cond_1d
    :try_start_6
    iget-byte v0, p0, Lcom/inmobi/media/T7;->a:B

    if-ne v5, v0, :cond_22

    .line 86
    invoke-super {p0, p1}, Lcom/inmobi/media/T7;->c(Lcom/inmobi/media/d8;)V

    .line 87
    iget-object v0, p1, Lcom/inmobi/media/d8;->c:Ljava/lang/String;

    .line 88
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 89
    iget-object v0, p0, Lcom/inmobi/media/a9;->W:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_1e

    iget-object v1, p0, Lcom/inmobi/media/a9;->X:Ljava/lang/String;

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    iget-object v3, p1, Lcom/inmobi/media/d8;->c:Ljava/lang/String;

    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :catch_5
    move-exception v0

    goto :goto_a

    :cond_1e
    :goto_9
    return-void

    .line 92
    :cond_1f
    invoke-virtual {p0}, Lcom/inmobi/media/a9;->getVideoContainerView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/inmobi/media/m9;

    if-eqz v1, :cond_20

    move-object v8, v0

    check-cast v8, Lcom/inmobi/media/m9;

    :cond_20
    if-eqz v8, :cond_21

    .line 93
    invoke-virtual {v8}, Lcom/inmobi/media/m9;->getVideoView()Lcom/inmobi/media/l9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/media/l9;->c()V

    .line 94
    invoke-virtual {v8}, Lcom/inmobi/media/m9;->getVideoView()Lcom/inmobi/media/l9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/media/l9;->j()V

    .line 95
    :cond_21
    invoke-virtual {p0}, Lcom/inmobi/media/a9;->r()V

    goto :goto_b

    .line 96
    :cond_22
    iget-object v0, p0, Lcom/inmobi/media/T7;->w:Lcom/inmobi/media/P0;

    if-eqz v0, :cond_23

    .line 97
    invoke-virtual {v0}, Lcom/inmobi/media/P0;->h()V

    .line 98
    :cond_23
    invoke-virtual {p0}, Lcom/inmobi/media/a9;->r()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_b

    .line 99
    :goto_a
    iget-object v1, p0, Lcom/inmobi/media/a9;->W:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_24

    iget-object v2, p0, Lcom/inmobi/media/a9;->X:Ljava/lang/String;

    .line 100
    invoke-static {v2, v9, v10}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 101
    iget-object p1, p1, Lcom/inmobi/media/d8;->c:Ljava/lang/String;

    .line 102
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast v1, Lcom/inmobi/media/A5;

    invoke-virtual {v1, v2, p1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_24
    sget-object p1, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 104
    invoke-static {v0, v7}, Lcom/inmobi/media/w5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/f2;

    move-result-object p1

    .line 105
    sget-object v0, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    :cond_25
    :goto_b
    return-void
.end method

.method public final d(Lcom/inmobi/media/c9;)V
    .locals 5

    .line 1
    const-string v0, "videoAsset"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/inmobi/media/a9;->W:Lcom/inmobi/media/z5;

    .line 7
    .line 8
    const-string v1, "TAG"

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Lcom/inmobi/media/a9;->X:Ljava/lang/String;

    .line 13
    .line 14
    const-string v3, "Firing Q4 beacons for completion at "

    .line 15
    .line 16
    invoke-static {v2, v1, v3}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    iget v4, p1, Lcom/inmobi/media/c9;->D:I

    .line 21
    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v0, Lcom/inmobi/media/A5;

    .line 30
    .line 31
    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v0, p1, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 35
    .line 36
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 37
    .line 38
    const-string v3, "didQ4Fire"

    .line 39
    .line 40
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/inmobi/media/a9;->j(Lcom/inmobi/media/c9;)Ljava/util/HashMap;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v2, p0, Lcom/inmobi/media/a9;->W:Lcom/inmobi/media/z5;

    .line 48
    .line 49
    const-string v3, "complete"

    .line 50
    .line 51
    const/4 v4, 0x0

    .line 52
    invoke-virtual {p1, v3, v0, v4, v2}, Lcom/inmobi/media/d8;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/L7;Lcom/inmobi/media/z5;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/inmobi/media/T7;->p:Lcom/inmobi/media/We;

    .line 56
    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    const/16 v0, 0xc

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Lcom/inmobi/media/Xe;->a(B)V

    .line 62
    .line 63
    .line 64
    :cond_1
    iget-object p1, p0, Lcom/inmobi/media/a9;->W:Lcom/inmobi/media/z5;

    .line 65
    .line 66
    if-eqz p1, :cond_2

    .line 67
    .line 68
    iget-object v0, p0, Lcom/inmobi/media/a9;->X:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    check-cast p1, Lcom/inmobi/media/A5;

    .line 74
    .line 75
    const-string v1, "onVideoQuartileEvent(Q4)"

    .line 76
    .line 77
    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :cond_2
    return-void
.end method

.method public final e(Lcom/inmobi/media/c9;)V
    .locals 4

    .line 1
    const-string v0, "videoAsset"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/inmobi/media/T7;->t:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p1, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "lastMediaVolume"

    .line 19
    .line 20
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/inmobi/media/a9;->j(Lcom/inmobi/media/c9;)Ljava/util/HashMap;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/inmobi/media/a9;->W:Lcom/inmobi/media/z5;

    .line 28
    .line 29
    const-string v2, "mute"

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-virtual {p1, v2, v0, v3, v1}, Lcom/inmobi/media/d8;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/L7;Lcom/inmobi/media/z5;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/inmobi/media/a9;->W:Lcom/inmobi/media/z5;

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/inmobi/media/a9;->X:Ljava/lang/String;

    .line 40
    .line 41
    const-string v1, "TAG"

    .line 42
    .line 43
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    check-cast p1, Lcom/inmobi/media/A5;

    .line 47
    .line 48
    const-string v1, "onVideoMuted"

    .line 49
    .line 50
    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-object p1, p0, Lcom/inmobi/media/T7;->p:Lcom/inmobi/media/We;

    .line 54
    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    const/16 v0, 0xd

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Lcom/inmobi/media/Xe;->a(B)V

    .line 60
    .line 61
    .line 62
    :cond_2
    return-void
.end method

.method public final f(Lcom/inmobi/media/c9;)V
    .locals 4

    .line 1
    const-string v0, "videoAsset"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/inmobi/media/T7;->t:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/T7;->g()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/inmobi/media/T7;->a(Landroid/view/View;)Lcom/inmobi/media/T8;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/inmobi/media/T8;->b()V

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {p0, p1}, Lcom/inmobi/media/a9;->j(Lcom/inmobi/media/c9;)Ljava/util/HashMap;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/inmobi/media/a9;->W:Lcom/inmobi/media/z5;

    .line 29
    .line 30
    const-string v2, "pause"

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-virtual {p1, v2, v0, v3, v1}, Lcom/inmobi/media/d8;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/L7;Lcom/inmobi/media/z5;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/inmobi/media/a9;->W:Lcom/inmobi/media/z5;

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    iget-object v0, p0, Lcom/inmobi/media/a9;->X:Ljava/lang/String;

    .line 41
    .line 42
    const-string v1, "TAG"

    .line 43
    .line 44
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    check-cast p1, Lcom/inmobi/media/A5;

    .line 48
    .line 49
    const-string v1, "onVideoPaused"

    .line 50
    .line 51
    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_2
    iget-object p1, p0, Lcom/inmobi/media/T7;->p:Lcom/inmobi/media/We;

    .line 55
    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    const/4 v0, 0x7

    .line 59
    invoke-virtual {p1, v0}, Lcom/inmobi/media/Xe;->a(B)V

    .line 60
    .line 61
    .line 62
    :cond_3
    return-void
.end method

.method public final g(Lcom/inmobi/media/c9;)V
    .locals 7

    .line 1
    const-string v0, "videoAsset"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/inmobi/media/T7;->t:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/a9;->W:Lcom/inmobi/media/z5;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lcom/inmobi/media/a9;->X:Ljava/lang/String;

    .line 16
    .line 17
    const-string v2, "TAG"

    .line 18
    .line 19
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    check-cast v0, Lcom/inmobi/media/A5;

    .line 23
    .line 24
    const-string v2, "onVideoPlayed"

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-byte v0, p0, Lcom/inmobi/media/T7;->a:B

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    if-nez v0, :cond_b

    .line 33
    .line 34
    iget-object v0, p1, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 35
    .line 36
    const-string v2, "currentMediaVolume"

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    instance-of v3, v0, Ljava/lang/Integer;

    .line 43
    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    check-cast v0, Ljava/lang/Integer;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    move-object v0, v1

    .line 50
    :goto_0
    const/4 v3, 0x0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    goto :goto_1

    .line 58
    :cond_3
    move v0, v3

    .line 59
    :goto_1
    iget-object v4, p1, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 60
    .line 61
    const-string v5, "lastMediaVolume"

    .line 62
    .line 63
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    instance-of v6, v4, Ljava/lang/Integer;

    .line 68
    .line 69
    if-eqz v6, :cond_4

    .line 70
    .line 71
    check-cast v4, Ljava/lang/Integer;

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_4
    move-object v4, v1

    .line 75
    :goto_2
    if-eqz v4, :cond_5

    .line 76
    .line 77
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    goto :goto_3

    .line 82
    :cond_5
    move v4, v3

    .line 83
    :goto_3
    if-lez v0, :cond_6

    .line 84
    .line 85
    if-nez v4, :cond_6

    .line 86
    .line 87
    invoke-virtual {p0, p1}, Lcom/inmobi/media/a9;->i(Lcom/inmobi/media/c9;)V

    .line 88
    .line 89
    .line 90
    :cond_6
    iget-object v0, p1, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 91
    .line 92
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    instance-of v2, v0, Ljava/lang/Integer;

    .line 97
    .line 98
    if-eqz v2, :cond_7

    .line 99
    .line 100
    check-cast v0, Ljava/lang/Integer;

    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_7
    move-object v0, v1

    .line 104
    :goto_4
    if-eqz v0, :cond_8

    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    goto :goto_5

    .line 111
    :cond_8
    move v0, v3

    .line 112
    :goto_5
    iget-object v2, p1, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 113
    .line 114
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    instance-of v4, v2, Ljava/lang/Integer;

    .line 119
    .line 120
    if-eqz v4, :cond_9

    .line 121
    .line 122
    check-cast v2, Ljava/lang/Integer;

    .line 123
    .line 124
    goto :goto_6

    .line 125
    :cond_9
    move-object v2, v1

    .line 126
    :goto_6
    if-eqz v2, :cond_a

    .line 127
    .line 128
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    :cond_a
    if-nez v0, :cond_b

    .line 133
    .line 134
    if-lez v3, :cond_b

    .line 135
    .line 136
    invoke-virtual {p0, p1}, Lcom/inmobi/media/a9;->e(Lcom/inmobi/media/c9;)V

    .line 137
    .line 138
    .line 139
    :cond_b
    iget-object v0, p1, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 140
    .line 141
    const-string v2, "didStartPlaying"

    .line 142
    .line 143
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    instance-of v3, v0, Ljava/lang/Boolean;

    .line 148
    .line 149
    if-eqz v3, :cond_c

    .line 150
    .line 151
    move-object v1, v0

    .line 152
    check-cast v1, Ljava/lang/Boolean;

    .line 153
    .line 154
    :cond_c
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 155
    .line 156
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_d

    .line 161
    .line 162
    iget-object p1, p1, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 163
    .line 164
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 165
    .line 166
    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0}, Lcom/inmobi/media/a9;->getViewableAd()Lcom/inmobi/media/Xe;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    if-eqz p1, :cond_d

    .line 174
    .line 175
    const/4 v0, 0x6

    .line 176
    invoke-virtual {p1, v0}, Lcom/inmobi/media/Xe;->a(B)V

    .line 177
    .line 178
    .line 179
    :cond_d
    return-void
.end method

.method public final getCreativeId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/a9;->V:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFullScreenEventsListener()Lcom/inmobi/media/w;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/a9;->a0:Lcom/inmobi/media/Z8;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getImpressionId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/a9;->U:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getVideoContainerView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/a9;->Z:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/View;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method

.method public final getViewableAd()Lcom/inmobi/media/Xe;
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/T7;->j()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v7

    .line 5
    iget-object v0, p0, Lcom/inmobi/media/T7;->p:Lcom/inmobi/media/We;

    .line 6
    .line 7
    if-nez v0, :cond_d

    .line 8
    .line 9
    if-eqz v7, :cond_d

    .line 10
    .line 11
    iget-object v0, p0, Lcom/inmobi/media/T7;->j:Lcom/inmobi/media/z5;

    .line 12
    .line 13
    const-string v8, "TAG"

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/inmobi/media/T7;->m:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    check-cast v0, Lcom/inmobi/media/A5;

    .line 23
    .line 24
    const-string v2, "fireLoadedAndServedBeacons"

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/T7;->b:Lcom/inmobi/media/p8;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/inmobi/media/p8;->e:Lcom/inmobi/media/h8;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lcom/inmobi/media/T7;->a(Lcom/inmobi/media/d8;)Ljava/util/HashMap;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const/4 v1, 0x1

    .line 40
    invoke-virtual {p0, v1, v0}, Lcom/inmobi/media/T7;->a(BLjava/util/Map;)V

    .line 41
    .line 42
    .line 43
    const/4 v1, 0x2

    .line 44
    invoke-virtual {p0, v1, v0}, Lcom/inmobi/media/T7;->a(BLjava/util/Map;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    new-instance v0, Lcom/inmobi/media/N5;

    .line 48
    .line 49
    new-instance v1, Lcom/inmobi/media/cf;

    .line 50
    .line 51
    iget-object v2, p0, Lcom/inmobi/media/a9;->W:Lcom/inmobi/media/z5;

    .line 52
    .line 53
    invoke-direct {v1, p0, v2}, Lcom/inmobi/media/cf;-><init>(Lcom/inmobi/media/a9;Lcom/inmobi/media/z5;)V

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Lcom/inmobi/media/a9;->W:Lcom/inmobi/media/z5;

    .line 57
    .line 58
    invoke-direct {v0, p0, v1, v2}, Lcom/inmobi/media/N5;-><init>(Lcom/inmobi/media/a9;Lcom/inmobi/media/cf;Lcom/inmobi/media/z5;)V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Lcom/inmobi/media/T7;->p:Lcom/inmobi/media/We;

    .line 62
    .line 63
    iget-object v0, p0, Lcom/inmobi/media/T7;->d:Ljava/util/Set;

    .line 64
    .line 65
    if-eqz v0, :cond_d

    .line 66
    .line 67
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v9

    .line 71
    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_d

    .line 76
    .line 77
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Lcom/inmobi/media/qe;

    .line 82
    .line 83
    :try_start_0
    iget-byte v1, v0, Lcom/inmobi/media/qe;->a:B

    .line 84
    .line 85
    const/4 v2, 0x3

    .line 86
    if-ne v1, v2, :cond_2

    .line 87
    .line 88
    iget-object v1, v0, Lcom/inmobi/media/qe;->b:Ljava/util/HashMap;

    .line 89
    .line 90
    const-string v2, "omidAdSession"

    .line 91
    .line 92
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    instance-of v2, v1, Lcom/inmobi/media/ga;

    .line 97
    .line 98
    const/4 v3, 0x0

    .line 99
    if-eqz v2, :cond_3

    .line 100
    .line 101
    check-cast v1, Lcom/inmobi/media/ga;

    .line 102
    .line 103
    move-object v4, v1

    .line 104
    goto :goto_1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    goto/16 :goto_8

    .line 107
    .line 108
    :cond_3
    move-object v4, v3

    .line 109
    :goto_1
    iget-object v1, v0, Lcom/inmobi/media/qe;->b:Ljava/util/HashMap;

    .line 110
    .line 111
    const-string v2, "videoAutoPlay"

    .line 112
    .line 113
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    instance-of v2, v1, Ljava/lang/Boolean;

    .line 118
    .line 119
    if-eqz v2, :cond_4

    .line 120
    .line 121
    check-cast v1, Ljava/lang/Boolean;

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_4
    move-object v1, v3

    .line 125
    :goto_2
    const/4 v2, 0x0

    .line 126
    if-eqz v1, :cond_5

    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    goto :goto_3

    .line 133
    :cond_5
    move v1, v2

    .line 134
    :goto_3
    iget-object v5, v0, Lcom/inmobi/media/qe;->b:Ljava/util/HashMap;

    .line 135
    .line 136
    const-string v6, "videoSkippable"

    .line 137
    .line 138
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    instance-of v6, v5, Ljava/lang/Boolean;

    .line 143
    .line 144
    if-eqz v6, :cond_6

    .line 145
    .line 146
    check-cast v5, Ljava/lang/Boolean;

    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_6
    move-object v5, v3

    .line 150
    :goto_4
    if-eqz v5, :cond_7

    .line 151
    .line 152
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    goto :goto_5

    .line 157
    :cond_7
    move v5, v2

    .line 158
    :goto_5
    iget-object v0, v0, Lcom/inmobi/media/qe;->b:Ljava/util/HashMap;

    .line 159
    .line 160
    const-string v6, "videoSkipOffset"

    .line 161
    .line 162
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    instance-of v6, v0, Ljava/lang/Integer;

    .line 167
    .line 168
    if-eqz v6, :cond_8

    .line 169
    .line 170
    move-object v3, v0

    .line 171
    check-cast v3, Ljava/lang/Integer;

    .line 172
    .line 173
    :cond_8
    if-eqz v3, :cond_9

    .line 174
    .line 175
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    :cond_9
    if-eqz v5, :cond_a

    .line 180
    .line 181
    int-to-float v0, v2

    .line 182
    sget-object v2, Lcom/iab/omid/library/inmobi/adsession/media/Position;->STANDALONE:Lcom/iab/omid/library/inmobi/adsession/media/Position;

    .line 183
    .line 184
    invoke-static {v0, v1, v2}, Lcom/iab/omid/library/inmobi/adsession/media/VastProperties;->createVastPropertiesForSkippableMedia(FZLcom/iab/omid/library/inmobi/adsession/media/Position;)Lcom/iab/omid/library/inmobi/adsession/media/VastProperties;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    :goto_6
    move-object v5, v0

    .line 189
    goto :goto_7

    .line 190
    :cond_a
    sget-object v0, Lcom/iab/omid/library/inmobi/adsession/media/Position;->STANDALONE:Lcom/iab/omid/library/inmobi/adsession/media/Position;

    .line 191
    .line 192
    invoke-static {v1, v0}, Lcom/iab/omid/library/inmobi/adsession/media/VastProperties;->createVastPropertiesForNonSkippableMedia(ZLcom/iab/omid/library/inmobi/adsession/media/Position;)Lcom/iab/omid/library/inmobi/adsession/media/VastProperties;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    goto :goto_6

    .line 197
    :goto_7
    iget-object v2, p0, Lcom/inmobi/media/T7;->p:Lcom/inmobi/media/We;

    .line 198
    .line 199
    if-eqz v4, :cond_b

    .line 200
    .line 201
    if-eqz v2, :cond_b

    .line 202
    .line 203
    new-instance v10, Lcom/inmobi/media/ma;

    .line 204
    .line 205
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    iget-object v6, p0, Lcom/inmobi/media/a9;->W:Lcom/inmobi/media/z5;

    .line 209
    .line 210
    move-object v0, v10

    .line 211
    move-object v1, v7

    .line 212
    move-object v3, p0

    .line 213
    invoke-direct/range {v0 .. v6}, Lcom/inmobi/media/ma;-><init>(Landroid/content/Context;Lcom/inmobi/media/We;Lcom/inmobi/media/a9;Lcom/inmobi/media/ga;Lcom/iab/omid/library/inmobi/adsession/media/VastProperties;Lcom/inmobi/media/z5;)V

    .line 214
    .line 215
    .line 216
    iput-object v10, p0, Lcom/inmobi/media/T7;->p:Lcom/inmobi/media/We;

    .line 217
    .line 218
    goto/16 :goto_0

    .line 219
    .line 220
    :cond_b
    iget-object v0, p0, Lcom/inmobi/media/a9;->W:Lcom/inmobi/media/z5;

    .line 221
    .line 222
    if-eqz v0, :cond_2

    .line 223
    .line 224
    iget-object v1, p0, Lcom/inmobi/media/a9;->X:Ljava/lang/String;

    .line 225
    .line 226
    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    const-string v2, "Did not find a OMID video ad session; the OMID decorator will not be applied."

    .line 230
    .line 231
    check-cast v0, Lcom/inmobi/media/A5;

    .line 232
    .line 233
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .line 235
    .line 236
    goto/16 :goto_0

    .line 237
    .line 238
    :goto_8
    iget-object v1, p0, Lcom/inmobi/media/a9;->W:Lcom/inmobi/media/z5;

    .line 239
    .line 240
    if-eqz v1, :cond_c

    .line 241
    .line 242
    iget-object v2, p0, Lcom/inmobi/media/a9;->X:Ljava/lang/String;

    .line 243
    .line 244
    const-string v3, "Exception occurred while creating the video viewable ad : "

    .line 245
    .line 246
    invoke-static {v2, v8, v3}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    invoke-static {v0, v3}, Lcom/inmobi/media/rf;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    check-cast v1, Lcom/inmobi/media/A5;

    .line 255
    .line 256
    invoke-virtual {v1, v2, v3}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    :cond_c
    sget-object v1, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 260
    .line 261
    const-string v1, "event"

    .line 262
    .line 263
    invoke-static {v0, v1}, Lcom/inmobi/media/w5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/f2;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    sget-object v1, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    .line 268
    .line 269
    invoke-virtual {v1, v0}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    .line 270
    .line 271
    .line 272
    goto/16 :goto_0

    .line 273
    .line 274
    :cond_d
    iget-object v0, p0, Lcom/inmobi/media/T7;->p:Lcom/inmobi/media/We;

    .line 275
    .line 276
    return-object v0
.end method

.method public final h(Lcom/inmobi/media/c9;)V
    .locals 4

    .line 1
    const-string v0, "videoAsset"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/inmobi/media/T7;->t:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/T7;->g()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/inmobi/media/T7;->a(Landroid/view/View;)Lcom/inmobi/media/T8;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/inmobi/media/T8;->c()V

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {p0, p1}, Lcom/inmobi/media/a9;->j(Lcom/inmobi/media/c9;)Ljava/util/HashMap;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/inmobi/media/a9;->W:Lcom/inmobi/media/z5;

    .line 29
    .line 30
    const-string v2, "resume"

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-virtual {p1, v2, v0, v3, v1}, Lcom/inmobi/media/d8;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/L7;Lcom/inmobi/media/z5;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/inmobi/media/a9;->W:Lcom/inmobi/media/z5;

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    iget-object v0, p0, Lcom/inmobi/media/a9;->X:Ljava/lang/String;

    .line 41
    .line 42
    const-string v1, "TAG"

    .line 43
    .line 44
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    check-cast p1, Lcom/inmobi/media/A5;

    .line 48
    .line 49
    const-string v1, "onVideoResumed"

    .line 50
    .line 51
    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_2
    iget-object p1, p0, Lcom/inmobi/media/T7;->p:Lcom/inmobi/media/We;

    .line 55
    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    const/16 v0, 0x8

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Lcom/inmobi/media/Xe;->a(B)V

    .line 61
    .line 62
    .line 63
    :cond_3
    return-void
.end method

.method public final i()Lcom/inmobi/media/ef;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/a9;->b0:Lcom/inmobi/media/Y8;

    return-object v0
.end method

.method public final i(Lcom/inmobi/media/c9;)V
    .locals 4

    const-string v0, "videoAsset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/inmobi/media/T7;->t:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    const/16 v1, 0xf

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "lastMediaVolume"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0, p1}, Lcom/inmobi/media/a9;->j(Lcom/inmobi/media/c9;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/media/a9;->W:Lcom/inmobi/media/z5;

    .line 6
    const-string v2, "unmute"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v3, v1}, Lcom/inmobi/media/d8;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/L7;Lcom/inmobi/media/z5;)V

    .line 7
    iget-object p1, p0, Lcom/inmobi/media/a9;->W:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/inmobi/media/a9;->X:Ljava/lang/String;

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v1, "onVideoUnMuted"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/inmobi/media/T7;->p:Lcom/inmobi/media/We;

    if-eqz p1, :cond_2

    const/16 v0, 0xe

    .line 9
    invoke-virtual {p1, v0}, Lcom/inmobi/media/Xe;->a(B)V

    :cond_2
    return-void
.end method

.method public final j(Lcom/inmobi/media/c9;)Ljava/util/HashMap;
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p1, Lcom/inmobi/media/d8;->r:Lcom/inmobi/media/h8;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v1, v2

    .line 9
    :goto_0
    new-instance v3, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v4, p0, Lcom/inmobi/media/a9;->Z:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    if-eqz v4, :cond_1

    .line 17
    .line 18
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    check-cast v4, Landroid/view/View;

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move-object v4, v2

    .line 26
    :goto_1
    instance-of v5, v4, Lcom/inmobi/media/m9;

    .line 27
    .line 28
    if-eqz v5, :cond_2

    .line 29
    .line 30
    check-cast v4, Lcom/inmobi/media/m9;

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_2
    move-object v4, v2

    .line 34
    :goto_2
    const/16 v5, 0x3e8

    .line 35
    .line 36
    if-eqz v4, :cond_3

    .line 37
    .line 38
    invoke-virtual {v4}, Lcom/inmobi/media/m9;->getVideoView()Lcom/inmobi/media/l9;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    if-eqz v4, :cond_3

    .line 43
    .line 44
    invoke-virtual {v4}, Lcom/inmobi/media/l9;->getDuration()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    int-to-double v6, v4

    .line 49
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 50
    .line 51
    mul-double/2addr v6, v8

    .line 52
    int-to-double v8, v5

    .line 53
    div-double/2addr v6, v8

    .line 54
    invoke-static {v6, v7}, Lbt/a;->b(D)I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    const-string v6, "$MD"

    .line 63
    .line 64
    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    check-cast v4, Ljava/lang/String;

    .line 69
    .line 70
    :cond_3
    const-string v4, "[ERRORCODE]"

    .line 71
    .line 72
    const-string v6, "405"

    .line 73
    .line 74
    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    new-instance v4, Ljava/security/SecureRandom;

    .line 78
    .line 79
    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    .line 80
    .line 81
    .line 82
    new-instance v6, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const/4 v7, 0x0

    .line 88
    move v8, v7

    .line 89
    :goto_3
    const v9, 0x7fffffff

    .line 90
    .line 91
    .line 92
    if-nez v8, :cond_4

    .line 93
    .line 94
    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    and-int/2addr v8, v9

    .line 99
    rem-int/lit8 v8, v8, 0xa

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_4
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    move v8, v0

    .line 106
    :goto_4
    const/16 v10, 0x8

    .line 107
    .line 108
    if-ge v8, v10, :cond_5

    .line 109
    .line 110
    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    .line 111
    .line 112
    .line 113
    move-result v10

    .line 114
    and-int/2addr v10, v9

    .line 115
    rem-int/lit8 v10, v10, 0xa

    .line 116
    .line 117
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    add-int/2addr v8, v0

    .line 121
    goto :goto_4

    .line 122
    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    const-string v4, "toString(...)"

    .line 127
    .line 128
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    const-string v4, "[CACHEBUSTING]"

    .line 132
    .line 133
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Lcom/inmobi/media/c9;->d()Lcom/inmobi/media/Ve;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    if-eqz v0, :cond_6

    .line 141
    .line 142
    check-cast v0, Lcom/inmobi/media/Ue;

    .line 143
    .line 144
    invoke-virtual {v0}, Lcom/inmobi/media/Ue;->b()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    if-eqz v0, :cond_6

    .line 149
    .line 150
    const-string v4, "[ASSETURI]"

    .line 151
    .line 152
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    check-cast v0, Ljava/lang/String;

    .line 157
    .line 158
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 159
    .line 160
    .line 161
    move-result-wide v8

    .line 162
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    const-string v4, "$TS"

    .line 167
    .line 168
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    iget-object p1, p1, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 172
    .line 173
    const-string v0, "seekPosition"

    .line 174
    .line 175
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    instance-of v0, p1, Ljava/lang/Integer;

    .line 180
    .line 181
    if-eqz v0, :cond_7

    .line 182
    .line 183
    move-object v2, p1

    .line 184
    check-cast v2, Ljava/lang/Integer;

    .line 185
    .line 186
    :cond_7
    if-eqz v2, :cond_8

    .line 187
    .line 188
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 189
    .line 190
    .line 191
    move-result v7

    .line 192
    :cond_8
    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 193
    .line 194
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 195
    .line 196
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 197
    .line 198
    int-to-long v6, v7

    .line 199
    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    .line 200
    .line 201
    .line 202
    move-result-wide v8

    .line 203
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    .line 208
    .line 209
    .line 210
    move-result-wide v8

    .line 211
    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 212
    .line 213
    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    .line 214
    .line 215
    .line 216
    move-result-wide v10

    .line 217
    invoke-virtual {v4, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    .line 218
    .line 219
    .line 220
    move-result-wide v10

    .line 221
    sub-long/2addr v8, v10

    .line 222
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 227
    .line 228
    .line 229
    move-result-wide v8

    .line 230
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 231
    .line 232
    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    .line 233
    .line 234
    .line 235
    move-result-wide v11

    .line 236
    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 237
    .line 238
    .line 239
    move-result-wide v10

    .line 240
    sub-long/2addr v8, v10

    .line 241
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 242
    .line 243
    .line 244
    move-result-object v8

    .line 245
    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 246
    .line 247
    .line 248
    move-result-wide v9

    .line 249
    int-to-long v11, v5

    .line 250
    mul-long/2addr v9, v11

    .line 251
    sub-long/2addr v6, v9

    .line 252
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    filled-new-array {v2, v4, v8, v0}, [Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    const/4 v2, 0x4

    .line 261
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    const-string v2, "%02d:%02d:%02d.%03d"

    .line 266
    .line 267
    invoke-static {p1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    const-string v0, "format(locale, format, *args)"

    .line 272
    .line 273
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    const-string v0, "[CONTENTPLAYHEAD]"

    .line 277
    .line 278
    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    if-eqz v1, :cond_9

    .line 282
    .line 283
    iget-wide v0, v1, Lcom/inmobi/media/h8;->y:J

    .line 284
    .line 285
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    const-string v0, "$STS"

    .line 290
    .line 291
    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    check-cast p1, Ljava/lang/String;

    .line 296
    .line 297
    :cond_9
    iget-object p1, p0, Lcom/inmobi/media/T7;->b:Lcom/inmobi/media/p8;

    .line 298
    .line 299
    iget-object p1, p1, Lcom/inmobi/media/p8;->t:Ljava/util/Map;

    .line 300
    .line 301
    if-nez p1, :cond_a

    .line 302
    .line 303
    new-instance p1, Ljava/util/HashMap;

    .line 304
    .line 305
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 306
    .line 307
    .line 308
    :cond_a
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 309
    .line 310
    .line 311
    return-object v3
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/inmobi/media/T7;->a:B

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/inmobi/media/T7;->f()Landroid/app/Activity;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public final l()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/inmobi/media/T7;->l()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/inmobi/media/a9;->getVideoContainerView()Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    instance-of v1, v0, Lcom/inmobi/media/m9;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Lcom/inmobi/media/m9;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    if-eqz v0, :cond_2

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/inmobi/media/m9;->getVideoView()Lcom/inmobi/media/l9;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-byte v1, p0, Lcom/inmobi/media/T7;->a:B

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/inmobi/media/a9;->k()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/inmobi/media/l9;->getVideoVolume()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-lez v1, :cond_1

    .line 37
    .line 38
    const/4 v1, -0x2

    .line 39
    invoke-virtual {v0, v1}, Lcom/inmobi/media/l9;->setLastVolume(I)V

    .line 40
    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    invoke-virtual {p0, v1}, Lcom/inmobi/media/a9;->a(Z)V

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-virtual {v0}, Lcom/inmobi/media/l9;->pause()V

    .line 47
    .line 48
    .line 49
    :cond_2
    return-void
.end method

.method public final n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/media/T7;->A:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    return v0
.end method

.method public final r()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/T7;->h:Lcom/inmobi/media/e3;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, Lcom/inmobi/media/e3;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iget-object v1, v0, Lcom/inmobi/media/e3;->d:Lcom/inmobi/media/i3;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    iput v2, v1, Lcom/inmobi/media/i3;->h:I

    .line 17
    .line 18
    iget-object v0, v0, Lcom/inmobi/media/e3;->c:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/T7;->h:Lcom/inmobi/media/e3;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/inmobi/media/e3;->b()V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/T7;->p:Lcom/inmobi/media/We;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    const/16 v1, 0xf

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/inmobi/media/Xe;->a(B)V

    .line 35
    .line 36
    .line 37
    :cond_2
    return-void
.end method
