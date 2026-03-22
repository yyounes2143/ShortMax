.class public final Lcom/startshorts/androidplayer/ui/view/guide/model/c;
.super Ljava/lang/Object;
.source "HighlightView.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/ui/view/guide/model/HighLight;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lcom/startshorts/androidplayer/ui/view/guide/model/HighLight$Shape;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:I

.field private final d:I

.field private e:Lcom/startshorts/androidplayer/ui/view/guide/model/b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/startshorts/androidplayer/ui/view/guide/model/HighLight$Shape;II)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/ui/view/guide/model/HighLight$Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "mHole"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "shape"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/guide/model/c;->a:Landroid/view/View;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/view/guide/model/c;->b:Lcom/startshorts/androidplayer/ui/view/guide/model/HighLight$Shape;

    .line 17
    .line 18
    iput p3, p0, Lcom/startshorts/androidplayer/ui/view/guide/model/c;->c:I

    .line 19
    .line 20
    iput p4, p0, Lcom/startshorts/androidplayer/ui/view/guide/model/c;->d:I

    .line 21
    .line 22
    return-void
.end method

.method private final c(Landroid/view/View;)Landroid/graphics/RectF;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Llj/a;->a:Llj/a;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/guide/model/c;->a:Landroid/view/View;

    .line 9
    .line 10
    invoke-virtual {v1, p1, v2}, Llj/a;->a(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 17
    .line 18
    iget v2, p0, Lcom/startshorts/androidplayer/ui/view/guide/model/c;->d:I

    .line 19
    .line 20
    sub-int/2addr v1, v2

    .line 21
    int-to-float v1, v1

    .line 22
    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 23
    .line 24
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 25
    .line 26
    sub-int/2addr v1, v2

    .line 27
    int-to-float v1, v1

    .line 28
    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 29
    .line 30
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 31
    .line 32
    add-int/2addr v1, v2

    .line 33
    int-to-float v1, v1

    .line 34
    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 35
    .line 36
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 37
    .line 38
    add-int/2addr p1, v2

    .line 39
    int-to-float p1, p1

    .line 40
    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    .line 41
    .line 42
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;)Landroid/graphics/RectF;
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/guide/model/c;->f:Landroid/graphics/RectF;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/guide/model/c;->c(Landroid/view/View;)Landroid/graphics/RectF;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/guide/model/c;->f:Landroid/graphics/RectF;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/guide/model/c;->getOptions()Lcom/startshorts/androidplayer/ui/view/guide/model/b;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/guide/model/b;->a()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x1

    .line 23
    if-ne v0, v1, :cond_1

    .line 24
    .line 25
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/guide/model/c;->c(Landroid/view/View;)Landroid/graphics/RectF;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/guide/model/c;->f:Landroid/graphics/RectF;

    .line 30
    .line 31
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/guide/model/c;->f:Landroid/graphics/RectF;

    .line 32
    .line 33
    return-object p1
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/guide/model/c;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public d(Lcom/startshorts/androidplayer/ui/view/guide/model/b;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/view/guide/model/b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/guide/model/c;->e:Lcom/startshorts/androidplayer/ui/view/guide/model/b;

    .line 2
    .line 3
    return-void
.end method

.method public getOptions()Lcom/startshorts/androidplayer/ui/view/guide/model/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/guide/model/c;->e:Lcom/startshorts/androidplayer/ui/view/guide/model/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRadius()F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/guide/model/c;->a:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    div-int/lit8 v0, v0, 0x2

    .line 8
    .line 9
    int-to-double v0, v0

    .line 10
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/guide/model/c;->a:Landroid/view/View;

    .line 11
    .line 12
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    div-int/lit8 v2, v2, 0x2

    .line 17
    .line 18
    int-to-double v2, v2

    .line 19
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    iget v2, p0, Lcom/startshorts/androidplayer/ui/view/guide/model/c;->d:I

    .line 24
    .line 25
    int-to-double v2, v2

    .line 26
    add-double/2addr v0, v2

    .line 27
    double-to-float v0, v0

    .line 28
    return v0
.end method

.method public getShape()Lcom/startshorts/androidplayer/ui/view/guide/model/HighLight$Shape;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/guide/model/c;->b:Lcom/startshorts/androidplayer/ui/view/guide/model/HighLight$Shape;

    .line 2
    .line 3
    return-object v0
.end method
