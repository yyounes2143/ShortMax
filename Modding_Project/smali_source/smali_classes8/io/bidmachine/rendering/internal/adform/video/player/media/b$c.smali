.class Lio/bidmachine/rendering/internal/adform/video/player/media/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbq/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/adform/video/player/media/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/rendering/internal/adform/video/player/media/b;


# direct methods
.method private constructor <init>(Lio/bidmachine/rendering/internal/adform/video/player/media/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/b$c;->a:Lio/bidmachine/rendering/internal/adform/video/player/media/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/rendering/internal/adform/video/player/media/b;Lio/bidmachine/rendering/internal/adform/video/player/media/b$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/internal/adform/video/player/media/b$c;-><init>(Lio/bidmachine/rendering/internal/adform/video/player/media/b;)V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p2, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/b$c;->a:Lio/bidmachine/rendering/internal/adform/video/player/media/b;

    .line 2
    .line 3
    new-instance p3, Landroid/view/Surface;

    .line 4
    .line 5
    invoke-direct {p3, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p2, p3}, Lio/bidmachine/rendering/internal/adform/video/player/media/b;->b(Lio/bidmachine/rendering/internal/adform/video/player/media/b;Landroid/view/Surface;)Landroid/view/Surface;

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/b$c;->a:Lio/bidmachine/rendering/internal/adform/video/player/media/b;

    .line 12
    .line 13
    invoke-static {p1}, Lio/bidmachine/rendering/internal/adform/video/player/media/b;->a(Lio/bidmachine/rendering/internal/adform/video/player/media/b;)Landroid/view/Surface;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-static {p1, p2}, Lio/bidmachine/rendering/internal/adform/video/player/media/b;->f(Lio/bidmachine/rendering/internal/adform/video/player/media/b;Landroid/view/Surface;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/b$c;->a:Lio/bidmachine/rendering/internal/adform/video/player/media/b;

    .line 2
    .line 3
    invoke-static {p1}, Lio/bidmachine/rendering/internal/adform/video/player/media/b;->d(Lio/bidmachine/rendering/internal/adform/video/player/media/b;)Ldq/b;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lio/bidmachine/rendering/internal/adform/video/player/media/b$c;->a:Lio/bidmachine/rendering/internal/adform/video/player/media/b;

    .line 10
    .line 11
    invoke-static {p1}, Lio/bidmachine/rendering/internal/adform/video/player/media/b;->d(Lio/bidmachine/rendering/internal/adform/video/player/media/b;)Ldq/b;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Ldq/b;->a()V

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    return p1
.end method
