.class public final Lcom/facebook/fresco/vito/renderer/AnimatedDrawableImageDataModel;
.super Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;
.source "ImageDataModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final animatable:Landroid/graphics/drawable/Animatable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isAutoPlay:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Animatable;Z)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Animatable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "drawable"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "animatable"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lcom/facebook/fresco/vito/renderer/AnimatedDrawableImageDataModel;->animatable:Landroid/graphics/drawable/Animatable;

    .line 15
    .line 16
    iput-boolean p3, p0, Lcom/facebook/fresco/vito/renderer/AnimatedDrawableImageDataModel;->isAutoPlay:Z

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final getAnimatable()Landroid/graphics/drawable/Animatable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/AnimatedDrawableImageDataModel;->animatable:Landroid/graphics/drawable/Animatable;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isAutoPlay()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/renderer/AnimatedDrawableImageDataModel;->isAutoPlay:Z

    .line 2
    .line 3
    return v0
.end method

.method public onAttach()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/renderer/AnimatedDrawableImageDataModel;->isAutoPlay:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/AnimatedDrawableImageDataModel;->animatable:Landroid/graphics/drawable/Animatable;

    .line 6
    .line 7
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/renderer/AnimatedDrawableImageDataModel;->isAutoPlay:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/AnimatedDrawableImageDataModel;->animatable:Landroid/graphics/drawable/Animatable;

    .line 6
    .line 7
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
