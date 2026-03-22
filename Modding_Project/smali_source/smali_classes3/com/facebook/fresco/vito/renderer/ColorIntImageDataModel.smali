.class public final Lcom/facebook/fresco/vito/renderer/ColorIntImageDataModel;
.super Lcom/facebook/fresco/vito/renderer/ImageDataModel;
.source "ImageDataModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final colorInt:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/facebook/fresco/vito/renderer/ImageDataModel;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    .line 4
    .line 5
    iput p1, p0, Lcom/facebook/fresco/vito/renderer/ColorIntImageDataModel;->colorInt:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final getColorInt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/vito/renderer/ColorIntImageDataModel;->colorInt:I

    .line 2
    .line 3
    return v0
.end method
