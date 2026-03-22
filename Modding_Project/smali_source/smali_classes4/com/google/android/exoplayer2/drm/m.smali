.class public interface abstract Lcom/google/android/exoplayer2/drm/m;
.super Ljava/lang/Object;
.source "ExoMediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/drm/m$d;,
        Lcom/google/android/exoplayer2/drm/m$a;,
        Lcom/google/android/exoplayer2/drm/m$b;,
        Lcom/google/android/exoplayer2/drm/m$c;
    }
.end annotation


# virtual methods
.method public abstract a()I
.end method

.method public abstract b([B)Lr5/b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCryptoException;
        }
    .end annotation
.end method

.method public abstract c([BLjava/lang/String;)Z
.end method

.method public abstract closeSession([B)V
.end method

.method public abstract d([BLjava/util/List;ILjava/util/HashMap;)Lcom/google/android/exoplayer2/drm/m$a;
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/HashMap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplayer2/drm/m$a;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;
        }
    .end annotation
.end method

.method public abstract e(Lcom/google/android/exoplayer2/drm/m$b;)V
    .param p1    # Lcom/google/android/exoplayer2/drm/m$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public f([BLp5/t3;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract getProvisionRequest()Lcom/google/android/exoplayer2/drm/m$d;
.end method

.method public abstract openSession()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaDrmException;
        }
    .end annotation
.end method

.method public abstract provideKeyResponse([B[B)[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;,
            Landroid/media/DeniedByServerException;
        }
    .end annotation
.end method

.method public abstract provideProvisionResponse([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/DeniedByServerException;
        }
    .end annotation
.end method

.method public abstract queryKeyStatus([B)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract restoreKeys([B[B)V
.end method
