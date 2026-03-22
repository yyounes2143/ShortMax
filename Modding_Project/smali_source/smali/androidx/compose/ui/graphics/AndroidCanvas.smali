.class public final Landroidx/compose/ui/graphics/AndroidCanvas;
.super Ljava/lang/Object;
.source "AndroidCanvas.android.kt"

# interfaces
.implements Landroidx/compose/ui/graphics/Canvas;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final dstRect:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private internalCanvas:Landroid/graphics/Canvas;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final srcRect:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->access$getEmptyCanvas$p()Landroid/graphics/Canvas;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    .line 9
    .line 10
    new-instance v0, Landroid/graphics/Rect;

    .line 11
    .line 12
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->srcRect:Landroid/graphics/Rect;

    .line 16
    .line 17
    new-instance v0, Landroid/graphics/Rect;

    .line 18
    .line 19
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->dstRect:Landroid/graphics/Rect;

    .line 23
    .line 24
    return-void
.end method

.method private final drawLines(Ljava/util/List;Landroidx/compose/ui/graphics/Paint;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;",
            "Landroidx/compose/ui/graphics/Paint;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-lt v0, v1, :cond_2

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    add-int/lit8 v0, v0, -0x1

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-static {v1, v0}, Lkotlin/ranges/e;->v(II)Lkotlin/ranges/IntRange;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0, p3}, Lkotlin/ranges/e;->u(Lkotlin/ranges/d;I)Lkotlin/ranges/d;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    invoke-virtual {p3}, Lkotlin/ranges/d;->c()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p3}, Lkotlin/ranges/d;->d()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {p3}, Lkotlin/ranges/d;->e()I

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    if-lez p3, :cond_0

    .line 36
    .line 37
    if-le v0, v1, :cond_1

    .line 38
    .line 39
    :cond_0
    if-gez p3, :cond_2

    .line 40
    .line 41
    if-gt v1, v0, :cond_2

    .line 42
    .line 43
    :cond_1
    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Landroidx/compose/ui/geometry/Offset;

    .line 48
    .line 49
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    .line 50
    .line 51
    .line 52
    move-result-wide v2

    .line 53
    add-int/lit8 v4, v0, 0x1

    .line 54
    .line 55
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Landroidx/compose/ui/geometry/Offset;

    .line 60
    .line 61
    invoke-virtual {v4}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    .line 62
    .line 63
    .line 64
    move-result-wide v4

    .line 65
    iget-object v6, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    .line 66
    .line 67
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 76
    .line 77
    .line 78
    move-result v9

    .line 79
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 80
    .line 81
    .line 82
    move-result v10

    .line 83
    invoke-interface {p2}, Landroidx/compose/ui/graphics/Paint;->asFrameworkPaint()Landroid/graphics/Paint;

    .line 84
    .line 85
    .line 86
    move-result-object v11

    .line 87
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 88
    .line 89
    .line 90
    if-eq v0, v1, :cond_2

    .line 91
    .line 92
    add-int/2addr v0, p3

    .line 93
    goto :goto_0

    .line 94
    :cond_2
    return-void
.end method

.method private final drawPoints(Ljava/util/List;Landroidx/compose/ui/graphics/Paint;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;",
            "Landroidx/compose/ui/graphics/Paint;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7
    .line 8
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Landroidx/compose/ui/geometry/Offset;

    .line 13
    .line 14
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    iget-object v4, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    .line 19
    .line 20
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-interface {p2}, Landroidx/compose/ui/graphics/Paint;->asFrameworkPaint()Landroid/graphics/Paint;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v4, v5, v2, v3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method

.method private final drawRawLines([FLandroidx/compose/ui/graphics/Paint;I)V
    .locals 8

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x4

    .line 3
    if-lt v0, v1, :cond_2

    .line 4
    .line 5
    array-length v0, p1

    .line 6
    rem-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    array-length v0, p1

    .line 11
    add-int/lit8 v0, v0, -0x3

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {v1, v0}, Lkotlin/ranges/e;->v(II)Lkotlin/ranges/IntRange;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    mul-int/lit8 p3, p3, 0x2

    .line 19
    .line 20
    invoke-static {v0, p3}, Lkotlin/ranges/e;->u(Lkotlin/ranges/d;I)Lkotlin/ranges/d;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    invoke-virtual {p3}, Lkotlin/ranges/d;->c()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p3}, Lkotlin/ranges/d;->d()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {p3}, Lkotlin/ranges/d;->e()I

    .line 33
    .line 34
    .line 35
    move-result p3

    .line 36
    if-lez p3, :cond_0

    .line 37
    .line 38
    if-le v0, v1, :cond_1

    .line 39
    .line 40
    :cond_0
    if-gez p3, :cond_2

    .line 41
    .line 42
    if-gt v1, v0, :cond_2

    .line 43
    .line 44
    :cond_1
    :goto_0
    aget v3, p1, v0

    .line 45
    .line 46
    add-int/lit8 v2, v0, 0x1

    .line 47
    .line 48
    aget v4, p1, v2

    .line 49
    .line 50
    add-int/lit8 v2, v0, 0x2

    .line 51
    .line 52
    aget v5, p1, v2

    .line 53
    .line 54
    add-int/lit8 v2, v0, 0x3

    .line 55
    .line 56
    aget v6, p1, v2

    .line 57
    .line 58
    iget-object v2, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    .line 59
    .line 60
    invoke-interface {p2}, Landroidx/compose/ui/graphics/Paint;->asFrameworkPaint()Landroid/graphics/Paint;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 65
    .line 66
    .line 67
    if-eq v0, v1, :cond_2

    .line 68
    .line 69
    add-int/2addr v0, p3

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    return-void
.end method

.method private final drawRawPoints([FLandroidx/compose/ui/graphics/Paint;I)V
    .locals 6

    .line 1
    array-length v0, p1

    .line 2
    rem-int/lit8 v0, v0, 0x2

    .line 3
    .line 4
    if-nez v0, :cond_2

    .line 5
    .line 6
    array-length v0, p1

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {v1, v0}, Lkotlin/ranges/e;->v(II)Lkotlin/ranges/IntRange;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0, p3}, Lkotlin/ranges/e;->u(Lkotlin/ranges/d;I)Lkotlin/ranges/d;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    invoke-virtual {p3}, Lkotlin/ranges/d;->c()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p3}, Lkotlin/ranges/d;->d()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {p3}, Lkotlin/ranges/d;->e()I

    .line 27
    .line 28
    .line 29
    move-result p3

    .line 30
    if-lez p3, :cond_0

    .line 31
    .line 32
    if-le v0, v1, :cond_1

    .line 33
    .line 34
    :cond_0
    if-gez p3, :cond_2

    .line 35
    .line 36
    if-gt v1, v0, :cond_2

    .line 37
    .line 38
    :cond_1
    :goto_0
    aget v2, p1, v0

    .line 39
    .line 40
    add-int/lit8 v3, v0, 0x1

    .line 41
    .line 42
    aget v3, p1, v3

    .line 43
    .line 44
    iget-object v4, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    .line 45
    .line 46
    invoke-interface {p2}, Landroidx/compose/ui/graphics/Paint;->asFrameworkPaint()Landroid/graphics/Paint;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-virtual {v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 51
    .line 52
    .line 53
    if-eq v0, v1, :cond_2

    .line 54
    .line 55
    add-int/2addr v0, p3

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    return-void
.end method

.method public static synthetic getInternalCanvas$annotations()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public clipPath-mtrdD-E(Landroidx/compose/ui/graphics/Path;I)V
    .locals 2
    .param p1    # Landroidx/compose/ui/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "path"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    .line 7
    .line 8
    instance-of v1, p1, Landroidx/compose/ui/graphics/AndroidPath;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast p1, Landroidx/compose/ui/graphics/AndroidPath;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/AndroidPath;->getInternalPath()Landroid/graphics/Path;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, p2}, Landroidx/compose/ui/graphics/AndroidCanvas;->toRegionOp--7u2Bmg(I)Landroid/graphics/Region$Op;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 27
    .line 28
    const-string p2, "Unable to obtain android.graphics.Path"

    .line 29
    .line 30
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1
.end method

.method public clipRect-N_I0leg(FFFFI)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    .line 2
    .line 3
    invoke-virtual {p0, p5}, Landroidx/compose/ui/graphics/AndroidCanvas;->toRegionOp--7u2Bmg(I)Landroid/graphics/Region$Op;

    .line 4
    .line 5
    .line 6
    move-result-object v5

    .line 7
    move v1, p1

    .line 8
    move v2, p2

    .line 9
    move v3, p3

    .line 10
    move v4, p4

    .line 11
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public concat-58bKbWc([F)V
    .locals 1
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "matrix"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroidx/compose/ui/graphics/MatrixKt;->isIdentity-58bKbWc([F)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Landroid/graphics/Matrix;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/AndroidMatrixConversions_androidKt;->setFrom-EL8BTi8(Landroid/graphics/Matrix;[F)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public disableZ()V
    .locals 3

    .line 1
    sget-object v0, Landroidx/compose/ui/graphics/CanvasUtils;->INSTANCE:Landroidx/compose/ui/graphics/CanvasUtils;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/CanvasUtils;->enableZ(Landroid/graphics/Canvas;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public drawArc(FFFFFFZLandroidx/compose/ui/graphics/Paint;)V
    .locals 10
    .param p8    # Landroidx/compose/ui/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "paint"

    .line 2
    .line 3
    move-object/from16 v1, p8

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    move-object v0, p0

    .line 9
    iget-object v2, v0, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    .line 10
    .line 11
    invoke-interface/range {p8 .. p8}, Landroidx/compose/ui/graphics/Paint;->asFrameworkPaint()Landroid/graphics/Paint;

    .line 12
    .line 13
    .line 14
    move-result-object v9

    .line 15
    move-object v1, v2

    .line 16
    move v2, p1

    .line 17
    move v3, p2

    .line 18
    move v4, p3

    .line 19
    move v5, p4

    .line 20
    move v6, p5

    .line 21
    move/from16 v7, p6

    .line 22
    .line 23
    move/from16 v8, p7

    .line 24
    .line 25
    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public drawCircle-9KIMszo(JFLandroidx/compose/ui/graphics/Paint;)V
    .locals 2
    .param p4    # Landroidx/compose/ui/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "paint"

    .line 2
    .line 3
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    .line 7
    .line 8
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-interface {p4}, Landroidx/compose/ui/graphics/Paint;->asFrameworkPaint()Landroid/graphics/Paint;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {v0, v1, p1, p3, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public drawImage-d-4ec7I(Landroidx/compose/ui/graphics/ImageBitmap;JLandroidx/compose/ui/graphics/Paint;)V
    .locals 2
    .param p1    # Landroidx/compose/ui/graphics/ImageBitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "image"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "paint"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/compose/ui/graphics/AndroidImageBitmap_androidKt;->asAndroidBitmap(Landroidx/compose/ui/graphics/ImageBitmap;)Landroid/graphics/Bitmap;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    invoke-interface {p4}, Landroidx/compose/ui/graphics/Paint;->asFrameworkPaint()Landroid/graphics/Paint;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public drawImageRect-HPBpro0(Landroidx/compose/ui/graphics/ImageBitmap;JJJJLandroidx/compose/ui/graphics/Paint;)V
    .locals 4
    .param p1    # Landroidx/compose/ui/graphics/ImageBitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Landroidx/compose/ui/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "image"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "paint"

    .line 7
    .line 8
    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/compose/ui/graphics/AndroidImageBitmap_androidKt;->asAndroidBitmap(Landroidx/compose/ui/graphics/ImageBitmap;)Landroid/graphics/Bitmap;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v1, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->srcRect:Landroid/graphics/Rect;

    .line 18
    .line 19
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 24
    .line 25
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 30
    .line 31
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-static {p4, p5}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    add-int/2addr v2, v3

    .line 40
    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 41
    .line 42
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    invoke-static {p4, p5}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    .line 47
    .line 48
    .line 49
    move-result p3

    .line 50
    add-int/2addr p2, p3

    .line 51
    iput p2, v1, Landroid/graphics/Rect;->bottom:I

    .line 52
    .line 53
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 54
    .line 55
    iget-object p2, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->dstRect:Landroid/graphics/Rect;

    .line 56
    .line 57
    invoke-static {p6, p7}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 58
    .line 59
    .line 60
    move-result p3

    .line 61
    iput p3, p2, Landroid/graphics/Rect;->left:I

    .line 62
    .line 63
    invoke-static {p6, p7}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 64
    .line 65
    .line 66
    move-result p3

    .line 67
    iput p3, p2, Landroid/graphics/Rect;->top:I

    .line 68
    .line 69
    invoke-static {p6, p7}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 70
    .line 71
    .line 72
    move-result p3

    .line 73
    invoke-static {p8, p9}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    .line 74
    .line 75
    .line 76
    move-result p4

    .line 77
    add-int/2addr p3, p4

    .line 78
    iput p3, p2, Landroid/graphics/Rect;->right:I

    .line 79
    .line 80
    invoke-static {p6, p7}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 81
    .line 82
    .line 83
    move-result p3

    .line 84
    invoke-static {p8, p9}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    .line 85
    .line 86
    .line 87
    move-result p4

    .line 88
    add-int/2addr p3, p4

    .line 89
    iput p3, p2, Landroid/graphics/Rect;->bottom:I

    .line 90
    .line 91
    invoke-interface {p10}, Landroidx/compose/ui/graphics/Paint;->asFrameworkPaint()Landroid/graphics/Paint;

    .line 92
    .line 93
    .line 94
    move-result-object p3

    .line 95
    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public drawLine-Wko1d7g(JJLandroidx/compose/ui/graphics/Paint;)V
    .locals 7
    .param p5    # Landroidx/compose/ui/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "paint"

    .line 2
    .line 3
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    .line 7
    .line 8
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    invoke-interface {p5}, Landroidx/compose/ui/graphics/Paint;->asFrameworkPaint()Landroid/graphics/Paint;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public drawOval(FFFFLandroidx/compose/ui/graphics/Paint;)V
    .locals 7
    .param p5    # Landroidx/compose/ui/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "paint"

    .line 2
    .line 3
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    .line 7
    .line 8
    invoke-interface {p5}, Landroidx/compose/ui/graphics/Paint;->asFrameworkPaint()Landroid/graphics/Paint;

    .line 9
    .line 10
    .line 11
    move-result-object v6

    .line 12
    move v2, p1

    .line 13
    move v3, p2

    .line 14
    move v4, p3

    .line 15
    move v5, p4

    .line 16
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public drawPath(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Paint;)V
    .locals 2
    .param p1    # Landroidx/compose/ui/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "path"

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
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    .line 12
    .line 13
    instance-of v1, p1, Landroidx/compose/ui/graphics/AndroidPath;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    check-cast p1, Landroidx/compose/ui/graphics/AndroidPath;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/AndroidPath;->getInternalPath()Landroid/graphics/Path;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p2}, Landroidx/compose/ui/graphics/Paint;->asFrameworkPaint()Landroid/graphics/Paint;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 32
    .line 33
    const-string p2, "Unable to obtain android.graphics.Path"

    .line 34
    .line 35
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method public drawPoints-O7TthRY(ILjava/util/List;Landroidx/compose/ui/graphics/Paint;)V
    .locals 2
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;",
            "Landroidx/compose/ui/graphics/Paint;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "points"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "paint"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Landroidx/compose/ui/graphics/PointMode;->Companion:Landroidx/compose/ui/graphics/PointMode$Companion;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/PointMode$Companion;->getLines-r_lszbg()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {p1, v1}, Landroidx/compose/ui/graphics/PointMode;->equals-impl0(II)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x2

    .line 24
    invoke-direct {p0, p2, p3, p1}, Landroidx/compose/ui/graphics/AndroidCanvas;->drawLines(Ljava/util/List;Landroidx/compose/ui/graphics/Paint;I)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/PointMode$Companion;->getPolygon-r_lszbg()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-static {p1, v1}, Landroidx/compose/ui/graphics/PointMode;->equals-impl0(II)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    invoke-direct {p0, p2, p3, p1}, Landroidx/compose/ui/graphics/AndroidCanvas;->drawLines(Ljava/util/List;Landroidx/compose/ui/graphics/Paint;I)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/PointMode$Companion;->getPoints-r_lszbg()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-static {p1, v0}, Landroidx/compose/ui/graphics/PointMode;->equals-impl0(II)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    invoke-direct {p0, p2, p3}, Landroidx/compose/ui/graphics/AndroidCanvas;->drawPoints(Ljava/util/List;Landroidx/compose/ui/graphics/Paint;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_0
    return-void
.end method

.method public drawRawPoints-O7TthRY(I[FLandroidx/compose/ui/graphics/Paint;)V
    .locals 3
    .param p2    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "points"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "paint"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    array-length v0, p2

    .line 12
    const/4 v1, 0x2

    .line 13
    rem-int/2addr v0, v1

    .line 14
    if-nez v0, :cond_3

    .line 15
    .line 16
    sget-object v0, Landroidx/compose/ui/graphics/PointMode;->Companion:Landroidx/compose/ui/graphics/PointMode$Companion;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/PointMode$Companion;->getLines-r_lszbg()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-static {p1, v2}, Landroidx/compose/ui/graphics/PointMode;->equals-impl0(II)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-direct {p0, p2, p3, v1}, Landroidx/compose/ui/graphics/AndroidCanvas;->drawRawLines([FLandroidx/compose/ui/graphics/Paint;I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/PointMode$Companion;->getPolygon-r_lszbg()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-static {p1, v2}, Landroidx/compose/ui/graphics/PointMode;->equals-impl0(II)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    invoke-direct {p0, p2, p3, p1}, Landroidx/compose/ui/graphics/AndroidCanvas;->drawRawLines([FLandroidx/compose/ui/graphics/Paint;I)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/PointMode$Companion;->getPoints-r_lszbg()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-static {p1, v0}, Landroidx/compose/ui/graphics/PointMode;->equals-impl0(II)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    invoke-direct {p0, p2, p3, v1}, Landroidx/compose/ui/graphics/AndroidCanvas;->drawRawPoints([FLandroidx/compose/ui/graphics/Paint;I)V

    .line 58
    .line 59
    .line 60
    :cond_2
    :goto_0
    return-void

    .line 61
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 62
    .line 63
    const-string p2, "points must have an even number of values"

    .line 64
    .line 65
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p1
.end method

.method public drawRect(FFFFLandroidx/compose/ui/graphics/Paint;)V
    .locals 7
    .param p5    # Landroidx/compose/ui/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "paint"

    .line 2
    .line 3
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    .line 7
    .line 8
    invoke-interface {p5}, Landroidx/compose/ui/graphics/Paint;->asFrameworkPaint()Landroid/graphics/Paint;

    .line 9
    .line 10
    .line 11
    move-result-object v6

    .line 12
    move v2, p1

    .line 13
    move v3, p2

    .line 14
    move v4, p3

    .line 15
    move v5, p4

    .line 16
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public drawRoundRect(FFFFFFLandroidx/compose/ui/graphics/Paint;)V
    .locals 9
    .param p7    # Landroidx/compose/ui/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "paint"

    .line 2
    .line 3
    move-object/from16 v1, p7

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    move-object v0, p0

    .line 9
    iget-object v2, v0, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    .line 10
    .line 11
    invoke-interface/range {p7 .. p7}, Landroidx/compose/ui/graphics/Paint;->asFrameworkPaint()Landroid/graphics/Paint;

    .line 12
    .line 13
    .line 14
    move-result-object v8

    .line 15
    move-object v1, v2

    .line 16
    move v2, p1

    .line 17
    move v3, p2

    .line 18
    move v4, p3

    .line 19
    move v5, p4

    .line 20
    move v6, p5

    .line 21
    move v7, p6

    .line 22
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public drawVertices-TPEHhCM(Landroidx/compose/ui/graphics/Vertices;ILandroidx/compose/ui/graphics/Paint;)V
    .locals 16
    .param p1    # Landroidx/compose/ui/graphics/Vertices;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "vertices"

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "paint"

    .line 9
    .line 10
    move-object/from16 v2, p3

    .line 11
    .line 12
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    move-object/from16 v0, p0

    .line 16
    .line 17
    iget-object v3, v0, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    .line 18
    .line 19
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/Vertices;->getVertexMode-c2xauaI()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    invoke-static {v4}, Landroidx/compose/ui/graphics/AndroidVertexMode_androidKt;->toAndroidVertexMode-JOOmi9M(I)Landroid/graphics/Canvas$VertexMode;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/Vertices;->getPositions()[F

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    array-length v5, v5

    .line 32
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/Vertices;->getPositions()[F

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/Vertices;->getTextureCoordinates()[F

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/Vertices;->getColors()[I

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/Vertices;->getIndices()[S

    .line 45
    .line 46
    .line 47
    move-result-object v10

    .line 48
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/Vertices;->getIndices()[S

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    array-length v12, v1

    .line 53
    invoke-interface/range {p3 .. p3}, Landroidx/compose/ui/graphics/Paint;->asFrameworkPaint()Landroid/graphics/Paint;

    .line 54
    .line 55
    .line 56
    move-result-object v13

    .line 57
    const/4 v9, 0x0

    .line 58
    const/4 v11, 0x0

    .line 59
    const/4 v14, 0x0

    .line 60
    const/4 v15, 0x0

    .line 61
    move-object v1, v3

    .line 62
    move-object v2, v4

    .line 63
    move v3, v5

    .line 64
    move-object v4, v6

    .line 65
    move v5, v9

    .line 66
    move-object v6, v7

    .line 67
    move v7, v11

    .line 68
    move v9, v14

    .line 69
    move v11, v15

    .line 70
    invoke-virtual/range {v1 .. v13}, Landroid/graphics/Canvas;->drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public enableZ()V
    .locals 3

    .line 1
    sget-object v0, Landroidx/compose/ui/graphics/CanvasUtils;->INSTANCE:Landroidx/compose/ui/graphics/CanvasUtils;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/CanvasUtils;->enableZ(Landroid/graphics/Canvas;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final getInternalCanvas()Landroid/graphics/Canvas;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    .line 2
    .line 3
    return-object v0
.end method

.method public restore()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public rotate(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public save()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public saveLayer(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/graphics/Paint;)V
    .locals 8
    .param p1    # Landroidx/compose/ui/geometry/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "bounds"

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
    iget-object v1, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    invoke-interface {p2}, Landroidx/compose/ui/graphics/Paint;->asFrameworkPaint()Landroid/graphics/Paint;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    const/16 v7, 0x1f

    .line 34
    .line 35
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public scale(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setInternalCanvas(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    .line 7
    .line 8
    return-void
.end method

.method public skew(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->skew(FF)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final toRegionOp--7u2Bmg(I)Landroid/graphics/Region$Op;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/graphics/ClipOp;->Companion:Landroidx/compose/ui/graphics/ClipOp$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/ClipOp$Companion;->getDifference-rtfAjoo()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {p1, v0}, Landroidx/compose/ui/graphics/ClipOp;->equals-impl0(II)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    sget-object p1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object p1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    .line 17
    .line 18
    :goto_0
    return-object p1
.end method

.method public translate(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
