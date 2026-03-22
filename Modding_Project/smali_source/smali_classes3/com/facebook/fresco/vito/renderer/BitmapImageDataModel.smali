.class public final Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;
.super Lcom/facebook/fresco/vito/renderer/ImageDataModel;
.source "ImageDataModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final defaultPaintFlags:I

.field private final height:I

.field private final isBitmapCircular:Z

.field private final width:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/facebook/fresco/vito/renderer/ImageDataModel;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    iput-object p1, p0, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->bitmap:Landroid/graphics/Bitmap;

    iput-boolean p2, p0, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->isBitmapCircular:Z

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    iput p2, p0, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->width:I

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->height:I

    const/4 p1, 0x6

    .line 6
    iput p1, p0, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->defaultPaintFlags:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/Bitmap;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;-><init>(Landroid/graphics/Bitmap;Z)V

    return-void
.end method


# virtual methods
.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->bitmap:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDefaultPaintFlags()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->defaultPaintFlags:I

    .line 2
    .line 3
    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->height:I

    .line 2
    .line 3
    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->width:I

    .line 2
    .line 3
    return v0
.end method

.method public final isBitmapCircular()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->isBitmapCircular:Z

    .line 2
    .line 3
    return v0
.end method
