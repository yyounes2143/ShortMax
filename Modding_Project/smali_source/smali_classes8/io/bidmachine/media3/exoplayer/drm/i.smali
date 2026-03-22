.class public interface abstract Lio/bidmachine/media3/exoplayer/drm/i;
.super Ljava/lang/Object;
.source "DrmSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/drm/i$b;
    }
.end annotation


# static fields
.field public static final a:Lio/bidmachine/media3/exoplayer/drm/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/bidmachine/media3/exoplayer/drm/i$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/drm/i$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/bidmachine/media3/exoplayer/drm/i;->a:Lio/bidmachine/media3/exoplayer/drm/i;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public abstract a(Lio/bidmachine/media3/common/a;)I
.end method

.method public abstract b(Lio/bidmachine/media3/exoplayer/drm/h$a;Lio/bidmachine/media3/common/a;)Lio/bidmachine/media3/exoplayer/drm/DrmSession;
    .param p1    # Lio/bidmachine/media3/exoplayer/drm/h$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract c(Landroid/os/Looper;Lhn/b2;)V
.end method

.method public d(Lio/bidmachine/media3/exoplayer/drm/h$a;Lio/bidmachine/media3/common/a;)Lio/bidmachine/media3/exoplayer/drm/i$b;
    .locals 0
    .param p1    # Lio/bidmachine/media3/exoplayer/drm/h$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object p1, Lio/bidmachine/media3/exoplayer/drm/i$b;->a:Lio/bidmachine/media3/exoplayer/drm/i$b;

    .line 2
    .line 3
    return-object p1
.end method

.method public prepare()V
    .locals 0

    .line 1
    return-void
.end method

.method public release()V
    .locals 0

    .line 1
    return-void
.end method
