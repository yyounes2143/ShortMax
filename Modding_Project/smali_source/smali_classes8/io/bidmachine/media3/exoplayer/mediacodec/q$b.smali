.class public Lio/bidmachine/media3/exoplayer/mediacodec/q$b;
.super Ljava/lang/Object;
.source "SynchronousMediaCodecAdapter.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/mediacodec/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/mediacodec/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public b(Lio/bidmachine/media3/exoplayer/mediacodec/h$a;)Lio/bidmachine/media3/exoplayer/mediacodec/h;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/mediacodec/q$b;->c(Lio/bidmachine/media3/exoplayer/mediacodec/h$a;)Landroid/media/MediaCodec;

    .line 3
    .line 4
    .line 5
    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 6
    :try_start_1
    const-string v2, "configureCodec"

    .line 7
    .line 8
    invoke-static {v2}, Lcn/i0;->a(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v2, p1, Lio/bidmachine/media3/exoplayer/mediacodec/h$a;->d:Landroid/view/Surface;

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    iget-object v3, p1, Lio/bidmachine/media3/exoplayer/mediacodec/h$a;->a:Lio/bidmachine/media3/exoplayer/mediacodec/j;

    .line 16
    .line 17
    iget-boolean v3, v3, Lio/bidmachine/media3/exoplayer/mediacodec/j;->k:Z

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    sget v3, Lcn/m0;->a:I

    .line 22
    .line 23
    const/16 v4, 0x23

    .line 24
    .line 25
    if-lt v3, v4, :cond_0

    .line 26
    .line 27
    const/16 v3, 0x8

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :catch_0
    move-exception p1

    .line 31
    :goto_0
    move-object v0, v1

    .line 32
    goto :goto_2

    .line 33
    :catch_1
    move-exception p1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v3, 0x0

    .line 36
    :goto_1
    iget-object v4, p1, Lio/bidmachine/media3/exoplayer/mediacodec/h$a;->b:Landroid/media/MediaFormat;

    .line 37
    .line 38
    iget-object v5, p1, Lio/bidmachine/media3/exoplayer/mediacodec/h$a;->e:Landroid/media/MediaCrypto;

    .line 39
    .line 40
    invoke-virtual {v1, v4, v2, v5, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcn/i0;->b()V

    .line 44
    .line 45
    .line 46
    const-string v2, "startCodec"

    .line 47
    .line 48
    invoke-static {v2}, Lcn/i0;->a(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 52
    .line 53
    .line 54
    invoke-static {}, Lcn/i0;->b()V

    .line 55
    .line 56
    .line 57
    new-instance v2, Lio/bidmachine/media3/exoplayer/mediacodec/q;

    .line 58
    .line 59
    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/mediacodec/h$a;->f:Lpn/c;

    .line 60
    .line 61
    invoke-direct {v2, v1, p1, v0}, Lio/bidmachine/media3/exoplayer/mediacodec/q;-><init>(Landroid/media/MediaCodec;Lpn/c;Lio/bidmachine/media3/exoplayer/mediacodec/q$a;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 62
    .line 63
    .line 64
    return-object v2

    .line 65
    :catch_2
    move-exception p1

    .line 66
    goto :goto_2

    .line 67
    :catch_3
    move-exception p1

    .line 68
    :goto_2
    if-eqz v0, :cond_1

    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 71
    .line 72
    .line 73
    :cond_1
    throw p1
.end method

.method protected c(Lio/bidmachine/media3/exoplayer/mediacodec/h$a;)Landroid/media/MediaCodec;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lio/bidmachine/media3/exoplayer/mediacodec/h$a;->a:Lio/bidmachine/media3/exoplayer/mediacodec/j;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/mediacodec/h$a;->a:Lio/bidmachine/media3/exoplayer/mediacodec/j;

    .line 7
    .line 8
    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/mediacodec/j;->a:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "createCodec:"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lcn/i0;->a(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {}, Lcn/i0;->b()V

    .line 35
    .line 36
    .line 37
    return-object p1
.end method
