.class public final Landroidx/compose/ui/graphics/vector/DrawCache;
.super Ljava/lang/Object;
.source "DrawCache.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final cacheScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private cachedCanvas:Landroidx/compose/ui/graphics/Canvas;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mCachedImage:Landroidx/compose/ui/graphics/ImageBitmap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private scopeDensity:Landroidx/compose/ui/unit/Density;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private size:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 5
    .line 6
    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/DrawCache;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 7
    .line 8
    sget-object v0, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iput-wide v0, p0, Landroidx/compose/ui/graphics/vector/DrawCache;->size:J

    .line 15
    .line 16
    new-instance v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 17
    .line 18
    invoke-direct {v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Landroidx/compose/ui/graphics/vector/DrawCache;->cacheScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 22
    .line 23
    return-void
.end method

.method private final clear(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 14

    .line 1
    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    sget-object v0, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getClear-0nO6VwU()I

    .line 10
    .line 11
    .line 12
    move-result v11

    .line 13
    const/16 v12, 0x3e

    .line 14
    .line 15
    const/4 v13, 0x0

    .line 16
    const-wide/16 v4, 0x0

    .line 17
    .line 18
    const-wide/16 v6, 0x0

    .line 19
    .line 20
    const/4 v8, 0x0

    .line 21
    const/4 v9, 0x0

    .line 22
    const/4 v10, 0x0

    .line 23
    move-object v1, p1

    .line 24
    invoke-static/range {v1 .. v13}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRect-n-J9OG0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static synthetic drawInto$default(Landroidx/compose/ui/graphics/vector/DrawCache;Landroidx/compose/ui/graphics/drawscope/DrawScope;FLandroidx/compose/ui/graphics/ColorFilter;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x2

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/high16 p2, 0x3f800000    # 1.0f

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    const/4 p3, 0x0

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/vector/DrawCache;->drawInto(Landroidx/compose/ui/graphics/drawscope/DrawScope;FLandroidx/compose/ui/graphics/ColorFilter;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static synthetic getMCachedImage$annotations()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final drawCachedImage-CJJAR-o(JLandroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Lkotlin/jvm/functions/Function1;)V
    .locals 15
    .param p3    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p3

    .line 3
    .line 4
    move-object/from16 v2, p4

    .line 5
    .line 6
    move-object/from16 v3, p5

    .line 7
    .line 8
    const-string v4, "density"

    .line 9
    .line 10
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v4, "layoutDirection"

    .line 14
    .line 15
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v4, "block"

    .line 19
    .line 20
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, v0, Landroidx/compose/ui/graphics/vector/DrawCache;->scopeDensity:Landroidx/compose/ui/unit/Density;

    .line 24
    .line 25
    iput-object v2, v0, Landroidx/compose/ui/graphics/vector/DrawCache;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 26
    .line 27
    iget-object v4, v0, Landroidx/compose/ui/graphics/vector/DrawCache;->mCachedImage:Landroidx/compose/ui/graphics/ImageBitmap;

    .line 28
    .line 29
    iget-object v5, v0, Landroidx/compose/ui/graphics/vector/DrawCache;->cachedCanvas:Landroidx/compose/ui/graphics/Canvas;

    .line 30
    .line 31
    if-eqz v4, :cond_1

    .line 32
    .line 33
    if-eqz v5, :cond_1

    .line 34
    .line 35
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    invoke-interface {v4}, Landroidx/compose/ui/graphics/ImageBitmap;->getWidth()I

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    if-gt v6, v7, :cond_1

    .line 44
    .line 45
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    invoke-interface {v4}, Landroidx/compose/ui/graphics/ImageBitmap;->getHeight()I

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    if-le v6, v7, :cond_0

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_0
    :goto_0
    move-wide/from16 v6, p1

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_1
    :goto_1
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    .line 64
    .line 65
    .line 66
    move-result v9

    .line 67
    const/16 v13, 0x1c

    .line 68
    .line 69
    const/4 v14, 0x0

    .line 70
    const/4 v10, 0x0

    .line 71
    const/4 v11, 0x0

    .line 72
    const/4 v12, 0x0

    .line 73
    invoke-static/range {v8 .. v14}, Landroidx/compose/ui/graphics/ImageBitmapKt;->ImageBitmap-x__-hDU$default(IIIZLandroidx/compose/ui/graphics/colorspace/ColorSpace;ILjava/lang/Object;)Landroidx/compose/ui/graphics/ImageBitmap;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-static {v4}, Landroidx/compose/ui/graphics/CanvasKt;->Canvas(Landroidx/compose/ui/graphics/ImageBitmap;)Landroidx/compose/ui/graphics/Canvas;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    iput-object v4, v0, Landroidx/compose/ui/graphics/vector/DrawCache;->mCachedImage:Landroidx/compose/ui/graphics/ImageBitmap;

    .line 82
    .line 83
    iput-object v5, v0, Landroidx/compose/ui/graphics/vector/DrawCache;->cachedCanvas:Landroidx/compose/ui/graphics/Canvas;

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :goto_2
    iput-wide v6, v0, Landroidx/compose/ui/graphics/vector/DrawCache;->size:J

    .line 87
    .line 88
    iget-object v8, v0, Landroidx/compose/ui/graphics/vector/DrawCache;->cacheScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 89
    .line 90
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    .line 91
    .line 92
    .line 93
    move-result-wide v6

    .line 94
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDrawParams()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 95
    .line 96
    .line 97
    move-result-object v9

    .line 98
    invoke-virtual {v9}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->component1()Landroidx/compose/ui/unit/Density;

    .line 99
    .line 100
    .line 101
    move-result-object v10

    .line 102
    invoke-virtual {v9}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->component2()Landroidx/compose/ui/unit/LayoutDirection;

    .line 103
    .line 104
    .line 105
    move-result-object v11

    .line 106
    invoke-virtual {v9}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->component3()Landroidx/compose/ui/graphics/Canvas;

    .line 107
    .line 108
    .line 109
    move-result-object v12

    .line 110
    invoke-virtual {v9}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->component4-NH-jbRc()J

    .line 111
    .line 112
    .line 113
    move-result-wide v13

    .line 114
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDrawParams()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 115
    .line 116
    .line 117
    move-result-object v9

    .line 118
    invoke-virtual {v9, v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setDensity(Landroidx/compose/ui/unit/Density;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v9, v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v9, v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v9, v6, v7}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setSize-uvyYCjk(J)V

    .line 128
    .line 129
    .line 130
    invoke-interface {v5}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 131
    .line 132
    .line 133
    invoke-direct {p0, v8}, Landroidx/compose/ui/graphics/vector/DrawCache;->clear(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V

    .line 134
    .line 135
    .line 136
    invoke-interface {v3, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    invoke-interface {v5}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDrawParams()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v1, v10}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setDensity(Landroidx/compose/ui/unit/Density;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v11}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v12}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v13, v14}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setSize-uvyYCjk(J)V

    .line 156
    .line 157
    .line 158
    invoke-interface {v4}, Landroidx/compose/ui/graphics/ImageBitmap;->prepareToDraw()V

    .line 159
    .line 160
    .line 161
    return-void
.end method

.method public final drawInto(Landroidx/compose/ui/graphics/drawscope/DrawScope;FLandroidx/compose/ui/graphics/ColorFilter;)V
    .locals 19
    .param p1    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "target"

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v3, v0, Landroidx/compose/ui/graphics/vector/DrawCache;->mCachedImage:Landroidx/compose/ui/graphics/ImageBitmap;

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    iget-wide v6, v0, Landroidx/compose/ui/graphics/vector/DrawCache;->size:J

    .line 15
    .line 16
    const/16 v17, 0x35a

    .line 17
    .line 18
    const/16 v18, 0x0

    .line 19
    .line 20
    const-wide/16 v4, 0x0

    .line 21
    .line 22
    const-wide/16 v8, 0x0

    .line 23
    .line 24
    const-wide/16 v10, 0x0

    .line 25
    .line 26
    const/4 v13, 0x0

    .line 27
    const/4 v15, 0x0

    .line 28
    const/16 v16, 0x0

    .line 29
    .line 30
    move-object/from16 v2, p1

    .line 31
    .line 32
    move/from16 v12, p2

    .line 33
    .line 34
    move-object/from16 v14, p3

    .line 35
    .line 36
    invoke-static/range {v2 .. v18}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawImage-AZ2fEMs$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/ImageBitmap;JJJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IIILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    const-string v2, "drawCachedImage must be invoked first before attempting to draw the result into another destination"

    .line 43
    .line 44
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v1
.end method

.method public final getMCachedImage()Landroidx/compose/ui/graphics/ImageBitmap;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/DrawCache;->mCachedImage:Landroidx/compose/ui/graphics/ImageBitmap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setMCachedImage(Landroidx/compose/ui/graphics/ImageBitmap;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/graphics/ImageBitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/DrawCache;->mCachedImage:Landroidx/compose/ui/graphics/ImageBitmap;

    .line 2
    .line 3
    return-void
.end method
