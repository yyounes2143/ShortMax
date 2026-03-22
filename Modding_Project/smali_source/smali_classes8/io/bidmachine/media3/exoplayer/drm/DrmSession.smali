.class public interface abstract Lio/bidmachine/media3/exoplayer/drm/DrmSession;
.super Ljava/lang/Object;
.source "DrmSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/drm/DrmSession$DrmSessionException;
    }
.end annotation


# direct methods
.method public static e(Lio/bidmachine/media3/exoplayer/drm/DrmSession;Lio/bidmachine/media3/exoplayer/drm/DrmSession;)V
    .locals 1
    .param p0    # Lio/bidmachine/media3/exoplayer/drm/DrmSession;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lio/bidmachine/media3/exoplayer/drm/DrmSession;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-interface {p1, v0}, Lio/bidmachine/media3/exoplayer/drm/DrmSession;->g(Lio/bidmachine/media3/exoplayer/drm/h$a;)V

    .line 8
    .line 9
    .line 10
    :cond_1
    if-eqz p0, :cond_2

    .line 11
    .line 12
    invoke-interface {p0, v0}, Lio/bidmachine/media3/exoplayer/drm/DrmSession;->f(Lio/bidmachine/media3/exoplayer/drm/h$a;)V

    .line 13
    .line 14
    .line 15
    :cond_2
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public abstract b()Lfn/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract c()Ljava/util/UUID;
.end method

.method public abstract d(Ljava/lang/String;)Z
.end method

.method public abstract f(Lio/bidmachine/media3/exoplayer/drm/h$a;)V
    .param p1    # Lio/bidmachine/media3/exoplayer/drm/h$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract g(Lio/bidmachine/media3/exoplayer/drm/h$a;)V
    .param p1    # Lio/bidmachine/media3/exoplayer/drm/h$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract getError()Lio/bidmachine/media3/exoplayer/drm/DrmSession$DrmSessionException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getState()I
.end method

.method public abstract queryKeyStatus()Ljava/util/Map;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
