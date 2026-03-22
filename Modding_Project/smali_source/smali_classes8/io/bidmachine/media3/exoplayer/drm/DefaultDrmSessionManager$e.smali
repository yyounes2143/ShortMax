.class Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$e;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManager.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/drm/i$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field private final b:Lio/bidmachine/media3/exoplayer/drm/h$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Lio/bidmachine/media3/exoplayer/drm/DrmSession;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Z

.field final synthetic e:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;Lio/bidmachine/media3/exoplayer/drm/h$a;)V
    .locals 0
    .param p1    # Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$e;->e:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$e;->b:Lio/bidmachine/media3/exoplayer/drm/h$a;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic b(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$e;->g()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$e;Lio/bidmachine/media3/common/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$e;->f(Lio/bidmachine/media3/common/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic f(Lio/bidmachine/media3/common/a;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$e;->e:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->p(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$e;->d:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$e;->e:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 15
    .line 16
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->j(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)Landroid/os/Looper;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Landroid/os/Looper;

    .line 25
    .line 26
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$e;->b:Lio/bidmachine/media3/exoplayer/drm/h$a;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-static {v0, v1, v2, p1, v3}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->k(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;Landroid/os/Looper;Lio/bidmachine/media3/exoplayer/drm/h$a;Lio/bidmachine/media3/common/a;Z)Lio/bidmachine/media3/exoplayer/drm/DrmSession;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$e;->c:Lio/bidmachine/media3/exoplayer/drm/DrmSession;

    .line 34
    .line 35
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$e;->e:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 36
    .line 37
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->i(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)Ljava/util/Set;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic g()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$e;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$e;->c:Lio/bidmachine/media3/exoplayer/drm/DrmSession;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$e;->b:Lio/bidmachine/media3/exoplayer/drm/h$a;

    .line 11
    .line 12
    invoke-interface {v0, v1}, Lio/bidmachine/media3/exoplayer/drm/DrmSession;->f(Lio/bidmachine/media3/exoplayer/drm/h$a;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$e;->e:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 16
    .line 17
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->i(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$e;->d:Z

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public e(Lio/bidmachine/media3/common/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$e;->e:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->o(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/os/Handler;

    .line 12
    .line 13
    new-instance v1, Lio/bidmachine/media3/exoplayer/drm/e;

    .line 14
    .line 15
    invoke-direct {v1, p0, p1}, Lio/bidmachine/media3/exoplayer/drm/e;-><init>(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$e;Lio/bidmachine/media3/common/a;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$e;->e:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->o(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/os/Handler;

    .line 12
    .line 13
    new-instance v1, Lio/bidmachine/media3/exoplayer/drm/d;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lio/bidmachine/media3/exoplayer/drm/d;-><init>(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$e;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Lcn/m0;->c1(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method
