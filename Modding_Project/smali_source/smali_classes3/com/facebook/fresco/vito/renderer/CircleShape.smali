.class public final Lcom/facebook/fresco/vito/renderer/CircleShape;
.super Lcom/facebook/fresco/vito/renderer/Shape;
.source "Shape.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final antiAliased:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final cx:F

.field private final cy:F

.field private final radius:F


# direct methods
.method public constructor <init>(FFFLjava/lang/Boolean;)V
    .locals 1
    .param p4    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/facebook/fresco/vito/renderer/Shape;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    iput p1, p0, Lcom/facebook/fresco/vito/renderer/CircleShape;->cx:F

    .line 4
    iput p2, p0, Lcom/facebook/fresco/vito/renderer/CircleShape;->cy:F

    .line 5
    iput p3, p0, Lcom/facebook/fresco/vito/renderer/CircleShape;->radius:F

    .line 6
    iput-object p4, p0, Lcom/facebook/fresco/vito/renderer/CircleShape;->antiAliased:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(FFFLjava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/fresco/vito/renderer/CircleShape;-><init>(FFFLjava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 4
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
    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/CircleShape;->antiAliased:Ljava/lang/Boolean;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/graphics/Paint;->isAntiAlias()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget-object v1, p0, Lcom/facebook/fresco/vito/renderer/CircleShape;->antiAliased:Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/facebook/fresco/vito/renderer/CircleShape;->cx:F

    .line 29
    .line 30
    iget v2, p0, Lcom/facebook/fresco/vito/renderer/CircleShape;->cy:F

    .line 31
    .line 32
    iget v3, p0, Lcom/facebook/fresco/vito/renderer/CircleShape;->radius:F

    .line 33
    .line 34
    invoke-virtual {p1, v1, v2, v3, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget v0, p0, Lcom/facebook/fresco/vito/renderer/CircleShape;->cx:F

    .line 42
    .line 43
    iget v1, p0, Lcom/facebook/fresco/vito/renderer/CircleShape;->cy:F

    .line 44
    .line 45
    iget v2, p0, Lcom/facebook/fresco/vito/renderer/CircleShape;->radius:F

    .line 46
    .line 47
    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void
.end method
