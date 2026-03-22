.class public final synthetic Lio/bidmachine/media3/exoplayer/drm/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/f;->a:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/f;->a:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$g;->c(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
