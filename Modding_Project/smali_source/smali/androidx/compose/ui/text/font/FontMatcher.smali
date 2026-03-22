.class public final Landroidx/compose/ui/text/font/FontMatcher;
.super Ljava/lang/Object;
.source "FontMatcher.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic filterByClosestWeight$ui_text_release$default(Landroidx/compose/ui/text/font/FontMatcher;Ljava/util/List;Landroidx/compose/ui/text/font/FontWeight;ZLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontWeight;ILjava/lang/Object;)Ljava/util/List;
    .locals 4

    .line 1
    and-int/lit8 p0, p6, 0x4

    .line 2
    .line 3
    const/4 p7, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    move-object p4, p7

    .line 7
    :cond_0
    and-int/lit8 p0, p6, 0x8

    .line 8
    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    move-object p5, p7

    .line 12
    :cond_1
    const-string p0, "<this>"

    .line 13
    .line 14
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string p0, "fontWeight"

    .line 18
    .line 19
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    const/4 p6, 0x0

    .line 27
    move v1, p6

    .line 28
    move-object v0, p7

    .line 29
    :goto_0
    if-ge v1, p0, :cond_9

    .line 30
    .line 31
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Landroidx/compose/ui/text/font/Font;

    .line 36
    .line 37
    invoke-interface {v2}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-eqz p4, :cond_2

    .line 42
    .line 43
    invoke-virtual {v2, p4}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-ltz v3, :cond_7

    .line 48
    .line 49
    :cond_2
    if-eqz p5, :cond_3

    .line 50
    .line 51
    invoke-virtual {v2, p5}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-gtz v3, :cond_7

    .line 56
    .line 57
    :cond_3
    invoke-virtual {v2, p2}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-gez v3, :cond_5

    .line 62
    .line 63
    if-eqz p7, :cond_4

    .line 64
    .line 65
    invoke-virtual {v2, p7}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-lez v3, :cond_7

    .line 70
    .line 71
    :cond_4
    move-object p7, v2

    .line 72
    goto :goto_1

    .line 73
    :cond_5
    invoke-virtual {v2, p2}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-lez v3, :cond_8

    .line 78
    .line 79
    if-eqz v0, :cond_6

    .line 80
    .line 81
    invoke-virtual {v2, v0}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-gez v3, :cond_7

    .line 86
    .line 87
    :cond_6
    move-object v0, v2

    .line 88
    :cond_7
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_8
    move-object p7, v2

    .line 92
    move-object v0, p7

    .line 93
    :cond_9
    if-eqz p3, :cond_a

    .line 94
    .line 95
    if-nez p7, :cond_c

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_a
    if-nez v0, :cond_b

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_b
    :goto_2
    move-object p7, v0

    .line 102
    :cond_c
    :goto_3
    new-instance p0, Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 109
    .line 110
    .line 111
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 112
    .line 113
    .line 114
    move-result p2

    .line 115
    :goto_4
    if-ge p6, p2, :cond_e

    .line 116
    .line 117
    invoke-interface {p1, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p3

    .line 121
    move-object p4, p3

    .line 122
    check-cast p4, Landroidx/compose/ui/text/font/Font;

    .line 123
    .line 124
    invoke-interface {p4}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    .line 125
    .line 126
    .line 127
    move-result-object p4

    .line 128
    invoke-static {p4, p7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result p4

    .line 132
    if-eqz p4, :cond_d

    .line 133
    .line 134
    invoke-interface {p0, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    :cond_d
    add-int/lit8 p6, p6, 0x1

    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_e
    return-object p0
.end method


# virtual methods
.method public final filterByClosestWeight$ui_text_release(Ljava/util/List;Landroidx/compose/ui/text/font/FontWeight;ZLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontWeight;)Ljava/util/List;
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/text/font/FontWeight;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/text/font/FontWeight;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/ui/text/font/FontWeight;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/text/font/Font;",
            ">;",
            "Landroidx/compose/ui/text/font/FontWeight;",
            "Z",
            "Landroidx/compose/ui/text/font/FontWeight;",
            "Landroidx/compose/ui/text/font/FontWeight;",
            ")",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/font/Font;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "fontWeight"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x0

    .line 17
    move-object v3, v1

    .line 18
    move v4, v2

    .line 19
    :goto_0
    if-ge v4, v0, :cond_7

    .line 20
    .line 21
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    check-cast v5, Landroidx/compose/ui/text/font/Font;

    .line 26
    .line 27
    invoke-interface {v5}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    if-eqz p4, :cond_0

    .line 32
    .line 33
    invoke-virtual {v5, p4}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-ltz v6, :cond_5

    .line 38
    .line 39
    :cond_0
    if-eqz p5, :cond_1

    .line 40
    .line 41
    invoke-virtual {v5, p5}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-gtz v6, :cond_5

    .line 46
    .line 47
    :cond_1
    invoke-virtual {v5, p2}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-gez v6, :cond_3

    .line 52
    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    invoke-virtual {v5, v1}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-lez v6, :cond_5

    .line 60
    .line 61
    :cond_2
    move-object v1, v5

    .line 62
    goto :goto_1

    .line 63
    :cond_3
    invoke-virtual {v5, p2}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-lez v6, :cond_6

    .line 68
    .line 69
    if-eqz v3, :cond_4

    .line 70
    .line 71
    invoke-virtual {v5, v3}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-gez v6, :cond_5

    .line 76
    .line 77
    :cond_4
    move-object v3, v5

    .line 78
    :cond_5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_6
    move-object v1, v5

    .line 82
    move-object v3, v1

    .line 83
    :cond_7
    if-eqz p3, :cond_8

    .line 84
    .line 85
    if-nez v1, :cond_a

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_8
    if-nez v3, :cond_9

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_9
    :goto_2
    move-object v1, v3

    .line 92
    :cond_a
    :goto_3
    new-instance p2, Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 95
    .line 96
    .line 97
    move-result p3

    .line 98
    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 99
    .line 100
    .line 101
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 102
    .line 103
    .line 104
    move-result p3

    .line 105
    :goto_4
    if-ge v2, p3, :cond_c

    .line 106
    .line 107
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p4

    .line 111
    move-object p5, p4

    .line 112
    check-cast p5, Landroidx/compose/ui/text/font/Font;

    .line 113
    .line 114
    invoke-interface {p5}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    .line 115
    .line 116
    .line 117
    move-result-object p5

    .line 118
    invoke-static {p5, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result p5

    .line 122
    if-eqz p5, :cond_b

    .line 123
    .line 124
    invoke-interface {p2, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    :cond_b
    add-int/lit8 v2, v2, 0x1

    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_c
    return-object p2
.end method

.method public final matchFont-RetOiIg(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;I)Ljava/util/List;
    .locals 1
    .param p1    # Landroidx/compose/ui/text/font/FontFamily;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/text/font/FontWeight;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/font/FontFamily;",
            "Landroidx/compose/ui/text/font/FontWeight;",
            "I)",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/font/Font;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "fontFamily"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontWeight"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Landroidx/compose/ui/text/font/FontListFontFamily;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroidx/compose/ui/text/font/FontListFontFamily;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/text/font/FontMatcher;->matchFont-RetOiIg(Landroidx/compose/ui/text/font/FontListFontFamily;Landroidx/compose/ui/text/font/FontWeight;I)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 4
    const-string p2, "Only FontFamily instances that presents a list of Fonts can be used"

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final matchFont-RetOiIg(Landroidx/compose/ui/text/font/FontListFontFamily;Landroidx/compose/ui/text/font/FontWeight;I)Ljava/util/List;
    .locals 1
    .param p1    # Landroidx/compose/ui/text/font/FontListFontFamily;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/text/font/FontWeight;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/font/FontListFontFamily;",
            "Landroidx/compose/ui/text/font/FontWeight;",
            "I)",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/font/Font;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "fontFamily"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontWeight"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Landroidx/compose/ui/text/font/FontListFontFamily;->getFonts()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/text/font/FontMatcher;->matchFont-RetOiIg(Ljava/util/List;Landroidx/compose/ui/text/font/FontWeight;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final matchFont-RetOiIg(Ljava/util/List;Landroidx/compose/ui/text/font/FontWeight;I)Ljava/util/List;
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/text/font/FontWeight;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/text/font/Font;",
            ">;",
            "Landroidx/compose/ui/text/font/FontWeight;",
            "I)",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/font/Font;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "fontList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontWeight"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 9
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 10
    move-object v5, v4

    check-cast v5, Landroidx/compose/ui/text/font/Font;

    .line 11
    invoke-interface {v5}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v6

    invoke-static {v6, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Landroidx/compose/ui/text/font/Font;->getStyle-_-LCdwA()I

    move-result v5

    invoke-static {v5, p3}, Landroidx/compose/ui/text/font/FontStyle;->equals-impl0(II)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    .line 13
    :cond_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_4

    .line 16
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 17
    move-object v5, v4

    check-cast v5, Landroidx/compose/ui/text/font/Font;

    .line 18
    invoke-interface {v5}, Landroidx/compose/ui/text/font/Font;->getStyle-_-LCdwA()I

    move-result v5

    invoke-static {v5, p3}, Landroidx/compose/ui/text/font/FontStyle;->equals-impl0(II)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_2

    :cond_5
    move-object p1, v0

    :goto_2
    check-cast p1, Ljava/util/List;

    .line 19
    sget-object p3, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {p3}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getW400()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_e

    .line 20
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    move-object v0, v1

    move v3, v2

    :goto_3
    if-ge v3, p3, :cond_b

    .line 21
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/text/font/Font;

    .line 22
    invoke-interface {v4}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v4

    .line 23
    invoke-virtual {v4, p2}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v5

    if-gez v5, :cond_7

    if-eqz v1, :cond_6

    .line 24
    invoke-virtual {v4, v1}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v5

    if-lez v5, :cond_9

    :cond_6
    move-object v1, v4

    goto :goto_4

    .line 25
    :cond_7
    invoke-virtual {v4, p2}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v5

    if-lez v5, :cond_a

    if-eqz v0, :cond_8

    .line 26
    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v5

    if-gez v5, :cond_9

    :cond_8
    move-object v0, v4

    :cond_9
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_a
    move-object v0, v4

    move-object v1, v0

    :cond_b
    if-nez v1, :cond_c

    goto :goto_5

    :cond_c
    move-object v0, v1

    .line 27
    :goto_5
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    :goto_6
    if-ge v2, p3, :cond_2c

    .line 29
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 30
    move-object v3, v1

    check-cast v3, Landroidx/compose/ui/text/font/Font;

    .line 31
    invoke-interface {v3}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 32
    :cond_e
    invoke-virtual {p3}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getW500()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v0

    if-lez v0, :cond_17

    .line 33
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    move-object v0, v1

    move v3, v2

    :goto_7
    if-ge v3, p3, :cond_14

    .line 34
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/text/font/Font;

    .line 35
    invoke-interface {v4}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v4

    .line 36
    invoke-virtual {v4, p2}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v5

    if-gez v5, :cond_10

    if-eqz v1, :cond_f

    .line 37
    invoke-virtual {v4, v1}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v5

    if-lez v5, :cond_12

    :cond_f
    move-object v1, v4

    goto :goto_8

    .line 38
    :cond_10
    invoke-virtual {v4, p2}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v5

    if-lez v5, :cond_13

    if-eqz v0, :cond_11

    .line 39
    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v5

    if-gez v5, :cond_12

    :cond_11
    move-object v0, v4

    :cond_12
    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_13
    move-object v0, v4

    move-object v1, v0

    :cond_14
    if-nez v0, :cond_15

    move-object v0, v1

    .line 40
    :cond_15
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    :goto_9
    if-ge v2, p3, :cond_2c

    .line 42
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 43
    move-object v3, v1

    check-cast v3, Landroidx/compose/ui/text/font/Font;

    .line 44
    invoke-interface {v3}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 45
    :cond_17
    invoke-virtual {p3}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getW500()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object p3

    .line 46
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move-object v4, v1

    move-object v5, v4

    move v3, v2

    :goto_a
    if-ge v3, v0, :cond_1e

    .line 47
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/text/font/Font;

    .line 48
    invoke-interface {v6}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v6

    if-eqz p3, :cond_18

    .line 49
    invoke-virtual {v6, p3}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v7

    if-gtz v7, :cond_1c

    .line 50
    :cond_18
    invoke-virtual {v6, p2}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v7

    if-gez v7, :cond_1a

    if-eqz v4, :cond_19

    .line 51
    invoke-virtual {v6, v4}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v7

    if-lez v7, :cond_1c

    :cond_19
    move-object v4, v6

    goto :goto_b

    .line 52
    :cond_1a
    invoke-virtual {v6, p2}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v7

    if-lez v7, :cond_1d

    if-eqz v5, :cond_1b

    .line 53
    invoke-virtual {v6, v5}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v7

    if-gez v7, :cond_1c

    :cond_1b
    move-object v5, v6

    :cond_1c
    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_1d
    move-object v4, v6

    move-object v5, v4

    :cond_1e
    if-nez v5, :cond_1f

    goto :goto_c

    :cond_1f
    move-object v4, v5

    .line 54
    :goto_c
    new-instance p3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v3, v2

    :goto_d
    if-ge v3, v0, :cond_21

    .line 56
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 57
    move-object v6, v5

    check-cast v6, Landroidx/compose/ui/text/font/Font;

    .line 58
    invoke-interface {v6}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-interface {p3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 59
    :cond_21
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 60
    sget-object p3, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {p3}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getW500()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object p3

    .line 61
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move-object v3, v1

    move v4, v2

    :goto_e
    if-ge v4, v0, :cond_28

    .line 62
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/text/font/Font;

    .line 63
    invoke-interface {v5}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v5

    if-eqz p3, :cond_22

    .line 64
    invoke-virtual {v5, p3}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v6

    if-ltz v6, :cond_26

    .line 65
    :cond_22
    invoke-virtual {v5, p2}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v6

    if-gez v6, :cond_24

    if-eqz v1, :cond_23

    .line 66
    invoke-virtual {v5, v1}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v6

    if-lez v6, :cond_26

    :cond_23
    move-object v1, v5

    goto :goto_f

    .line 67
    :cond_24
    invoke-virtual {v5, p2}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v6

    if-lez v6, :cond_27

    if-eqz v3, :cond_25

    .line 68
    invoke-virtual {v5, v3}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v6

    if-gez v6, :cond_26

    :cond_25
    move-object v3, v5

    :cond_26
    :goto_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_27
    move-object v1, v5

    move-object v3, v1

    :cond_28
    if-nez v3, :cond_29

    goto :goto_10

    :cond_29
    move-object v1, v3

    .line 69
    :goto_10
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 70
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    :goto_11
    if-ge v2, p3, :cond_2c

    .line 71
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 72
    move-object v3, v0

    check-cast v3, Landroidx/compose/ui/text/font/Font;

    .line 73
    invoke-interface {v3}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_2b
    move-object p2, p3

    :cond_2c
    return-object p2
.end method
