.class public final Lcom/facebook/fresco/vito/renderer/RoundedRectShape;
.super Lcom/facebook/fresco/vito/renderer/Shape;
.source "Shape.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final rect:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final rx:F

.field private final ry:F


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;FF)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "rect"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0}, Lcom/facebook/fresco/vito/renderer/Shape;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/facebook/fresco/vito/renderer/RoundedRectShape;->rect:Landroid/graphics/RectF;

    .line 11
    .line 12
    iput p2, p0, Lcom/facebook/fresco/vito/renderer/RoundedRectShape;->rx:F

    .line 13
    .line 14
    iput p3, p0, Lcom/facebook/fresco/vito/renderer/RoundedRectShape;->ry:F

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "canvas"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "paint"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/RoundedRectShape;->rect:Landroid/graphics/RectF;

    .line 12
    .line 13
    iget v1, p0, Lcom/facebook/fresco/vito/renderer/RoundedRectShape;->rx:F

    .line 14
    .line 15
    iget v2, p0, Lcom/facebook/fresco/vito/renderer/RoundedRectShape;->ry:F

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final getRect()Landroid/graphics/RectF;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/RoundedRectShape;->rect:Landroid/graphics/RectF;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRx()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/vito/renderer/RoundedRectShape;->rx:F

    .line 2
    .line 3
    return v0
.end method

.method public final getRy()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/vito/renderer/RoundedRectShape;->ry:F

    .line 2
    .line 3
    return v0
.end method
