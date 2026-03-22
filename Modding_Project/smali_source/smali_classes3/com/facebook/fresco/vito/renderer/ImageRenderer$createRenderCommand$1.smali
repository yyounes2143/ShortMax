.class public final Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;
.super Ljava/lang/Object;
.source "ImageRenderer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/fresco/vito/renderer/ImageRenderer;->createRenderCommand(Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;Landroid/graphics/Matrix;)Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/graphics/Canvas;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $imageTransformation:Landroid/graphics/Matrix;

.field final synthetic $paint:Landroid/graphics/Paint;

.field final synthetic $shape:Lcom/facebook/fresco/vito/renderer/Shape;

.field final synthetic $this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;


# direct methods
.method public constructor <init>(Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;Landroid/graphics/Matrix;Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$imageTransformation:Landroid/graphics/Matrix;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$shape:Lcom/facebook/fresco/vito/renderer/Shape;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$paint:Landroid/graphics/Paint;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Canvas;

    invoke-virtual {p0, p1}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->invoke(Landroid/graphics/Canvas;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/graphics/Canvas;)V
    .locals 5

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    invoke-virtual {v0}, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    invoke-virtual {v0}, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    invoke-virtual {v0}, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    invoke-virtual {v1}, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    invoke-virtual {v2}, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4
    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$imageTransformation:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    invoke-virtual {v0}, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$shape:Lcom/facebook/fresco/vito/renderer/Shape;

    check-cast v1, Lcom/facebook/fresco/vito/renderer/RectShape;

    invoke-virtual {v1}, Lcom/facebook/fresco/vito/renderer/RectShape;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    .line 7
    iget-object v2, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$shape:Lcom/facebook/fresco/vito/renderer/Shape;

    check-cast v2, Lcom/facebook/fresco/vito/renderer/RectShape;

    invoke-virtual {v2}, Lcom/facebook/fresco/vito/renderer/RectShape;->getRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    .line 8
    iget-object v3, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$shape:Lcom/facebook/fresco/vito/renderer/Shape;

    check-cast v3, Lcom/facebook/fresco/vito/renderer/RectShape;

    invoke-virtual {v3}, Lcom/facebook/fresco/vito/renderer/RectShape;->getRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    .line 9
    iget-object v4, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$shape:Lcom/facebook/fresco/vito/renderer/Shape;

    check-cast v4, Lcom/facebook/fresco/vito/renderer/RectShape;

    invoke-virtual {v4}, Lcom/facebook/fresco/vito/renderer/RectShape;->getRect()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    .line 10
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    invoke-virtual {v0}, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    invoke-virtual {v0}, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    invoke-virtual {v0}, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 14
    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    invoke-virtual {v0}, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
