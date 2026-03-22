.class public Lcom/ss/ttm/player/OSPlayerClient;
.super Lcom/ss/ttm/player/MediaPlayerClient;
.source "OSPlayerClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttm/player/OSPlayerClient$WrapOnVideoSizeChangedListener;,
        Lcom/ss/ttm/player/OSPlayerClient$WrapOnSeekCompleteListener;,
        Lcom/ss/ttm/player/OSPlayerClient$WrapOnPreparedListener;,
        Lcom/ss/ttm/player/OSPlayerClient$WrapOnInfoListener;,
        Lcom/ss/ttm/player/OSPlayerClient$WrapOnErrorListener;,
        Lcom/ss/ttm/player/OSPlayerClient$WrapOnCompletionListener;,
        Lcom/ss/ttm/player/OSPlayerClient$WrapOnBufferingUpdateListener;
    }
.end annotation


# instance fields
.field protected mOnBufferingUpdateListener:Lcom/ss/ttm/player/MediaPlayer$OnBufferingUpdateListener;

.field protected mOnCompletionListener:Lcom/ss/ttm/player/MediaPlayer$OnCompletionListener;

.field protected mOnErrorListener:Lcom/ss/ttm/player/MediaPlayer$OnErrorListener;

.field protected mOnInfoListener:Lcom/ss/ttm/player/MediaPlayer$OnInfoListener;

.field protected mOnPreparedListener:Lcom/ss/ttm/player/MediaPlayer$OnPreparedListener;

.field protected mOnSeekCompleteListener:Lcom/ss/ttm/player/MediaPlayer$OnSeekCompleteListener;

.field protected mOnVideoSizeChangedListener:Lcom/ss/ttm/player/MediaPlayer$OnVideoSizeChangedListener;

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mWrapper:Lcom/ss/ttm/player/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/ttm/player/MediaPlayerClient;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final declared-synchronized create(Lcom/ss/ttm/player/MediaPlayer;Landroid/content/Context;)Lcom/ss/ttm/player/OSPlayerClient;
    .locals 2

    .line 1
    const-class p1, Lcom/ss/ttm/player/OSPlayerClient;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    new-instance v0, Lcom/ss/ttm/player/OSPlayerClient;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/ss/ttm/player/OSPlayerClient;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Landroid/media/MediaPlayer;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v1, v0, Lcom/ss/ttm/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    .line 15
    .line 16
    iput-object p0, v0, Lcom/ss/ttm/player/OSPlayerClient;->mWrapper:Lcom/ss/ttm/player/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    monitor-exit p1

    .line 19
    return-object v0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    throw p0
.end method


# virtual methods
.method public deselectTrack(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->deselectTrack(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    :cond_0
    return-void
.end method

.method public getCurrentPosition()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    .line 7
    .line 8
    .line 9
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    return v0

    .line 11
    :catch_0
    :catchall_0
    :cond_0
    return v1
.end method

.method public getDuration()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    .line 7
    .line 8
    .line 9
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    return v0

    .line 11
    :catch_0
    :catchall_0
    :cond_0
    return v1
.end method

.method public getSelectedTrack(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->getSelectedTrack(I)I

    .line 7
    .line 8
    .line 9
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    return p1

    .line 11
    :catch_0
    :catchall_0
    return v1

    .line 12
    :cond_0
    const/4 p1, -0x1

    .line 13
    return p1
.end method

.method public getTrackInfo()[Lcom/ss/ttm/player/MediaPlayer$TrackInfo;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-object v0, v1

    .line 12
    :goto_0
    if-eqz v0, :cond_0

    .line 13
    .line 14
    array-length v2, v0

    .line 15
    new-array v2, v2, [Lcom/ss/ttm/player/MediaPlayer$TrackInfo;

    .line 16
    .line 17
    array-length v3, v0

    .line 18
    const/4 v4, 0x0

    .line 19
    move v5, v4

    .line 20
    :goto_1
    if-ge v4, v3, :cond_0

    .line 21
    .line 22
    aget-object v6, v0, v4

    .line 23
    .line 24
    add-int/lit8 v7, v5, 0x1

    .line 25
    .line 26
    new-instance v8, Lcom/ss/ttm/player/MediaPlayer$TrackInfo;

    .line 27
    .line 28
    invoke-direct {v8, v6}, Lcom/ss/ttm/player/MediaPlayer$TrackInfo;-><init>(Landroid/media/MediaPlayer$TrackInfo;)V

    .line 29
    .line 30
    .line 31
    aput-object v8, v2, v5

    .line 32
    .line 33
    add-int/lit8 v4, v4, 0x1

    .line 34
    .line 35
    move v5, v7

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    return-object v1
.end method

.method public getType()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public getVideoHeight()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    .line 7
    .line 8
    .line 9
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    return v0

    .line 11
    :catch_0
    :catchall_0
    :cond_0
    return v1
.end method

.method public getVideoWidth()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    .line 7
    .line 8
    .line 9
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    return v0

    .line 11
    :catch_0
    :catchall_0
    :cond_0
    return v1
.end method

.method public isLooping()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isLooping()Z

    .line 7
    .line 8
    .line 9
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    return v0

    .line 11
    :catch_0
    :catchall_0
    :cond_0
    return v1
.end method

.method public isPlaying()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 7
    .line 8
    .line 9
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    return v0

    .line 11
    :catch_0
    :catchall_0
    :cond_0
    return v1
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    :cond_0
    return-void
.end method

.method public prepare()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_1
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    .line 17
    .line 18
    :cond_0
    :goto_0
    return-void
.end method

.method public prepareAsync()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    :cond_0
    return-void
.end method

.method public prevClose()V
    .locals 0

    .line 1
    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    :catch_0
    iput-object v1, p0, Lcom/ss/ttm/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    iput-object v1, p0, Lcom/ss/ttm/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    .line 14
    .line 15
    throw v0

    .line 16
    :cond_0
    :goto_0
    return-void
.end method

.method public releaseAsync()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    new-instance v1, Lcom/ss/ttm/player/OSPlayerClient$1;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/ss/ttm/player/OSPlayerClient$1;-><init>(Lcom/ss/ttm/player/OSPlayerClient;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ss/ttm/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public seekTo(II)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/ss/ttm/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz p2, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public selectTrack(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public setABRStrategy(Lcom/ss/ttm/player/ABRStrategy;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setAIBarrageInfo(Lcom/ss/ttm/player/MaskInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/ss/ttm/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/ss/ttm/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public setDataSource(Lcom/ss/ttm/player/IMediaDataSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/ss/ttm/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/ss/ttm/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    :catch_0
    return-void
.end method

.method public setFrameMetadataListener(Lcom/ss/ttm/player/FrameMetadataListener;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setLoadControl(Lcom/ss/ttm/player/LoadControl;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setLooping(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    :cond_0
    return-void
.end method

.method public setMaskInfo(Lcom/ss/ttm/player/MaskInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setMediaTransport(Lcom/ss/ttm/player/MediaTransport;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setOnBufferingUpdateListener(Lcom/ss/ttm/player/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/ss/ttm/player/OSPlayerClient;->mOnBufferingUpdateListener:Lcom/ss/ttm/player/MediaPlayer$OnBufferingUpdateListener;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/ss/ttm/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Lcom/ss/ttm/player/OSPlayerClient$WrapOnBufferingUpdateListener;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/ss/ttm/player/OSPlayerClient;->mWrapper:Lcom/ss/ttm/player/MediaPlayer;

    .line 10
    .line 11
    invoke-direct {v1, p1, v2}, Lcom/ss/ttm/player/OSPlayerClient$WrapOnBufferingUpdateListener;-><init>(Lcom/ss/ttm/player/MediaPlayer$OnBufferingUpdateListener;Lcom/ss/ttm/player/MediaPlayer;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public setOnCompletionListener(Lcom/ss/ttm/player/MediaPlayer$OnCompletionListener;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/ss/ttm/player/OSPlayerClient;->mOnCompletionListener:Lcom/ss/ttm/player/MediaPlayer$OnCompletionListener;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/ss/ttm/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Lcom/ss/ttm/player/OSPlayerClient$WrapOnCompletionListener;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/ss/ttm/player/OSPlayerClient;->mWrapper:Lcom/ss/ttm/player/MediaPlayer;

    .line 10
    .line 11
    invoke-direct {v1, p1, v2}, Lcom/ss/ttm/player/OSPlayerClient$WrapOnCompletionListener;-><init>(Lcom/ss/ttm/player/MediaPlayer$OnCompletionListener;Lcom/ss/ttm/player/MediaPlayer;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public setOnErrorListener(Lcom/ss/ttm/player/MediaPlayer$OnErrorListener;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/ss/ttm/player/OSPlayerClient;->mOnErrorListener:Lcom/ss/ttm/player/MediaPlayer$OnErrorListener;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/ss/ttm/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Lcom/ss/ttm/player/OSPlayerClient$WrapOnErrorListener;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/ss/ttm/player/OSPlayerClient;->mWrapper:Lcom/ss/ttm/player/MediaPlayer;

    .line 10
    .line 11
    invoke-direct {v1, p1, v2}, Lcom/ss/ttm/player/OSPlayerClient$WrapOnErrorListener;-><init>(Lcom/ss/ttm/player/MediaPlayer$OnErrorListener;Lcom/ss/ttm/player/MediaPlayer;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public setOnExternInfoListener(Lcom/ss/ttm/player/MediaPlayer$OnExternInfoListener;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setOnInfoListener(Lcom/ss/ttm/player/MediaPlayer$OnInfoListener;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/ss/ttm/player/OSPlayerClient;->mOnInfoListener:Lcom/ss/ttm/player/MediaPlayer$OnInfoListener;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/ss/ttm/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Lcom/ss/ttm/player/OSPlayerClient$WrapOnInfoListener;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/ss/ttm/player/OSPlayerClient;->mWrapper:Lcom/ss/ttm/player/MediaPlayer;

    .line 10
    .line 11
    invoke-direct {v1, p1, v2}, Lcom/ss/ttm/player/OSPlayerClient$WrapOnInfoListener;-><init>(Lcom/ss/ttm/player/MediaPlayer$OnInfoListener;Lcom/ss/ttm/player/MediaPlayer;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public setOnPreparedListener(Lcom/ss/ttm/player/MediaPlayer$OnPreparedListener;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/ss/ttm/player/OSPlayerClient;->mOnPreparedListener:Lcom/ss/ttm/player/MediaPlayer$OnPreparedListener;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/ss/ttm/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Lcom/ss/ttm/player/OSPlayerClient$WrapOnPreparedListener;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/ss/ttm/player/OSPlayerClient;->mWrapper:Lcom/ss/ttm/player/MediaPlayer;

    .line 10
    .line 11
    invoke-direct {v1, p1, v2}, Lcom/ss/ttm/player/OSPlayerClient$WrapOnPreparedListener;-><init>(Lcom/ss/ttm/player/MediaPlayer$OnPreparedListener;Lcom/ss/ttm/player/MediaPlayer;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public setOnSARChangedListener(Lcom/ss/ttm/player/MediaPlayer$onSARChangedListener;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/ss/ttm/player/MediaPlayer$OnSeekCompleteListener;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/ss/ttm/player/OSPlayerClient;->mOnSeekCompleteListener:Lcom/ss/ttm/player/MediaPlayer$OnSeekCompleteListener;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/ss/ttm/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Lcom/ss/ttm/player/OSPlayerClient$WrapOnSeekCompleteListener;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/ss/ttm/player/OSPlayerClient;->mWrapper:Lcom/ss/ttm/player/MediaPlayer;

    .line 10
    .line 11
    invoke-direct {v1, p1, v2}, Lcom/ss/ttm/player/OSPlayerClient$WrapOnSeekCompleteListener;-><init>(Lcom/ss/ttm/player/MediaPlayer$OnSeekCompleteListener;Lcom/ss/ttm/player/MediaPlayer;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/ss/ttm/player/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/ss/ttm/player/OSPlayerClient$WrapOnVideoSizeChangedListener;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/ss/ttm/player/OSPlayerClient;->mWrapper:Lcom/ss/ttm/player/MediaPlayer;

    .line 8
    .line 9
    invoke-direct {v1, p1, v2}, Lcom/ss/ttm/player/OSPlayerClient$WrapOnVideoSizeChangedListener;-><init>(Lcom/ss/ttm/player/MediaPlayer$OnVideoSizeChangedListener;Lcom/ss/ttm/player/MediaPlayer;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public setPlaybackParams(Lcom/ss/ttm/player/PlaybackParams;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/media/PlaybackParams;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/media/PlaybackParams;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/ss/ttm/player/PlaybackParams;->getSpeed()F

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    cmpl-float v3, v1, v2

    .line 12
    .line 13
    if-lez v3, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/ss/ttm/player/PlaybackParams;->getAudioFallbackMode()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-ltz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/media/PlaybackParams;->setAudioFallbackMode(I)Landroid/media/PlaybackParams;

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p1}, Lcom/ss/ttm/player/PlaybackParams;->getPitch()F

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    cmpl-float v1, p1, v2

    .line 32
    .line 33
    if-lez v1, :cond_2

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    .line 36
    .line 37
    .line 38
    :cond_2
    iget-object p1, p0, Lcom/ss/ttm/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    .line 39
    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 48
    .line 49
    .line 50
    :cond_3
    :goto_0
    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    :cond_0
    return-void
.end method

.method public setSubInfo(Lcom/ss/ttm/player/SubInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSurfaceTimeOut(Landroid/view/Surface;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ss/ttm/player/OSPlayerClient;->setSurface(Landroid/view/Surface;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    :cond_0
    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    :cond_0
    return-void
.end method

.method public switchStream(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public takeScreenshot(Lcom/ss/ttm/player/MediaPlayer$OnScreenshotListener;)V
    .locals 0

    .line 1
    return-void
.end method
