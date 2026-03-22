.class public Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;
.super Lcom/facebook/fresco/vito/renderer/ImageDataModel;
.source "ImageDataModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final drawable:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
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
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0}, Lcom/facebook/fresco/vito/renderer/ImageDataModel;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;->drawable:Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    instance-of v0, p1, Landroid/graphics/drawable/NinePatchDrawable;

    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    move v0, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    :goto_0
    iput v0, p0, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;->width:I

    .line 24
    .line 25
    instance-of v0, p1, Landroid/graphics/drawable/NinePatchDrawable;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    :goto_1
    iput v1, p0, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;->height:I

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;->drawable:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;->height:I

    .line 2
    .line 3
    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;->width:I

    .line 2
    .line 3
    return v0
.end method

.method public setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable$Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;->drawable:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
