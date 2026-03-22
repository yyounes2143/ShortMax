.class public final Landroidx/compose/ui/text/android/LayoutHelper;
.super Ljava/lang/Object;
.source "LayoutHelper.kt"


# annotations
.annotation runtime Landroidx/compose/ui/text/android/InternalPlatformTextApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final bidiProcessedParagraphs:[Z
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final layout:Landroid/text/Layout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final paragraphBidi:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/text/Bidi;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final paragraphCount:I

.field private final paragraphEnds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private tmpBuffer:[C
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/text/Layout;)V
    .locals 7
    .param p1    # Landroid/text/Layout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "layout"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    .line 10
    .line 11
    new-instance p1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    move v3, v0

    .line 18
    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "layout.text"

    .line 25
    .line 26
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 v5, 0x4

    .line 30
    const/4 v6, 0x0

    .line 31
    const/16 v2, 0xa

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->p0(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-gez v1, :cond_1

    .line 39
    .line 40
    iget-object v1, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    :goto_0
    move v3, v1

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-lt v3, v1, :cond_0

    .line 73
    .line 74
    iput-object p1, p0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphEnds:Ljava/util/List;

    .line 75
    .line 76
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 83
    .line 84
    .line 85
    :goto_2
    if-ge v0, p1, :cond_2

    .line 86
    .line 87
    const/4 v2, 0x0

    .line 88
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    add-int/lit8 v0, v0, 0x1

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_2
    iput-object v1, p0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphBidi:Ljava/util/List;

    .line 95
    .line 96
    iget-object p1, p0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphEnds:Ljava/util/List;

    .line 97
    .line 98
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    new-array p1, p1, [Z

    .line 103
    .line 104
    iput-object p1, p0, Landroidx/compose/ui/text/android/LayoutHelper;->bidiProcessedParagraphs:[Z

    .line 105
    .line 106
    iget-object p1, p0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphEnds:Ljava/util/List;

    .line 107
    .line 108
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    iput p1, p0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphCount:I

    .line 113
    .line 114
    return-void
.end method

.method private final getDownstreamHorizontal(IZ)F
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    .line 4
    .line 5
    invoke-virtual {p2, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p2, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    .line 11
    .line 12
    invoke-virtual {p2, p1}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    :goto_0
    return p1
.end method

.method public static synthetic getParagraphForOffset$default(Landroidx/compose/ui/text/android/LayoutHelper;IZILjava/lang/Object;)I
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/text/android/LayoutHelper;->getParagraphForOffset(IZ)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method private final lineEndToVisibleEnd(I)I
    .locals 2

    .line 1
    :goto_0
    if-lez p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    add-int/lit8 v1, p1, -0x1

    .line 10
    .line 11
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/android/LayoutHelper;->isLineEndSpace(C)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    add-int/lit8 p1, p1, -0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return p1
.end method


# virtual methods
.method public final analyzeBidi(I)Ljava/text/Bidi;
    .locals 11
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/LayoutHelper;->bidiProcessedParagraphs:[Z

    .line 2
    .line 3
    aget-boolean v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphBidi:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Ljava/text/Bidi;

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    move v1, v0

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object v1, p0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphEnds:Ljava/util/List;

    .line 22
    .line 23
    add-int/lit8 v2, p1, -0x1

    .line 24
    .line 25
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/Number;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    :goto_0
    iget-object v2, p0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphEnds:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Ljava/lang/Number;

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    sub-int v8, v2, v1

    .line 48
    .line 49
    iget-object v3, p0, Landroidx/compose/ui/text/android/LayoutHelper;->tmpBuffer:[C

    .line 50
    .line 51
    if-eqz v3, :cond_3

    .line 52
    .line 53
    array-length v4, v3

    .line 54
    if-ge v4, v8, :cond_2

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    :goto_1
    move-object v10, v3

    .line 58
    goto :goto_3

    .line 59
    :cond_3
    :goto_2
    new-array v3, v8, [C

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :goto_3
    iget-object v3, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    .line 63
    .line 64
    invoke-virtual {v3}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-static {v3, v1, v2, v10, v0}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 69
    .line 70
    .line 71
    invoke-static {v10, v0, v8}, Ljava/text/Bidi;->requiresBidi([CII)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    const/4 v1, 0x0

    .line 76
    const/4 v2, 0x1

    .line 77
    if-eqz v0, :cond_4

    .line 78
    .line 79
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/LayoutHelper;->isRtlParagraph(I)Z

    .line 80
    .line 81
    .line 82
    move-result v9

    .line 83
    new-instance v0, Ljava/text/Bidi;

    .line 84
    .line 85
    const/4 v6, 0x0

    .line 86
    const/4 v7, 0x0

    .line 87
    const/4 v5, 0x0

    .line 88
    move-object v3, v0

    .line 89
    move-object v4, v10

    .line 90
    invoke-direct/range {v3 .. v9}, Ljava/text/Bidi;-><init>([CI[BIII)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/text/Bidi;->getRunCount()I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-ne v3, v2, :cond_5

    .line 98
    .line 99
    :cond_4
    move-object v0, v1

    .line 100
    :cond_5
    iget-object v3, p0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphBidi:Ljava/util/List;

    .line 101
    .line 102
    invoke-interface {v3, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    iget-object v3, p0, Landroidx/compose/ui/text/android/LayoutHelper;->bidiProcessedParagraphs:[Z

    .line 106
    .line 107
    aput-boolean v2, v3, p1

    .line 108
    .line 109
    if-eqz v0, :cond_7

    .line 110
    .line 111
    iget-object p1, p0, Landroidx/compose/ui/text/android/LayoutHelper;->tmpBuffer:[C

    .line 112
    .line 113
    if-ne v10, p1, :cond_6

    .line 114
    .line 115
    move-object v10, v1

    .line 116
    goto :goto_4

    .line 117
    :cond_6
    move-object v10, p1

    .line 118
    :cond_7
    :goto_4
    iput-object v10, p0, Landroidx/compose/ui/text/android/LayoutHelper;->tmpBuffer:[C

    .line 119
    .line 120
    return-object v0
.end method

.method public final getHorizontalPosition(IZZ)F
    .locals 12

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/text/android/LayoutHelper;->getDownstreamHorizontal(IZ)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    .line 9
    .line 10
    invoke-static {v0, p1, p3}, Landroidx/compose/ui/text/android/LayoutCompatKt;->getLineForOffset(Landroid/text/Layout;IZ)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineStart(I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iget-object v2, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    .line 21
    .line 22
    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineEnd(I)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eq p1, v1, :cond_1

    .line 27
    .line 28
    if-eq p1, v2, :cond_1

    .line 29
    .line 30
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/text/android/LayoutHelper;->getDownstreamHorizontal(IZ)F

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    return p1

    .line 35
    :cond_1
    if-eqz p1, :cond_20

    .line 36
    .line 37
    iget-object v3, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    .line 38
    .line 39
    invoke-virtual {v3}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-ne p1, v3, :cond_2

    .line 48
    .line 49
    goto/16 :goto_e

    .line 50
    .line 51
    :cond_2
    invoke-virtual {p0, p1, p3}, Landroidx/compose/ui/text/android/LayoutHelper;->getParagraphForOffset(IZ)I

    .line 52
    .line 53
    .line 54
    move-result p3

    .line 55
    invoke-virtual {p0, p3}, Landroidx/compose/ui/text/android/LayoutHelper;->isRtlParagraph(I)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    invoke-direct {p0, v2}, Landroidx/compose/ui/text/android/LayoutHelper;->lineEndToVisibleEnd(I)I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    invoke-virtual {p0, p3}, Landroidx/compose/ui/text/android/LayoutHelper;->getParagraphStart(I)I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    sub-int v5, v1, v4

    .line 68
    .line 69
    sub-int/2addr v2, v4

    .line 70
    invoke-virtual {p0, p3}, Landroidx/compose/ui/text/android/LayoutHelper;->analyzeBidi(I)Ljava/text/Bidi;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    if-eqz p3, :cond_3

    .line 75
    .line 76
    invoke-virtual {p3, v5, v2}, Ljava/text/Bidi;->createLineBidi(II)Ljava/text/Bidi;

    .line 77
    .line 78
    .line 79
    move-result-object p3

    .line 80
    goto :goto_0

    .line 81
    :cond_3
    const/4 p3, 0x0

    .line 82
    :goto_0
    const/4 v2, 0x0

    .line 83
    const/4 v4, 0x1

    .line 84
    if-eqz p3, :cond_19

    .line 85
    .line 86
    invoke-virtual {p3}, Ljava/text/Bidi;->getRunCount()I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    if-ne v5, v4, :cond_4

    .line 91
    .line 92
    goto/16 :goto_a

    .line 93
    .line 94
    :cond_4
    invoke-virtual {p3}, Ljava/text/Bidi;->getRunCount()I

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    new-array v6, v5, [Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;

    .line 99
    .line 100
    move v7, v2

    .line 101
    :goto_1
    if-ge v7, v5, :cond_6

    .line 102
    .line 103
    new-instance v8, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;

    .line 104
    .line 105
    invoke-virtual {p3, v7}, Ljava/text/Bidi;->getRunStart(I)I

    .line 106
    .line 107
    .line 108
    move-result v9

    .line 109
    add-int/2addr v9, v1

    .line 110
    invoke-virtual {p3, v7}, Ljava/text/Bidi;->getRunLimit(I)I

    .line 111
    .line 112
    .line 113
    move-result v10

    .line 114
    add-int/2addr v10, v1

    .line 115
    invoke-virtual {p3, v7}, Ljava/text/Bidi;->getRunLevel(I)I

    .line 116
    .line 117
    .line 118
    move-result v11

    .line 119
    rem-int/lit8 v11, v11, 0x2

    .line 120
    .line 121
    if-ne v11, v4, :cond_5

    .line 122
    .line 123
    move v11, v4

    .line 124
    goto :goto_2

    .line 125
    :cond_5
    move v11, v2

    .line 126
    :goto_2
    invoke-direct {v8, v9, v10, v11}, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;-><init>(IIZ)V

    .line 127
    .line 128
    .line 129
    aput-object v8, v6, v7

    .line 130
    .line 131
    add-int/lit8 v7, v7, 0x1

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_6
    invoke-virtual {p3}, Ljava/text/Bidi;->getRunCount()I

    .line 135
    .line 136
    .line 137
    move-result v7

    .line 138
    new-array v8, v7, [B

    .line 139
    .line 140
    move v9, v2

    .line 141
    :goto_3
    if-ge v9, v7, :cond_7

    .line 142
    .line 143
    invoke-virtual {p3, v9}, Ljava/text/Bidi;->getRunLevel(I)I

    .line 144
    .line 145
    .line 146
    move-result v10

    .line 147
    int-to-byte v10, v10

    .line 148
    aput-byte v10, v8, v9

    .line 149
    .line 150
    add-int/lit8 v9, v9, 0x1

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_7
    invoke-static {v8, v2, v6, v2, v5}, Ljava/text/Bidi;->reorderVisually([BI[Ljava/lang/Object;II)V

    .line 154
    .line 155
    .line 156
    const/4 p3, -0x1

    .line 157
    if-ne p1, v1, :cond_10

    .line 158
    .line 159
    move v1, v2

    .line 160
    :goto_4
    if-ge v1, v5, :cond_9

    .line 161
    .line 162
    aget-object v7, v6, v1

    .line 163
    .line 164
    invoke-virtual {v7}, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->getStart()I

    .line 165
    .line 166
    .line 167
    move-result v7

    .line 168
    if-ne v7, p1, :cond_8

    .line 169
    .line 170
    move p3, v1

    .line 171
    goto :goto_5

    .line 172
    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_9
    :goto_5
    aget-object p1, v6, p3

    .line 176
    .line 177
    if-nez p2, :cond_a

    .line 178
    .line 179
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->isRtl()Z

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    if-ne v3, p1, :cond_c

    .line 184
    .line 185
    :cond_a
    if-nez v3, :cond_b

    .line 186
    .line 187
    move v3, v4

    .line 188
    goto :goto_6

    .line 189
    :cond_b
    move v3, v2

    .line 190
    :cond_c
    :goto_6
    if-nez p3, :cond_d

    .line 191
    .line 192
    if-eqz v3, :cond_d

    .line 193
    .line 194
    iget-object p1, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    .line 195
    .line 196
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineLeft(I)F

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    return p1

    .line 201
    :cond_d
    invoke-static {v6}, Lkotlin/collections/n;->r0([Ljava/lang/Object;)I

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    if-ne p3, p1, :cond_e

    .line 206
    .line 207
    if-nez v3, :cond_e

    .line 208
    .line 209
    iget-object p1, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    .line 210
    .line 211
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineRight(I)F

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    return p1

    .line 216
    :cond_e
    if-eqz v3, :cond_f

    .line 217
    .line 218
    iget-object p1, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    .line 219
    .line 220
    sub-int/2addr p3, v4

    .line 221
    aget-object p2, v6, p3

    .line 222
    .line 223
    invoke-virtual {p2}, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->getStart()I

    .line 224
    .line 225
    .line 226
    move-result p2

    .line 227
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    .line 228
    .line 229
    .line 230
    move-result p1

    .line 231
    return p1

    .line 232
    :cond_f
    iget-object p1, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    .line 233
    .line 234
    add-int/2addr p3, v4

    .line 235
    aget-object p2, v6, p3

    .line 236
    .line 237
    invoke-virtual {p2}, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->getStart()I

    .line 238
    .line 239
    .line 240
    move-result p2

    .line 241
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    .line 242
    .line 243
    .line 244
    move-result p1

    .line 245
    return p1

    .line 246
    :cond_10
    move v1, v2

    .line 247
    :goto_7
    if-ge v1, v5, :cond_12

    .line 248
    .line 249
    aget-object v7, v6, v1

    .line 250
    .line 251
    invoke-virtual {v7}, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->getEnd()I

    .line 252
    .line 253
    .line 254
    move-result v7

    .line 255
    if-ne v7, p1, :cond_11

    .line 256
    .line 257
    move p3, v1

    .line 258
    goto :goto_8

    .line 259
    :cond_11
    add-int/lit8 v1, v1, 0x1

    .line 260
    .line 261
    goto :goto_7

    .line 262
    :cond_12
    :goto_8
    aget-object p1, v6, p3

    .line 263
    .line 264
    if-nez p2, :cond_15

    .line 265
    .line 266
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->isRtl()Z

    .line 267
    .line 268
    .line 269
    move-result p1

    .line 270
    if-ne v3, p1, :cond_13

    .line 271
    .line 272
    goto :goto_9

    .line 273
    :cond_13
    if-nez v3, :cond_14

    .line 274
    .line 275
    move v3, v4

    .line 276
    goto :goto_9

    .line 277
    :cond_14
    move v3, v2

    .line 278
    :cond_15
    :goto_9
    if-nez p3, :cond_16

    .line 279
    .line 280
    if-eqz v3, :cond_16

    .line 281
    .line 282
    iget-object p1, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    .line 283
    .line 284
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineLeft(I)F

    .line 285
    .line 286
    .line 287
    move-result p1

    .line 288
    return p1

    .line 289
    :cond_16
    invoke-static {v6}, Lkotlin/collections/n;->r0([Ljava/lang/Object;)I

    .line 290
    .line 291
    .line 292
    move-result p1

    .line 293
    if-ne p3, p1, :cond_17

    .line 294
    .line 295
    if-nez v3, :cond_17

    .line 296
    .line 297
    iget-object p1, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    .line 298
    .line 299
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineRight(I)F

    .line 300
    .line 301
    .line 302
    move-result p1

    .line 303
    return p1

    .line 304
    :cond_17
    if-eqz v3, :cond_18

    .line 305
    .line 306
    iget-object p1, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    .line 307
    .line 308
    sub-int/2addr p3, v4

    .line 309
    aget-object p2, v6, p3

    .line 310
    .line 311
    invoke-virtual {p2}, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->getEnd()I

    .line 312
    .line 313
    .line 314
    move-result p2

    .line 315
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    .line 316
    .line 317
    .line 318
    move-result p1

    .line 319
    return p1

    .line 320
    :cond_18
    iget-object p1, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    .line 321
    .line 322
    add-int/2addr p3, v4

    .line 323
    aget-object p2, v6, p3

    .line 324
    .line 325
    invoke-virtual {p2}, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->getEnd()I

    .line 326
    .line 327
    .line 328
    move-result p2

    .line 329
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    .line 330
    .line 331
    .line 332
    move-result p1

    .line 333
    return p1

    .line 334
    :cond_19
    :goto_a
    iget-object p3, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    .line 335
    .line 336
    invoke-virtual {p3, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    .line 337
    .line 338
    .line 339
    move-result p3

    .line 340
    if-nez p2, :cond_1a

    .line 341
    .line 342
    if-ne v3, p3, :cond_1c

    .line 343
    .line 344
    :cond_1a
    if-nez v3, :cond_1b

    .line 345
    .line 346
    move v3, v4

    .line 347
    goto :goto_b

    .line 348
    :cond_1b
    move v3, v2

    .line 349
    :cond_1c
    :goto_b
    if-ne p1, v1, :cond_1d

    .line 350
    .line 351
    move v2, v3

    .line 352
    goto :goto_c

    .line 353
    :cond_1d
    if-nez v3, :cond_1e

    .line 354
    .line 355
    move v2, v4

    .line 356
    :cond_1e
    :goto_c
    iget-object p1, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    .line 357
    .line 358
    if-eqz v2, :cond_1f

    .line 359
    .line 360
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineLeft(I)F

    .line 361
    .line 362
    .line 363
    move-result p1

    .line 364
    goto :goto_d

    .line 365
    :cond_1f
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineRight(I)F

    .line 366
    .line 367
    .line 368
    move-result p1

    .line 369
    :goto_d
    return p1

    .line 370
    :cond_20
    :goto_e
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/text/android/LayoutHelper;->getDownstreamHorizontal(IZ)F

    .line 371
    .line 372
    .line 373
    move-result p1

    .line 374
    return p1
.end method

.method public final getLayout()Landroid/text/Layout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getParagraphCount()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphCount:I

    .line 2
    .line 3
    return v0
.end method

.method public final getParagraphEnd(I)I
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphEnds:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final getParagraphForOffset(IZ)I
    .locals 6
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphEnds:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v4, 0x6

    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt;->m(Ljava/util/List;Ljava/lang/Comparable;IIILjava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-gez v0, :cond_0

    .line 16
    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    neg-int v0, v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    :goto_0
    if-eqz p2, :cond_1

    .line 24
    .line 25
    if-lez v0, :cond_1

    .line 26
    .line 27
    iget-object p2, p0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphEnds:Ljava/util/List;

    .line 28
    .line 29
    add-int/lit8 v1, v0, -0x1

    .line 30
    .line 31
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    check-cast p2, Ljava/lang/Number;

    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-ne p1, p2, :cond_1

    .line 42
    .line 43
    return v1

    .line 44
    :cond_1
    return v0
.end method

.method public final getParagraphStart(I)I
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/android/LayoutHelper;->paragraphEnds:Ljava/util/List;

    .line 6
    .line 7
    add-int/lit8 p1, p1, -0x1

    .line 8
    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Ljava/lang/Number;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    :goto_0
    return p1
.end method

.method public final isLineEndSpace(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    if-eq p1, v0, :cond_2

    .line 4
    .line 5
    const/16 v0, 0xa

    .line 6
    .line 7
    if-eq p1, v0, :cond_2

    .line 8
    .line 9
    const/16 v0, 0x1680

    .line 10
    .line 11
    if-eq p1, v0, :cond_2

    .line 12
    .line 13
    const/16 v0, 0x2000

    .line 14
    .line 15
    if-gt v0, p1, :cond_0

    .line 16
    .line 17
    const/16 v0, 0x200b

    .line 18
    .line 19
    if-ge p1, v0, :cond_0

    .line 20
    .line 21
    const/16 v0, 0x2007

    .line 22
    .line 23
    if-ne p1, v0, :cond_2

    .line 24
    .line 25
    :cond_0
    const/16 v0, 0x205f

    .line 26
    .line 27
    if-eq p1, v0, :cond_2

    .line 28
    .line 29
    const/16 v0, 0x3000

    .line 30
    .line 31
    if-ne p1, v0, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 p1, 0x0

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 37
    :goto_1
    return p1
.end method

.method public final isRtlParagraph(I)Z
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/android/LayoutHelper;->getParagraphStart(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object v0, p0, Landroidx/compose/ui/text/android/LayoutHelper;->layout:Landroid/text/Layout;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 v0, -0x1

    .line 18
    if-ne p1, v0, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    return p1
.end method
