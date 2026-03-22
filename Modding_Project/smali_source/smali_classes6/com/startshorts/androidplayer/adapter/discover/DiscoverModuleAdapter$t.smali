.class final Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$t;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "DiscoverModuleAdapter.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "t"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;",
        ">.ViewHolder;",
        "Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$l;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDiscoverModuleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$StaggeredTagListViewHolder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,2303:1\n1872#2,3:2304\n*S KotlinDebug\n*F\n+ 1 DiscoverModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$StaggeredTagListViewHolder\n*L\n1726#1:2304,3\n*E\n"
    }
.end annotation


# instance fields
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredTagListItemBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private h:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredTagListItemBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredTagListItemBinding;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$t;->i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$t;->g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredTagListItemBinding;

    .line 12
    .line 13
    new-instance p1, Lcom/startshorts/androidplayer/adapter/discover/q0;

    .line 14
    .line 15
    invoke-direct {p1}, Lcom/startshorts/androidplayer/adapter/discover/q0;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$t;->h:Lkotlin/jvm/functions/Function1;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic j(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$t;->m(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$t;->o(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final m(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method private static final o(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;I)Lkotlin/Unit;
    .locals 6

    .line 1
    const-string p4, "it"

    .line 2
    .line 3
    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->k0()Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getPosition()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    sget-object p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->C:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getStyle()I

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    invoke-virtual {p0, p3}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;->a(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const-string v5, "double_row_waterfall_subtag"

    .line 27
    .line 28
    move-object v2, p2

    .line 29
    move-object v4, p1

    .line 30
    invoke-interface/range {v0 .. v5}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;->f(ILcom/startshorts/androidplayer/bean/shorts/ShortsLabel;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 34
    .line 35
    return-object p0
.end method


# virtual methods
.method public a()Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$l$a;->a(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$l;)Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public b(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "discoverModule"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$t;->h:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$t;->l()Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredTagListItemBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic f(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$t;->n(ILcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredTagListItemBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$t;->g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredTagListItemBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public n(ILcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V
    .locals 7
    .param p2    # Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->f(ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getLabelRankingList()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_3

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->t0(Ljava/util/List;I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/startshorts/androidplayer/bean/discover/TagListInfo;

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    goto/16 :goto_1

    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$t;->l()Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredTagListItemBinding;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredTagListItemBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    sget v2, Lcom/startshorts/androidplayer/R$string;->labels_card_title:I

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v2, "getString(...)"

    .line 43
    .line 44
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$t;->l()Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredTagListItemBinding;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredTagListItemBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;

    .line 52
    .line 53
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 57
    .line 58
    sget v3, Lcom/startshorts/androidplayer/R$color;->tag_card_title_text_start:I

    .line 59
    .line 60
    invoke-virtual {v1, v3}, Lfk/u;->a(I)I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    sget v4, Lcom/startshorts/androidplayer/R$color;->tag_card_title_text_end:I

    .line 65
    .line 66
    invoke-virtual {v1, v4}, Lfk/u;->a(I)I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    invoke-virtual {v2, v3, v1}, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;->setColor(II)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/TagListInfo;->getLabelList()Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-nez p1, :cond_1

    .line 78
    .line 79
    new-instance p1, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .line 83
    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$t;->l()Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredTagListItemBinding;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredTagListItemBinding;->a:Landroid/widget/LinearLayout;

    .line 89
    .line 90
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 91
    .line 92
    .line 93
    check-cast p1, Ljava/lang/Iterable;

    .line 94
    .line 95
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$t;->i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 96
    .line 97
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_3

    .line 106
    .line 107
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    add-int/lit8 v3, v0, 0x1

    .line 112
    .line 113
    if-gez v0, :cond_2

    .line 114
    .line 115
    invoke-static {}, Lkotlin/collections/CollectionsKt;->y()V

    .line 116
    .line 117
    .line 118
    :cond_2
    check-cast v2, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 119
    .line 120
    new-instance v4, Lcom/startshorts/androidplayer/ui/view/discover/StragglersTagItemView;

    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$t;->l()Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredTagListItemBinding;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    invoke-virtual {v5}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    const-string v6, "getContext(...)"

    .line 135
    .line 136
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-direct {v4, v5}, Lcom/startshorts/androidplayer/ui/view/discover/StragglersTagItemView;-><init>(Landroid/content/Context;)V

    .line 140
    .line 141
    .line 142
    new-instance v5, Lcom/startshorts/androidplayer/adapter/discover/r0;

    .line 143
    .line 144
    invoke-direct {v5, v1, p2, v2}, Lcom/startshorts/androidplayer/adapter/discover/r0;-><init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v4, v2, v0, v5}, Lcom/startshorts/androidplayer/ui/view/discover/StragglersTagItemView;->r(Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;ILkotlin/jvm/functions/Function2;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$t;->l()Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredTagListItemBinding;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverStaggeredTagListItemBinding;->a:Landroid/widget/LinearLayout;

    .line 155
    .line 156
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 157
    .line 158
    .line 159
    move v0, v3

    .line 160
    goto :goto_0

    .line 161
    :cond_3
    :goto_1
    return-void
.end method
