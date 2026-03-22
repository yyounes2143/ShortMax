.class public final Lcom/inmobi/media/k9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/l9;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/l9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/k9;->a:Lcom/inmobi/media/l9;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    const-string p2, "texture"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/inmobi/media/k9;->a:Lcom/inmobi/media/l9;

    .line 7
    .line 8
    new-instance p3, Landroid/view/Surface;

    .line 9
    .line 10
    invoke-direct {p3, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 11
    .line 12
    .line 13
    iput-object p3, p2, Lcom/inmobi/media/l9;->b:Landroid/view/Surface;

    .line 14
    .line 15
    iget-object p1, p0, Lcom/inmobi/media/k9;->a:Lcom/inmobi/media/l9;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/inmobi/media/l9;->e()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .line 1
    const-string v0, "texture"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/inmobi/media/k9;->a:Lcom/inmobi/media/l9;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/inmobi/media/l9;->b:Landroid/view/Surface;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/k9;->a:Lcom/inmobi/media/l9;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p1, Lcom/inmobi/media/l9;->b:Landroid/view/Surface;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/inmobi/media/l9;->n:Lcom/inmobi/media/e9;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/inmobi/media/e9;->c()V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-object p1, p0, Lcom/inmobi/media/k9;->a:Lcom/inmobi/media/l9;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/inmobi/media/l9;->g()V

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    return p1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    .line 1
    const-string v0, "surface"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/inmobi/media/k9;->a:Lcom/inmobi/media/l9;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/inmobi/media/l9;->getMediaPlayer()Lcom/inmobi/media/G8;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/4 v0, 0x0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget p1, p1, Lcom/inmobi/media/G8;->b:I

    .line 17
    .line 18
    const/4 v2, 0x3

    .line 19
    if-ne p1, v2, :cond_0

    .line 20
    .line 21
    move p1, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move p1, v0

    .line 24
    :goto_0
    if-lez p2, :cond_1

    .line 25
    .line 26
    if-lez p3, :cond_1

    .line 27
    .line 28
    move v0, v1

    .line 29
    :cond_1
    if-eqz p1, :cond_3

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    iget-object p1, p0, Lcom/inmobi/media/k9;->a:Lcom/inmobi/media/l9;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    instance-of p2, p1, Lcom/inmobi/media/c9;

    .line 40
    .line 41
    if-eqz p2, :cond_2

    .line 42
    .line 43
    check-cast p1, Lcom/inmobi/media/c9;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 46
    .line 47
    const-string p2, "seekPosition"

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const-string p2, "null cannot be cast to non-null type kotlin.Int"

    .line 54
    .line 55
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    check-cast p1, Ljava/lang/Integer;

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    iget-object p2, p0, Lcom/inmobi/media/k9;->a:Lcom/inmobi/media/l9;

    .line 67
    .line 68
    invoke-virtual {p2}, Lcom/inmobi/media/l9;->a()Z

    .line 69
    .line 70
    .line 71
    move-result p3

    .line 72
    if-eqz p3, :cond_2

    .line 73
    .line 74
    iget-object p2, p2, Lcom/inmobi/media/l9;->c:Lcom/inmobi/media/G8;

    .line 75
    .line 76
    if-eqz p2, :cond_2

    .line 77
    .line 78
    invoke-virtual {p2, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 79
    .line 80
    .line 81
    :cond_2
    iget-object p1, p0, Lcom/inmobi/media/k9;->a:Lcom/inmobi/media/l9;

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/inmobi/media/l9;->start()V

    .line 84
    .line 85
    .line 86
    :cond_3
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    const-string v0, "texture"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
