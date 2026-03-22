.class public final Landroidx/compose/ui/graphics/vector/VectorPath;
.super Landroidx/compose/ui/graphics/vector/VectorNode;
.source "ImageVector.kt"


# annotations
.annotation build Landroidx/compose/runtime/Immutable;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final fill:Landroidx/compose/ui/graphics/Brush;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final fillAlpha:F

.field private final name:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pathData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pathFillType:I

.field private final stroke:Landroidx/compose/ui/graphics/Brush;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final strokeAlpha:F

.field private final strokeLineCap:I

.field private final strokeLineJoin:I

.field private final strokeLineMiter:F

.field private final strokeLineWidth:F

.field private final trimPathEnd:F

.field private final trimPathOffset:F

.field private final trimPathStart:F


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/List;ILandroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFF)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;I",
            "Landroidx/compose/ui/graphics/Brush;",
            "F",
            "Landroidx/compose/ui/graphics/Brush;",
            "FFIIFFFF)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/VectorNode;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 7
    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->name:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->pathData:Ljava/util/List;

    .line 9
    iput p3, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->pathFillType:I

    .line 10
    iput-object p4, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->fill:Landroidx/compose/ui/graphics/Brush;

    .line 11
    iput p5, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->fillAlpha:F

    .line 12
    iput-object p6, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->stroke:Landroidx/compose/ui/graphics/Brush;

    .line 13
    iput p7, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeAlpha:F

    .line 14
    iput p8, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineWidth:F

    .line 15
    iput p9, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineCap:I

    .line 16
    iput p10, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineJoin:I

    .line 17
    iput p11, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineMiter:F

    .line 18
    iput p12, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->trimPathStart:F

    .line 19
    iput p13, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->trimPathEnd:F

    .line 20
    iput p14, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->trimPathOffset:F

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;ILandroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 18

    move/from16 v0, p15

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 2
    const-string v1, ""

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object/from16 v3, p1

    :goto_0
    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v6, v2

    goto :goto_1

    :cond_1
    move-object/from16 v6, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    move v7, v4

    goto :goto_2

    :cond_2
    move/from16 v7, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    move-object v8, v2

    goto :goto_3

    :cond_3
    move-object/from16 v8, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    move v9, v4

    goto :goto_4

    :cond_4
    move/from16 v9, p7

    :goto_4
    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    move v10, v2

    goto :goto_5

    :cond_5
    move/from16 v10, p8

    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    .line 3
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultStrokeLineCap()I

    move-result v1

    move v11, v1

    goto :goto_6

    :cond_6
    move/from16 v11, p9

    :goto_6
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    .line 4
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultStrokeLineJoin()I

    move-result v1

    move v12, v1

    goto :goto_7

    :cond_7
    move/from16 v12, p10

    :goto_7
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_8

    const/high16 v1, 0x40800000    # 4.0f

    move v13, v1

    goto :goto_8

    :cond_8
    move/from16 v13, p11

    :goto_8
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_9

    move v14, v2

    goto :goto_9

    :cond_9
    move/from16 v14, p12

    :goto_9
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_a

    move v15, v4

    goto :goto_a

    :cond_a
    move/from16 v15, p13

    :goto_a
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_b

    move/from16 v16, v2

    goto :goto_b

    :cond_b
    move/from16 v16, p14

    :goto_b
    const/16 v17, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move/from16 v5, p3

    .line 5
    invoke-direct/range {v2 .. v17}, Landroidx/compose/ui/graphics/vector/VectorPath;-><init>(Ljava/lang/String;Ljava/util/List;ILandroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;ILandroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p14}, Landroidx/compose/ui/graphics/vector/VectorPath;-><init>(Ljava/lang/String;Ljava/util/List;ILandroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFF)V

    return-void
.end method


# virtual methods
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
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_9

    .line 7
    .line 8
    const-class v2, Landroidx/compose/ui/graphics/vector/VectorPath;

    .line 9
    .line 10
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    goto/16 :goto_0

    .line 29
    .line 30
    :cond_1
    check-cast p1, Landroidx/compose/ui/graphics/vector/VectorPath;

    .line 31
    .line 32
    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->name:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v3, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->name:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_2

    .line 41
    .line 42
    return v1

    .line 43
    :cond_2
    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->fill:Landroidx/compose/ui/graphics/Brush;

    .line 44
    .line 45
    iget-object v3, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->fill:Landroidx/compose/ui/graphics/Brush;

    .line 46
    .line 47
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-nez v2, :cond_3

    .line 52
    .line 53
    return v1

    .line 54
    :cond_3
    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->fillAlpha:F

    .line 55
    .line 56
    iget v3, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->fillAlpha:F

    .line 57
    .line 58
    cmpg-float v2, v2, v3

    .line 59
    .line 60
    if-nez v2, :cond_9

    .line 61
    .line 62
    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->stroke:Landroidx/compose/ui/graphics/Brush;

    .line 63
    .line 64
    iget-object v3, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->stroke:Landroidx/compose/ui/graphics/Brush;

    .line 65
    .line 66
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-nez v2, :cond_4

    .line 71
    .line 72
    return v1

    .line 73
    :cond_4
    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeAlpha:F

    .line 74
    .line 75
    iget v3, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeAlpha:F

    .line 76
    .line 77
    cmpg-float v2, v2, v3

    .line 78
    .line 79
    if-nez v2, :cond_9

    .line 80
    .line 81
    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineWidth:F

    .line 82
    .line 83
    iget v3, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineWidth:F

    .line 84
    .line 85
    cmpg-float v2, v2, v3

    .line 86
    .line 87
    if-nez v2, :cond_9

    .line 88
    .line 89
    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineCap:I

    .line 90
    .line 91
    iget v3, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineCap:I

    .line 92
    .line 93
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/StrokeCap;->equals-impl0(II)Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-nez v2, :cond_5

    .line 98
    .line 99
    return v1

    .line 100
    :cond_5
    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineJoin:I

    .line 101
    .line 102
    iget v3, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineJoin:I

    .line 103
    .line 104
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/StrokeJoin;->equals-impl0(II)Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-nez v2, :cond_6

    .line 109
    .line 110
    return v1

    .line 111
    :cond_6
    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineMiter:F

    .line 112
    .line 113
    iget v3, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineMiter:F

    .line 114
    .line 115
    cmpg-float v2, v2, v3

    .line 116
    .line 117
    if-nez v2, :cond_9

    .line 118
    .line 119
    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->trimPathStart:F

    .line 120
    .line 121
    iget v3, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->trimPathStart:F

    .line 122
    .line 123
    cmpg-float v2, v2, v3

    .line 124
    .line 125
    if-nez v2, :cond_9

    .line 126
    .line 127
    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->trimPathEnd:F

    .line 128
    .line 129
    iget v3, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->trimPathEnd:F

    .line 130
    .line 131
    cmpg-float v2, v2, v3

    .line 132
    .line 133
    if-nez v2, :cond_9

    .line 134
    .line 135
    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->trimPathOffset:F

    .line 136
    .line 137
    iget v3, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->trimPathOffset:F

    .line 138
    .line 139
    cmpg-float v2, v2, v3

    .line 140
    .line 141
    if-nez v2, :cond_9

    .line 142
    .line 143
    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->pathFillType:I

    .line 144
    .line 145
    iget v3, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->pathFillType:I

    .line 146
    .line 147
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/PathFillType;->equals-impl0(II)Z

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    if-nez v2, :cond_7

    .line 152
    .line 153
    return v1

    .line 154
    :cond_7
    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->pathData:Ljava/util/List;

    .line 155
    .line 156
    iget-object p1, p1, Landroidx/compose/ui/graphics/vector/VectorPath;->pathData:Ljava/util/List;

    .line 157
    .line 158
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    if-nez p1, :cond_8

    .line 163
    .line 164
    return v1

    .line 165
    :cond_8
    return v0

    .line 166
    :cond_9
    :goto_0
    return v1
.end method

.method public final getFill()Landroidx/compose/ui/graphics/Brush;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->fill:Landroidx/compose/ui/graphics/Brush;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFillAlpha()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->fillAlpha:F

    .line 2
    .line 3
    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPathData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->pathData:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPathFillType-Rg-k1Os()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->pathFillType:I

    .line 2
    .line 3
    return v0
.end method

.method public final getStroke()Landroidx/compose/ui/graphics/Brush;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->stroke:Landroidx/compose/ui/graphics/Brush;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStrokeAlpha()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeAlpha:F

    .line 2
    .line 3
    return v0
.end method

.method public final getStrokeLineCap-KaPHkGw()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineCap:I

    .line 2
    .line 3
    return v0
.end method

.method public final getStrokeLineJoin-LxFBmk8()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineJoin:I

    .line 2
    .line 3
    return v0
.end method

.method public final getStrokeLineMiter()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineMiter:F

    .line 2
    .line 3
    return v0
.end method

.method public final getStrokeLineWidth()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineWidth:F

    .line 2
    .line 3
    return v0
.end method

.method public final getTrimPathEnd()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->trimPathEnd:F

    .line 2
    .line 3
    return v0
.end method

.method public final getTrimPathOffset()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->trimPathOffset:F

    .line 2
    .line 3
    return v0
.end method

.method public final getTrimPathStart()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->trimPathStart:F

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->name:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->pathData:Ljava/util/List;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->fill:Landroidx/compose/ui/graphics/Brush;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v1, v2

    .line 29
    :goto_0
    add-int/2addr v0, v1

    .line 30
    mul-int/lit8 v0, v0, 0x1f

    .line 31
    .line 32
    iget v1, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->fillAlpha:F

    .line 33
    .line 34
    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    add-int/2addr v0, v1

    .line 39
    mul-int/lit8 v0, v0, 0x1f

    .line 40
    .line 41
    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->stroke:Landroidx/compose/ui/graphics/Brush;

    .line 42
    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    :cond_1
    add-int/2addr v0, v2

    .line 50
    mul-int/lit8 v0, v0, 0x1f

    .line 51
    .line 52
    iget v1, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeAlpha:F

    .line 53
    .line 54
    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    add-int/2addr v0, v1

    .line 59
    mul-int/lit8 v0, v0, 0x1f

    .line 60
    .line 61
    iget v1, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineWidth:F

    .line 62
    .line 63
    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    add-int/2addr v0, v1

    .line 68
    mul-int/lit8 v0, v0, 0x1f

    .line 69
    .line 70
    iget v1, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineCap:I

    .line 71
    .line 72
    invoke-static {v1}, Landroidx/compose/ui/graphics/StrokeCap;->hashCode-impl(I)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    add-int/2addr v0, v1

    .line 77
    mul-int/lit8 v0, v0, 0x1f

    .line 78
    .line 79
    iget v1, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineJoin:I

    .line 80
    .line 81
    invoke-static {v1}, Landroidx/compose/ui/graphics/StrokeJoin;->hashCode-impl(I)I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    add-int/2addr v0, v1

    .line 86
    mul-int/lit8 v0, v0, 0x1f

    .line 87
    .line 88
    iget v1, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->strokeLineMiter:F

    .line 89
    .line 90
    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    add-int/2addr v0, v1

    .line 95
    mul-int/lit8 v0, v0, 0x1f

    .line 96
    .line 97
    iget v1, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->trimPathStart:F

    .line 98
    .line 99
    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    add-int/2addr v0, v1

    .line 104
    mul-int/lit8 v0, v0, 0x1f

    .line 105
    .line 106
    iget v1, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->trimPathEnd:F

    .line 107
    .line 108
    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    add-int/2addr v0, v1

    .line 113
    mul-int/lit8 v0, v0, 0x1f

    .line 114
    .line 115
    iget v1, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->trimPathOffset:F

    .line 116
    .line 117
    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    add-int/2addr v0, v1

    .line 122
    mul-int/lit8 v0, v0, 0x1f

    .line 123
    .line 124
    iget v1, p0, Landroidx/compose/ui/graphics/vector/VectorPath;->pathFillType:I

    .line 125
    .line 126
    invoke-static {v1}, Landroidx/compose/ui/graphics/PathFillType;->hashCode-impl(I)I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    add-int/2addr v0, v1

    .line 131
    return v0
.end method
