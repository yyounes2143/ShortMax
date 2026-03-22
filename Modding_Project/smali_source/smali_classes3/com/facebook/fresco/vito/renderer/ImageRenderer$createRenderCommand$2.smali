.class public final Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nImageRenderer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageRenderer.kt\ncom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2\n+ 2 ImageRenderer.kt\ncom/facebook/fresco/vito/renderer/ImageRenderer\n*L\n1#1,133:1\n128#2,3:134\n*S KotlinDebug\n*F\n+ 1 ImageRenderer.kt\ncom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2\n*L\n104#1:134,3\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $imageTransformation:Landroid/graphics/Matrix;

.field final synthetic $paint:Landroid/graphics/Paint;

.field final synthetic $shape:Lcom/facebook/fresco/vito/renderer/Shape;

.field final synthetic $this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;


# direct methods
.method public constructor <init>(Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;Landroid/graphics/Paint;Landroid/graphics/Matrix;Lcom/facebook/fresco/vito/renderer/Shape;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;->$this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;->$paint:Landroid/graphics/Paint;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;->$imageTransformation:Landroid/graphics/Matrix;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;->$shape:Lcom/facebook/fresco/vito/renderer/Shape;

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

    invoke-virtual {p0, p1}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;->invoke(Landroid/graphics/Canvas;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/graphics/Canvas;)V
    .locals 5

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;->$this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    invoke-virtual {v0}, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;->$this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    invoke-virtual {v1}, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;->$this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    invoke-virtual {v2}, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3
    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;->$this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    invoke-virtual {v0}, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;->$this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    invoke-virtual {v0}, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;->$this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    invoke-virtual {v0}, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;->$this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    invoke-virtual {v1}, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "createBitmap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;->$this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    invoke-virtual {v1}, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 7
    sget-object v1, Lcom/facebook/fresco/vito/renderer/ImageRenderer;->INSTANCE:Lcom/facebook/fresco/vito/renderer/ImageRenderer;

    iget-object v1, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;->$paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;->$imageTransformation:Landroid/graphics/Matrix;

    .line 8
    new-instance v3, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, v0, v4, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 9
    invoke-virtual {v1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 10
    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;->$shape:Lcom/facebook/fresco/vito/renderer/Shape;

    iget-object v1, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2;->$paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/fresco/vito/renderer/Shape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    return-void
.end method
