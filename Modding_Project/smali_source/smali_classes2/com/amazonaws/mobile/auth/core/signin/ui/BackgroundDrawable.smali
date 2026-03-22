.class public Lcom/amazonaws/mobile/auth/core/signin/ui/BackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BackgroundDrawable.java"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Paint;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/BackgroundDrawable;->a:Landroid/graphics/Paint;

    .line 10
    .line 11
    iput p1, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/BackgroundDrawable;->b:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/BackgroundDrawable;->a:Landroid/graphics/Paint;

    .line 6
    .line 7
    iget v2, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/BackgroundDrawable;->b:I

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    int-to-float v5, v1

    .line 17
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    int-to-float v6, v0

    .line 22
    iget-object v7, p0, Lcom/amazonaws/mobile/auth/core/signin/ui/BackgroundDrawable;->a:Landroid/graphics/Paint;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    const/4 v4, 0x0

    .line 26
    move-object v2, p1

    .line 27
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 28
    .line 29
    .line 30
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
