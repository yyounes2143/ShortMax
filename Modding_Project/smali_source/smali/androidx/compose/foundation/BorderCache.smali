.class final Landroidx/compose/foundation/BorderCache;
.super Ljava/lang/Object;
.source "Border.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private borderPath:Landroidx/compose/ui/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private canvas:Landroidx/compose/ui/graphics/Canvas;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private imageBitmap:Landroidx/compose/ui/graphics/ImageBitmap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/BorderCache;-><init>(Landroidx/compose/ui/graphics/ImageBitmap;Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;Landroidx/compose/ui/graphics/Path;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/graphics/ImageBitmap;Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;Landroidx/compose/ui/graphics/Path;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/graphics/ImageBitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/compose/foundation/BorderCache;->imageBitmap:Landroidx/compose/ui/graphics/ImageBitmap;

    .line 4
    iput-object p2, p0, Landroidx/compose/foundation/BorderCache;->canvas:Landroidx/compose/ui/graphics/Canvas;

    .line 5
    iput-object p3, p0, Landroidx/compose/foundation/BorderCache;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 6
    iput-object p4, p0, Landroidx/compose/foundation/BorderCache;->borderPath:Landroidx/compose/ui/graphics/Path;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/ImageBitmap;Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;Landroidx/compose/ui/graphics/Path;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move-object p4, v0

    .line 7
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/BorderCache;-><init>(Landroidx/compose/ui/graphics/ImageBitmap;Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;Landroidx/compose/ui/graphics/Path;)V

    return-void
.end method

.method public static final synthetic access$getCanvas$p(Landroidx/compose/foundation/BorderCache;)Landroidx/compose/ui/graphics/Canvas;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/BorderCache;->canvas:Landroidx/compose/ui/graphics/Canvas;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getCanvasDrawScope$p(Landroidx/compose/foundation/BorderCache;)Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/BorderCache;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getImageBitmap$p(Landroidx/compose/foundation/BorderCache;)Landroidx/compose/ui/graphics/ImageBitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/BorderCache;->imageBitmap:Landroidx/compose/ui/graphics/ImageBitmap;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$setCanvas$p(Landroidx/compose/foundation/BorderCache;Landroidx/compose/ui/graphics/Canvas;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/BorderCache;->canvas:Landroidx/compose/ui/graphics/Canvas;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setCanvasDrawScope$p(Landroidx/compose/foundation/BorderCache;Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/BorderCache;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setImageBitmap$p(Landroidx/compose/foundation/BorderCache;Landroidx/compose/ui/graphics/ImageBitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/BorderCache;->imageBitmap:Landroidx/compose/ui/graphics/ImageBitmap;

    .line 2
    .line 3
    return-void
.end method

.method private final component1()Landroidx/compose/ui/graphics/ImageBitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/BorderCache;->imageBitmap:Landroidx/compose/ui/graphics/ImageBitmap;

    .line 2
    .line 3
    return-object v0
.end method

.method private final component2()Landroidx/compose/ui/graphics/Canvas;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/BorderCache;->canvas:Landroidx/compose/ui/graphics/Canvas;

    .line 2
    .line 3
    return-object v0
.end method

.method private final component3()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/BorderCache;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 2
    .line 3
    return-object v0
.end method

.method private final component4()Landroidx/compose/ui/graphics/Path;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/BorderCache;->borderPath:Landroidx/compose/ui/graphics/Path;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic copy$default(Landroidx/compose/foundation/BorderCache;Landroidx/compose/ui/graphics/ImageBitmap;Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;Landroidx/compose/ui/graphics/Path;ILjava/lang/Object;)Landroidx/compose/foundation/BorderCache;
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x1

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/compose/foundation/BorderCache;->imageBitmap:Landroidx/compose/ui/graphics/ImageBitmap;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 8
    .line 9
    if-eqz p6, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Landroidx/compose/foundation/BorderCache;->canvas:Landroidx/compose/ui/graphics/Canvas;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p6, p5, 0x4

    .line 14
    .line 15
    if-eqz p6, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Landroidx/compose/foundation/BorderCache;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p5, p5, 0x8

    .line 20
    .line 21
    if-eqz p5, :cond_3

    .line 22
    .line 23
    iget-object p4, p0, Landroidx/compose/foundation/BorderCache;->borderPath:Landroidx/compose/ui/graphics/Path;

    .line 24
    .line 25
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/BorderCache;->copy(Landroidx/compose/ui/graphics/ImageBitmap;Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;Landroidx/compose/ui/graphics/Path;)Landroidx/compose/foundation/BorderCache;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method


# virtual methods
.method public final copy(Landroidx/compose/ui/graphics/ImageBitmap;Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;Landroidx/compose/ui/graphics/Path;)Landroidx/compose/foundation/BorderCache;
    .locals 1
    .param p1    # Landroidx/compose/ui/graphics/ImageBitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/foundation/BorderCache;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/compose/foundation/BorderCache;-><init>(Landroidx/compose/ui/graphics/ImageBitmap;Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;Landroidx/compose/ui/graphics/Path;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final drawBorderCache-EMwLDEs(Landroidx/compose/ui/draw/CacheDrawScope;JILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/graphics/ImageBitmap;
    .locals 27
    .param p1    # Landroidx/compose/ui/draw/CacheDrawScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/draw/CacheDrawScope;",
            "JI",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/ui/graphics/ImageBitmap;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p5

    .line 6
    .line 7
    const-string v3, "$this$drawBorderCache"

    .line 8
    .line 9
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v3, "block"

    .line 13
    .line 14
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static/range {p0 .. p0}, Landroidx/compose/foundation/BorderCache;->access$getImageBitmap$p(Landroidx/compose/foundation/BorderCache;)Landroidx/compose/ui/graphics/ImageBitmap;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-static/range {p0 .. p0}, Landroidx/compose/foundation/BorderCache;->access$getCanvas$p(Landroidx/compose/foundation/BorderCache;)Landroidx/compose/ui/graphics/Canvas;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    const/4 v5, 0x0

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    invoke-interface {v3}, Landroidx/compose/ui/graphics/ImageBitmap;->getConfig-_sVssgQ()I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    invoke-static {v6}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->box-impl(I)Landroidx/compose/ui/graphics/ImageBitmapConfig;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move-object v6, v5

    .line 38
    :goto_0
    sget-object v7, Landroidx/compose/ui/graphics/ImageBitmapConfig;->Companion:Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;

    .line 39
    .line 40
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/ImageBitmapConfig$Companion;->getArgb8888-_sVssgQ()I

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    const/4 v8, 0x0

    .line 45
    if-nez v6, :cond_1

    .line 46
    .line 47
    move v6, v8

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {v6}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->unbox-impl()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    invoke-static {v6, v7}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->equals-impl0(II)Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    :goto_1
    if-nez v6, :cond_3

    .line 58
    .line 59
    if-eqz v3, :cond_2

    .line 60
    .line 61
    invoke-interface {v3}, Landroidx/compose/ui/graphics/ImageBitmap;->getConfig-_sVssgQ()I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    invoke-static {v5}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->box-impl(I)Landroidx/compose/ui/graphics/ImageBitmapConfig;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    :cond_2
    move/from16 v6, p4

    .line 70
    .line 71
    invoke-static {v6, v5}, Landroidx/compose/ui/graphics/ImageBitmapConfig;->equals-impl(ILjava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_4

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_3
    move/from16 v6, p4

    .line 79
    .line 80
    :goto_2
    const/4 v8, 0x1

    .line 81
    :cond_4
    if-eqz v3, :cond_5

    .line 82
    .line 83
    if-eqz v4, :cond_5

    .line 84
    .line 85
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/draw/CacheDrawScope;->getSize-NH-jbRc()J

    .line 86
    .line 87
    .line 88
    move-result-wide v9

    .line 89
    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    invoke-interface {v3}, Landroidx/compose/ui/graphics/ImageBitmap;->getWidth()I

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    int-to-float v7, v7

    .line 98
    cmpl-float v5, v5, v7

    .line 99
    .line 100
    if-gtz v5, :cond_5

    .line 101
    .line 102
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/draw/CacheDrawScope;->getSize-NH-jbRc()J

    .line 103
    .line 104
    .line 105
    move-result-wide v9

    .line 106
    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    invoke-interface {v3}, Landroidx/compose/ui/graphics/ImageBitmap;->getHeight()I

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    int-to-float v7, v7

    .line 115
    cmpl-float v5, v5, v7

    .line 116
    .line 117
    if-gtz v5, :cond_5

    .line 118
    .line 119
    if-nez v8, :cond_6

    .line 120
    .line 121
    :cond_5
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    .line 122
    .line 123
    .line 124
    move-result v9

    .line 125
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    .line 126
    .line 127
    .line 128
    move-result v10

    .line 129
    const/16 v14, 0x18

    .line 130
    .line 131
    const/4 v15, 0x0

    .line 132
    const/4 v12, 0x0

    .line 133
    const/4 v13, 0x0

    .line 134
    move/from16 v11, p4

    .line 135
    .line 136
    invoke-static/range {v9 .. v15}, Landroidx/compose/ui/graphics/ImageBitmapKt;->ImageBitmap-x__-hDU$default(IIIZLandroidx/compose/ui/graphics/colorspace/ColorSpace;ILjava/lang/Object;)Landroidx/compose/ui/graphics/ImageBitmap;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-static {v0, v3}, Landroidx/compose/foundation/BorderCache;->access$setImageBitmap$p(Landroidx/compose/foundation/BorderCache;Landroidx/compose/ui/graphics/ImageBitmap;)V

    .line 141
    .line 142
    .line 143
    invoke-static {v3}, Landroidx/compose/ui/graphics/CanvasKt;->Canvas(Landroidx/compose/ui/graphics/ImageBitmap;)Landroidx/compose/ui/graphics/Canvas;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    invoke-static {v0, v4}, Landroidx/compose/foundation/BorderCache;->access$setCanvas$p(Landroidx/compose/foundation/BorderCache;Landroidx/compose/ui/graphics/Canvas;)V

    .line 148
    .line 149
    .line 150
    :cond_6
    invoke-static/range {p0 .. p0}, Landroidx/compose/foundation/BorderCache;->access$getCanvasDrawScope$p(Landroidx/compose/foundation/BorderCache;)Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    if-nez v5, :cond_7

    .line 155
    .line 156
    new-instance v5, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 157
    .line 158
    invoke-direct {v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;-><init>()V

    .line 159
    .line 160
    .line 161
    invoke-static {v0, v5}, Landroidx/compose/foundation/BorderCache;->access$setCanvasDrawScope$p(Landroidx/compose/foundation/BorderCache;Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;)V

    .line 162
    .line 163
    .line 164
    :cond_7
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    .line 165
    .line 166
    .line 167
    move-result-wide v11

    .line 168
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/draw/CacheDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDrawParams()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 173
    .line 174
    .line 175
    move-result-object v7

    .line 176
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->component1()Landroidx/compose/ui/unit/Density;

    .line 177
    .line 178
    .line 179
    move-result-object v15

    .line 180
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->component2()Landroidx/compose/ui/unit/LayoutDirection;

    .line 181
    .line 182
    .line 183
    move-result-object v14

    .line 184
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->component3()Landroidx/compose/ui/graphics/Canvas;

    .line 185
    .line 186
    .line 187
    move-result-object v13

    .line 188
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->component4-NH-jbRc()J

    .line 189
    .line 190
    .line 191
    move-result-wide v9

    .line 192
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDrawParams()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 193
    .line 194
    .line 195
    move-result-object v7

    .line 196
    invoke-virtual {v7, v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setDensity(Landroidx/compose/ui/unit/Density;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v7, v6}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v7, v4}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v7, v11, v12}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setSize-uvyYCjk(J)V

    .line 206
    .line 207
    .line 208
    invoke-interface {v4}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 209
    .line 210
    .line 211
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 212
    .line 213
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    .line 214
    .line 215
    .line 216
    move-result-wide v7

    .line 217
    sget-object v1, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    .line 218
    .line 219
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getClear-0nO6VwU()I

    .line 220
    .line 221
    .line 222
    move-result v16

    .line 223
    const/16 v17, 0x3a

    .line 224
    .line 225
    const/16 v18, 0x0

    .line 226
    .line 227
    const-wide/16 v19, 0x0

    .line 228
    .line 229
    const/4 v1, 0x0

    .line 230
    const/16 v21, 0x0

    .line 231
    .line 232
    const/16 v22, 0x0

    .line 233
    .line 234
    move-object v6, v5

    .line 235
    move-wide/from16 v23, v9

    .line 236
    .line 237
    move-wide/from16 v9, v19

    .line 238
    .line 239
    move-object/from16 v25, v13

    .line 240
    .line 241
    move v13, v1

    .line 242
    move-object v1, v14

    .line 243
    move-object/from16 v14, v21

    .line 244
    .line 245
    move-object/from16 v26, v15

    .line 246
    .line 247
    move-object/from16 v15, v22

    .line 248
    .line 249
    invoke-static/range {v6 .. v18}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRect-n-J9OG0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    invoke-interface {v2, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    invoke-interface {v4}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDrawParams()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    move-object/from16 v4, v26

    .line 263
    .line 264
    invoke-virtual {v2, v4}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setDensity(Landroidx/compose/ui/unit/Density;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v2, v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 268
    .line 269
    .line 270
    move-object/from16 v1, v25

    .line 271
    .line 272
    invoke-virtual {v2, v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    .line 273
    .line 274
    .line 275
    move-wide/from16 v4, v23

    .line 276
    .line 277
    invoke-virtual {v2, v4, v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setSize-uvyYCjk(J)V

    .line 278
    .line 279
    .line 280
    invoke-interface {v3}, Landroidx/compose/ui/graphics/ImageBitmap;->prepareToDraw()V

    .line 281
    .line 282
    .line 283
    return-object v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/BorderCache;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Landroidx/compose/foundation/BorderCache;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/compose/foundation/BorderCache;->imageBitmap:Landroidx/compose/ui/graphics/ImageBitmap;

    .line 14
    .line 15
    iget-object v3, p1, Landroidx/compose/foundation/BorderCache;->imageBitmap:Landroidx/compose/ui/graphics/ImageBitmap;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Landroidx/compose/foundation/BorderCache;->canvas:Landroidx/compose/ui/graphics/Canvas;

    .line 25
    .line 26
    iget-object v3, p1, Landroidx/compose/foundation/BorderCache;->canvas:Landroidx/compose/ui/graphics/Canvas;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Landroidx/compose/foundation/BorderCache;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 36
    .line 37
    iget-object v3, p1, Landroidx/compose/foundation/BorderCache;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-object v1, p0, Landroidx/compose/foundation/BorderCache;->borderPath:Landroidx/compose/ui/graphics/Path;

    .line 47
    .line 48
    iget-object p1, p1, Landroidx/compose/foundation/BorderCache;->borderPath:Landroidx/compose/ui/graphics/Path;

    .line 49
    .line 50
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/BorderCache;->imageBitmap:Landroidx/compose/ui/graphics/ImageBitmap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Landroidx/compose/foundation/BorderCache;->canvas:Landroidx/compose/ui/graphics/Canvas;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    move v2, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    :goto_1
    add-int/2addr v0, v2

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v2, p0, Landroidx/compose/foundation/BorderCache;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    move v2, v1

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    :goto_2
    add-int/2addr v0, v2

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    iget-object v2, p0, Landroidx/compose/foundation/BorderCache;->borderPath:Landroidx/compose/ui/graphics/Path;

    .line 41
    .line 42
    if-nez v2, :cond_3

    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    :goto_3
    add-int/2addr v0, v1

    .line 50
    return v0
.end method

.method public final obtainPath()Landroidx/compose/ui/graphics/Path;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/BorderCache;->borderPath:Landroidx/compose/ui/graphics/Path;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Landroidx/compose/foundation/BorderCache;->borderPath:Landroidx/compose/ui/graphics/Path;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "BorderCache(imageBitmap="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Landroidx/compose/foundation/BorderCache;->imageBitmap:Landroidx/compose/ui/graphics/ImageBitmap;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", canvas="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Landroidx/compose/foundation/BorderCache;->canvas:Landroidx/compose/ui/graphics/Canvas;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", canvasDrawScope="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Landroidx/compose/foundation/BorderCache;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", borderPath="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Landroidx/compose/foundation/BorderCache;->borderPath:Landroidx/compose/ui/graphics/Path;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const/16 v1, 0x29

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method
