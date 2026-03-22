.class Lio/bidmachine/media3/exoplayer/drm/i$a;
.super Ljava/lang/Object;
.source "DrmSessionManager.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/drm/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/drm/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/media3/common/a;)I
    .locals 0

    .line 1
    iget-object p1, p1, Lio/bidmachine/media3/common/a;->s:Lio/bidmachine/media3/common/DrmInitData;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    return p1
.end method

.method public b(Lio/bidmachine/media3/exoplayer/drm/h$a;Lio/bidmachine/media3/common/a;)Lio/bidmachine/media3/exoplayer/drm/DrmSession;
    .locals 2
    .param p1    # Lio/bidmachine/media3/exoplayer/drm/h$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object p1, p2, Lio/bidmachine/media3/common/a;->s:Lio/bidmachine/media3/common/DrmInitData;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    new-instance p1, Lio/bidmachine/media3/exoplayer/drm/l;

    .line 8
    .line 9
    new-instance p2, Lio/bidmachine/media3/exoplayer/drm/DrmSession$DrmSessionException;

    .line 10
    .line 11
    new-instance v0, Lio/bidmachine/media3/exoplayer/drm/UnsupportedDrmException;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-direct {v0, v1}, Lio/bidmachine/media3/exoplayer/drm/UnsupportedDrmException;-><init>(I)V

    .line 15
    .line 16
    .line 17
    const/16 v1, 0x1771

    .line 18
    .line 19
    invoke-direct {p2, v0, v1}, Lio/bidmachine/media3/exoplayer/drm/DrmSession$DrmSessionException;-><init>(Ljava/lang/Throwable;I)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, p2}, Lio/bidmachine/media3/exoplayer/drm/l;-><init>(Lio/bidmachine/media3/exoplayer/drm/DrmSession$DrmSessionException;)V

    .line 23
    .line 24
    .line 25
    return-object p1
.end method

.method public c(Landroid/os/Looper;Lhn/b2;)V
    .locals 0

    .line 1
    return-void
.end method
