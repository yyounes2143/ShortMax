.class final Lcom/startshorts/androidplayer/adapter/tag/TagDrawerAdapter$c;
.super Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;
.source "TagDrawerAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/tag/TagDrawerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder<",
        "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTagDrawerAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TagDrawerAdapter.kt\ncom/startshorts/androidplayer/adapter/tag/TagDrawerAdapter$RegionViewHolder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n+ 4 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,196:1\n774#2:197\n865#2,2:198\n1872#2,3:200\n46#3:203\n1328#4,3:204\n*S KotlinDebug\n*F\n+ 1 TagDrawerAdapter.kt\ncom/startshorts/androidplayer/adapter/tag/TagDrawerAdapter$RegionViewHolder\n*L\n92#1:197\n92#1:198,2\n99#1:200,3\n110#1:203\n115#1:204,3\n*E\n"
    }
.end annotation


# instance fields
.field private final i:Lcom/startshorts/androidplayer/databinding/ItemGridTagDrawerBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final j:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic k:Lcom/startshorts/androidplayer/adapter/tag/TagDrawerAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/tag/TagDrawerAdapter;Lcom/startshorts/androidplayer/databinding/ItemGridTagDrawerBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/tag/TagDrawerAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemGridTagDrawerBinding;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/tag/TagDrawerAdapter$c;->k:Lcom/startshorts/androidplayer/adapter/tag/TagDrawerAdapter;

    .line 7
    .line 8
    invoke-virtual {p2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;-><init>(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/tag/TagDrawerAdapter$c;->i:Lcom/startshorts/androidplayer/databinding/ItemGridTagDrawerBinding;

    .line 16
    .line 17
    new-instance p1, Lcom/startshorts/androidplayer/adapter/tag/b;

    .line 18
    .line 19
    invoke-direct {p1}, Lcom/startshorts/androidplayer/adapter/tag/b;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/tag/TagDrawerAdapter$c;->j:Lms/i;

    .line 27
    .line 28
    return-void
.end method

.method public static synthetic g(Lcom/google/android/flexbox/FlexboxLayout;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/adapter/tag/TagDrawerAdapter$c;->j(Lcom/google/android/flexbox/FlexboxLayout;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic h()F
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/adapter/tag/TagDrawerAdapter$c;->k()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method private static final j(Lcom/google/android/flexbox/FlexboxLayout;)V
    .locals 9

    .line 1
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-static {p0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-static {p0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-interface {v2}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    move v3, v0

    .line 32
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_7

    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    add-int/lit8 v5, v3, 0x1

    .line 43
    .line 44
    if-gez v3, :cond_1

    .line 45
    .line 46
    invoke-static {}, Lkotlin/collections/CollectionsKt;->y()V

    .line 47
    .line 48
    .line 49
    :cond_1
    check-cast v4, Landroid/view/View;

    .line 50
    .line 51
    sget v6, Lcom/startshorts/androidplayer/R$id;->tv_tag:I

    .line 52
    .line 53
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    check-cast v6, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 58
    .line 59
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    const/4 v8, 0x1

    .line 64
    if-le v7, v1, :cond_2

    .line 65
    .line 66
    move v7, v8

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    move v7, v0

    .line 69
    :goto_1
    if-eqz v6, :cond_3

    .line 70
    .line 71
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;->c()Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-ne v6, v8, :cond_3

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_3
    move v8, v0

    .line 79
    :goto_2
    if-nez v7, :cond_5

    .line 80
    .line 81
    if-eqz v8, :cond_4

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_4
    invoke-static {v4}, Ljk/b0;->l(Landroid/view/View;)V

    .line 85
    .line 86
    .line 87
    goto :goto_4

    .line 88
    :cond_5
    :goto_3
    if-nez v3, :cond_6

    .line 89
    .line 90
    invoke-static {p0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_6
    invoke-static {v4}, Ljk/b0;->d(Landroid/view/View;)V

    .line 95
    .line 96
    .line 97
    :goto_4
    move v3, v5

    .line 98
    goto :goto_0

    .line 99
    :cond_7
    return-void
.end method

.method private static final k()F
    .locals 1

    .line 1
    const/high16 v0, 0x40c00000    # 6.0f

    .line 2
    .line 3
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    return v0
.end method

.method private final l()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/tag/TagDrawerAdapter$c;->j:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private final m(Landroid/widget/TextView;)V
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

.method private final n(Landroid/widget/TextView;)V
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


# virtual methods
.method public bridge synthetic e(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/tag/TagDrawerAdapter$c;->i(ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public i(ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V
    .locals 8
    .param p2    # Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x1

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    sget-object v0, Lkk/f;->a:Lkk/f;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/tag/TagDrawerAdapter$c;->i:Lcom/startshorts/androidplayer/databinding/ItemGridTagDrawerBinding;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemGridTagDrawerBinding;->b:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 10
    .line 11
    new-instance v2, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 12
    .line 13
    invoke-direct {v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v3, p0, Lcom/startshorts/androidplayer/adapter/tag/TagDrawerAdapter$c;->k:Lcom/startshorts/androidplayer/adapter/tag/TagDrawerAdapter;

    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPicUrl()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v2, v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-object v4, Lid/c;->a:Lid/c;

    .line 26
    .line 27
    invoke-virtual {v4}, Lid/c;->b()I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    invoke-virtual {v2, v5}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4}, Lid/c;->a()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    invoke-virtual {v2, v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 39
    .line 40
    .line 41
    invoke-static {v3}, Lcom/startshorts/androidplayer/adapter/tag/TagDrawerAdapter;->p(Lcom/startshorts/androidplayer/adapter/tag/TagDrawerAdapter;)I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    invoke-virtual {v2, v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeWidth(I)V

    .line 46
    .line 47
    .line 48
    invoke-static {v3}, Lcom/startshorts/androidplayer/adapter/tag/TagDrawerAdapter;->o(Lcom/startshorts/androidplayer/adapter/tag/TagDrawerAdapter;)I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeHeight(I)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/tag/TagDrawerAdapter$c;->l()F

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerRadius(F)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 63
    .line 64
    .line 65
    sget v3, Lcom/startshorts/androidplayer/R$drawable;->ic_cover_placeholder:I

    .line 66
    .line 67
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 68
    .line 69
    .line 70
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 71
    .line 72
    invoke-virtual {v0, v1, v2}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/tag/TagDrawerAdapter$c;->i:Lcom/startshorts/androidplayer/databinding/ItemGridTagDrawerBinding;

    .line 76
    .line 77
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemGridTagDrawerBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 78
    .line 79
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/tag/TagDrawerAdapter$c;->i:Lcom/startshorts/androidplayer/databinding/ItemGridTagDrawerBinding;

    .line 87
    .line 88
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemGridTagDrawerBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 89
    .line 90
    const-string/jumbo v1, "tvLabelStyle"

    .line 91
    .line 92
    .line 93
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getCornerLabelStyle()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getCornerLabelText()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {p0, v0, v1, v2}, Lcom/startshorts/androidplayer/adapter/tag/TagDrawerAdapter$c;->o(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 105
    .line 106
    .line 107
    sget-object v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->C:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;

    .line 108
    .line 109
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/tag/TagDrawerAdapter$c;->i:Lcom/startshorts/androidplayer/databinding/ItemGridTagDrawerBinding;

    .line 110
    .line 111
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemGridTagDrawerBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 112
    .line 113
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPlayNum()Ljava/lang/Long;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;->i(Landroid/widget/TextView;Ljava/lang/Long;)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/tag/TagDrawerAdapter$c;->i:Lcom/startshorts/androidplayer/databinding/ItemGridTagDrawerBinding;

    .line 121
    .line 122
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemGridTagDrawerBinding;->a:Lcom/google/android/flexbox/FlexboxLayout;

    .line 123
    .line 124
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getLabelList()Ljava/util/List;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    const/4 v2, 0x0

    .line 140
    if-eqz p2, :cond_4

    .line 141
    .line 142
    check-cast p2, Ljava/lang/Iterable;

    .line 143
    .line 144
    new-instance v3, Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    if-eqz v4, :cond_5

    .line 158
    .line 159
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    move-object v5, v4

    .line 164
    check-cast v5, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 165
    .line 166
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;->getLabelName()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    if-eqz v5, :cond_3

    .line 171
    .line 172
    invoke-static {v5}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    if-eqz v5, :cond_2

    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_2
    move v5, v2

    .line 180
    goto :goto_2

    .line 181
    :cond_3
    :goto_1
    move v5, p1

    .line 182
    :goto_2
    if-nez v5, :cond_1

    .line 183
    .line 184
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    goto :goto_0

    .line 188
    :cond_4
    const/4 v3, 0x0

    .line 189
    :cond_5
    if-eqz v3, :cond_a

    .line 190
    .line 191
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 192
    .line 193
    .line 194
    move-result p2

    .line 195
    if-eqz p2, :cond_6

    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_6
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 199
    .line 200
    .line 201
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    move v3, v2

    .line 206
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 207
    .line 208
    .line 209
    move-result v4

    .line 210
    if-eqz v4, :cond_9

    .line 211
    .line 212
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    add-int/lit8 v5, v3, 0x1

    .line 217
    .line 218
    if-gez v3, :cond_7

    .line 219
    .line 220
    invoke-static {}, Lkotlin/collections/CollectionsKt;->y()V

    .line 221
    .line 222
    .line 223
    :cond_7
    check-cast v4, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 224
    .line 225
    invoke-static {v1, v0, p1}, Lcom/startshorts/androidplayer/databinding/ViewDiscoverTaglistTagBinding;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/startshorts/androidplayer/databinding/ViewDiscoverTaglistTagBinding;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    const-string v7, "inflate(...)"

    .line 230
    .line 231
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    if-nez v3, :cond_8

    .line 235
    .line 236
    iget-object v3, v6, Lcom/startshorts/androidplayer/databinding/ViewDiscoverTaglistTagBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 237
    .line 238
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    const-string v7, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    .line 243
    .line 244
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 248
    .line 249
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 250
    .line 251
    .line 252
    iget-object v7, v6, Lcom/startshorts/androidplayer/databinding/ViewDiscoverTaglistTagBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 253
    .line 254
    invoke-virtual {v7, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    .line 256
    .line 257
    :cond_8
    iget-object v3, v6, Lcom/startshorts/androidplayer/databinding/ViewDiscoverTaglistTagBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 258
    .line 259
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;->getLabelName()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v4

    .line 263
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    .line 265
    .line 266
    move v3, v5

    .line 267
    goto :goto_3

    .line 268
    :cond_9
    new-instance p1, Lcom/startshorts/androidplayer/adapter/tag/a;

    .line 269
    .line 270
    invoke-direct {p1, v0}, Lcom/startshorts/androidplayer/adapter/tag/a;-><init>(Lcom/google/android/flexbox/FlexboxLayout;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 274
    .line 275
    .line 276
    goto :goto_5

    .line 277
    :cond_a
    :goto_4
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 278
    .line 279
    .line 280
    :goto_5
    return-void
.end method

.method public final o(Landroid/widget/TextView;ILjava/lang/String;)V
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
    const-string/jumbo v0, "view"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    if-eq p2, v1, :cond_3

    .line 13
    .line 14
    const/4 v1, 0x3

    .line 15
    if-eq p2, v1, :cond_2

    .line 16
    .line 17
    const/4 v1, 0x5

    .line 18
    if-eq p2, v1, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x6

    .line 21
    if-eq p2, v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    sget v1, Lcom/startshorts/androidplayer/R$color;->drama_member_only_label:I

    .line 29
    .line 30
    invoke-virtual {p2, v1}, Landroid/content/Context;->getColor(I)I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_member_only_label:I

    .line 42
    .line 43
    invoke-static {p2, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p1, p2, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/tag/TagDrawerAdapter$c;->n(Landroid/widget/TextView;)V

    .line 51
    .line 52
    .line 53
    sget p2, Lcom/startshorts/androidplayer/R$drawable;->bg_label_style_member_only:I

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    sget v0, Lcom/startshorts/androidplayer/R$color;->color_common_white:I

    .line 64
    .line 65
    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    .line 71
    .line 72
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/tag/TagDrawerAdapter$c;->m(Landroid/widget/TextView;)V

    .line 73
    .line 74
    .line 75
    sget p2, Lcom/startshorts/androidplayer/R$drawable;->bg_label_style_new:I

    .line 76
    .line 77
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    sget v0, Lcom/startshorts/androidplayer/R$color;->color_common_white:I

    .line 86
    .line 87
    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    .line 93
    .line 94
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/tag/TagDrawerAdapter$c;->m(Landroid/widget/TextView;)V

    .line 95
    .line 96
    .line 97
    sget p2, Lcom/startshorts/androidplayer/R$drawable;->bg_label_style_hot:I

    .line 98
    .line 99
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    sget v1, Lcom/startshorts/androidplayer/R$color;->color_common_white:I

    .line 108
    .line 109
    invoke-virtual {p2, v1}, Landroid/content/Context;->getColor(I)I

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_excusive_label:I

    .line 121
    .line 122
    invoke-static {p2, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-virtual {p1, p2, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 127
    .line 128
    .line 129
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/tag/TagDrawerAdapter$c;->n(Landroid/widget/TextView;)V

    .line 130
    .line 131
    .line 132
    sget p2, Lcom/startshorts/androidplayer/R$drawable;->bg_label_style_exclusive:I

    .line 133
    .line 134
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 135
    .line 136
    .line 137
    :goto_0
    if-eqz p3, :cond_5

    .line 138
    .line 139
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 140
    .line 141
    .line 142
    move-result p2

    .line 143
    if-nez p2, :cond_4

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_4
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    .line 148
    .line 149
    const/4 p2, 0x0

    .line 150
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_5
    :goto_1
    const/4 p2, 0x4

    .line 155
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 156
    .line 157
    .line 158
    :goto_2
    return-void
.end method
