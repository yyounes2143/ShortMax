.class public final Lcoil/compose/AsyncImagePainter;
.super Landroidx/compose/ui/graphics/painter/Painter;
.source "AsyncImagePainter.kt"

# interfaces
.implements Landroidx/compose/runtime/RememberObserver;


# annotations
.annotation build Landroidx/compose/runtime/Stable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/compose/AsyncImagePainter$b;,
        Lcoil/compose/AsyncImagePainter$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final p:Lcoil/compose/AsyncImagePainter$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final q:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcoil/compose/AsyncImagePainter$b;",
            "Lcoil/compose/AsyncImagePainter$b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:Lgt/g0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final b:Lkt/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkt/e<",
            "Landroidx/compose/ui/geometry/Size;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private f:Lcoil/compose/AsyncImagePainter$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private g:Landroidx/compose/ui/graphics/painter/Painter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcoil/compose/AsyncImagePainter$b;",
            "+",
            "Lcoil/compose/AsyncImagePainter$b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private i:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcoil/compose/AsyncImagePainter$b;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private j:Landroidx/compose/ui/layout/ContentScale;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private k:I

.field private l:Z

.field private final m:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final n:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final o:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcoil/compose/AsyncImagePainter$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcoil/compose/AsyncImagePainter$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcoil/compose/AsyncImagePainter;->p:Lcoil/compose/AsyncImagePainter$a;

    .line 8
    .line 9
    sget-object v0, Lcoil/compose/AsyncImagePainter$Companion$DefaultTransform$1;->d:Lcoil/compose/AsyncImagePainter$Companion$DefaultTransform$1;

    .line 10
    .line 11
    sput-object v0, Lcoil/compose/AsyncImagePainter;->q:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lm0/f;Lcoil/ImageLoader;)V
    .locals 4
    .param p1    # Lm0/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcoil/ImageLoader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/graphics/painter/Painter;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Size$Companion;->getZero-NH-jbRc()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->box-impl(J)Landroidx/compose/ui/geometry/Size;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lkotlinx/coroutines/flow/o;->a(Ljava/lang/Object;)Lkt/e;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcoil/compose/AsyncImagePainter;->b:Lkt/e;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    const/4 v1, 0x2

    .line 22
    invoke-static {v0, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iput-object v2, p0, Lcoil/compose/AsyncImagePainter;->c:Landroidx/compose/runtime/MutableState;

    .line 27
    .line 28
    const/high16 v2, 0x3f800000    # 1.0f

    .line 29
    .line 30
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {v2, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iput-object v2, p0, Lcoil/compose/AsyncImagePainter;->d:Landroidx/compose/runtime/MutableState;

    .line 39
    .line 40
    invoke-static {v0, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    iput-object v2, p0, Lcoil/compose/AsyncImagePainter;->e:Landroidx/compose/runtime/MutableState;

    .line 45
    .line 46
    sget-object v2, Lcoil/compose/AsyncImagePainter$b$a;->a:Lcoil/compose/AsyncImagePainter$b$a;

    .line 47
    .line 48
    iput-object v2, p0, Lcoil/compose/AsyncImagePainter;->f:Lcoil/compose/AsyncImagePainter$b;

    .line 49
    .line 50
    sget-object v3, Lcoil/compose/AsyncImagePainter;->q:Lkotlin/jvm/functions/Function1;

    .line 51
    .line 52
    iput-object v3, p0, Lcoil/compose/AsyncImagePainter;->h:Lkotlin/jvm/functions/Function1;

    .line 53
    .line 54
    sget-object v3, Landroidx/compose/ui/layout/ContentScale;->Companion:Landroidx/compose/ui/layout/ContentScale$Companion;

    .line 55
    .line 56
    invoke-virtual {v3}, Landroidx/compose/ui/layout/ContentScale$Companion;->getFit()Landroidx/compose/ui/layout/ContentScale;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    iput-object v3, p0, Lcoil/compose/AsyncImagePainter;->j:Landroidx/compose/ui/layout/ContentScale;

    .line 61
    .line 62
    sget-object v3, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    .line 63
    .line 64
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->getDefaultFilterQuality-f-v9h1I()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    iput v3, p0, Lcoil/compose/AsyncImagePainter;->k:I

    .line 69
    .line 70
    invoke-static {v2, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    iput-object v2, p0, Lcoil/compose/AsyncImagePainter;->m:Landroidx/compose/runtime/MutableState;

    .line 75
    .line 76
    invoke-static {p1, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iput-object p1, p0, Lcoil/compose/AsyncImagePainter;->n:Landroidx/compose/runtime/MutableState;

    .line 81
    .line 82
    invoke-static {p2, v0, v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iput-object p1, p0, Lcoil/compose/AsyncImagePainter;->o:Landroidx/compose/runtime/MutableState;

    .line 87
    .line 88
    return-void
.end method

.method private final A(Landroid/graphics/drawable/Drawable;)Landroidx/compose/ui/graphics/painter/Painter;
    .locals 8

    .line 1
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Landroidx/compose/ui/graphics/AndroidImageBitmap_androidKt;->asImageBitmap(Landroid/graphics/Bitmap;)Landroidx/compose/ui/graphics/ImageBitmap;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget v5, p0, Lcoil/compose/AsyncImagePainter;->k:I

    .line 16
    .line 17
    const/4 v6, 0x6

    .line 18
    const/4 v7, 0x0

    .line 19
    const-wide/16 v1, 0x0

    .line 20
    .line 21
    const-wide/16 v3, 0x0

    .line 22
    .line 23
    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/graphics/painter/BitmapPainterKt;->BitmapPainter-QZhYCtY$default(Landroidx/compose/ui/graphics/ImageBitmap;JJIILjava/lang/Object;)Landroidx/compose/ui/graphics/painter/BitmapPainter;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    new-instance v0, Landroidx/compose/ui/graphics/painter/ColorPainter;

    .line 33
    .line 34
    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-static {p1}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    .line 41
    .line 42
    .line 43
    move-result-wide v1

    .line 44
    const/4 p1, 0x0

    .line 45
    invoke-direct {v0, v1, v2, p1}, Landroidx/compose/ui/graphics/painter/ColorPainter;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    move-object p1, v0

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    new-instance v0, Lcom/google/accompanist/drawablepainter/DrawablePainter;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {v0, p1}, Lcom/google/accompanist/drawablepainter/DrawablePainter;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :goto_1
    return-object p1
.end method

.method private final B(Lm0/g;)Lcoil/compose/AsyncImagePainter$b;
    .locals 2

    .line 1
    instance-of v0, p1, Lm0/m;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcoil/compose/AsyncImagePainter$b$d;

    .line 6
    .line 7
    check-cast p1, Lm0/m;

    .line 8
    .line 9
    invoke-virtual {p1}, Lm0/m;->a()Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {p0, v1}, Lcoil/compose/AsyncImagePainter;->A(Landroid/graphics/drawable/Drawable;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1, p1}, Lcoil/compose/AsyncImagePainter$b$d;-><init>(Landroidx/compose/ui/graphics/painter/Painter;Lm0/m;)V

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    instance-of v0, p1, Lm0/d;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    new-instance v0, Lcoil/compose/AsyncImagePainter$b$b;

    .line 26
    .line 27
    invoke-virtual {p1}, Lm0/g;->a()Landroid/graphics/drawable/Drawable;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-direct {p0, v1}, Lcoil/compose/AsyncImagePainter;->A(Landroid/graphics/drawable/Drawable;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v1, 0x0

    .line 39
    :goto_0
    check-cast p1, Lm0/d;

    .line 40
    .line 41
    invoke-direct {v0, v1, p1}, Lcoil/compose/AsyncImagePainter$b$b;-><init>(Landroidx/compose/ui/graphics/painter/Painter;Lm0/d;)V

    .line 42
    .line 43
    .line 44
    :goto_1
    return-object v0

    .line 45
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 46
    .line 47
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 48
    .line 49
    .line 50
    throw p1
.end method

.method private final C(Lm0/f;)Lm0/f;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {p1, v0, v1, v0}, Lm0/f;->R(Lm0/f;Landroid/content/Context;ILjava/lang/Object;)Lm0/f$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcoil/compose/AsyncImagePainter$c;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcoil/compose/AsyncImagePainter$c;-><init>(Lcoil/compose/AsyncImagePainter;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lm0/f$a;->l(Lo0/a;)Lm0/f$a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1}, Lm0/f;->q()Lm0/b;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lm0/b;->m()Ln0/h;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    new-instance v1, Lcoil/compose/AsyncImagePainter$updateRequest$2$1;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcoil/compose/AsyncImagePainter$updateRequest$2$1;-><init>(Lcoil/compose/AsyncImagePainter;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lm0/f$a;->k(Ln0/h;)Lm0/f$a;

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {p1}, Lm0/f;->q()Lm0/b;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lm0/b;->l()Lcoil/size/Scale;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-nez v1, :cond_1

    .line 43
    .line 44
    iget-object v1, p0, Lcoil/compose/AsyncImagePainter;->j:Landroidx/compose/ui/layout/ContentScale;

    .line 45
    .line 46
    invoke-static {v1}, Lc0/c;->f(Landroidx/compose/ui/layout/ContentScale;)Lcoil/size/Scale;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Lm0/f$a;->j(Lcoil/size/Scale;)Lm0/f$a;

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-virtual {p1}, Lm0/f;->q()Lm0/b;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lm0/b;->k()Lcoil/size/Precision;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    sget-object v1, Lcoil/size/Precision;->EXACT:Lcoil/size/Precision;

    .line 62
    .line 63
    if-eq p1, v1, :cond_2

    .line 64
    .line 65
    sget-object p1, Lcoil/size/Precision;->INEXACT:Lcoil/size/Precision;

    .line 66
    .line 67
    invoke-virtual {v0, p1}, Lm0/f$a;->d(Lcoil/size/Precision;)Lm0/f$a;

    .line 68
    .line 69
    .line 70
    :cond_2
    invoke-virtual {v0}, Lm0/f$a;->a()Lm0/f;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    return-object p1
.end method

.method private final D(Lcoil/compose/AsyncImagePainter$b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcoil/compose/AsyncImagePainter;->f:Lcoil/compose/AsyncImagePainter$b;

    .line 2
    .line 3
    iget-object v1, p0, Lcoil/compose/AsyncImagePainter;->h:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcoil/compose/AsyncImagePainter$b;

    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcoil/compose/AsyncImagePainter;->z(Lcoil/compose/AsyncImagePainter$b;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0, p1}, Lcoil/compose/AsyncImagePainter;->m(Lcoil/compose/AsyncImagePainter$b;Lcoil/compose/AsyncImagePainter$b;)Lcoil/compose/CrossfadePainter;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p1}, Lcoil/compose/AsyncImagePainter$b;->a()Landroidx/compose/ui/graphics/painter/Painter;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :goto_0
    invoke-direct {p0, v1}, Lcoil/compose/AsyncImagePainter;->y(Landroidx/compose/ui/graphics/painter/Painter;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcoil/compose/AsyncImagePainter;->a:Lgt/g0;

    .line 29
    .line 30
    if-eqz v1, :cond_4

    .line 31
    .line 32
    invoke-virtual {v0}, Lcoil/compose/AsyncImagePainter$b;->a()Landroidx/compose/ui/graphics/painter/Painter;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p1}, Lcoil/compose/AsyncImagePainter$b;->a()Landroidx/compose/ui/graphics/painter/Painter;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-eq v1, v2, :cond_4

    .line 41
    .line 42
    invoke-virtual {v0}, Lcoil/compose/AsyncImagePainter$b;->a()Landroidx/compose/ui/graphics/painter/Painter;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    instance-of v1, v0, Landroidx/compose/runtime/RememberObserver;

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    check-cast v0, Landroidx/compose/runtime/RememberObserver;

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    move-object v0, v2

    .line 55
    :goto_1
    if-eqz v0, :cond_2

    .line 56
    .line 57
    invoke-interface {v0}, Landroidx/compose/runtime/RememberObserver;->onForgotten()V

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-virtual {p1}, Lcoil/compose/AsyncImagePainter$b;->a()Landroidx/compose/ui/graphics/painter/Painter;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    instance-of v1, v0, Landroidx/compose/runtime/RememberObserver;

    .line 65
    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    move-object v2, v0

    .line 69
    check-cast v2, Landroidx/compose/runtime/RememberObserver;

    .line 70
    .line 71
    :cond_3
    if-eqz v2, :cond_4

    .line 72
    .line 73
    invoke-interface {v2}, Landroidx/compose/runtime/RememberObserver;->onRemembered()V

    .line 74
    .line 75
    .line 76
    :cond_4
    iget-object v0, p0, Lcoil/compose/AsyncImagePainter;->i:Lkotlin/jvm/functions/Function1;

    .line 77
    .line 78
    if-eqz v0, :cond_5

    .line 79
    .line 80
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    :cond_5
    return-void
.end method

.method public static final synthetic a()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 1
    sget-object v0, Lcoil/compose/AsyncImagePainter;->q:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic b(Lcoil/compose/AsyncImagePainter;)Lkt/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil/compose/AsyncImagePainter;->b:Lkt/e;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c(Lcoil/compose/AsyncImagePainter;Landroid/graphics/drawable/Drawable;)Landroidx/compose/ui/graphics/painter/Painter;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcoil/compose/AsyncImagePainter;->A(Landroid/graphics/drawable/Drawable;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d(Lcoil/compose/AsyncImagePainter;Lm0/g;)Lcoil/compose/AsyncImagePainter$b;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcoil/compose/AsyncImagePainter;->B(Lm0/g;)Lcoil/compose/AsyncImagePainter$b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic e(Lcoil/compose/AsyncImagePainter;Lm0/f;)Lm0/f;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcoil/compose/AsyncImagePainter;->C(Lm0/f;)Lm0/f;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic f(Lcoil/compose/AsyncImagePainter;Lcoil/compose/AsyncImagePainter$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcoil/compose/AsyncImagePainter;->D(Lcoil/compose/AsyncImagePainter$b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcoil/compose/AsyncImagePainter;->a:Lgt/g0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/i;->e(Lgt/g0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iput-object v1, p0, Lcoil/compose/AsyncImagePainter;->a:Lgt/g0;

    .line 11
    .line 12
    return-void
.end method

.method private final h()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcoil/compose/AsyncImagePainter;->d:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private final i()Landroidx/compose/ui/graphics/ColorFilter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcoil/compose/AsyncImagePainter;->e:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/compose/ui/graphics/ColorFilter;

    .line 8
    .line 9
    return-object v0
.end method

.method private final k()Landroidx/compose/ui/graphics/painter/Painter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcoil/compose/AsyncImagePainter;->c:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/compose/ui/graphics/painter/Painter;

    .line 8
    .line 9
    return-object v0
.end method

.method private final m(Lcoil/compose/AsyncImagePainter$b;Lcoil/compose/AsyncImagePainter$b;)Lcoil/compose/CrossfadePainter;
    .locals 11

    .line 1
    instance-of v0, p2, Lcoil/compose/AsyncImagePainter$b$d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v0, p2

    .line 7
    check-cast v0, Lcoil/compose/AsyncImagePainter$b$d;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcoil/compose/AsyncImagePainter$b$d;->b()Lm0/m;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    instance-of v0, p2, Lcoil/compose/AsyncImagePainter$b$b;

    .line 15
    .line 16
    if-eqz v0, :cond_4

    .line 17
    .line 18
    move-object v0, p2

    .line 19
    check-cast v0, Lcoil/compose/AsyncImagePainter$b$b;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcoil/compose/AsyncImagePainter$b$b;->b()Lm0/d;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :goto_0
    invoke-virtual {v0}, Lm0/g;->b()Lm0/f;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Lm0/f;->P()Lq0/c$a;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {}, Lc0/a;->a()Lc0/a$a;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-interface {v2, v3, v0}, Lq0/c$a;->a(Lq0/d;Lm0/g;)Lq0/c;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    instance-of v3, v2, Lq0/a;

    .line 42
    .line 43
    if-eqz v3, :cond_4

    .line 44
    .line 45
    invoke-virtual {p1}, Lcoil/compose/AsyncImagePainter$b;->a()Landroidx/compose/ui/graphics/painter/Painter;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    instance-of p1, p1, Lcoil/compose/AsyncImagePainter$b$c;

    .line 50
    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    move-object v5, v3

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    move-object v5, v1

    .line 56
    :goto_1
    invoke-virtual {p2}, Lcoil/compose/AsyncImagePainter$b;->a()Landroidx/compose/ui/graphics/painter/Painter;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    iget-object v7, p0, Lcoil/compose/AsyncImagePainter;->j:Landroidx/compose/ui/layout/ContentScale;

    .line 61
    .line 62
    check-cast v2, Lq0/a;

    .line 63
    .line 64
    invoke-virtual {v2}, Lq0/a;->b()I

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    instance-of p1, v0, Lm0/m;

    .line 69
    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    check-cast v0, Lm0/m;

    .line 73
    .line 74
    invoke-virtual {v0}, Lm0/m;->d()Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-nez p1, :cond_2

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_2
    const/4 p1, 0x0

    .line 82
    :goto_2
    move v9, p1

    .line 83
    goto :goto_4

    .line 84
    :cond_3
    :goto_3
    const/4 p1, 0x1

    .line 85
    goto :goto_2

    .line 86
    :goto_4
    invoke-virtual {v2}, Lq0/a;->c()Z

    .line 87
    .line 88
    .line 89
    move-result v10

    .line 90
    new-instance p1, Lcoil/compose/CrossfadePainter;

    .line 91
    .line 92
    move-object v4, p1

    .line 93
    invoke-direct/range {v4 .. v10}, Lcoil/compose/CrossfadePainter;-><init>(Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/layout/ContentScale;IZZ)V

    .line 94
    .line 95
    .line 96
    return-object p1

    .line 97
    :cond_4
    return-object v1
.end method

.method private final n(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcoil/compose/AsyncImagePainter;->d:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final o(Landroidx/compose/ui/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcoil/compose/AsyncImagePainter;->e:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final t(Landroidx/compose/ui/graphics/painter/Painter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcoil/compose/AsyncImagePainter;->c:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final w(Lcoil/compose/AsyncImagePainter$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcoil/compose/AsyncImagePainter;->m:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final y(Landroidx/compose/ui/graphics/painter/Painter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcoil/compose/AsyncImagePainter;->g:Landroidx/compose/ui/graphics/painter/Painter;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcoil/compose/AsyncImagePainter;->t(Landroidx/compose/ui/graphics/painter/Painter;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final z(Lcoil/compose/AsyncImagePainter$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcoil/compose/AsyncImagePainter;->f:Lcoil/compose/AsyncImagePainter$b;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcoil/compose/AsyncImagePainter;->w(Lcoil/compose/AsyncImagePainter$b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected applyAlpha(F)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcoil/compose/AsyncImagePainter;->n(F)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    return p1
.end method

.method protected applyColorFilter(Landroidx/compose/ui/graphics/ColorFilter;)Z
    .locals 0
    .param p1    # Landroidx/compose/ui/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcoil/compose/AsyncImagePainter;->o(Landroidx/compose/ui/graphics/ColorFilter;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    return p1
.end method

.method public getIntrinsicSize-NH-jbRc()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcoil/compose/AsyncImagePainter;->k()Landroidx/compose/ui/graphics/painter/Painter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/painter/Painter;->getIntrinsicSize-NH-jbRc()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Size$Companion;->getUnspecified-NH-jbRc()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    :goto_0
    return-wide v0
.end method

.method public final j()Lcoil/ImageLoader;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/compose/AsyncImagePainter;->o:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcoil/ImageLoader;

    .line 8
    .line 9
    return-object v0
.end method

.method public final l()Lm0/f;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcoil/compose/AsyncImagePainter;->n:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lm0/f;

    .line 8
    .line 9
    return-object v0
.end method

.method public onAbandoned()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcoil/compose/AsyncImagePainter;->g()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcoil/compose/AsyncImagePainter;->g:Landroidx/compose/ui/graphics/painter/Painter;

    .line 5
    .line 6
    instance-of v1, v0, Landroidx/compose/runtime/RememberObserver;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Landroidx/compose/runtime/RememberObserver;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Landroidx/compose/runtime/RememberObserver;->onAbandoned()V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method protected onDraw(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 8
    .param p1    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcoil/compose/AsyncImagePainter;->b:Lkt/e;

    .line 2
    .line 3
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->box-impl(J)Landroidx/compose/ui/geometry/Size;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v0, v1}, Lkt/e;->setValue(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcoil/compose/AsyncImagePainter;->k()Landroidx/compose/ui/graphics/painter/Painter;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    invoke-direct {p0}, Lcoil/compose/AsyncImagePainter;->h()F

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    invoke-direct {p0}, Lcoil/compose/AsyncImagePainter;->i()Landroidx/compose/ui/graphics/ColorFilter;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    move-object v3, p1

    .line 33
    invoke-virtual/range {v2 .. v7}, Landroidx/compose/ui/graphics/painter/Painter;->draw-x_KDEd0(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFLandroidx/compose/ui/graphics/ColorFilter;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public onForgotten()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcoil/compose/AsyncImagePainter;->g()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcoil/compose/AsyncImagePainter;->g:Landroidx/compose/ui/graphics/painter/Painter;

    .line 5
    .line 6
    instance-of v1, v0, Landroidx/compose/runtime/RememberObserver;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Landroidx/compose/runtime/RememberObserver;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Landroidx/compose/runtime/RememberObserver;->onForgotten()V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public onRemembered()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcoil/compose/AsyncImagePainter;->a:Lgt/g0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-static {v0, v1, v0}, Lgt/r1;->b(Lkotlinx/coroutines/r;ILjava/lang/Object;)Lgt/s;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v3}, Lgt/j1;->m()Lgt/j1;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-interface {v2, v3}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v2}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    iput-object v3, p0, Lcoil/compose/AsyncImagePainter;->a:Lgt/g0;

    .line 29
    .line 30
    iget-object v2, p0, Lcoil/compose/AsyncImagePainter;->g:Landroidx/compose/ui/graphics/painter/Painter;

    .line 31
    .line 32
    instance-of v4, v2, Landroidx/compose/runtime/RememberObserver;

    .line 33
    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    check-cast v2, Landroidx/compose/runtime/RememberObserver;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move-object v2, v0

    .line 40
    :goto_0
    if-eqz v2, :cond_2

    .line 41
    .line 42
    invoke-interface {v2}, Landroidx/compose/runtime/RememberObserver;->onRemembered()V

    .line 43
    .line 44
    .line 45
    :cond_2
    iget-boolean v2, p0, Lcoil/compose/AsyncImagePainter;->l:Z

    .line 46
    .line 47
    if-eqz v2, :cond_4

    .line 48
    .line 49
    invoke-virtual {p0}, Lcoil/compose/AsyncImagePainter;->l()Lm0/f;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {v2, v0, v1, v0}, Lm0/f;->R(Lm0/f;Landroid/content/Context;ILjava/lang/Object;)Lm0/f$a;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {p0}, Lcoil/compose/AsyncImagePainter;->j()Lcoil/ImageLoader;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-interface {v2}, Lcoil/ImageLoader;->c()Lm0/a;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v1, v2}, Lm0/f$a;->c(Lm0/a;)Lm0/f$a;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1}, Lm0/f$a;->a()Lm0/f;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    new-instance v2, Lcoil/compose/AsyncImagePainter$b$c;

    .line 74
    .line 75
    invoke-virtual {v1}, Lm0/f;->F()Landroid/graphics/drawable/Drawable;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    if-eqz v1, :cond_3

    .line 80
    .line 81
    invoke-direct {p0, v1}, Lcoil/compose/AsyncImagePainter;->A(Landroid/graphics/drawable/Drawable;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    :cond_3
    invoke-direct {v2, v0}, Lcoil/compose/AsyncImagePainter$b$c;-><init>(Landroidx/compose/ui/graphics/painter/Painter;)V

    .line 86
    .line 87
    .line 88
    invoke-direct {p0, v2}, Lcoil/compose/AsyncImagePainter;->D(Lcoil/compose/AsyncImagePainter$b;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_4
    new-instance v6, Lcoil/compose/AsyncImagePainter$onRemembered$1;

    .line 93
    .line 94
    invoke-direct {v6, p0, v0}, Lcoil/compose/AsyncImagePainter$onRemembered$1;-><init>(Lcoil/compose/AsyncImagePainter;Lrs/c;)V

    .line 95
    .line 96
    .line 97
    const/4 v7, 0x3

    .line 98
    const/4 v8, 0x0

    .line 99
    const/4 v4, 0x0

    .line 100
    const/4 v5, 0x0

    .line 101
    invoke-static/range {v3 .. v8}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method public final p(Landroidx/compose/ui/layout/ContentScale;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/layout/ContentScale;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcoil/compose/AsyncImagePainter;->j:Landroidx/compose/ui/layout/ContentScale;

    .line 2
    .line 3
    return-void
.end method

.method public final q(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcoil/compose/AsyncImagePainter;->k:I

    .line 2
    .line 3
    return-void
.end method

.method public final r(Lcoil/ImageLoader;)V
    .locals 1
    .param p1    # Lcoil/ImageLoader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcoil/compose/AsyncImagePainter;->o:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final s(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcoil/compose/AsyncImagePainter$b;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcoil/compose/AsyncImagePainter;->i:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public final u(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcoil/compose/AsyncImagePainter;->l:Z

    .line 2
    .line 3
    return-void
.end method

.method public final v(Lm0/f;)V
    .locals 1
    .param p1    # Lm0/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcoil/compose/AsyncImagePainter;->n:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final x(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcoil/compose/AsyncImagePainter$b;",
            "+",
            "Lcoil/compose/AsyncImagePainter$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcoil/compose/AsyncImagePainter;->h:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method
