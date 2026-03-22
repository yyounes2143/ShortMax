.class Lio/bidmachine/iab/vast/activity/VastView$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/vast/activity/VastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/iab/vast/activity/VastView;


# direct methods
.method constructor <init>(Lio/bidmachine/iab/vast/activity/VastView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$h;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p2, p0, Lio/bidmachine/iab/vast/activity/VastView$h;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 2
    .line 3
    invoke-static {p2}, Lio/bidmachine/iab/vast/activity/VastView;->k0(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const/4 p3, 0x0

    .line 8
    new-array v0, p3, [Ljava/lang/Object;

    .line 9
    .line 10
    const-string v1, "onSurfaceTextureAvailable"

    .line 11
    .line 12
    invoke-static {p2, v1, v0}, Ltm/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lio/bidmachine/iab/vast/activity/VastView$h;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 16
    .line 17
    new-instance v0, Landroid/view/Surface;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p2, Lio/bidmachine/iab/vast/activity/VastView;->d:Landroid/view/Surface;

    .line 23
    .line 24
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$h;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 25
    .line 26
    const/4 p2, 0x1

    .line 27
    invoke-static {p1, p2}, Lio/bidmachine/iab/vast/activity/VastView;->S(Lio/bidmachine/iab/vast/activity/VastView;Z)Z

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$h;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 31
    .line 32
    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->O0(Lio/bidmachine/iab/vast/activity/VastView;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$h;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 39
    .line 40
    invoke-static {p1, p3}, Lio/bidmachine/iab/vast/activity/VastView;->Z(Lio/bidmachine/iab/vast/activity/VastView;Z)Z

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$h;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 44
    .line 45
    invoke-virtual {p1, v1}, Lio/bidmachine/iab/vast/activity/VastView;->Z0(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$h;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 50
    .line 51
    invoke-virtual {p1}, Lio/bidmachine/iab/vast/activity/VastView;->C0()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$h;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 58
    .line 59
    iget-object p2, p1, Lio/bidmachine/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    .line 60
    .line 61
    iget-object p1, p1, Lio/bidmachine/iab/vast/activity/VastView;->d:Landroid/view/Surface;

    .line 62
    .line 63
    invoke-virtual {p2, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$h;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 67
    .line 68
    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->Q0(Lio/bidmachine/iab/vast/activity/VastView;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    :goto_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$h;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 2
    .line 3
    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->k0(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    new-array v1, v0, [Ljava/lang/Object;

    .line 9
    .line 10
    const-string v2, "onSurfaceTextureDestroyed"

    .line 11
    .line 12
    invoke-static {p1, v2, v1}, Ltm/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$h;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput-object v1, p1, Lio/bidmachine/iab/vast/activity/VastView;->d:Landroid/view/Surface;

    .line 19
    .line 20
    invoke-static {p1, v0}, Lio/bidmachine/iab/vast/activity/VastView;->S(Lio/bidmachine/iab/vast/activity/VastView;Z)Z

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$h;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 24
    .line 25
    invoke-virtual {p1}, Lio/bidmachine/iab/vast/activity/VastView;->C0()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$h;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 32
    .line 33
    iget-object p1, p1, Lio/bidmachine/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$h;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 39
    .line 40
    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->S0(Lio/bidmachine/iab/vast/activity/VastView;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$h;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 2
    .line 3
    invoke-static {p1}, Lio/bidmachine/iab/vast/activity/VastView;->k0(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    filled-new-array {p2, p3}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    const-string p3, "onSurfaceTextureSizeChanged: %d/%d"

    .line 20
    .line 21
    invoke-static {p1, p3, p2}, Ltm/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method
