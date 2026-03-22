.class public final Lc0/a;
.super Ljava/lang/Object;
.source "AsyncImagePainter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final a:Lc0/a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc0/a$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lc0/a$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lc0/a;->a:Lc0/a$a;

    .line 7
    .line 8
    return-void
.end method

.method public static final synthetic a()Lc0/a$a;
    .locals 1

    .line 1
    sget-object v0, Lc0/a;->a:Lc0/a$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic b(J)Ln0/g;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lc0/a;->e(J)Ln0/g;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final c(J)Z
    .locals 4

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    float-to-double v0, v0

    .line 6
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 7
    .line 8
    cmpl-double v0, v0, v2

    .line 9
    .line 10
    if-ltz v0, :cond_0

    .line 11
    .line 12
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    float-to-double p0, p0

    .line 17
    cmpl-double p0, p0, v2

    .line 18
    .line 19
    if-ltz p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    return p0
.end method

.method public static final d(Ljava/lang/Object;Lcoil/ImageLoader;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/layout/ContentScale;ILandroidx/compose/runtime/Composer;II)Lcoil/compose/AsyncImagePainter;
    .locals 2
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Lcoil/ImageLoader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/layout/ContentScale;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcoil/ImageLoader;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcoil/compose/AsyncImagePainter$b;",
            "+",
            "Lcoil/compose/AsyncImagePainter$b;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcoil/compose/AsyncImagePainter$b;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/layout/ContentScale;",
            "I",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Lcoil/compose/AsyncImagePainter;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const v0, -0x78701fba

    .line 2
    .line 3
    .line 4
    invoke-interface {p6, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 5
    .line 6
    .line 7
    and-int/lit8 v1, p8, 0x4

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    sget-object p2, Lcoil/compose/AsyncImagePainter;->p:Lcoil/compose/AsyncImagePainter$a;

    .line 12
    .line 13
    invoke-virtual {p2}, Lcoil/compose/AsyncImagePainter$a;->a()Lkotlin/jvm/functions/Function1;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    :cond_0
    and-int/lit8 v1, p8, 0x8

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    const/4 p3, 0x0

    .line 22
    :cond_1
    and-int/lit8 v1, p8, 0x10

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    sget-object p4, Landroidx/compose/ui/layout/ContentScale;->Companion:Landroidx/compose/ui/layout/ContentScale$Companion;

    .line 27
    .line 28
    invoke-virtual {p4}, Landroidx/compose/ui/layout/ContentScale$Companion;->getFit()Landroidx/compose/ui/layout/ContentScale;

    .line 29
    .line 30
    .line 31
    move-result-object p4

    .line 32
    :cond_2
    and-int/lit8 p8, p8, 0x20

    .line 33
    .line 34
    if-eqz p8, :cond_3

    .line 35
    .line 36
    sget-object p5, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    .line 37
    .line 38
    invoke-virtual {p5}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->getDefaultFilterQuality-f-v9h1I()I

    .line 39
    .line 40
    .line 41
    move-result p5

    .line 42
    :cond_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 43
    .line 44
    .line 45
    move-result p8

    .line 46
    if-eqz p8, :cond_4

    .line 47
    .line 48
    const/4 p8, -0x1

    .line 49
    const-string v1, "coil.compose.rememberAsyncImagePainter (AsyncImagePainter.kt:131)"

    .line 50
    .line 51
    invoke-static {v0, p7, p8, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_4
    const/16 p7, 0x8

    .line 55
    .line 56
    invoke-static {p0, p6, p7}, Lc0/c;->d(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Lm0/f;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-static {p0}, Lc0/a;->h(Lm0/f;)V

    .line 61
    .line 62
    .line 63
    const p7, -0x1d58f75c

    .line 64
    .line 65
    .line 66
    invoke-interface {p6, p7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 67
    .line 68
    .line 69
    invoke-interface {p6}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p7

    .line 73
    sget-object p8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 74
    .line 75
    invoke-virtual {p8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p8

    .line 79
    if-ne p7, p8, :cond_5

    .line 80
    .line 81
    new-instance p7, Lcoil/compose/AsyncImagePainter;

    .line 82
    .line 83
    invoke-direct {p7, p0, p1}, Lcoil/compose/AsyncImagePainter;-><init>(Lm0/f;Lcoil/ImageLoader;)V

    .line 84
    .line 85
    .line 86
    invoke-interface {p6, p7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    :cond_5
    invoke-interface {p6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 90
    .line 91
    .line 92
    check-cast p7, Lcoil/compose/AsyncImagePainter;

    .line 93
    .line 94
    invoke-virtual {p7, p2}, Lcoil/compose/AsyncImagePainter;->x(Lkotlin/jvm/functions/Function1;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p7, p3}, Lcoil/compose/AsyncImagePainter;->s(Lkotlin/jvm/functions/Function1;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p7, p4}, Lcoil/compose/AsyncImagePainter;->p(Landroidx/compose/ui/layout/ContentScale;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p7, p5}, Lcoil/compose/AsyncImagePainter;->q(I)V

    .line 104
    .line 105
    .line 106
    invoke-static {}, Landroidx/compose/ui/platform/InspectionModeKt;->getLocalInspectionMode()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-interface {p6, p2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    check-cast p2, Ljava/lang/Boolean;

    .line 115
    .line 116
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    invoke-virtual {p7, p2}, Lcoil/compose/AsyncImagePainter;->u(Z)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p7, p1}, Lcoil/compose/AsyncImagePainter;->r(Lcoil/ImageLoader;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p7, p0}, Lcoil/compose/AsyncImagePainter;->v(Lm0/f;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p7}, Lcoil/compose/AsyncImagePainter;->onRemembered()V

    .line 130
    .line 131
    .line 132
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 133
    .line 134
    .line 135
    move-result p0

    .line 136
    if-eqz p0, :cond_6

    .line 137
    .line 138
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 139
    .line 140
    .line 141
    :cond_6
    invoke-interface {p6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 142
    .line 143
    .line 144
    return-object p7
.end method

.method private static final e(J)Ln0/g;
    .locals 4

    .line 1
    sget-object v0, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Size$Companion;->getUnspecified-NH-jbRc()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    cmp-long v0, p0, v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object p0, Ln0/g;->d:Ln0/g;

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_0
    invoke-static {p0, p1}, Lc0/a;->c(J)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    new-instance v0, Ln0/g;

    .line 21
    .line 22
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-static {v1}, Lbt/a;->c(F)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-static {v1}, Ln0/a;->a(I)Ln0/c$a;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    sget-object v1, Ln0/c$b;->a:Ln0/c$b;

    .line 52
    .line 53
    :goto_0
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-static {v2}, Ljava/lang/Float;->isInfinite(F)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-nez v3, :cond_2

    .line 62
    .line 63
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-nez v2, :cond_2

    .line 68
    .line 69
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    invoke-static {p0}, Lbt/a;->c(F)I

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    invoke-static {p0}, Ln0/a;->a(I)Ln0/c$a;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    sget-object p0, Ln0/c$b;->a:Ln0/c$b;

    .line 83
    .line 84
    :goto_1
    invoke-direct {v0, v1, p0}, Ln0/g;-><init>(Ln0/c;Ln0/c;)V

    .line 85
    .line 86
    .line 87
    move-object p0, v0

    .line 88
    goto :goto_2

    .line 89
    :cond_3
    const/4 p0, 0x0

    .line 90
    :goto_2
    return-object p0
.end method

.method private static final f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Void;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "Unsupported type: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p0, ". "

    .line 17
    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0
.end method

.method static synthetic g(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x2

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string p2, "If you wish to display this "

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p2, ", use androidx.compose.foundation.Image."

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :cond_0
    invoke-static {p0, p1}, Lc0/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Void;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method private static final h(Lm0/f;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lm0/f;->m()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lm0/f$a;

    .line 6
    .line 7
    if-nez v1, :cond_4

    .line 8
    .line 9
    instance-of v1, v0, Landroidx/compose/ui/graphics/ImageBitmap;

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    const/4 v3, 0x0

    .line 13
    if-nez v1, :cond_3

    .line 14
    .line 15
    instance-of v1, v0, Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 16
    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    instance-of v0, v0, Landroidx/compose/ui/graphics/painter/Painter;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Lm0/f;->M()Lo0/a;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    if-nez p0, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    const-string v0, "request.target must be null."

    .line 33
    .line 34
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p0

    .line 38
    :cond_1
    const-string p0, "Painter"

    .line 39
    .line 40
    invoke-static {p0, v3, v2, v3}, Lc0/a;->g(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 41
    .line 42
    .line 43
    new-instance p0, Lkotlin/KotlinNothingValueException;

    .line 44
    .line 45
    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 46
    .line 47
    .line 48
    throw p0

    .line 49
    :cond_2
    const-string p0, "ImageVector"

    .line 50
    .line 51
    invoke-static {p0, v3, v2, v3}, Lc0/a;->g(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 52
    .line 53
    .line 54
    new-instance p0, Lkotlin/KotlinNothingValueException;

    .line 55
    .line 56
    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 57
    .line 58
    .line 59
    throw p0

    .line 60
    :cond_3
    const-string p0, "ImageBitmap"

    .line 61
    .line 62
    invoke-static {p0, v3, v2, v3}, Lc0/a;->g(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    .line 63
    .line 64
    .line 65
    new-instance p0, Lkotlin/KotlinNothingValueException;

    .line 66
    .line 67
    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 68
    .line 69
    .line 70
    throw p0

    .line 71
    :cond_4
    const-string p0, "ImageRequest.Builder"

    .line 72
    .line 73
    const-string v0, "Did you forget to call ImageRequest.Builder.build()?"

    .line 74
    .line 75
    invoke-static {p0, v0}, Lc0/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Void;

    .line 76
    .line 77
    .line 78
    new-instance p0, Lkotlin/KotlinNothingValueException;

    .line 79
    .line 80
    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 81
    .line 82
    .line 83
    throw p0
.end method
