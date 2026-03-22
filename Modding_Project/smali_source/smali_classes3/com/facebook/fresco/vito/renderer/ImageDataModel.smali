.class public abstract Lcom/facebook/fresco/vito/renderer/ImageDataModel;
.super Ljava/lang/Object;
.source "ImageDataModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final defaultPaintFlags:I

.field private final height:I

.field private final width:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/facebook/fresco/vito/renderer/ImageDataModel;->width:I

    .line 4
    iput v0, p0, Lcom/facebook/fresco/vito/renderer/ImageDataModel;->height:I

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/facebook/fresco/vito/renderer/ImageDataModel;->defaultPaintFlags:I

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/fresco/vito/renderer/ImageDataModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultPaintFlags()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/vito/renderer/ImageDataModel;->defaultPaintFlags:I

    .line 2
    .line 3
    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/vito/renderer/ImageDataModel;->height:I

    .line 2
    .line 3
    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/vito/renderer/ImageDataModel;->width:I

    .line 2
    .line 3
    return v0
.end method

.method public onAttach()V
    .locals 0

    .line 1
    return-void
.end method

.method public onDetach()V
    .locals 0

    .line 1
    return-void
.end method

.method public setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable$Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method
