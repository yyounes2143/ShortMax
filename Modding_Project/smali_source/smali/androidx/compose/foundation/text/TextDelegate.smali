.class public final Landroidx/compose/foundation/text/TextDelegate;
.super Ljava/lang/Object;
.source "TextDelegate.kt"


# annotations
.annotation runtime Landroidx/compose/foundation/text/InternalFoundationTextApi;
.end annotation

.annotation build Landroidx/compose/runtime/Stable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text/TextDelegate$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/foundation/text/TextDelegate$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final density:Landroidx/compose/ui/unit/Density;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private intrinsicsLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final maxLines:I

.field private final overflow:I

.field private paragraphIntrinsics:Landroidx/compose/ui/text/MultiParagraphIntrinsics;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final placeholders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/Placeholder;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final softWrap:Z

.field private final style:Landroidx/compose/ui/text/TextStyle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final text:Landroidx/compose/ui/text/AnnotatedString;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/foundation/text/TextDelegate$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/foundation/text/TextDelegate$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/foundation/text/TextDelegate;->Companion:Landroidx/compose/foundation/text/TextDelegate$Companion;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;IZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/AnnotatedString;",
            "Landroidx/compose/ui/text/TextStyle;",
            "IZI",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/text/font/FontFamily$Resolver;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/Placeholder;",
            ">;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/compose/foundation/text/TextDelegate;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 4
    iput-object p2, p0, Landroidx/compose/foundation/text/TextDelegate;->style:Landroidx/compose/ui/text/TextStyle;

    .line 5
    iput p3, p0, Landroidx/compose/foundation/text/TextDelegate;->maxLines:I

    .line 6
    iput-boolean p4, p0, Landroidx/compose/foundation/text/TextDelegate;->softWrap:Z

    .line 7
    iput p5, p0, Landroidx/compose/foundation/text/TextDelegate;->overflow:I

    .line 8
    iput-object p6, p0, Landroidx/compose/foundation/text/TextDelegate;->density:Landroidx/compose/ui/unit/Density;

    .line 9
    iput-object p7, p0, Landroidx/compose/foundation/text/TextDelegate;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 10
    iput-object p8, p0, Landroidx/compose/foundation/text/TextDelegate;->placeholders:Ljava/util/List;

    if-lez p3, :cond_0

    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Check failed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;IZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    const v1, 0x7fffffff

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move v6, v1

    goto :goto_1

    :cond_1
    move/from16 v6, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    .line 12
    sget-object v1, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getClip-gIe3tQ8()I

    move-result v1

    move v7, v1

    goto :goto_2

    :cond_2
    move/from16 v7, p5

    :goto_2
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    .line 13
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    move-result-object v0

    move-object v10, v0

    goto :goto_3

    :cond_3
    move-object/from16 v10, p8

    :goto_3
    const/4 v11, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 14
    invoke-direct/range {v2 .. v11}, Landroidx/compose/foundation/text/TextDelegate;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;IZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;IZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Landroidx/compose/foundation/text/TextDelegate;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;IZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;)V

    return-void
.end method

.method private final getNonNullIntrinsics()Landroidx/compose/ui/text/MultiParagraphIntrinsics;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/TextDelegate;->paragraphIntrinsics:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "layoutIntrinsics must be called first"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public static synthetic layout-NN6Ew-U$default(Landroidx/compose/foundation/text/TextDelegate;JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/TextLayoutResult;ILjava/lang/Object;)Landroidx/compose/ui/text/TextLayoutResult;
    .locals 0

    .line 1
    and-int/lit8 p5, p5, 0x4

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p4, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text/TextDelegate;->layout-NN6Ew-U(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/TextLayoutResult;)Landroidx/compose/ui/text/TextLayoutResult;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private final layoutText-K40F9xA(JLandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/MultiParagraph;
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p3

    .line 3
    .line 4
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/text/TextDelegate;->layoutIntrinsics(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 5
    .line 6
    .line 7
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget-boolean v2, v0, Landroidx/compose/foundation/text/TextDelegate;->softWrap:Z

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    iget v2, v0, Landroidx/compose/foundation/text/TextDelegate;->overflow:I

    .line 16
    .line 17
    sget-object v3, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    .line 18
    .line 19
    invoke-virtual {v3}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getEllipsis-gIe3tQ8()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-static {v2, v3}, Landroidx/compose/ui/text/style/TextOverflow;->equals-impl0(II)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    :cond_0
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/unit/Constraints;->getHasBoundedWidth-impl(J)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const v2, 0x7fffffff

    .line 41
    .line 42
    .line 43
    :goto_0
    iget-boolean v3, v0, Landroidx/compose/foundation/text/TextDelegate;->softWrap:Z

    .line 44
    .line 45
    if-nez v3, :cond_2

    .line 46
    .line 47
    iget v3, v0, Landroidx/compose/foundation/text/TextDelegate;->overflow:I

    .line 48
    .line 49
    sget-object v4, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    .line 50
    .line 51
    invoke-virtual {v4}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getEllipsis-gIe3tQ8()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    invoke-static {v3, v4}, Landroidx/compose/ui/text/style/TextOverflow;->equals-impl0(II)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_2

    .line 60
    .line 61
    const/4 v3, 0x1

    .line 62
    :goto_1
    move v8, v3

    .line 63
    goto :goto_2

    .line 64
    :cond_2
    iget v3, v0, Landroidx/compose/foundation/text/TextDelegate;->maxLines:I

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :goto_2
    if-ne v1, v2, :cond_3

    .line 68
    .line 69
    :goto_3
    move v10, v2

    .line 70
    goto :goto_4

    .line 71
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextDelegate;->getMaxIntrinsicWidth()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    invoke-static {v3, v1, v2}, Lkotlin/ranges/e;->n(III)I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    goto :goto_3

    .line 80
    :goto_4
    new-instance v1, Landroidx/compose/ui/text/MultiParagraph;

    .line 81
    .line 82
    invoke-direct {p0}, Landroidx/compose/foundation/text/TextDelegate;->getNonNullIntrinsics()Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 87
    .line 88
    .line 89
    move-result v12

    .line 90
    const/4 v13, 0x5

    .line 91
    const/4 v14, 0x0

    .line 92
    const/4 v9, 0x0

    .line 93
    const/4 v11, 0x0

    .line 94
    invoke-static/range {v9 .. v14}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIIILjava/lang/Object;)J

    .line 95
    .line 96
    .line 97
    move-result-wide v6

    .line 98
    iget v2, v0, Landroidx/compose/foundation/text/TextDelegate;->overflow:I

    .line 99
    .line 100
    sget-object v3, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    .line 101
    .line 102
    invoke-virtual {v3}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getEllipsis-gIe3tQ8()I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    invoke-static {v2, v3}, Landroidx/compose/ui/text/style/TextOverflow;->equals-impl0(II)Z

    .line 107
    .line 108
    .line 109
    move-result v9

    .line 110
    const/4 v10, 0x0

    .line 111
    move-object v4, v1

    .line 112
    invoke-direct/range {v4 .. v10}, Landroidx/compose/ui/text/MultiParagraph;-><init>(Landroidx/compose/ui/text/MultiParagraphIntrinsics;JIZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 113
    .line 114
    .line 115
    return-object v1
.end method


# virtual methods
.method public final getDensity()Landroidx/compose/ui/unit/Density;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/TextDelegate;->density:Landroidx/compose/ui/unit/Density;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFontFamilyResolver()Landroidx/compose/ui/text/font/FontFamily$Resolver;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/TextDelegate;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getIntrinsicsLayoutDirection$foundation_release()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/TextDelegate;->intrinsicsLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMaxIntrinsicWidth()I
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/compose/foundation/text/TextDelegate;->getNonNullIntrinsics()Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->getMaxIntrinsicWidth()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    float-to-double v0, v0

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    double-to-float v0, v0

    .line 15
    float-to-int v0, v0

    .line 16
    return v0
.end method

.method public final getMaxLines()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/text/TextDelegate;->maxLines:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMinIntrinsicWidth()I
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/compose/foundation/text/TextDelegate;->getNonNullIntrinsics()Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->getMinIntrinsicWidth()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    float-to-double v0, v0

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    double-to-float v0, v0

    .line 15
    float-to-int v0, v0

    .line 16
    return v0
.end method

.method public final getOverflow-gIe3tQ8()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/text/TextDelegate;->overflow:I

    .line 2
    .line 3
    return v0
.end method

.method public final getParagraphIntrinsics$foundation_release()Landroidx/compose/ui/text/MultiParagraphIntrinsics;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/TextDelegate;->paragraphIntrinsics:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPlaceholders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/Placeholder;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/TextDelegate;->placeholders:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSoftWrap()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/text/TextDelegate;->softWrap:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getStyle()Landroidx/compose/ui/text/TextStyle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/TextDelegate;->style:Landroidx/compose/ui/text/TextStyle;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getText()Landroidx/compose/ui/text/AnnotatedString;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/TextDelegate;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 2
    .line 3
    return-object v0
.end method

.method public final layout-NN6Ew-U(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/TextLayoutResult;)Landroidx/compose/ui/text/TextLayoutResult;
    .locals 21
    .param p3    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/text/TextLayoutResult;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v14, p1

    .line 4
    .line 5
    const-string v1, "layoutDirection"

    .line 6
    .line 7
    move-object/from16 v13, p3

    .line 8
    .line 9
    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    if-eqz p4, :cond_0

    .line 13
    .line 14
    iget-object v2, v0, Landroidx/compose/foundation/text/TextDelegate;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 15
    .line 16
    iget-object v3, v0, Landroidx/compose/foundation/text/TextDelegate;->style:Landroidx/compose/ui/text/TextStyle;

    .line 17
    .line 18
    iget-object v4, v0, Landroidx/compose/foundation/text/TextDelegate;->placeholders:Ljava/util/List;

    .line 19
    .line 20
    iget v5, v0, Landroidx/compose/foundation/text/TextDelegate;->maxLines:I

    .line 21
    .line 22
    iget-boolean v6, v0, Landroidx/compose/foundation/text/TextDelegate;->softWrap:Z

    .line 23
    .line 24
    iget v7, v0, Landroidx/compose/foundation/text/TextDelegate;->overflow:I

    .line 25
    .line 26
    iget-object v8, v0, Landroidx/compose/foundation/text/TextDelegate;->density:Landroidx/compose/ui/unit/Density;

    .line 27
    .line 28
    iget-object v10, v0, Landroidx/compose/foundation/text/TextDelegate;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 29
    .line 30
    move-object/from16 v1, p4

    .line 31
    .line 32
    move-object/from16 v9, p3

    .line 33
    .line 34
    move-wide/from16 v11, p1

    .line 35
    .line 36
    invoke-static/range {v1 .. v12}, Landroidx/compose/foundation/text/TextLayoutHelperKt;->canReuse-7_7YC6M(Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;IZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/font/FontFamily$Resolver;J)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    new-instance v13, Landroidx/compose/ui/text/TextLayoutInput;

    .line 43
    .line 44
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Landroidx/compose/ui/text/TextLayoutInput;->getText()Landroidx/compose/ui/text/AnnotatedString;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    iget-object v3, v0, Landroidx/compose/foundation/text/TextDelegate;->style:Landroidx/compose/ui/text/TextStyle;

    .line 53
    .line 54
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1}, Landroidx/compose/ui/text/TextLayoutInput;->getPlaceholders()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1}, Landroidx/compose/ui/text/TextLayoutInput;->getMaxLines()I

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Landroidx/compose/ui/text/TextLayoutInput;->getSoftWrap()Z

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v1}, Landroidx/compose/ui/text/TextLayoutInput;->getOverflow-gIe3tQ8()I

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v1}, Landroidx/compose/ui/text/TextLayoutInput;->getDensity()Landroidx/compose/ui/unit/Density;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v1}, Landroidx/compose/ui/text/TextLayoutInput;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 99
    .line 100
    .line 101
    move-result-object v9

    .line 102
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v1}, Landroidx/compose/ui/text/TextLayoutInput;->getFontFamilyResolver()Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 107
    .line 108
    .line 109
    move-result-object v10

    .line 110
    const/16 v16, 0x0

    .line 111
    .line 112
    move-object v1, v13

    .line 113
    move-wide/from16 v11, p1

    .line 114
    .line 115
    move-object/from16 v0, p4

    .line 116
    .line 117
    move-object/from16 v17, v13

    .line 118
    .line 119
    move-object/from16 v13, v16

    .line 120
    .line 121
    invoke-direct/range {v1 .. v13}, Landroidx/compose/ui/text/TextLayoutInput;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;IZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/font/FontFamily$Resolver;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/text/TextLayoutResult;->getMultiParagraph()Landroidx/compose/ui/text/MultiParagraph;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v1}, Landroidx/compose/ui/text/MultiParagraph;->getWidth()F

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    float-to-double v1, v1

    .line 133
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 134
    .line 135
    .line 136
    move-result-wide v1

    .line 137
    double-to-float v1, v1

    .line 138
    float-to-int v1, v1

    .line 139
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/text/TextLayoutResult;->getMultiParagraph()Landroidx/compose/ui/text/MultiParagraph;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v2}, Landroidx/compose/ui/text/MultiParagraph;->getHeight()F

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    float-to-double v2, v2

    .line 148
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 149
    .line 150
    .line 151
    move-result-wide v2

    .line 152
    double-to-float v2, v2

    .line 153
    float-to-int v2, v2

    .line 154
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    .line 155
    .line 156
    .line 157
    move-result-wide v1

    .line 158
    invoke-static {v14, v15, v1, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->constrain-4WqzIAM(JJ)J

    .line 159
    .line 160
    .line 161
    move-result-wide v1

    .line 162
    move-object/from16 v3, v17

    .line 163
    .line 164
    invoke-virtual {v0, v3, v1, v2}, Landroidx/compose/ui/text/TextLayoutResult;->copy-O0kMr_c(Landroidx/compose/ui/text/TextLayoutInput;J)Landroidx/compose/ui/text/TextLayoutResult;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    return-object v0

    .line 169
    :cond_0
    invoke-direct/range {p0 .. p3}, Landroidx/compose/foundation/text/TextDelegate;->layoutText-K40F9xA(JLandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/MultiParagraph;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v0}, Landroidx/compose/ui/text/MultiParagraph;->getWidth()F

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    float-to-double v1, v1

    .line 178
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 179
    .line 180
    .line 181
    move-result-wide v1

    .line 182
    double-to-float v1, v1

    .line 183
    float-to-int v1, v1

    .line 184
    invoke-virtual {v0}, Landroidx/compose/ui/text/MultiParagraph;->getHeight()F

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    float-to-double v2, v2

    .line 189
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 190
    .line 191
    .line 192
    move-result-wide v2

    .line 193
    double-to-float v2, v2

    .line 194
    float-to-int v2, v2

    .line 195
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    .line 196
    .line 197
    .line 198
    move-result-wide v1

    .line 199
    invoke-static {v14, v15, v1, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->constrain-4WqzIAM(JJ)J

    .line 200
    .line 201
    .line 202
    move-result-wide v16

    .line 203
    new-instance v18, Landroidx/compose/ui/text/TextLayoutResult;

    .line 204
    .line 205
    new-instance v19, Landroidx/compose/ui/text/TextLayoutInput;

    .line 206
    .line 207
    move-object/from16 v11, p0

    .line 208
    .line 209
    iget-object v2, v11, Landroidx/compose/foundation/text/TextDelegate;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 210
    .line 211
    iget-object v3, v11, Landroidx/compose/foundation/text/TextDelegate;->style:Landroidx/compose/ui/text/TextStyle;

    .line 212
    .line 213
    iget-object v4, v11, Landroidx/compose/foundation/text/TextDelegate;->placeholders:Ljava/util/List;

    .line 214
    .line 215
    iget v5, v11, Landroidx/compose/foundation/text/TextDelegate;->maxLines:I

    .line 216
    .line 217
    iget-boolean v6, v11, Landroidx/compose/foundation/text/TextDelegate;->softWrap:Z

    .line 218
    .line 219
    iget v7, v11, Landroidx/compose/foundation/text/TextDelegate;->overflow:I

    .line 220
    .line 221
    iget-object v8, v11, Landroidx/compose/foundation/text/TextDelegate;->density:Landroidx/compose/ui/unit/Density;

    .line 222
    .line 223
    iget-object v10, v11, Landroidx/compose/foundation/text/TextDelegate;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 224
    .line 225
    const/16 v20, 0x0

    .line 226
    .line 227
    move-object/from16 v1, v19

    .line 228
    .line 229
    move-object/from16 v9, p3

    .line 230
    .line 231
    move-wide/from16 v11, p1

    .line 232
    .line 233
    move-object/from16 v13, v20

    .line 234
    .line 235
    invoke-direct/range {v1 .. v13}, Landroidx/compose/ui/text/TextLayoutInput;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;IZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/font/FontFamily$Resolver;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 236
    .line 237
    .line 238
    const/4 v6, 0x0

    .line 239
    move-object/from16 v1, v18

    .line 240
    .line 241
    move-object/from16 v2, v19

    .line 242
    .line 243
    move-object v3, v0

    .line 244
    move-wide/from16 v4, v16

    .line 245
    .line 246
    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/text/TextLayoutResult;-><init>(Landroidx/compose/ui/text/TextLayoutInput;Landroidx/compose/ui/text/MultiParagraph;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 247
    .line 248
    .line 249
    return-object v18
.end method

.method public final layoutIntrinsics(Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 8
    .param p1    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "layoutDirection"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/foundation/text/TextDelegate;->paragraphIntrinsics:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/compose/foundation/text/TextDelegate;->intrinsicsLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 11
    .line 12
    if-ne p1, v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->getHasStaleResolvedFonts()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    :cond_0
    iput-object p1, p0, Landroidx/compose/foundation/text/TextDelegate;->intrinsicsLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 21
    .line 22
    iget-object v3, p0, Landroidx/compose/foundation/text/TextDelegate;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/compose/foundation/text/TextDelegate;->style:Landroidx/compose/ui/text/TextStyle;

    .line 25
    .line 26
    invoke-static {v0, p1}, Landroidx/compose/ui/text/TextStyleKt;->resolveDefaults(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/TextStyle;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    iget-object v6, p0, Landroidx/compose/foundation/text/TextDelegate;->density:Landroidx/compose/ui/unit/Density;

    .line 31
    .line 32
    iget-object v7, p0, Landroidx/compose/foundation/text/TextDelegate;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 33
    .line 34
    iget-object v5, p0, Landroidx/compose/foundation/text/TextDelegate;->placeholders:Ljava/util/List;

    .line 35
    .line 36
    new-instance v0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    .line 37
    .line 38
    move-object v2, v0

    .line 39
    invoke-direct/range {v2 .. v7}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    iput-object v0, p0, Landroidx/compose/foundation/text/TextDelegate;->paragraphIntrinsics:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    .line 43
    .line 44
    return-void
.end method

.method public final setIntrinsicsLayoutDirection$foundation_release(Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/text/TextDelegate;->intrinsicsLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 2
    .line 3
    return-void
.end method

.method public final setParagraphIntrinsics$foundation_release(Landroidx/compose/ui/text/MultiParagraphIntrinsics;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/text/MultiParagraphIntrinsics;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/text/TextDelegate;->paragraphIntrinsics:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    .line 2
    .line 3
    return-void
.end method
