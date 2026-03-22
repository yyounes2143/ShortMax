.class public final Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
.super Ljava/lang/Object;
.source "ImageVector.kt"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/graphics/vector/ImageVector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final autoMirror:Z

.field private final defaultHeight:F

.field private final defaultWidth:F

.field private isConsumed:Z

.field private final name:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final nodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private root:Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tintBlendMode:I

.field private final tintColor:J

.field private final viewportHeight:F

.field private final viewportWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;FFFFJI)V
    .locals 11

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    .line 23
    invoke-direct/range {v0 .. v10}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;FFFFJIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    and-int/lit8 v0, p9, 0x1

    if-eqz v0, :cond_0

    .line 19
    const-string v0, ""

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_1

    .line 20
    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v0

    move-wide v7, v0

    goto :goto_1

    :cond_1
    move-wide/from16 v7, p6

    :goto_1
    and-int/lit8 v0, p9, 0x40

    if-eqz v0, :cond_2

    .line 21
    sget-object v0, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getSrcIn-0nO6VwU()I

    move-result v0

    move v9, v0

    goto :goto_2

    :cond_2
    move/from16 v9, p8

    :goto_2
    const/4 v10, 0x0

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    .line 22
    invoke-direct/range {v1 .. v10}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;FFFFJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .annotation runtime Lms/c;
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJI)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;FFFFJIZ)V
    .locals 16

    move-object/from16 v0, p0

    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p1

    .line 4
    iput-object v1, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->name:Ljava/lang/String;

    move/from16 v1, p2

    .line 5
    iput v1, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->defaultWidth:F

    move/from16 v1, p3

    .line 6
    iput v1, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->defaultHeight:F

    move/from16 v1, p4

    .line 7
    iput v1, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->viewportWidth:F

    move/from16 v1, p5

    .line 8
    iput v1, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->viewportHeight:F

    move-wide/from16 v1, p6

    .line 9
    iput-wide v1, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->tintColor:J

    move/from16 v1, p8

    .line 10
    iput v1, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->tintBlendMode:I

    move/from16 v1, p9

    .line 11
    iput-boolean v1, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->autoMirror:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 12
    invoke-static {v1, v2, v1}, Landroidx/compose/ui/graphics/vector/Stack;->constructor-impl$default(Ljava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->nodes:Ljava/util/ArrayList;

    .line 13
    new-instance v15, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    const/16 v13, 0x3ff

    const/4 v14, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v2, v15

    invoke-direct/range {v2 .. v14}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;-><init>(Ljava/lang/String;FFFFFFFLjava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v15, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->root:Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    .line 14
    invoke-static {v1, v15}, Landroidx/compose/ui/graphics/vector/Stack;->push-impl(Ljava/util/ArrayList;Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 15
    const-string v1, ""

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, p1

    :goto_0
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_1

    .line 16
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v1

    move-wide v8, v1

    goto :goto_1

    :cond_1
    move-wide/from16 v8, p6

    :goto_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    .line 17
    sget-object v1, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getSrcIn-0nO6VwU()I

    move-result v1

    move v10, v1

    goto :goto_2

    :cond_2
    move/from16 v10, p8

    :goto_2
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    move v11, v0

    goto :goto_3

    :cond_3
    move/from16 v11, p9

    :goto_3
    const/4 v12, 0x0

    move-object v2, p0

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    .line 18
    invoke-direct/range {v2 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;FFFFJIZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p9}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZ)V

    return-void
.end method

.method public static synthetic addGroup$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/lang/String;FFFFFFFLjava/util/List;ILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .locals 10

    .line 1
    move/from16 v0, p10

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const-string v1, ""

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object v1, p1

    .line 11
    :goto_0
    and-int/lit8 v2, v0, 0x2

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    move v2, v3

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move v2, p2

    .line 19
    :goto_1
    and-int/lit8 v4, v0, 0x4

    .line 20
    .line 21
    if-eqz v4, :cond_2

    .line 22
    .line 23
    move v4, v3

    .line 24
    goto :goto_2

    .line 25
    :cond_2
    move v4, p3

    .line 26
    :goto_2
    and-int/lit8 v5, v0, 0x8

    .line 27
    .line 28
    if-eqz v5, :cond_3

    .line 29
    .line 30
    move v5, v3

    .line 31
    goto :goto_3

    .line 32
    :cond_3
    move v5, p4

    .line 33
    :goto_3
    and-int/lit8 v6, v0, 0x10

    .line 34
    .line 35
    const/high16 v7, 0x3f800000    # 1.0f

    .line 36
    .line 37
    if-eqz v6, :cond_4

    .line 38
    .line 39
    move v6, v7

    .line 40
    goto :goto_4

    .line 41
    :cond_4
    move v6, p5

    .line 42
    :goto_4
    and-int/lit8 v8, v0, 0x20

    .line 43
    .line 44
    if-eqz v8, :cond_5

    .line 45
    .line 46
    goto :goto_5

    .line 47
    :cond_5
    move/from16 v7, p6

    .line 48
    .line 49
    :goto_5
    and-int/lit8 v8, v0, 0x40

    .line 50
    .line 51
    if-eqz v8, :cond_6

    .line 52
    .line 53
    move v8, v3

    .line 54
    goto :goto_6

    .line 55
    :cond_6
    move/from16 v8, p7

    .line 56
    .line 57
    :goto_6
    and-int/lit16 v9, v0, 0x80

    .line 58
    .line 59
    if-eqz v9, :cond_7

    .line 60
    .line 61
    goto :goto_7

    .line 62
    :cond_7
    move/from16 v3, p8

    .line 63
    .line 64
    :goto_7
    and-int/lit16 v0, v0, 0x100

    .line 65
    .line 66
    if-eqz v0, :cond_8

    .line 67
    .line 68
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getEmptyPath()Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    goto :goto_8

    .line 73
    :cond_8
    move-object/from16 v0, p9

    .line 74
    .line 75
    :goto_8
    move-object p1, v1

    .line 76
    move p2, v2

    .line 77
    move p3, v4

    .line 78
    move p4, v5

    .line 79
    move p5, v6

    .line 80
    move/from16 p6, v7

    .line 81
    .line 82
    move/from16 p7, v8

    .line 83
    .line 84
    move/from16 p8, v3

    .line 85
    .line 86
    move-object/from16 p9, v0

    .line 87
    .line 88
    invoke-virtual/range {p0 .. p9}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addGroup(Ljava/lang/String;FFFFFFFLjava/util/List;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    return-object v0
.end method

.method public static synthetic addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .locals 15

    .line 1
    move/from16 v0, p15

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x2

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move/from16 v1, p2

    .line 13
    .line 14
    :goto_0
    and-int/lit8 v2, v0, 0x4

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    const-string v2, ""

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move-object/from16 v2, p3

    .line 22
    .line 23
    :goto_1
    and-int/lit8 v3, v0, 0x8

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    if-eqz v3, :cond_2

    .line 27
    .line 28
    move-object v3, v4

    .line 29
    goto :goto_2

    .line 30
    :cond_2
    move-object/from16 v3, p4

    .line 31
    .line 32
    :goto_2
    and-int/lit8 v5, v0, 0x10

    .line 33
    .line 34
    const/high16 v6, 0x3f800000    # 1.0f

    .line 35
    .line 36
    if-eqz v5, :cond_3

    .line 37
    .line 38
    move v5, v6

    .line 39
    goto :goto_3

    .line 40
    :cond_3
    move/from16 v5, p5

    .line 41
    .line 42
    :goto_3
    and-int/lit8 v7, v0, 0x20

    .line 43
    .line 44
    if-eqz v7, :cond_4

    .line 45
    .line 46
    goto :goto_4

    .line 47
    :cond_4
    move-object/from16 v4, p6

    .line 48
    .line 49
    :goto_4
    and-int/lit8 v7, v0, 0x40

    .line 50
    .line 51
    if-eqz v7, :cond_5

    .line 52
    .line 53
    move v7, v6

    .line 54
    goto :goto_5

    .line 55
    :cond_5
    move/from16 v7, p7

    .line 56
    .line 57
    :goto_5
    and-int/lit16 v8, v0, 0x80

    .line 58
    .line 59
    const/4 v9, 0x0

    .line 60
    if-eqz v8, :cond_6

    .line 61
    .line 62
    move v8, v9

    .line 63
    goto :goto_6

    .line 64
    :cond_6
    move/from16 v8, p8

    .line 65
    .line 66
    :goto_6
    and-int/lit16 v10, v0, 0x100

    .line 67
    .line 68
    if-eqz v10, :cond_7

    .line 69
    .line 70
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultStrokeLineCap()I

    .line 71
    .line 72
    .line 73
    move-result v10

    .line 74
    goto :goto_7

    .line 75
    :cond_7
    move/from16 v10, p9

    .line 76
    .line 77
    :goto_7
    and-int/lit16 v11, v0, 0x200

    .line 78
    .line 79
    if-eqz v11, :cond_8

    .line 80
    .line 81
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultStrokeLineJoin()I

    .line 82
    .line 83
    .line 84
    move-result v11

    .line 85
    goto :goto_8

    .line 86
    :cond_8
    move/from16 v11, p10

    .line 87
    .line 88
    :goto_8
    and-int/lit16 v12, v0, 0x400

    .line 89
    .line 90
    if-eqz v12, :cond_9

    .line 91
    .line 92
    const/high16 v12, 0x40800000    # 4.0f

    .line 93
    .line 94
    goto :goto_9

    .line 95
    :cond_9
    move/from16 v12, p11

    .line 96
    .line 97
    :goto_9
    and-int/lit16 v13, v0, 0x800

    .line 98
    .line 99
    if-eqz v13, :cond_a

    .line 100
    .line 101
    move v13, v9

    .line 102
    goto :goto_a

    .line 103
    :cond_a
    move/from16 v13, p12

    .line 104
    .line 105
    :goto_a
    and-int/lit16 v14, v0, 0x1000

    .line 106
    .line 107
    if-eqz v14, :cond_b

    .line 108
    .line 109
    goto :goto_b

    .line 110
    :cond_b
    move/from16 v6, p13

    .line 111
    .line 112
    :goto_b
    and-int/lit16 v0, v0, 0x2000

    .line 113
    .line 114
    if-eqz v0, :cond_c

    .line 115
    .line 116
    goto :goto_c

    .line 117
    :cond_c
    move/from16 v9, p14

    .line 118
    .line 119
    :goto_c
    move-object/from16 p2, p0

    .line 120
    .line 121
    move-object/from16 p3, p1

    .line 122
    .line 123
    move/from16 p4, v1

    .line 124
    .line 125
    move-object/from16 p5, v2

    .line 126
    .line 127
    move-object/from16 p6, v3

    .line 128
    .line 129
    move/from16 p7, v5

    .line 130
    .line 131
    move-object/from16 p8, v4

    .line 132
    .line 133
    move/from16 p9, v7

    .line 134
    .line 135
    move/from16 p10, v8

    .line 136
    .line 137
    move/from16 p11, v10

    .line 138
    .line 139
    move/from16 p12, v11

    .line 140
    .line 141
    move/from16 p13, v12

    .line 142
    .line 143
    move/from16 p14, v13

    .line 144
    .line 145
    move/from16 p15, v6

    .line 146
    .line 147
    move/from16 p16, v9

    .line 148
    .line 149
    invoke-virtual/range {p2 .. p16}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM(Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFF)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    return-object v0
.end method

.method private final asVectorGroup(Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;)Landroidx/compose/ui/graphics/vector/VectorGroup;
    .locals 12

    .line 1
    new-instance v11, Landroidx/compose/ui/graphics/vector/VectorGroup;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->getRotate()F

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->getPivotX()F

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->getPivotY()F

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->getScaleX()F

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->getScaleY()F

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->getTranslationX()F

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->getTranslationY()F

    .line 32
    .line 33
    .line 34
    move-result v8

    .line 35
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->getClipPathData()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v9

    .line 39
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->getChildren()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v10

    .line 43
    move-object v0, v11

    .line 44
    invoke-direct/range {v0 .. v10}, Landroidx/compose/ui/graphics/vector/VectorGroup;-><init>(Ljava/lang/String;FFFFFFFLjava/util/List;Ljava/util/List;)V

    .line 45
    .line 46
    .line 47
    return-object v11
.end method

.method private final ensureNotConsumed()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->isConsumed:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "ImageVector.Builder is single use, create a new instance to create a new ImageVector"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method private final getCurrentGroup()Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->nodes:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/graphics/vector/Stack;->peek-impl(Ljava/util/ArrayList;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final addGroup(Ljava/lang/String;FFFFFFFLjava/util/List;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .locals 15
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "FFFFFFF",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;)",
            "Landroidx/compose/ui/graphics/vector/ImageVector$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    const-string v1, "name"

    .line 3
    .line 4
    move-object/from16 v3, p1

    .line 5
    .line 6
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v1, "clipPathData"

    .line 10
    .line 11
    move-object/from16 v11, p9

    .line 12
    .line 13
    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->ensureNotConsumed()V

    .line 17
    .line 18
    .line 19
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    .line 20
    .line 21
    const/16 v13, 0x200

    .line 22
    .line 23
    const/4 v14, 0x0

    .line 24
    const/4 v12, 0x0

    .line 25
    move-object v2, v1

    .line 26
    move/from16 v4, p2

    .line 27
    .line 28
    move/from16 v5, p3

    .line 29
    .line 30
    move/from16 v6, p4

    .line 31
    .line 32
    move/from16 v7, p5

    .line 33
    .line 34
    move/from16 v8, p6

    .line 35
    .line 36
    move/from16 v9, p7

    .line 37
    .line 38
    move/from16 v10, p8

    .line 39
    .line 40
    invoke-direct/range {v2 .. v14}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;-><init>(Ljava/lang/String;FFFFFFFLjava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 41
    .line 42
    .line 43
    iget-object v2, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->nodes:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-static {v2, v1}, Landroidx/compose/ui/graphics/vector/Stack;->push-impl(Ljava/util/ArrayList;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    return-object v0
.end method

.method public final addPath-oIyEayM(Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFF)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .locals 18
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/graphics/Brush;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/ui/graphics/Brush;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;I",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/graphics/Brush;",
            "F",
            "Landroidx/compose/ui/graphics/Brush;",
            "FFIIFFFF)",
            "Landroidx/compose/ui/graphics/vector/ImageVector$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "pathData"

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "name"

    .line 9
    .line 10
    move-object/from16 v2, p3

    .line 11
    .line 12
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->ensureNotConsumed()V

    .line 16
    .line 17
    .line 18
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->getCurrentGroup()Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->getChildren()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v15, Landroidx/compose/ui/graphics/vector/VectorPath;

    .line 27
    .line 28
    const/16 v16, 0x0

    .line 29
    .line 30
    move-object v1, v15

    .line 31
    move/from16 v4, p2

    .line 32
    .line 33
    move-object/from16 v5, p4

    .line 34
    .line 35
    move/from16 v6, p5

    .line 36
    .line 37
    move-object/from16 v7, p6

    .line 38
    .line 39
    move/from16 v8, p7

    .line 40
    .line 41
    move/from16 v9, p8

    .line 42
    .line 43
    move/from16 v10, p9

    .line 44
    .line 45
    move/from16 v11, p10

    .line 46
    .line 47
    move/from16 v12, p11

    .line 48
    .line 49
    move/from16 v13, p12

    .line 50
    .line 51
    move/from16 v14, p13

    .line 52
    .line 53
    move-object/from16 v17, v15

    .line 54
    .line 55
    move/from16 v15, p14

    .line 56
    .line 57
    invoke-direct/range {v1 .. v16}, Landroidx/compose/ui/graphics/vector/VectorPath;-><init>(Ljava/lang/String;Ljava/util/List;ILandroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 58
    .line 59
    .line 60
    move-object/from16 v1, v17

    .line 61
    .line 62
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    return-object p0
.end method

.method public final build()Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 14
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->ensureNotConsumed()V

    .line 2
    .line 3
    .line 4
    :goto_0
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->nodes:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-static {v0}, Landroidx/compose/ui/graphics/vector/Stack;->getSize-impl(Ljava/util/ArrayList;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-le v0, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->clearGroup()Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance v0, Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 18
    .line 19
    iget-object v3, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->name:Ljava/lang/String;

    .line 20
    .line 21
    iget v4, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->defaultWidth:F

    .line 22
    .line 23
    iget v5, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->defaultHeight:F

    .line 24
    .line 25
    iget v6, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->viewportWidth:F

    .line 26
    .line 27
    iget v7, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->viewportHeight:F

    .line 28
    .line 29
    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->root:Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    .line 30
    .line 31
    invoke-direct {p0, v2}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->asVectorGroup(Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;)Landroidx/compose/ui/graphics/vector/VectorGroup;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    iget-wide v9, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->tintColor:J

    .line 36
    .line 37
    iget v11, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->tintBlendMode:I

    .line 38
    .line 39
    iget-boolean v12, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->autoMirror:Z

    .line 40
    .line 41
    const/4 v13, 0x0

    .line 42
    move-object v2, v0

    .line 43
    invoke-direct/range {v2 .. v13}, Landroidx/compose/ui/graphics/vector/ImageVector;-><init>(Ljava/lang/String;FFFFLandroidx/compose/ui/graphics/vector/VectorGroup;JIZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 44
    .line 45
    .line 46
    iput-boolean v1, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->isConsumed:Z

    .line 47
    .line 48
    return-object v0
.end method

.method public final clearGroup()Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->ensureNotConsumed()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->nodes:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-static {v0}, Landroidx/compose/ui/graphics/vector/Stack;->pop-impl(Ljava/util/ArrayList;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    .line 11
    .line 12
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->getCurrentGroup()Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->getChildren()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->asVectorGroup(Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;)Landroidx/compose/ui/graphics/vector/VectorGroup;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    return-object p0
.end method
