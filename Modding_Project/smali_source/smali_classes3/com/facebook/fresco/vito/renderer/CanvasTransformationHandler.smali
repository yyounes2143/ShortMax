.class public final Lcom/facebook/fresco/vito/renderer/CanvasTransformationHandler;
.super Ljava/lang/Object;
.source "CanvasTransformationHandler.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private canvasTransformation:Lcom/facebook/fresco/vito/renderer/CanvasTransformation;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private drawMatrix:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final tempMatrix:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/facebook/fresco/vito/renderer/CanvasTransformationHandler;-><init>(Lcom/facebook/fresco/vito/renderer/CanvasTransformation;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/fresco/vito/renderer/CanvasTransformation;)V
    .locals 0
    .param p1    # Lcom/facebook/fresco/vito/renderer/CanvasTransformation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/fresco/vito/renderer/CanvasTransformationHandler;->canvasTransformation:Lcom/facebook/fresco/vito/renderer/CanvasTransformation;

    .line 3
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/facebook/fresco/vito/renderer/CanvasTransformationHandler;->tempMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/fresco/vito/renderer/CanvasTransformation;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/fresco/vito/renderer/CanvasTransformationHandler;-><init>(Lcom/facebook/fresco/vito/renderer/CanvasTransformation;)V

    return-void
.end method


# virtual methods
.method public final configure(Landroid/graphics/Rect;II)V
    .locals 2
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "bounds"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-lez p2, :cond_2

    .line 8
    .line 9
    if-gtz p3, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/facebook/fresco/vito/renderer/CanvasTransformationHandler;->canvasTransformation:Lcom/facebook/fresco/vito/renderer/CanvasTransformation;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/CanvasTransformationHandler;->tempMatrix:Landroid/graphics/Matrix;

    .line 17
    .line 18
    invoke-interface {v1, v0, p1, p2, p3}, Lcom/facebook/fresco/vito/renderer/CanvasTransformation;->calculateTransformation(Landroid/graphics/Matrix;Landroid/graphics/Rect;II)Landroid/graphics/Matrix;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :cond_1
    iput-object v0, p0, Lcom/facebook/fresco/vito/renderer/CanvasTransformationHandler;->drawMatrix:Landroid/graphics/Matrix;

    .line 23
    .line 24
    return-void

    .line 25
    :cond_2
    :goto_0
    iput-object v0, p0, Lcom/facebook/fresco/vito/renderer/CanvasTransformationHandler;->drawMatrix:Landroid/graphics/Matrix;

    .line 26
    .line 27
    return-void
.end method

.method public final getCanvasTransformation()Lcom/facebook/fresco/vito/renderer/CanvasTransformation;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/CanvasTransformationHandler;->canvasTransformation:Lcom/facebook/fresco/vito/renderer/CanvasTransformation;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMatrix()Landroid/graphics/Matrix;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/CanvasTransformationHandler;->drawMatrix:Landroid/graphics/Matrix;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setCanvasTransformation(Lcom/facebook/fresco/vito/renderer/CanvasTransformation;)V
    .locals 0
    .param p1    # Lcom/facebook/fresco/vito/renderer/CanvasTransformation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/vito/renderer/CanvasTransformationHandler;->canvasTransformation:Lcom/facebook/fresco/vito/renderer/CanvasTransformation;

    .line 2
    .line 3
    return-void
.end method
