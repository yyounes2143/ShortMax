.class final Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;
.super Ljava/lang/Object;
.source "LazyBeyondBoundsModifier.kt"

# interfaces
.implements Landroidx/compose/ui/modifier/ModifierLocalProvider;
.implements Landroidx/compose/ui/layout/BeyondBoundsLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/compose/ui/modifier/ModifierLocalProvider<",
        "Landroidx/compose/ui/layout/BeyondBoundsLayout;",
        ">;",
        "Landroidx/compose/ui/layout/BeyondBoundsLayout;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final beyondBoundsInfo:Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final reverseLayout:Z

.field private final state:Landroidx/compose/foundation/lazy/LazyListState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;ZLandroidx/compose/ui/unit/LayoutDirection;)V
    .locals 1
    .param p1    # Landroidx/compose/foundation/lazy/LazyListState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "state"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "beyondBoundsInfo"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "layoutDirection"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 20
    .line 21
    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->beyondBoundsInfo:Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;

    .line 22
    .line 23
    iput-boolean p3, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->reverseLayout:Z

    .line 24
    .line 25
    iput-object p4, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 26
    .line 27
    return-void
.end method

.method public static final synthetic access$hasMoreContent-FR3nfPY(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->hasMoreContent-FR3nfPY(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final addNextInterval-FR3nfPY(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;I)Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;->getStart()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;->getEnd()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    sget-object v1, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Companion:Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;->getBefore-hoxUOeE()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-static {p2, v2}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->equals-impl0(II)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    .line 22
    .line 23
    goto/16 :goto_2

    .line 24
    .line 25
    :cond_1
    invoke-virtual {v1}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;->getAfter-hoxUOeE()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-static {p2, v2}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->equals-impl0(II)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 36
    .line 37
    goto/16 :goto_2

    .line 38
    .line 39
    :cond_3
    invoke-virtual {v1}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;->getAbove-hoxUOeE()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-static {p2, v2}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->equals-impl0(II)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_4

    .line 48
    .line 49
    iget-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->reverseLayout:Z

    .line 50
    .line 51
    if-eqz p2, :cond_0

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_4
    invoke-virtual {v1}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;->getBelow-hoxUOeE()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    invoke-static {p2, v2}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->equals-impl0(II)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_5

    .line 63
    .line 64
    iget-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->reverseLayout:Z

    .line 65
    .line 66
    if-eqz p2, :cond_2

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_5
    invoke-virtual {v1}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;->getLeft-hoxUOeE()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    invoke-static {p2, v2}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->equals-impl0(II)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    const/4 v3, 0x2

    .line 78
    const/4 v4, 0x1

    .line 79
    if-eqz v2, :cond_8

    .line 80
    .line 81
    iget-object p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 82
    .line 83
    sget-object v1, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 84
    .line 85
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    aget p2, v1, p2

    .line 90
    .line 91
    if-eq p2, v4, :cond_7

    .line 92
    .line 93
    if-eq p2, v3, :cond_6

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_6
    iget-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->reverseLayout:Z

    .line 97
    .line 98
    if-eqz p2, :cond_2

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_7
    iget-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->reverseLayout:Z

    .line 102
    .line 103
    if-eqz p2, :cond_0

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_8
    invoke-virtual {v1}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;->getRight-hoxUOeE()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    invoke-static {p2, v1}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->equals-impl0(II)Z

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    if-eqz p2, :cond_b

    .line 115
    .line 116
    iget-object p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 117
    .line 118
    sget-object v1, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 119
    .line 120
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 121
    .line 122
    .line 123
    move-result p2

    .line 124
    aget p2, v1, p2

    .line 125
    .line 126
    if-eq p2, v4, :cond_a

    .line 127
    .line 128
    if-eq p2, v3, :cond_9

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_9
    iget-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->reverseLayout:Z

    .line 132
    .line 133
    if-eqz p2, :cond_0

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_a
    iget-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->reverseLayout:Z

    .line 137
    .line 138
    if-eqz p2, :cond_2

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :goto_2
    iget-object p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->beyondBoundsInfo:Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;

    .line 142
    .line 143
    invoke-virtual {p2, v0, p1}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;->addInterval(II)Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    return-object p1

    .line 148
    :cond_b
    invoke-static {}, Landroidx/compose/foundation/lazy/LazyBeyondBoundsModifierKt;->access$unsupportedDirection()Ljava/lang/Void;

    .line 149
    .line 150
    .line 151
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 152
    .line 153
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 154
    .line 155
    .line 156
    throw p1
.end method

.method private final hasMoreContent-FR3nfPY(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;I)Z
    .locals 4

    .line 1
    sget-object v0, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Companion:Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;->getBefore-hoxUOeE()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {p2, v1}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->equals-impl0(II)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->hasMoreContent_FR3nfPY$hasMoreItemsBefore(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    goto/16 :goto_0

    .line 18
    .line 19
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;->getAfter-hoxUOeE()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-static {p2, v1}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->equals-impl0(II)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-static {p1, p0}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->hasMoreContent_FR3nfPY$hasMoreItemsAfter(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    goto/16 :goto_0

    .line 34
    .line 35
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;->getAbove-hoxUOeE()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-static {p2, v1}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->equals-impl0(II)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    iget-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->reverseLayout:Z

    .line 46
    .line 47
    if-eqz p2, :cond_2

    .line 48
    .line 49
    invoke-static {p1, p0}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->hasMoreContent_FR3nfPY$hasMoreItemsAfter(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    goto/16 :goto_0

    .line 54
    .line 55
    :cond_2
    invoke-static {p1}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->hasMoreContent_FR3nfPY$hasMoreItemsBefore(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    goto/16 :goto_0

    .line 60
    .line 61
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;->getBelow-hoxUOeE()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-static {p2, v1}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->equals-impl0(II)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_5

    .line 70
    .line 71
    iget-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->reverseLayout:Z

    .line 72
    .line 73
    if-eqz p2, :cond_4

    .line 74
    .line 75
    invoke-static {p1}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->hasMoreContent_FR3nfPY$hasMoreItemsBefore(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    goto/16 :goto_0

    .line 80
    .line 81
    :cond_4
    invoke-static {p1, p0}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->hasMoreContent_FR3nfPY$hasMoreItemsAfter(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    goto/16 :goto_0

    .line 86
    .line 87
    :cond_5
    invoke-virtual {v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;->getLeft-hoxUOeE()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    invoke-static {p2, v1}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->equals-impl0(II)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    const/4 v2, 0x2

    .line 96
    const/4 v3, 0x1

    .line 97
    if-eqz v1, :cond_a

    .line 98
    .line 99
    iget-object p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 100
    .line 101
    sget-object v0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 102
    .line 103
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    aget p2, v0, p2

    .line 108
    .line 109
    if-eq p2, v3, :cond_8

    .line 110
    .line 111
    if-ne p2, v2, :cond_7

    .line 112
    .line 113
    iget-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->reverseLayout:Z

    .line 114
    .line 115
    if-eqz p2, :cond_6

    .line 116
    .line 117
    invoke-static {p1}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->hasMoreContent_FR3nfPY$hasMoreItemsBefore(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;)Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    goto :goto_0

    .line 122
    :cond_6
    invoke-static {p1, p0}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->hasMoreContent_FR3nfPY$hasMoreItemsAfter(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;)Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    goto :goto_0

    .line 127
    :cond_7
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 128
    .line 129
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 130
    .line 131
    .line 132
    throw p1

    .line 133
    :cond_8
    iget-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->reverseLayout:Z

    .line 134
    .line 135
    if-eqz p2, :cond_9

    .line 136
    .line 137
    invoke-static {p1, p0}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->hasMoreContent_FR3nfPY$hasMoreItemsAfter(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;)Z

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    goto :goto_0

    .line 142
    :cond_9
    invoke-static {p1}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->hasMoreContent_FR3nfPY$hasMoreItemsBefore(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;)Z

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    goto :goto_0

    .line 147
    :cond_a
    invoke-virtual {v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;->getRight-hoxUOeE()I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    invoke-static {p2, v0}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->equals-impl0(II)Z

    .line 152
    .line 153
    .line 154
    move-result p2

    .line 155
    if-eqz p2, :cond_f

    .line 156
    .line 157
    iget-object p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 158
    .line 159
    sget-object v0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 160
    .line 161
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 162
    .line 163
    .line 164
    move-result p2

    .line 165
    aget p2, v0, p2

    .line 166
    .line 167
    if-eq p2, v3, :cond_d

    .line 168
    .line 169
    if-ne p2, v2, :cond_c

    .line 170
    .line 171
    iget-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->reverseLayout:Z

    .line 172
    .line 173
    if-eqz p2, :cond_b

    .line 174
    .line 175
    invoke-static {p1, p0}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->hasMoreContent_FR3nfPY$hasMoreItemsAfter(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;)Z

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    goto :goto_0

    .line 180
    :cond_b
    invoke-static {p1}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->hasMoreContent_FR3nfPY$hasMoreItemsBefore(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;)Z

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    goto :goto_0

    .line 185
    :cond_c
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 186
    .line 187
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 188
    .line 189
    .line 190
    throw p1

    .line 191
    :cond_d
    iget-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->reverseLayout:Z

    .line 192
    .line 193
    if-eqz p2, :cond_e

    .line 194
    .line 195
    invoke-static {p1}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->hasMoreContent_FR3nfPY$hasMoreItemsBefore(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;)Z

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    goto :goto_0

    .line 200
    :cond_e
    invoke-static {p1, p0}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->hasMoreContent_FR3nfPY$hasMoreItemsAfter(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;)Z

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    :goto_0
    return p1

    .line 205
    :cond_f
    invoke-static {}, Landroidx/compose/foundation/lazy/LazyBeyondBoundsModifierKt;->access$unsupportedDirection()Ljava/lang/Void;

    .line 206
    .line 207
    .line 208
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 209
    .line 210
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 211
    .line 212
    .line 213
    throw p1
.end method

.method private static final hasMoreContent_FR3nfPY$hasMoreItemsAfter(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;->getEnd()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    iget-object p1, p1, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getTotalItemsCount()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v0, 0x1

    .line 16
    sub-int/2addr p1, v0

    .line 17
    if-ge p0, p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    return v0
.end method

.method private static final hasMoreContent_FR3nfPY$hasMoreItemsBefore(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;->getStart()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-lez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method


# virtual methods
.method public getKey()Landroidx/compose/ui/modifier/ProvidableModifierLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/ui/modifier/ProvidableModifierLocal<",
            "Landroidx/compose/ui/layout/BeyondBoundsLayout;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/compose/ui/layout/BeyondBoundsLayoutKt;->getModifierLocalBeyondBoundsLayout()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getValue()Landroidx/compose/ui/layout/BeyondBoundsLayout;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->getValue()Landroidx/compose/ui/layout/BeyondBoundsLayout;

    move-result-object v0

    return-object v0
.end method

.method public layout-o7g1Pn8(ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 4
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/layout/BeyondBoundsLayout$BeyondBoundsScope;",
            "+TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "block"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 7
    .line 8
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->beyondBoundsInfo:Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;

    .line 12
    .line 13
    iget-object v2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListState;->getFirstVisibleItemIndex()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    iget-object v3, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 20
    .line 21
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-interface {v3}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->C0(Ljava/util/List;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    .line 34
    .line 35
    invoke-interface {v3}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getIndex()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-virtual {v1, v2, v3}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;->addInterval(II)Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    :goto_0
    if-nez v1, :cond_1

    .line 47
    .line 48
    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v2, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;

    .line 51
    .line 52
    invoke-direct {p0, v2, p1}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->hasMoreContent-FR3nfPY(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;I)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v1, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;

    .line 61
    .line 62
    invoke-direct {p0, v1, p1}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->addNextInterval-FR3nfPY(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;I)Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    iget-object v2, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->beyondBoundsInfo:Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;

    .line 67
    .line 68
    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v3, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;

    .line 71
    .line 72
    invoke-virtual {v2, v3}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;->removeInterval(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;)V

    .line 73
    .line 74
    .line 75
    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 76
    .line 77
    iget-object v1, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 78
    .line 79
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/LazyListState;->getRemeasurement$foundation_release()Landroidx/compose/ui/layout/Remeasurement;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    if-eqz v1, :cond_0

    .line 84
    .line 85
    invoke-interface {v1}, Landroidx/compose/ui/layout/Remeasurement;->forceRemeasure()V

    .line 86
    .line 87
    .line 88
    :cond_0
    new-instance v1, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal$layout$2;

    .line 89
    .line 90
    invoke-direct {v1, p0, v0, p1}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal$layout$2;-><init>(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;Lkotlin/jvm/internal/Ref$ObjectRef;I)V

    .line 91
    .line 92
    .line 93
    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    goto :goto_0

    .line 98
    :cond_1
    iget-object p1, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->beyondBoundsInfo:Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;

    .line 99
    .line 100
    iget-object p2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast p2, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;

    .line 103
    .line 104
    invoke-virtual {p1, p2}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;->removeInterval(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;)V

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierLocal;->state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 108
    .line 109
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListState;->getRemeasurement$foundation_release()Landroidx/compose/ui/layout/Remeasurement;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    if-eqz p1, :cond_2

    .line 114
    .line 115
    invoke-interface {p1}, Landroidx/compose/ui/layout/Remeasurement;->forceRemeasure()V

    .line 116
    .line 117
    .line 118
    :cond_2
    return-object v1
.end method
