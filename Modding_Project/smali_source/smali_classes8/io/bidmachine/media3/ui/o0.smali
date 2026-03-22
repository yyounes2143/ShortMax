.class public final synthetic Lio/bidmachine/media3/ui/o0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/bidmachine/media3/ui/PlayerView$f;

.field public final synthetic b:Landroid/view/SurfaceView;

.field public final synthetic c:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/ui/PlayerView$f;Landroid/view/SurfaceView;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/media3/ui/o0;->a:Lio/bidmachine/media3/ui/PlayerView$f;

    .line 5
    .line 6
    iput-object p2, p0, Lio/bidmachine/media3/ui/o0;->b:Landroid/view/SurfaceView;

    .line 7
    .line 8
    iput-object p3, p0, Lio/bidmachine/media3/ui/o0;->c:Ljava/lang/Runnable;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/ui/o0;->a:Lio/bidmachine/media3/ui/PlayerView$f;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/media3/ui/o0;->b:Landroid/view/SurfaceView;

    .line 4
    .line 5
    iget-object v2, p0, Lio/bidmachine/media3/ui/o0;->c:Ljava/lang/Runnable;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lio/bidmachine/media3/ui/PlayerView$f;->b(Lio/bidmachine/media3/ui/PlayerView$f;Landroid/view/SurfaceView;Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
