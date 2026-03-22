.class public final Lio/bidmachine/media3/exoplayer/drm/l;
.super Ljava/lang/Object;
.source "ErrorStateDrmSession.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/drm/DrmSession;


# instance fields
.field private final a:Lio/bidmachine/media3/exoplayer/drm/DrmSession$DrmSessionException;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/drm/DrmSession$DrmSessionException;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lio/bidmachine/media3/exoplayer/drm/DrmSession$DrmSessionException;

    .line 9
    .line 10
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/l;->a:Lio/bidmachine/media3/exoplayer/drm/DrmSession$DrmSessionException;

    .line 11
    .line 12
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

.method public b()Lfn/b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final c()Ljava/util/UUID;
    .locals 1

    .line 1
    sget-object v0, Lzm/f;->a:Ljava/util/UUID;

    .line 2
    .line 3
    return-object v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public f(Lio/bidmachine/media3/exoplayer/drm/h$a;)V
    .locals 0
    .param p1    # Lio/bidmachine/media3/exoplayer/drm/h$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public g(Lio/bidmachine/media3/exoplayer/drm/h$a;)V
    .locals 0
    .param p1    # Lio/bidmachine/media3/exoplayer/drm/h$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public getError()Lio/bidmachine/media3/exoplayer/drm/DrmSession$DrmSessionException;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/l;->a:Lio/bidmachine/media3/exoplayer/drm/DrmSession$DrmSessionException;

    .line 2
    .line 3
    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public queryKeyStatus()Ljava/util/Map;
    .locals 1
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

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method
