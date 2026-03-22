.class public final synthetic Lio/bidmachine/media3/exoplayer/drm/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcn/l;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lio/bidmachine/media3/exoplayer/drm/b;->a:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/media3/exoplayer/drm/b;->a:I

    .line 2
    .line 3
    check-cast p1, Lio/bidmachine/media3/exoplayer/drm/h$a;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->i(ILio/bidmachine/media3/exoplayer/drm/h$a;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
