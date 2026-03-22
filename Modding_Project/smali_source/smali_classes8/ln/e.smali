.class public final synthetic Lln/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/bidmachine/media3/exoplayer/drm/h$a;

.field public final synthetic b:Lio/bidmachine/media3/exoplayer/drm/h;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/drm/h$a;Lio/bidmachine/media3/exoplayer/drm/h;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lln/e;->a:Lio/bidmachine/media3/exoplayer/drm/h$a;

    .line 5
    .line 6
    iput-object p2, p0, Lln/e;->b:Lio/bidmachine/media3/exoplayer/drm/h;

    .line 7
    .line 8
    iput p3, p0, Lln/e;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lln/e;->a:Lio/bidmachine/media3/exoplayer/drm/h$a;

    .line 2
    .line 3
    iget-object v1, p0, Lln/e;->b:Lio/bidmachine/media3/exoplayer/drm/h;

    .line 4
    .line 5
    iget v2, p0, Lln/e;->c:I

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/drm/h$a;->f(Lio/bidmachine/media3/exoplayer/drm/h$a;Lio/bidmachine/media3/exoplayer/drm/h;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
