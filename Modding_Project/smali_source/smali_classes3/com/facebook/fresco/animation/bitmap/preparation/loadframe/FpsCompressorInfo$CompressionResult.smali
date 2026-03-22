.class public final Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo$CompressionResult;
.super Ljava/lang/Object;
.source "FpsCompressorInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CompressionResult"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final compressedAnim:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lo2/a<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final realToReducedIndex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final removedFrames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo2/a<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "+",
            "Lo2/a<",
            "Landroid/graphics/Bitmap;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lo2/a<",
            "Landroid/graphics/Bitmap;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "compressedAnim"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "realToReducedIndex"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "removedFrames"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo$CompressionResult;->compressedAnim:Ljava/util/Map;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo$CompressionResult;->realToReducedIndex:Ljava/util/Map;

    .line 22
    .line 23
    iput-object p3, p0, Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo$CompressionResult;->removedFrames:Ljava/util/List;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final getCompressedAnim()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lo2/a<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo$CompressionResult;->compressedAnim:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRealToReducedIndex()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo$CompressionResult;->realToReducedIndex:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRemovedFrames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo2/a<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo$CompressionResult;->removedFrames:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method
