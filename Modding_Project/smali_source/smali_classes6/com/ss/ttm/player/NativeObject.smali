.class public Lcom/ss/ttm/player/NativeObject;
.super Ljava/lang/Object;
.source "NativeObject.java"


# annotations
.annotation build Lcom/ss/ttm/player/JNINamespace;
    value = "PLAYER"
.end annotation


# instance fields
.field protected mNativeObj:J

.field protected mRetain:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/ss/ttm/player/NativeObject;->mNativeObj:J

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/ss/ttm/player/NativeObject;->mRetain:Z

    .line 10
    .line 11
    return-void
.end method

.method private getNativeObj()J
    .locals 2
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/NativeObject;->mNativeObj:J

    .line 2
    .line 3
    return-wide v0
.end method

.method private native nativeRelease(J)V
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public declared-synchronized release()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/ss/ttm/player/NativeObject;->mRetain:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-wide v0, p0, Lcom/ss/ttm/player/NativeObject;->mNativeObj:J

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v4, v0, v2

    .line 11
    .line 12
    if-eqz v4, :cond_0

    .line 13
    .line 14
    invoke-direct {p0, v0, v1}, Lcom/ss/ttm/player/NativeObject;->nativeRelease(J)V

    .line 15
    .line 16
    .line 17
    iput-wide v2, p0, Lcom/ss/ttm/player/NativeObject;->mNativeObj:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit p0

    .line 23
    return-void

    .line 24
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw v0
.end method

.method protected setNativeObj(J)V
    .locals 0
    .annotation build Lcom/ss/ttm/player/Keep;
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/ss/ttm/player/NativeObject;->mNativeObj:J

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/ss/ttm/player/NativeObject;->mRetain:Z

    .line 5
    .line 6
    return-void
.end method

.method protected setWeakNativeObj(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/ttm/player/NativeObject;->mNativeObj:J

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/ss/ttm/player/NativeObject;->mRetain:Z

    .line 5
    .line 6
    return-void
.end method
