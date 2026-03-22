.class public Lcom/amazonaws/mobile/auth/core/signin/ui/SplitBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SplitBackgroundDrawable.java"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/SplitBackgroundDrawable;->b:I

    .line 6
    .line 7
    new-instance v0, Landroid/graphics/Paint;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/SplitBackgroundDrawable;->a:Landroid/graphics/Paint;

    .line 13
    .line 14
    iput p2, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/SplitBackgroundDrawable;->c:I

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/amazonaws/mobile/auth/core/signin/ui/SplitBackgroundDrawable;->a(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/SplitBackgroundDrawable;->b:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/SplitBackgroundDrawable;->a:Landroid/graphics/Paint;

    .line 6
    .line 7
    iget v2, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/SplitBackgroundDrawable;->c:I

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    .line 11
    .line 12
    iget v1, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/SplitBackgroundDrawable;->b:I

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-ge v1, v2, :cond_0

    .line 19
    .line 20
    iget v1, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/SplitBackgroundDrawable;->b:I

    .line 21
    .line 22
    :goto_0
    int-to-float v1, v1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    goto :goto_0

    .line 29
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    int-to-float v5, v2

    .line 34
    iget-object v7, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/SplitBackgroundDrawable;->a:Landroid/graphics/Paint;

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    const/4 v4, 0x0

    .line 38
    move-object v2, p1

    .line 39
    move v6, v1

    .line 40
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/SplitBackgroundDrawable;->a:Landroid/graphics/Paint;

    .line 44
    .line 45
    const/4 v3, -0x1

    .line 46
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    int-to-float v5, v2

    .line 54
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    int-to-float v6, v0

    .line 59
    iget-object v7, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/SplitBackgroundDrawable;->a:Landroid/graphics/Paint;

    .line 60
    .line 61
    const/4 v3, 0x0

    .line 62
    move-object v2, p1

    .line 63
    move v4, v1

    .line 64
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .line 1
    const/4 v0, -0x3

    .line 2
    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    return-void
.end method
