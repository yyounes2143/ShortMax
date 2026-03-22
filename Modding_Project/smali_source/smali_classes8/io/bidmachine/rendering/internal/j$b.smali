.class public final Lio/bidmachine/rendering/internal/j$b;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Landroid/content/res/ColorStateList;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private D:Landroid/graphics/BlendMode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Lio/bidmachine/rendering/internal/j$c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private f:Landroid/content/res/ColorStateList;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:Landroid/content/res/ColorStateList;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:[Landroid/content/res/ColorStateList;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private i:[F
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private j:I

.field private k:F

.field private l:F

.field private m:F

.field private n:[F
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private o:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private p:I

.field private q:I

.field private r:F

.field private s:F

.field private t:I

.field private u:I

.field private v:Z

.field private w:F

.field private x:F

.field private y:F

.field private z:I


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/j$b;)V
    .locals 2
    .param p1    # Lio/bidmachine/rendering/internal/j$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "originalGradientState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lio/bidmachine/rendering/internal/j$b;->j:I

    .line 19
    iput v0, p0, Lio/bidmachine/rendering/internal/j$b;->p:I

    .line 20
    iput v0, p0, Lio/bidmachine/rendering/internal/j$b;->q:I

    const/high16 v1, 0x40400000    # 3.0f

    .line 21
    iput v1, p0, Lio/bidmachine/rendering/internal/j$b;->r:F

    const/high16 v1, 0x41100000    # 9.0f

    .line 22
    iput v1, p0, Lio/bidmachine/rendering/internal/j$b;->s:F

    .line 23
    iput v0, p0, Lio/bidmachine/rendering/internal/j$b;->t:I

    .line 24
    iput v0, p0, Lio/bidmachine/rendering/internal/j$b;->u:I

    const/high16 v0, 0x3f000000    # 0.5f

    .line 25
    iput v0, p0, Lio/bidmachine/rendering/internal/j$b;->w:F

    .line 26
    iput v0, p0, Lio/bidmachine/rendering/internal/j$b;->x:F

    .line 27
    iput v0, p0, Lio/bidmachine/rendering/internal/j$b;->y:F

    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 29
    invoke-static {}, Landroidx/compose/ui/graphics/q;->a()Landroid/graphics/BlendMode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    iput-object v0, p0, Lio/bidmachine/rendering/internal/j$b;->D:Landroid/graphics/BlendMode;

    .line 31
    iget v0, p1, Lio/bidmachine/rendering/internal/j$b;->a:I

    iput v0, p0, Lio/bidmachine/rendering/internal/j$b;->a:I

    .line 32
    iget v0, p1, Lio/bidmachine/rendering/internal/j$b;->b:I

    iput v0, p0, Lio/bidmachine/rendering/internal/j$b;->b:I

    .line 33
    iget v0, p1, Lio/bidmachine/rendering/internal/j$b;->c:I

    iput v0, p0, Lio/bidmachine/rendering/internal/j$b;->c:I

    .line 34
    iget v0, p1, Lio/bidmachine/rendering/internal/j$b;->d:I

    iput v0, p0, Lio/bidmachine/rendering/internal/j$b;->d:I

    .line 35
    iget-object v0, p1, Lio/bidmachine/rendering/internal/j$b;->e:Lio/bidmachine/rendering/internal/j$c;

    iput-object v0, p0, Lio/bidmachine/rendering/internal/j$b;->e:Lio/bidmachine/rendering/internal/j$c;

    .line 36
    iget-object v0, p1, Lio/bidmachine/rendering/internal/j$b;->f:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lio/bidmachine/rendering/internal/j$b;->f:Landroid/content/res/ColorStateList;

    .line 37
    iget-object v0, p1, Lio/bidmachine/rendering/internal/j$b;->g:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lio/bidmachine/rendering/internal/j$b;->g:Landroid/content/res/ColorStateList;

    .line 38
    iget-object v0, p1, Lio/bidmachine/rendering/internal/j$b;->h:[Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lio/bidmachine/rendering/internal/j$b;->h:[Landroid/content/res/ColorStateList;

    .line 40
    :cond_1
    iget-object v0, p1, Lio/bidmachine/rendering/internal/j$b;->i:[F

    if-eqz v0, :cond_2

    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lio/bidmachine/rendering/internal/j$b;->i:[F

    .line 42
    :cond_2
    iget v0, p1, Lio/bidmachine/rendering/internal/j$b;->j:I

    iput v0, p0, Lio/bidmachine/rendering/internal/j$b;->j:I

    .line 43
    iget v0, p1, Lio/bidmachine/rendering/internal/j$b;->k:F

    iput v0, p0, Lio/bidmachine/rendering/internal/j$b;->k:F

    .line 44
    iget v0, p1, Lio/bidmachine/rendering/internal/j$b;->l:F

    iput v0, p0, Lio/bidmachine/rendering/internal/j$b;->l:F

    .line 45
    iget v0, p1, Lio/bidmachine/rendering/internal/j$b;->m:F

    iput v0, p0, Lio/bidmachine/rendering/internal/j$b;->m:F

    .line 46
    iget-object v0, p1, Lio/bidmachine/rendering/internal/j$b;->n:[F

    if-eqz v0, :cond_3

    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lio/bidmachine/rendering/internal/j$b;->n:[F

    .line 48
    :cond_3
    iget-object v0, p1, Lio/bidmachine/rendering/internal/j$b;->o:Landroid/graphics/Rect;

    if-eqz v0, :cond_4

    .line 49
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lio/bidmachine/rendering/internal/j$b;->o:Landroid/graphics/Rect;

    .line 50
    :cond_4
    iget v0, p1, Lio/bidmachine/rendering/internal/j$b;->p:I

    iput v0, p0, Lio/bidmachine/rendering/internal/j$b;->p:I

    .line 51
    iget v0, p1, Lio/bidmachine/rendering/internal/j$b;->q:I

    iput v0, p0, Lio/bidmachine/rendering/internal/j$b;->q:I

    .line 52
    iget v0, p1, Lio/bidmachine/rendering/internal/j$b;->r:F

    iput v0, p0, Lio/bidmachine/rendering/internal/j$b;->r:F

    .line 53
    iget v0, p1, Lio/bidmachine/rendering/internal/j$b;->s:F

    iput v0, p0, Lio/bidmachine/rendering/internal/j$b;->s:F

    .line 54
    iget v0, p1, Lio/bidmachine/rendering/internal/j$b;->t:I

    iput v0, p0, Lio/bidmachine/rendering/internal/j$b;->t:I

    .line 55
    iget v0, p1, Lio/bidmachine/rendering/internal/j$b;->u:I

    iput v0, p0, Lio/bidmachine/rendering/internal/j$b;->u:I

    .line 56
    iget-boolean v0, p1, Lio/bidmachine/rendering/internal/j$b;->v:Z

    iput-boolean v0, p0, Lio/bidmachine/rendering/internal/j$b;->v:Z

    .line 57
    iget v0, p1, Lio/bidmachine/rendering/internal/j$b;->w:F

    iput v0, p0, Lio/bidmachine/rendering/internal/j$b;->w:F

    .line 58
    iget v0, p1, Lio/bidmachine/rendering/internal/j$b;->x:F

    iput v0, p0, Lio/bidmachine/rendering/internal/j$b;->x:F

    .line 59
    iget v0, p1, Lio/bidmachine/rendering/internal/j$b;->y:F

    iput v0, p0, Lio/bidmachine/rendering/internal/j$b;->y:F

    .line 60
    iget v0, p1, Lio/bidmachine/rendering/internal/j$b;->z:I

    iput v0, p0, Lio/bidmachine/rendering/internal/j$b;->z:I

    .line 61
    iget-boolean v0, p1, Lio/bidmachine/rendering/internal/j$b;->A:Z

    iput-boolean v0, p0, Lio/bidmachine/rendering/internal/j$b;->A:Z

    .line 62
    iget-boolean v0, p1, Lio/bidmachine/rendering/internal/j$b;->B:Z

    iput-boolean v0, p0, Lio/bidmachine/rendering/internal/j$b;->B:Z

    .line 63
    iget-object v0, p1, Lio/bidmachine/rendering/internal/j$b;->C:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lio/bidmachine/rendering/internal/j$b;->C:Landroid/content/res/ColorStateList;

    .line 64
    iget-object p1, p1, Lio/bidmachine/rendering/internal/j$b;->D:Landroid/graphics/BlendMode;

    iput-object p1, p0, Lio/bidmachine/rendering/internal/j$b;->D:Landroid/graphics/BlendMode;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/rendering/internal/j$c;[I)V
    .locals 2
    .param p1    # Lio/bidmachine/rendering/internal/j$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "orientation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lio/bidmachine/rendering/internal/j$b;->j:I

    .line 3
    iput v0, p0, Lio/bidmachine/rendering/internal/j$b;->p:I

    .line 4
    iput v0, p0, Lio/bidmachine/rendering/internal/j$b;->q:I

    const/high16 v1, 0x40400000    # 3.0f

    .line 5
    iput v1, p0, Lio/bidmachine/rendering/internal/j$b;->r:F

    const/high16 v1, 0x41100000    # 9.0f

    .line 6
    iput v1, p0, Lio/bidmachine/rendering/internal/j$b;->s:F

    .line 7
    iput v0, p0, Lio/bidmachine/rendering/internal/j$b;->t:I

    .line 8
    iput v0, p0, Lio/bidmachine/rendering/internal/j$b;->u:I

    const/high16 v0, 0x3f000000    # 0.5f

    .line 9
    iput v0, p0, Lio/bidmachine/rendering/internal/j$b;->w:F

    .line 10
    iput v0, p0, Lio/bidmachine/rendering/internal/j$b;->x:F

    .line 11
    iput v0, p0, Lio/bidmachine/rendering/internal/j$b;->y:F

    .line 12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 13
    invoke-static {}, Landroidx/compose/ui/graphics/q;->a()Landroid/graphics/BlendMode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    iput-object v0, p0, Lio/bidmachine/rendering/internal/j$b;->D:Landroid/graphics/BlendMode;

    .line 15
    iput-object p1, p0, Lio/bidmachine/rendering/internal/j$b;->e:Lio/bidmachine/rendering/internal/j$c;

    .line 16
    invoke-virtual {p0, p2}, Lio/bidmachine/rendering/internal/j$b;->n([I)V

    return-void
.end method


# virtual methods
.method public final A()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/j$b;->q:I

    .line 2
    .line 3
    return v0
.end method

.method public final B()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/j$b;->t:I

    .line 2
    .line 3
    return v0
.end method

.method public final C()F
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/j$b;->r:F

    .line 2
    .line 3
    return v0
.end method

.method public final D()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/rendering/internal/j$b;->A:Z

    .line 2
    .line 3
    return v0
.end method

.method public final E()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/rendering/internal/j$b;->B:Z

    .line 2
    .line 3
    return v0
.end method

.method public final F()Lio/bidmachine/rendering/internal/j$c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/j$b;->e:Lio/bidmachine/rendering/internal/j$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public final G()Landroid/graphics/Rect;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/j$b;->o:Landroid/graphics/Rect;

    .line 2
    .line 3
    return-object v0
.end method

.method public final H()[F
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/j$b;->i:[F

    .line 2
    .line 3
    return-object v0
.end method

.method public final I()F
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/j$b;->m:F

    .line 2
    .line 3
    return v0
.end method

.method public final J()[F
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/j$b;->n:[F

    .line 2
    .line 3
    return-object v0
.end method

.method public final K()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/j$b;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public final L()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/j$b;->f:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final M()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/j$b;->g:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final N()F
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/j$b;->l:F

    .line 2
    .line 3
    return v0
.end method

.method public final O()F
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/j$b;->k:F

    .line 2
    .line 3
    return v0
.end method

.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/j$b;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/j$b;->u:I

    .line 2
    .line 3
    return v0
.end method

.method public final c()F
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/j$b;->s:F

    .line 2
    .line 3
    return v0
.end method

.method public final d()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/j$b;->C:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/j$b;->p:I

    .line 2
    .line 3
    return v0
.end method

.method public final f()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/rendering/internal/j$b;->A:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lio/bidmachine/rendering/internal/j$b;->B:Z

    .line 5
    .line 6
    iget-object v1, p0, Lio/bidmachine/rendering/internal/j$b;->h:[Landroid/content/res/ColorStateList;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Lio/bidmachine/rendering/internal/j$b;->f:Landroid/content/res/ColorStateList;

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const/4 v2, 0x1

    .line 16
    if-eqz v1, :cond_3

    .line 17
    .line 18
    array-length v3, v1

    .line 19
    move v4, v0

    .line 20
    :goto_0
    if-ge v4, v3, :cond_2

    .line 21
    .line 22
    aget-object v5, v1, v4

    .line 23
    .line 24
    if-eqz v5, :cond_1

    .line 25
    .line 26
    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    invoke-static {v5}, Ltp/n;->a(I)Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-nez v5, :cond_1

    .line 35
    .line 36
    move v1, v2

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    move v1, v0

    .line 42
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    goto :goto_2

    .line 47
    :cond_3
    const/4 v1, 0x0

    .line 48
    :goto_2
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 49
    .line 50
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_4

    .line 55
    .line 56
    return-void

    .line 57
    :cond_4
    iput-boolean v2, p0, Lio/bidmachine/rendering/internal/j$b;->B:Z

    .line 58
    .line 59
    iget v1, p0, Lio/bidmachine/rendering/internal/j$b;->b:I

    .line 60
    .line 61
    if-nez v1, :cond_5

    .line 62
    .line 63
    iget v1, p0, Lio/bidmachine/rendering/internal/j$b;->m:F

    .line 64
    .line 65
    const/4 v3, 0x0

    .line 66
    cmpg-float v1, v1, v3

    .line 67
    .line 68
    if-gtz v1, :cond_5

    .line 69
    .line 70
    iget-object v1, p0, Lio/bidmachine/rendering/internal/j$b;->n:[F

    .line 71
    .line 72
    if-nez v1, :cond_5

    .line 73
    .line 74
    move v0, v2

    .line 75
    :cond_5
    iput-boolean v0, p0, Lio/bidmachine/rendering/internal/j$b;->A:Z

    .line 76
    .line 77
    return-void
.end method

.method public final g(F)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 3
    .line 4
    if-gez v1, :cond_0

    .line 5
    .line 6
    move p1, v0

    .line 7
    :cond_0
    iput p1, p0, Lio/bidmachine/rendering/internal/j$b;->m:F

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lio/bidmachine/rendering/internal/j$b;->n:[F

    .line 11
    .line 12
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/j$b;->f()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public getChangingConfigurations()I
    .locals 3

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/j$b;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/rendering/internal/j$b;->g:Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v1, v2

    .line 14
    :goto_0
    or-int/2addr v0, v1

    .line 15
    iget-object v1, p0, Lio/bidmachine/rendering/internal/j$b;->f:Landroid/content/res/ColorStateList;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v1, v2

    .line 25
    :goto_1
    or-int/2addr v0, v1

    .line 26
    iget-object v1, p0, Lio/bidmachine/rendering/internal/j$b;->C:Landroid/content/res/ColorStateList;

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    :cond_2
    or-int/2addr v0, v2

    .line 35
    return v0
.end method

.method public final h(FI)V
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/rendering/internal/j$b;->y:F

    .line 2
    .line 3
    iput p2, p0, Lio/bidmachine/rendering/internal/j$b;->z:I

    .line 4
    .line 5
    return-void
.end method

.method public final i(I)V
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/rendering/internal/j$b;->a:I

    .line 2
    .line 3
    return-void
.end method

.method public final j(ILandroid/content/res/ColorStateList;FF)V
    .locals 0
    .param p2    # Landroid/content/res/ColorStateList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lio/bidmachine/rendering/internal/j$b;->j:I

    .line 2
    .line 3
    iput-object p2, p0, Lio/bidmachine/rendering/internal/j$b;->g:Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    iput p3, p0, Lio/bidmachine/rendering/internal/j$b;->k:F

    .line 6
    .line 7
    iput p4, p0, Lio/bidmachine/rendering/internal/j$b;->l:F

    .line 8
    .line 9
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/j$b;->f()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final k(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/bidmachine/rendering/internal/j$b;->h:[Landroid/content/res/ColorStateList;

    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/rendering/internal/j$b;->f:Landroid/content/res/ColorStateList;

    .line 5
    .line 6
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/j$b;->f()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final l(Landroid/graphics/BlendMode;)V
    .locals 0
    .param p1    # Landroid/graphics/BlendMode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/j$b;->D:Landroid/graphics/BlendMode;

    .line 2
    .line 3
    return-void
.end method

.method public final m(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/rendering/internal/j$b;->v:Z

    .line 2
    .line 3
    return-void
.end method

.method public final n([I)V
    .locals 6
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    iget-object v1, p0, Lio/bidmachine/rendering/internal/j$b;->h:[Landroid/content/res/ColorStateList;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    array-length v2, v1

    .line 9
    array-length v3, p1

    .line 10
    if-eq v2, v3, :cond_1

    .line 11
    .line 12
    :cond_0
    array-length v1, p1

    .line 13
    new-array v1, v1, [Landroid/content/res/ColorStateList;

    .line 14
    .line 15
    :cond_1
    array-length v2, p1

    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_0
    if-ge v3, v2, :cond_3

    .line 18
    .line 19
    aget v4, p1, v3

    .line 20
    .line 21
    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    const-string v5, "valueOf(it)"

    .line 26
    .line 27
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    aput-object v4, v1, v3

    .line 31
    .line 32
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    move-object v1, v0

    .line 36
    :cond_3
    iput-object v1, p0, Lio/bidmachine/rendering/internal/j$b;->h:[Landroid/content/res/ColorStateList;

    .line 37
    .line 38
    iput-object v0, p0, Lio/bidmachine/rendering/internal/j$b;->f:Landroid/content/res/ColorStateList;

    .line 39
    .line 40
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/j$b;->f()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/rendering/internal/j;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lio/bidmachine/rendering/internal/j;-><init>(Lio/bidmachine/rendering/internal/j$b;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public final o()Landroid/graphics/BlendMode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/j$b;->D:Landroid/graphics/BlendMode;

    .line 2
    .line 3
    return-object v0
.end method

.method public final p(I)V
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/rendering/internal/j$b;->c:I

    .line 2
    .line 3
    return-void
.end method

.method public final q(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/j$b;->C:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    return-void
.end method

.method public final r()F
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/j$b;->w:F

    .line 2
    .line 3
    return v0
.end method

.method public final s()F
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/j$b;->x:F

    .line 2
    .line 3
    return v0
.end method

.method public final t()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/j$b;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public final u()[I
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/j$b;->h:[Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lio/bidmachine/rendering/internal/j$b$a;->d:Lio/bidmachine/rendering/internal/j$b$a;

    .line 6
    .line 7
    invoke-static {v0, v1}, Ltp/n;->b([Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)[I

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method

.method public final v()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/rendering/internal/j$b;->v:Z

    .line 2
    .line 3
    return v0
.end method

.method public final w()[Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/j$b;->h:[Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final x()F
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/j$b;->y:F

    .line 2
    .line 3
    return v0
.end method

.method public final y()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/j$b;->z:I

    .line 2
    .line 3
    return v0
.end method

.method public final z()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/j$b;->c:I

    .line 2
    .line 3
    return v0
.end method
