.class public final Landroidx/compose/ui/graphics/Vertices;
.super Ljava/lang/Object;
.source "Vertices.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final colors:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final indices:[S
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final positions:[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final textureCoordinates:[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final vertexMode:I


# direct methods
.method private constructor <init>(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroidx/compose/ui/graphics/Vertices;->vertexMode:I

    .line 4
    new-instance p1, Landroidx/compose/ui/graphics/Vertices$outOfBounds$1;

    invoke-direct {p1, p2}, Landroidx/compose/ui/graphics/Vertices$outOfBounds$1;-><init>(Ljava/util/List;)V

    .line 5
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 6
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 7
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 8
    invoke-interface {p5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 9
    invoke-interface {p1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 11
    const-string p2, "indices values must be valid indices in the positions list."

    .line 12
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_1
    invoke-direct {p0, p2}, Landroidx/compose/ui/graphics/Vertices;->encodePointList(Ljava/util/List;)[F

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/graphics/Vertices;->positions:[F

    .line 14
    invoke-direct {p0, p3}, Landroidx/compose/ui/graphics/Vertices;->encodePointList(Ljava/util/List;)[F

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/graphics/Vertices;->textureCoordinates:[F

    .line 15
    invoke-direct {p0, p4}, Landroidx/compose/ui/graphics/Vertices;->encodeColorList(Ljava/util/List;)[I

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/graphics/Vertices;->colors:[I

    .line 16
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p1

    new-array p2, p1, [S

    :goto_1
    if-ge v1, p1, :cond_2

    .line 17
    invoke-interface {p5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    int-to-short p3, p3

    aput-short p3, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 18
    :cond_2
    iput-object p2, p0, Landroidx/compose/ui/graphics/Vertices;->indices:[S

    return-void

    .line 19
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "positions and colors lengths must match."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "positions and textureCoordinates lengths must match."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Landroidx/compose/ui/graphics/Vertices;-><init>(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private final encodeColorList(Ljava/util/List;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;)[I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v1, v0, [I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v0, :cond_0

    .line 9
    .line 10
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 15
    .line 16
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    .line 17
    .line 18
    .line 19
    move-result-wide v3

    .line 20
    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    aput v3, v1, v2

    .line 25
    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-object v1
.end method

.method private final encodePointList(Ljava/util/List;)[F
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;)[F"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x2

    .line 6
    .line 7
    new-array v1, v0, [F

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v0, :cond_1

    .line 11
    .line 12
    div-int/lit8 v3, v2, 0x2

    .line 13
    .line 14
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Landroidx/compose/ui/geometry/Offset;

    .line 19
    .line 20
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    rem-int/lit8 v5, v2, 0x2

    .line 25
    .line 26
    if-nez v5, :cond_0

    .line 27
    .line 28
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    :goto_1
    aput v3, v1, v2

    .line 38
    .line 39
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return-object v1
.end method


# virtual methods
.method public final getColors()[I
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/Vertices;->colors:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public final getIndices()[S
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/Vertices;->indices:[S

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPositions()[F
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/Vertices;->positions:[F

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTextureCoordinates()[F
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/Vertices;->textureCoordinates:[F

    .line 2
    .line 3
    return-object v0
.end method

.method public final getVertexMode-c2xauaI()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/Vertices;->vertexMode:I

    .line 2
    .line 3
    return v0
.end method
