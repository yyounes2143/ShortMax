.class public Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;
.super Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/oJ;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk$oJ;
    }
.end annotation


# instance fields
.field private Pfn:Landroid/view/Surface;

.field private final ZYk:Landroid/media/MediaPlayer;

.field private final ba:Ljava/lang/Object;

.field private volatile cFZ:Z

.field private ex:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ;

.field private final tB:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk$oJ;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/oJ;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->ba:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    .line 13
    .line 14
    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->ZYk:Landroid/media/MediaPlayer;

    .line 18
    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    invoke-direct {p0, v1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->oJ(Landroid/media/MediaPlayer;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x3

    .line 24
    :try_start_1
    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    .line 26
    .line 27
    :catchall_0
    new-instance v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk$oJ;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk$oJ;-><init>(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->tB:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk$oJ;

    .line 33
    .line 34
    invoke-direct {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->si()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catchall_1
    move-exception v1

    .line 39
    monitor-exit v0

    .line 40
    throw v1
.end method

.method private Ry()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->Pfn:Landroid/view/Surface;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->Pfn:Landroid/view/Surface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    :catchall_0
    :cond_0
    return-void
.end method

.method private eZI()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->ex:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    :catchall_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->ex:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private oJ(Landroid/media/MediaPlayer;)V
    .locals 7

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    const-string v0, "android.media.MediaTimeProvider"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3
    const-string v1, "android.media.SubtitleController"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 4
    const-string v2, "android.media.SubtitleController$Anchor"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 5
    const-string v3, "android.media.SubtitleController$Listener"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 6
    const-class v4, Landroid/content/Context;

    filled-new-array {v4, v0, v3}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 7
    invoke-static {}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB;->oJ()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    filled-new-array {v3, v4, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    const-string v3, "mHandler"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v5, 0x1

    .line 9
    invoke-virtual {v3, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v5, 0x0

    .line 10
    :try_start_1
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v3, v0, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    invoke-virtual {v3, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "setSubtitleAnchor"

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 13
    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 14
    :catchall_0
    invoke-virtual {v3, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    return-void
.end method

.method private si()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->ZYk:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->tB:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk$oJ;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->ZYk:Landroid/media/MediaPlayer;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->tB:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk$oJ;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->ZYk:Landroid/media/MediaPlayer;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->tB:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk$oJ;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->ZYk:Landroid/media/MediaPlayer;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->tB:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk$oJ;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->ZYk:Landroid/media/MediaPlayer;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->tB:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk$oJ;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->ZYk:Landroid/media/MediaPlayer;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->tB:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk$oJ;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->ZYk:Landroid/media/MediaPlayer;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->tB:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk$oJ;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public BTZ()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->ba:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->cFZ:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->ZYk:Landroid/media/MediaPlayer;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->cFZ:Z

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->Ry()V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->eZI()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/oJ;->oJ()V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->si()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    return-void

    .line 33
    :goto_1
    monitor-exit v0

    .line 34
    throw v1
.end method

.method public Pfn()Landroid/media/PlaybackParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->ZYk:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public PiB()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->ZYk:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    :catchall_0
    invoke-direct {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->eZI()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/oJ;->oJ()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->si()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public WcQ()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->ZYk:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public ZYk(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->ZYk:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public awB()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->ZYk:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public ba()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->ZYk:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public cFZ()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->ZYk:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public dLZ()J
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->ZYk:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    .line 4
    .line 5
    .line 6
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    int-to-long v0, v0

    .line 8
    return-wide v0

    .line 9
    :catchall_0
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    return-wide v0
.end method

.method public ex(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->ZYk:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 14
    .line 15
    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->Ry()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public jFA()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->ZYk:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public kkU()J
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->ZYk:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    .line 4
    .line 5
    .line 6
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    int-to-long v0, v0

    .line 8
    return-wide v0

    .line 9
    :catchall_0
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    return-wide v0
.end method

.method public oJ(JI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_4

    if-eqz p3, :cond_3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    .line 36
    iget-object p3, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->ZYk:Landroid/media/MediaPlayer;

    long-to-int p1, p1

    invoke-virtual {p3, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void

    .line 37
    :cond_0
    iget-object p3, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->ZYk:Landroid/media/MediaPlayer;

    long-to-int p1, p1

    int-to-long p1, p1

    invoke-static {p3, p1, p2, v0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/a;->a(Landroid/media/MediaPlayer;JI)V

    return-void

    .line 38
    :cond_1
    iget-object p3, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->ZYk:Landroid/media/MediaPlayer;

    long-to-int p1, p1

    int-to-long p1, p1

    invoke-static {p3, p1, p2, v0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/a;->a(Landroid/media/MediaPlayer;JI)V

    return-void

    .line 39
    :cond_2
    iget-object p3, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->ZYk:Landroid/media/MediaPlayer;

    long-to-int p1, p1

    int-to-long p1, p1

    invoke-static {p3, p1, p2, v0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/a;->a(Landroid/media/MediaPlayer;JI)V

    return-void

    .line 40
    :cond_3
    iget-object p3, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->ZYk:Landroid/media/MediaPlayer;

    long-to-int p1, p1

    int-to-long p1, p1

    const/4 v0, 0x0

    invoke-static {p3, p1, p2, v0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/a;->a(Landroid/media/MediaPlayer;JI)V

    return-void

    .line 41
    :cond_4
    iget-object p3, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->ZYk:Landroid/media/MediaPlayer;

    long-to-int p1, p1

    invoke-virtual {p3, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method

.method public oJ(Landroid/view/Surface;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 19
    invoke-direct {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->Ry()V

    .line 20
    iput-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->Pfn:Landroid/view/Surface;

    .line 21
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->ZYk:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public oJ(Landroid/view/SurfaceHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->ba:Ljava/lang/Object;

    monitor-enter v0

    .line 16
    :try_start_0
    iget-boolean v1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->cFZ:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/oJ;->oJ:Z

    if-eqz v1, :cond_0

    .line 17
    iget-object v1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->ZYk:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :catchall_0
    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->ZYk:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v0

    .line 23
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk;->oJ()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object p1

    .line 24
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->ZYk:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    return-void
.end method

.method public declared-synchronized oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    monitor-enter p0

    .line 31
    :try_start_0
    invoke-static {}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB;->oJ()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ;->oJ(Landroid/content/Context;Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ;

    move-result-object v0

    iput-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->ex:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ;

    .line 32
    invoke-static {p1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/ZYk/tB;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)V

    .line 33
    iget-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->ZYk:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->ex:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/media/MediaDataSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public oJ(Ljava/io/FileDescriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->ZYk:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public oJ(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 25
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    iget-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->ZYk:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->ZYk:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    return-void
.end method

.method public so()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->ZYk:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public tB(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ZYk;->ZYk:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
