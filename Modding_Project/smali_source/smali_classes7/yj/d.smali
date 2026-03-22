.class public final Lyj/d;
.super Lyj/a;
.source "TrackRoundRectDrawable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final e:Z


# direct methods
.method public constructor <init>(Landroid/content/res/ColorStateList;Z)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "tintStateList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lyj/a;-><init>(Landroid/content/res/ColorStateList;)V

    iput-boolean p2, p0, Lyj/d;->e:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/res/ColorStateList;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lyj/d;-><init>(Landroid/content/res/ColorStateList;Z)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 7
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
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 16
    .line 17
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Landroid/graphics/RectF;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 27
    .line 28
    .line 29
    const/high16 v1, 0x41a00000    # 20.0f

    .line 30
    .line 31
    invoke-virtual {p1, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 32
    .line 33
    .line 34
    iget-boolean v0, p0, Lyj/d;->e:Z

    .line 35
    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 43
    .line 44
    int-to-float v2, v0

    .line 45
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 50
    .line 51
    int-to-float v3, v0

    .line 52
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 57
    .line 58
    int-to-float v0, v0

    .line 59
    const/high16 v1, 0x41200000    # 10.0f

    .line 60
    .line 61
    sub-float v4, v0, v1

    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 68
    .line 69
    int-to-float v5, v0

    .line 70
    move-object v1, p1

    .line 71
    move-object v6, p2

    .line 72
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 73
    .line 74
    .line 75
    :cond_0
    return-void
.end method
