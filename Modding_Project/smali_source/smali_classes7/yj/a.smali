.class public abstract Lyj/a;
.super Landroid/graphics/drawable/Drawable;
.source "StateDrawable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private a:Landroid/content/res/ColorStateList;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final b:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "tintStateList"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 7
    .line 8
    .line 9
    const/16 v0, 0xff

    .line 10
    .line 11
    iput v0, p0, Lyj/a;->d:I

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lyj/a;->c(Landroid/content/res/ColorStateList;)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Landroid/graphics/Paint;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lyj/a;->b:Landroid/graphics/Paint;

    .line 23
    .line 24
    return-void
.end method

.method private final d([I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lyj/a;->a:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v2, p0, Lyj/a;->c:I

    .line 7
    .line 8
    invoke-virtual {v0, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move p1, v1

    .line 14
    :goto_0
    iget v0, p0, Lyj/a;->c:I

    .line 15
    .line 16
    if-eq p1, v0, :cond_1

    .line 17
    .line 18
    iput p1, p0, Lyj/a;->c:I

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    return p1

    .line 25
    :cond_1
    return v1
.end method


# virtual methods
.method public abstract a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final b(I)I
    .locals 2

    .line 1
    iget v0, p0, Lyj/a;->d:I

    .line 2
    .line 3
    shr-int/lit8 v1, v0, 0x7

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    mul-int/2addr p1, v0

    .line 7
    shr-int/lit8 p1, p1, 0x8

    .line 8
    .line 9
    return p1
.end method

.method public final c(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "tintStateList"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lyj/a;->a:Landroid/content/res/ColorStateList;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iput p1, p0, Lyj/a;->c:I

    .line 13
    .line 14
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
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
    iget-object v0, p0, Lyj/a;->b:Landroid/graphics/Paint;

    .line 7
    .line 8
    iget v1, p0, Lyj/a;->c:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    .line 12
    .line 13
    iget v0, p0, Lyj/a;->c:I

    .line 14
    .line 15
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p0, v0}, Lyj/a;->b(I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Lyj/a;->b:Landroid/graphics/Paint;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lyj/a;->b:Landroid/graphics/Paint;

    .line 29
    .line 30
    invoke-virtual {p0, p1, v0}, Lyj/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    iget v0, p0, Lyj/a;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 1
    const/4 v0, -0x3

    .line 2
    return v0
.end method

.method public isStateful()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lyj/a;->a:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    if-nez v0, :cond_1

    .line 13
    .line 14
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    :cond_1
    const/4 v1, 0x1

    .line 21
    :cond_2
    return v1
.end method

.method public setAlpha(I)V
    .locals 0

    .line 1
    iput p1, p0, Lyj/a;->d:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lyj/a;->b:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setState([I)Z
    .locals 1
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "stateSet"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-direct {p0, p1}, Lyj/a;->d([I)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 22
    :goto_1
    return p1
.end method
