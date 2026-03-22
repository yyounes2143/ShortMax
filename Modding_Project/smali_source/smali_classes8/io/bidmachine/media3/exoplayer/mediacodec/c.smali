.class Lio/bidmachine/media3/exoplayer/mediacodec/c;
.super Ljava/lang/Object;
.source "AsynchronousMediaCodecBufferEnqueuer.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/mediacodec/i;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/mediacodec/c$b;
    }
.end annotation


# static fields
.field private static final g:Ljava/util/ArrayDeque;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "MESSAGE_PARAMS_INSTANCE_POOL"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lio/bidmachine/media3/exoplayer/mediacodec/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/lang/Object;


# instance fields
.field private final a:Landroid/media/MediaCodec;

.field private final b:Landroid/os/HandlerThread;

.field private c:Landroid/os/Handler;

.field private final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/RuntimeException;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcn/k;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/bidmachine/media3/exoplayer/mediacodec/c;->g:Ljava/util/ArrayDeque;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lio/bidmachine/media3/exoplayer/mediacodec/c;->h:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/k;

    invoke-direct {v0}, Lcn/k;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lio/bidmachine/media3/exoplayer/mediacodec/c;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Lcn/k;)V

    return-void
.end method

.method constructor <init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Lcn/k;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    .line 4
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/c;->b:Landroid/os/HandlerThread;

    .line 5
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/mediacodec/c;->e:Lcn/k;

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/c;->d:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method static synthetic e(Lio/bidmachine/media3/exoplayer/mediacodec/c;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/mediacodec/c;->j(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private f()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/c;->e:Lcn/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcn/k;->c()Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/c;->c:Landroid/os/Handler;

    .line 7
    .line 8
    invoke-static {v0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/os/Handler;

    .line 13
    .line 14
    const/4 v1, 0x3

    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/c;->e:Lcn/k;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcn/k;->a()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private static g(Lfn/c;Landroid/media/MediaCodec$CryptoInfo;)V
    .locals 2

    .line 1
    iget v0, p0, Lfn/c;->f:I

    .line 2
    .line 3
    iput v0, p1, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 4
    .line 5
    iget-object v0, p0, Lfn/c;->d:[I

    .line 6
    .line 7
    iget-object v1, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 8
    .line 9
    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/mediacodec/c;->i([I[I)[I

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 14
    .line 15
    iget-object v0, p0, Lfn/c;->e:[I

    .line 16
    .line 17
    iget-object v1, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 18
    .line 19
    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/mediacodec/c;->i([I[I)[I

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 24
    .line 25
    iget-object v0, p0, Lfn/c;->b:[B

    .line 26
    .line 27
    iget-object v1, p1, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 28
    .line 29
    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/mediacodec/c;->h([B[B)[B

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, [B

    .line 38
    .line 39
    iput-object v0, p1, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 40
    .line 41
    iget-object v0, p0, Lfn/c;->a:[B

    .line 42
    .line 43
    iget-object v1, p1, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 44
    .line 45
    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/mediacodec/c;->h([B[B)[B

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, [B

    .line 54
    .line 55
    iput-object v0, p1, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 56
    .line 57
    iget v0, p0, Lfn/c;->c:I

    .line 58
    .line 59
    iput v0, p1, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 60
    .line 61
    sget v0, Lcn/m0;->a:I

    .line 62
    .line 63
    const/16 v1, 0x18

    .line 64
    .line 65
    if-lt v0, v1, :cond_0

    .line 66
    .line 67
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo$Pattern;

    .line 68
    .line 69
    iget v1, p0, Lfn/c;->g:I

    .line 70
    .line 71
    iget p0, p0, Lfn/c;->h:I

    .line 72
    .line 73
    invoke-direct {v0, v1, p0}, Landroid/media/MediaCodec$CryptoInfo$Pattern;-><init>(II)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/media/MediaCodec$CryptoInfo;->setPattern(Landroid/media/MediaCodec$CryptoInfo$Pattern;)V

    .line 77
    .line 78
    .line 79
    :cond_0
    return-void
.end method

.method private static h([B[B)[B
    .locals 2
    .param p0    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-object p1

    .line 4
    :cond_0
    if-eqz p1, :cond_2

    .line 5
    .line 6
    array-length v0, p1

    .line 7
    array-length v1, p0

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    array-length v0, p0

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_2
    :goto_0
    array-length p1, p0

    .line 18
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method private static i([I[I)[I
    .locals 2
    .param p0    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-object p1

    .line 4
    :cond_0
    if-eqz p1, :cond_2

    .line 5
    .line 6
    array-length v0, p1

    .line 7
    array-length v1, p0

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    array-length v0, p0

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_2
    :goto_0
    array-length p1, p0

    .line 18
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method private j(Landroid/os/Message;)V
    .locals 10

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_3

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq v0, v1, :cond_2

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/c;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    iget p1, p1, Landroid/os/Message;->what:I

    .line 21
    .line 22
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v2, v1}, Landroidx/compose/animation/core/a;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p1, Landroid/os/Bundle;

    .line 36
    .line 37
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/mediacodec/c;->m(Landroid/os/Bundle;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/c;->e:Lcn/k;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcn/k;->e()Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 48
    .line 49
    move-object v2, p1

    .line 50
    check-cast v2, Lio/bidmachine/media3/exoplayer/mediacodec/c$b;

    .line 51
    .line 52
    iget v4, v2, Lio/bidmachine/media3/exoplayer/mediacodec/c$b;->a:I

    .line 53
    .line 54
    iget v5, v2, Lio/bidmachine/media3/exoplayer/mediacodec/c$b;->b:I

    .line 55
    .line 56
    iget-object v6, v2, Lio/bidmachine/media3/exoplayer/mediacodec/c$b;->d:Landroid/media/MediaCodec$CryptoInfo;

    .line 57
    .line 58
    iget-wide v7, v2, Lio/bidmachine/media3/exoplayer/mediacodec/c$b;->e:J

    .line 59
    .line 60
    iget v9, v2, Lio/bidmachine/media3/exoplayer/mediacodec/c$b;->f:I

    .line 61
    .line 62
    move-object v3, p0

    .line 63
    invoke-direct/range {v3 .. v9}, Lio/bidmachine/media3/exoplayer/mediacodec/c;->l(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 68
    .line 69
    move-object v2, p1

    .line 70
    check-cast v2, Lio/bidmachine/media3/exoplayer/mediacodec/c$b;

    .line 71
    .line 72
    iget v4, v2, Lio/bidmachine/media3/exoplayer/mediacodec/c$b;->a:I

    .line 73
    .line 74
    iget v5, v2, Lio/bidmachine/media3/exoplayer/mediacodec/c$b;->b:I

    .line 75
    .line 76
    iget v6, v2, Lio/bidmachine/media3/exoplayer/mediacodec/c$b;->c:I

    .line 77
    .line 78
    iget-wide v7, v2, Lio/bidmachine/media3/exoplayer/mediacodec/c$b;->e:J

    .line 79
    .line 80
    iget v9, v2, Lio/bidmachine/media3/exoplayer/mediacodec/c$b;->f:I

    .line 81
    .line 82
    move-object v3, p0

    .line 83
    invoke-direct/range {v3 .. v9}, Lio/bidmachine/media3/exoplayer/mediacodec/c;->k(IIIJI)V

    .line 84
    .line 85
    .line 86
    :goto_0
    if-eqz v2, :cond_4

    .line 87
    .line 88
    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/mediacodec/c;->p(Lio/bidmachine/media3/exoplayer/mediacodec/c$b;)V

    .line 89
    .line 90
    .line 91
    :cond_4
    return-void
.end method

.method private k(IIIJI)V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    .line 2
    .line 3
    move v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move-wide v4, p4

    .line 7
    move v6, p6

    .line 8
    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p1

    .line 13
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/c;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 14
    .line 15
    const/4 p3, 0x0

    .line 16
    invoke-static {p2, p3, p1}, Landroidx/compose/animation/core/a;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method private l(IILandroid/media/MediaCodec$CryptoInfo;JI)V
    .locals 8

    .line 1
    :try_start_0
    sget-object v0, Lio/bidmachine/media3/exoplayer/mediacodec/c;->h:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    .line 5
    .line 6
    move v2, p1

    .line 7
    move v3, p2

    .line 8
    move-object v4, p3

    .line 9
    move-wide v5, p4

    .line 10
    move v7, p6

    .line 11
    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    .line 12
    .line 13
    .line 14
    monitor-exit v0

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 19
    :catch_0
    move-exception p1

    .line 20
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/c;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 21
    .line 22
    const/4 p3, 0x0

    .line 23
    invoke-static {p2, p3, p1}, Landroidx/compose/animation/core/a;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method private m(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/c;->a:Landroid/media/MediaCodec;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p1

    .line 8
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/c;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {v0, v1, p1}, Landroidx/compose/animation/core/a;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method private n()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/c;->c:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/os/Handler;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/c;->f()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private static o()Lio/bidmachine/media3/exoplayer/mediacodec/c$b;
    .locals 2

    .line 1
    sget-object v0, Lio/bidmachine/media3/exoplayer/mediacodec/c;->g:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Lio/bidmachine/media3/exoplayer/mediacodec/c$b;

    .line 11
    .line 12
    invoke-direct {v1}, Lio/bidmachine/media3/exoplayer/mediacodec/c$b;-><init>()V

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-object v1

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lio/bidmachine/media3/exoplayer/mediacodec/c$b;

    .line 24
    .line 25
    monitor-exit v0

    .line 26
    return-object v1

    .line 27
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v1
.end method

.method private static p(Lio/bidmachine/media3/exoplayer/mediacodec/c$b;)V
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/media3/exoplayer/mediacodec/c;->g:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw p0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/c;->d()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/c;->c:Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {v0}, Lcn/m0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/os/Handler;

    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public b(IIIJI)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/c;->d()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lio/bidmachine/media3/exoplayer/mediacodec/c;->o()Lio/bidmachine/media3/exoplayer/mediacodec/c$b;

    .line 5
    .line 6
    .line 7
    move-result-object v7

    .line 8
    move-object v0, v7

    .line 9
    move v1, p1

    .line 10
    move v2, p2

    .line 11
    move v3, p3

    .line 12
    move-wide v4, p4

    .line 13
    move v6, p6

    .line 14
    invoke-virtual/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/mediacodec/c$b;->a(IIIJI)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/c;->c:Landroid/os/Handler;

    .line 18
    .line 19
    invoke-static {p1}, Lcn/m0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Landroid/os/Handler;

    .line 24
    .line 25
    const/4 p2, 0x1

    .line 26
    invoke-virtual {p1, p2, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public c(IILfn/c;JI)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/c;->d()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lio/bidmachine/media3/exoplayer/mediacodec/c;->o()Lio/bidmachine/media3/exoplayer/mediacodec/c$b;

    .line 5
    .line 6
    .line 7
    move-result-object v7

    .line 8
    const/4 v3, 0x0

    .line 9
    move-object v0, v7

    .line 10
    move v1, p1

    .line 11
    move v2, p2

    .line 12
    move-wide v4, p4

    .line 13
    move v6, p6

    .line 14
    invoke-virtual/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/mediacodec/c$b;->a(IIIJI)V

    .line 15
    .line 16
    .line 17
    iget-object p1, v7, Lio/bidmachine/media3/exoplayer/mediacodec/c$b;->d:Landroid/media/MediaCodec$CryptoInfo;

    .line 18
    .line 19
    invoke-static {p3, p1}, Lio/bidmachine/media3/exoplayer/mediacodec/c;->g(Lfn/c;Landroid/media/MediaCodec$CryptoInfo;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/c;->c:Landroid/os/Handler;

    .line 23
    .line 24
    invoke-static {p1}, Lcn/m0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroid/os/Handler;

    .line 29
    .line 30
    const/4 p2, 0x2

    .line 31
    invoke-virtual {p1, p2, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/c;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/RuntimeException;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    throw v0
.end method

.method public flush()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/c;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/c;->n()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 15
    .line 16
    .line 17
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    throw v1

    .line 23
    :cond_0
    :goto_0
    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/c;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/c;->flush()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/c;->b:Landroid/os/HandlerThread;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/c;->f:Z

    .line 15
    .line 16
    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/c;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/c;->b:Landroid/os/HandlerThread;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 8
    .line 9
    .line 10
    new-instance v0, Lio/bidmachine/media3/exoplayer/mediacodec/c$a;

    .line 11
    .line 12
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/c;->b:Landroid/os/HandlerThread;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, p0, v1}, Lio/bidmachine/media3/exoplayer/mediacodec/c$a;-><init>(Lio/bidmachine/media3/exoplayer/mediacodec/c;Landroid/os/Looper;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/c;->c:Landroid/os/Handler;

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/c;->f:Z

    .line 25
    .line 26
    :cond_0
    return-void
.end method
