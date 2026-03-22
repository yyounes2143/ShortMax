.class public final Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView;
.super Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;
.source "ShortsTagView.kt"

# interfaces
.implements Lzj/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nShortsTagView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShortsTagView.kt\ncom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n+ 4 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,184:1\n774#2:185\n865#2,2:186\n1872#2,3:188\n46#3:191\n1328#4,3:192\n*S KotlinDebug\n*F\n+ 1 ShortsTagView.kt\ncom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView\n*L\n60#1:185\n60#1:186,2\n72#1:188,3\n90#1:191\n95#1:192,3\n*E\n"
    }
.end annotation


# instance fields
.field private final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private c:Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView$a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Lcom/google/android/flexbox/FlexboxLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    const-string p1, "ShortsTagView"

    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView;->b:Ljava/lang/String;

    return-void
.end method

.method private final setTextLabelPadding(Landroid/widget/TextView;)V
    .locals 3

    .line 1
    const/high16 v0, 0x40800000    # 4.0f

    .line 2
    .line 3
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p1, v1, v2, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final setTextLabelPaddingWithImg(Landroid/widget/TextView;)V
    .locals 3

    .line 1
    sget-object v0, Lfk/v;->a:Lfk/v;

    .line 2
    .line 3
    invoke-virtual {v0}, Lfk/v;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/high16 v1, 0x40800000    # 4.0f

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {v1}, Ljk/g;->a(F)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p1, v0, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {v1}, Ljk/g;->a(F)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p1, v2, v2, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 25
    .line 26
    .line 27
    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    .line 28
    .line 29
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public static synthetic v(Lcom/google/android/flexbox/FlexboxLayout;Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView;->w(Lcom/google/android/flexbox/FlexboxLayout;Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final w(Lcom/google/android/flexbox/FlexboxLayout;Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView;Z)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView;->a(I)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-static {p0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    move v3, v0

    .line 31
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_8

    .line 36
    .line 37
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    add-int/lit8 v5, v3, 0x1

    .line 42
    .line 43
    if-gez v3, :cond_1

    .line 44
    .line 45
    invoke-static {}, Lkotlin/collections/CollectionsKt;->y()V

    .line 46
    .line 47
    .line 48
    :cond_1
    check-cast v4, Landroid/view/View;

    .line 49
    .line 50
    sget v6, Lcom/startshorts/androidplayer/R$id;->tv_tag:I

    .line 51
    .line 52
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    check-cast v6, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 57
    .line 58
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    const/4 v8, 0x1

    .line 63
    if-le v7, v2, :cond_2

    .line 64
    .line 65
    move v7, v8

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    move v7, v0

    .line 68
    :goto_1
    if-eqz v6, :cond_3

    .line 69
    .line 70
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;->c()Z

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    if-ne v6, v8, :cond_3

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_3
    move v8, v0

    .line 78
    :goto_2
    if-nez v7, :cond_5

    .line 79
    .line 80
    if-eqz v8, :cond_4

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_4
    invoke-static {v4}, Ljk/b0;->l(Landroid/view/View;)V

    .line 84
    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_5
    :goto_3
    if-eqz p2, :cond_6

    .line 88
    .line 89
    invoke-static {v4}, Ljk/b0;->d(Landroid/view/View;)V

    .line 90
    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_6
    if-nez v3, :cond_7

    .line 94
    .line 95
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView;->a(I)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_7
    invoke-static {v4}, Ljk/b0;->d(Landroid/view/View;)V

    .line 100
    .line 101
    .line 102
    :goto_4
    move v3, v5

    .line 103
    goto :goto_0

    .line 104
    :cond_8
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->m1()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->isEnable()Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/16 p1, 0x8

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method public e(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V
    .locals 11
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "episode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->m1()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->isEnable()Lkotlin/jvm/functions/Function0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/16 v1, 0x8

    .line 27
    .line 28
    if-eqz v0, :cond_d

    .line 29
    .line 30
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 31
    .line 32
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView;->b:Ljava/lang/String;

    .line 33
    .line 34
    const-string v3, "ShortsTagView updateEpisode"

    .line 35
    .line 36
    invoke-virtual {v0, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView;->a(I)V

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView;->d:Lcom/google/android/flexbox/FlexboxLayout;

    .line 44
    .line 45
    if-eqz v2, :cond_e

    .line 46
    .line 47
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getCornerLabelText()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getCornerLabelStyle()I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    const/4 v6, 0x1

    .line 67
    if-lez v5, :cond_1

    .line 68
    .line 69
    if-eqz v4, :cond_1

    .line 70
    .line 71
    invoke-static {v4}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    if-eqz v7, :cond_0

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    move v7, v6

    .line 79
    goto :goto_1

    .line 80
    :cond_1
    :goto_0
    move v7, v0

    .line 81
    :goto_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getLabelList()Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-eqz p1, :cond_5

    .line 86
    .line 87
    check-cast p1, Ljava/lang/Iterable;

    .line 88
    .line 89
    new-instance v8, Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v9

    .line 102
    if-eqz v9, :cond_6

    .line 103
    .line 104
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    move-object v10, v9

    .line 109
    check-cast v10, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 110
    .line 111
    invoke-virtual {v10}, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;->getLabelName()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    if-eqz v10, :cond_4

    .line 116
    .line 117
    invoke-static {v10}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    .line 118
    .line 119
    .line 120
    move-result v10

    .line 121
    if-eqz v10, :cond_3

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_3
    move v10, v0

    .line 125
    goto :goto_4

    .line 126
    :cond_4
    :goto_3
    move v10, v6

    .line 127
    :goto_4
    if-nez v10, :cond_2

    .line 128
    .line 129
    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_5
    const/4 v8, 0x0

    .line 134
    :cond_6
    if-nez v7, :cond_8

    .line 135
    .line 136
    if-eqz v8, :cond_7

    .line 137
    .line 138
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-eqz p1, :cond_8

    .line 143
    .line 144
    :cond_7
    invoke-virtual {p0, v1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView;->a(I)V

    .line 145
    .line 146
    .line 147
    goto/16 :goto_6

    .line 148
    .line 149
    :cond_8
    invoke-static {v2}, Ljk/b0;->l(Landroid/view/View;)V

    .line 150
    .line 151
    .line 152
    const-string p1, "inflate(...)"

    .line 153
    .line 154
    if-eqz v7, :cond_9

    .line 155
    .line 156
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView;->d:Lcom/google/android/flexbox/FlexboxLayout;

    .line 157
    .line 158
    invoke-static {v3, v1, v6}, Lcom/startshorts/androidplayer/databinding/ViewShortsImmersionTagNormalBinding;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/startshorts/androidplayer/databinding/ViewShortsImmersionTagNormalBinding;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ViewShortsImmersionTagNormalBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 166
    .line 167
    const-string v9, "tvTag"

    .line 168
    .line 169
    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0, v1, v5, v4}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView;->setTextViewLabelStyle(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 173
    .line 174
    .line 175
    :cond_9
    if-eqz v8, :cond_c

    .line 176
    .line 177
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    move v4, v0

    .line 182
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 183
    .line 184
    .line 185
    move-result v5

    .line 186
    if-eqz v5, :cond_c

    .line 187
    .line 188
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    add-int/lit8 v8, v4, 0x1

    .line 193
    .line 194
    if-gez v4, :cond_a

    .line 195
    .line 196
    invoke-static {}, Lkotlin/collections/CollectionsKt;->y()V

    .line 197
    .line 198
    .line 199
    :cond_a
    check-cast v5, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 200
    .line 201
    iget-object v9, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView;->d:Lcom/google/android/flexbox/FlexboxLayout;

    .line 202
    .line 203
    invoke-static {v3, v9, v6}, Lcom/startshorts/androidplayer/databinding/ViewShortsImmersionTagClickableBinding;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/startshorts/androidplayer/databinding/ViewShortsImmersionTagClickableBinding;

    .line 204
    .line 205
    .line 206
    move-result-object v9

    .line 207
    invoke-static {v9, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    if-nez v7, :cond_b

    .line 211
    .line 212
    if-nez v4, :cond_b

    .line 213
    .line 214
    iget-object v4, v9, Lcom/startshorts/androidplayer/databinding/ViewShortsImmersionTagClickableBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 215
    .line 216
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    const-string v10, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    .line 221
    .line 222
    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 226
    .line 227
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 228
    .line 229
    .line 230
    iget-object v10, v9, Lcom/startshorts/androidplayer/databinding/ViewShortsImmersionTagClickableBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 231
    .line 232
    invoke-virtual {v10, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    .line 234
    .line 235
    :cond_b
    iget-object v4, v9, Lcom/startshorts/androidplayer/databinding/ViewShortsImmersionTagClickableBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 236
    .line 237
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;->getLabelName()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v10

    .line 241
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    .line 243
    .line 244
    iget-object v4, v9, Lcom/startshorts/androidplayer/databinding/ViewShortsImmersionTagClickableBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 245
    .line 246
    new-instance v9, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView$b;

    .line 247
    .line 248
    invoke-direct {v9, p0, v5}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView$b;-><init>(Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView;Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v4, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    .line 253
    .line 254
    move v4, v8

    .line 255
    goto :goto_5

    .line 256
    :cond_c
    new-instance p1, Lzj/d;

    .line 257
    .line 258
    invoke-direct {p1, v2, p0, v7}, Lzj/d;-><init>(Lcom/google/android/flexbox/FlexboxLayout;Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView;Z)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v2, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 262
    .line 263
    .line 264
    goto :goto_6

    .line 265
    :cond_d
    invoke-virtual {p0, v1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView;->a(I)V

    .line 266
    .line 267
    .line 268
    :cond_e
    :goto_6
    return-void
.end method

.method public getLayoutResource()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->view_shorts_tag:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMListener()Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView$a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView;->c:Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setMListener(Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView$a;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView$a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView;->c:Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView$a;

    .line 2
    .line 3
    return-void
.end method

.method public final setTextViewLabelStyle(Landroid/widget/TextView;ILjava/lang/String;)V
    .locals 2
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    if-eq p2, v1, :cond_3

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    if-eq p2, v1, :cond_2

    .line 15
    .line 16
    const/4 v1, 0x5

    .line 17
    if-eq p2, v1, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x6

    .line 20
    if-eq p2, v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    sget v1, Lcom/startshorts/androidplayer/R$color;->drama_member_only_label:I

    .line 28
    .line 29
    invoke-virtual {p2, v1}, Landroid/content/Context;->getColor(I)I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_shorts_member_only_label:I

    .line 41
    .line 42
    invoke-static {p2, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p1, p2, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView;->setTextLabelPaddingWithImg(Landroid/widget/TextView;)V

    .line 50
    .line 51
    .line 52
    sget p2, Lcom/startshorts/androidplayer/R$drawable;->bg_short_label_style_member_only:I

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    sget v0, Lcom/startshorts/androidplayer/R$color;->color_common_white:I

    .line 63
    .line 64
    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView;->setTextLabelPadding(Landroid/widget/TextView;)V

    .line 72
    .line 73
    .line 74
    sget p2, Lcom/startshorts/androidplayer/R$drawable;->bg_shorts_label_style_new:I

    .line 75
    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    sget v0, Lcom/startshorts/androidplayer/R$color;->color_common_white:I

    .line 85
    .line 86
    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    .line 92
    .line 93
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView;->setTextLabelPadding(Landroid/widget/TextView;)V

    .line 94
    .line 95
    .line 96
    sget p2, Lcom/startshorts/androidplayer/R$drawable;->bg_shorts_label_style_hot:I

    .line 97
    .line 98
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    sget v1, Lcom/startshorts/androidplayer/R$color;->color_common_white:I

    .line 107
    .line 108
    invoke-virtual {p2, v1}, Landroid/content/Context;->getColor(I)I

    .line 109
    .line 110
    .line 111
    move-result p2

    .line 112
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_shorts_excusive_label:I

    .line 120
    .line 121
    invoke-static {p2, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    invoke-virtual {p1, p2, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 126
    .line 127
    .line 128
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView;->setTextLabelPaddingWithImg(Landroid/widget/TextView;)V

    .line 129
    .line 130
    .line 131
    sget p2, Lcom/startshorts/androidplayer/R$drawable;->bg_shorts_label_style_exclusive:I

    .line 132
    .line 133
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 134
    .line 135
    .line 136
    :goto_0
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    .line 138
    .line 139
    return-void
.end method

.method public u(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p2, "context"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget p1, Lcom/startshorts/androidplayer/R$id;->flexboxLayout:I

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/google/android/flexbox/FlexboxLayout;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView;->d:Lcom/google/android/flexbox/FlexboxLayout;

    .line 15
    .line 16
    return-void
.end method
