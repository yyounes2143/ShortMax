.class public final Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;
.super Ljava/lang/Object;
.source "ImageRenderer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/fresco/vito/renderer/ImageRenderer;->bitmapRenderCommand(Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Lkotlin/jvm/functions/Function1;
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
.field final synthetic $bitmap:Landroid/graphics/Bitmap;

.field final synthetic $imageTransformation:Landroid/graphics/Matrix;

.field final synthetic $paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;->$imageTransformation:Landroid/graphics/Matrix;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;->$bitmap:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;->$paint:Landroid/graphics/Paint;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Canvas;

    invoke-virtual {p0, p1}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;->invoke(Landroid/graphics/Canvas;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/graphics/Canvas;)V
    .locals 3

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;->$imageTransformation:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 3
    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;->$bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$bitmapRenderCommand$1;->$paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method
