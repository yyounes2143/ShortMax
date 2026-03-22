.class final Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter$b;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "TagFilterListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
        ">.ViewHolder;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTagFilterListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TagFilterListAdapter.kt\ncom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter$ShortsViewHolder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n+ 4 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,139:1\n774#2:140\n865#2,2:141\n1872#2,3:143\n46#3:146\n1328#4,3:147\n*S KotlinDebug\n*F\n+ 1 TagFilterListAdapter.kt\ncom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter$ShortsViewHolder\n*L\n89#1:140\n89#1:141,2\n95#1:143,3\n106#1:146\n111#1:147,3\n*E\n"
    }
.end annotation


# instance fields
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemTagListShortsBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic h:Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter;Lcom/startshorts/androidplayer/databinding/ItemTagListShortsBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemTagListShortsBinding;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter$b;->h:Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter$b;->g:Lcom/startshorts/androidplayer/databinding/ItemTagListShortsBinding;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic j(Lcom/google/android/flexbox/FlexboxLayout;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter$b;->m(Lcom/google/android/flexbox/FlexboxLayout;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final m(Lcom/google/android/flexbox/FlexboxLayout;)V
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


# virtual methods
.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter$b;->k()Lcom/startshorts/androidplayer/databinding/ItemTagListShortsBinding;

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
    check-cast p2, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter$b;->l(ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k()Lcom/startshorts/androidplayer/databinding/ItemTagListShortsBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter$b;->g:Lcom/startshorts/androidplayer/databinding/ItemTagListShortsBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public l(ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V
    .locals 9
    .param p2    # Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "item"

    .line 3
    .line 4
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->f(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter$b;->k()Lcom/startshorts/androidplayer/databinding/ItemTagListShortsBinding;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, v1, Lcom/startshorts/androidplayer/databinding/ItemTagListShortsBinding;->b:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 15
    .line 16
    const-string v1, "coverIv"

    .line 17
    .line 18
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    const/high16 p1, 0x41700000    # 15.0f

    .line 25
    .line 26
    invoke-static {p1}, Ljk/g;->a(F)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    move v4, p1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v4, v1

    .line 33
    :goto_0
    const/high16 p1, 0x41000000    # 8.0f

    .line 34
    .line 35
    invoke-static {p1}, Ljk/g;->a(F)I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    const/4 v7, 0x5

    .line 40
    const/4 v8, 0x0

    .line 41
    const/4 v3, 0x0

    .line 42
    const/4 v5, 0x0

    .line 43
    invoke-static/range {v2 .. v8}, Ljk/b0;->i(Landroid/view/View;IIIIILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    sget-object p1, Lkk/f;->a:Lkk/f;

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter$b;->k()Lcom/startshorts/androidplayer/databinding/ItemTagListShortsBinding;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ItemTagListShortsBinding;->b:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 53
    .line 54
    new-instance v3, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 55
    .line 56
    invoke-direct {v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 57
    .line 58
    .line 59
    iget-object v4, p0, Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter$b;->h:Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter;

    .line 60
    .line 61
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPicUrl()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-virtual {v3, v5}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    sget-object v5, Lid/c;->a:Lid/c;

    .line 69
    .line 70
    invoke-virtual {v5}, Lid/c;->b()I

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    invoke-virtual {v3, v6}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5}, Lid/c;->a()I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    invoke-virtual {v3, v5}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 82
    .line 83
    .line 84
    invoke-static {v4}, Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter;->G(Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter;)I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    invoke-virtual {v3, v5}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeWidth(I)V

    .line 89
    .line 90
    .line 91
    invoke-static {v4}, Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter;->F(Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter;)I

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    invoke-virtual {v3, v5}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeHeight(I)V

    .line 96
    .line 97
    .line 98
    sget v5, Lcom/startshorts/androidplayer/R$drawable;->ic_cover_placeholder:I

    .line 99
    .line 100
    invoke-virtual {v3, v5}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, v0}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 104
    .line 105
    .line 106
    invoke-static {v4}, Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter;->E(Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter;)F

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerRadius(F)V

    .line 111
    .line 112
    .line 113
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 114
    .line 115
    invoke-virtual {p1, v2, v3}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 116
    .line 117
    .line 118
    sget-object p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->C:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;

    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter$b;->k()Lcom/startshorts/androidplayer/databinding/ItemTagListShortsBinding;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ItemTagListShortsBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 125
    .line 126
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPlayNum()Ljava/lang/Long;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-virtual {p1, v2, v3}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;->i(Landroid/widget/TextView;Ljava/lang/Long;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter$b;->k()Lcom/startshorts/androidplayer/databinding/ItemTagListShortsBinding;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ItemTagListShortsBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 138
    .line 139
    const-string/jumbo v3, "tvLabelStyle"

    .line 140
    .line 141
    .line 142
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getCornerLabelStyle()I

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getCornerLabelText()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    if-nez v4, :cond_1

    .line 154
    .line 155
    const-string v4, ""

    .line 156
    .line 157
    :cond_1
    invoke-virtual {p1, v2, v3, v4}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;->h(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter$b;->k()Lcom/startshorts/androidplayer/databinding/ItemTagListShortsBinding;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemTagListShortsBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 165
    .line 166
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayName()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter$b;->k()Lcom/startshorts/androidplayer/databinding/ItemTagListShortsBinding;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemTagListShortsBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 178
    .line 179
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getSummary()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getEpisodeNum()I

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    if-ltz p1, :cond_2

    .line 191
    .line 192
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getTotalEpisodes()I

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    if-lez p1, :cond_2

    .line 197
    .line 198
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter$b;->k()Lcom/startshorts/androidplayer/databinding/ItemTagListShortsBinding;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemTagListShortsBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 203
    .line 204
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter$b;->k()Lcom/startshorts/androidplayer/databinding/ItemTagListShortsBinding;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ItemTagListShortsBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 209
    .line 210
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    sget v3, Lcom/startshorts/androidplayer/R$string;->common_total_ep:I

    .line 215
    .line 216
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getTotalEpisodes()I

    .line 217
    .line 218
    .line 219
    move-result v4

    .line 220
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    .line 234
    .line 235
    :cond_2
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter$b;->k()Lcom/startshorts/androidplayer/databinding/ItemTagListShortsBinding;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemTagListShortsBinding;->c:Lcom/google/android/flexbox/FlexboxLayout;

    .line 240
    .line 241
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getLabelList()Ljava/util/List;

    .line 253
    .line 254
    .line 255
    move-result-object p2

    .line 256
    if-eqz p2, :cond_6

    .line 257
    .line 258
    check-cast p2, Ljava/lang/Iterable;

    .line 259
    .line 260
    new-instance v3, Ljava/util/ArrayList;

    .line 261
    .line 262
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .line 264
    .line 265
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 266
    .line 267
    .line 268
    move-result-object p2

    .line 269
    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 270
    .line 271
    .line 272
    move-result v4

    .line 273
    if-eqz v4, :cond_7

    .line 274
    .line 275
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v4

    .line 279
    move-object v5, v4

    .line 280
    check-cast v5, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 281
    .line 282
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;->getLabelName()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v5

    .line 286
    if-eqz v5, :cond_5

    .line 287
    .line 288
    invoke-static {v5}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    .line 289
    .line 290
    .line 291
    move-result v5

    .line 292
    if-eqz v5, :cond_4

    .line 293
    .line 294
    goto :goto_2

    .line 295
    :cond_4
    move v5, v1

    .line 296
    goto :goto_3

    .line 297
    :cond_5
    :goto_2
    move v5, v0

    .line 298
    :goto_3
    if-nez v5, :cond_3

    .line 299
    .line 300
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    goto :goto_1

    .line 304
    :cond_6
    const/4 v3, 0x0

    .line 305
    :cond_7
    if-eqz v3, :cond_c

    .line 306
    .line 307
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 308
    .line 309
    .line 310
    move-result p2

    .line 311
    if-eqz p2, :cond_8

    .line 312
    .line 313
    goto :goto_5

    .line 314
    :cond_8
    invoke-static {p1}, Ljk/b0;->l(Landroid/view/View;)V

    .line 315
    .line 316
    .line 317
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 318
    .line 319
    .line 320
    move-result-object p2

    .line 321
    move v3, v1

    .line 322
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 323
    .line 324
    .line 325
    move-result v4

    .line 326
    if-eqz v4, :cond_b

    .line 327
    .line 328
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v4

    .line 332
    add-int/lit8 v5, v3, 0x1

    .line 333
    .line 334
    if-gez v3, :cond_9

    .line 335
    .line 336
    invoke-static {}, Lkotlin/collections/CollectionsKt;->y()V

    .line 337
    .line 338
    .line 339
    :cond_9
    check-cast v4, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 340
    .line 341
    invoke-static {v2, p1, v0}, Lcom/startshorts/androidplayer/databinding/ViewDiscoverTaglistTagBinding;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/startshorts/androidplayer/databinding/ViewDiscoverTaglistTagBinding;

    .line 342
    .line 343
    .line 344
    move-result-object v6

    .line 345
    const-string v7, "inflate(...)"

    .line 346
    .line 347
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    if-nez v3, :cond_a

    .line 351
    .line 352
    iget-object v3, v6, Lcom/startshorts/androidplayer/databinding/ViewDiscoverTaglistTagBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 353
    .line 354
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 355
    .line 356
    .line 357
    move-result-object v3

    .line 358
    const-string v7, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    .line 359
    .line 360
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 364
    .line 365
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 366
    .line 367
    .line 368
    iget-object v7, v6, Lcom/startshorts/androidplayer/databinding/ViewDiscoverTaglistTagBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 369
    .line 370
    invoke-virtual {v7, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    .line 372
    .line 373
    :cond_a
    iget-object v3, v6, Lcom/startshorts/androidplayer/databinding/ViewDiscoverTaglistTagBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 374
    .line 375
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;->getLabelName()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v4

    .line 379
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    .line 381
    .line 382
    move v3, v5

    .line 383
    goto :goto_4

    .line 384
    :cond_b
    new-instance p2, Lcom/startshorts/androidplayer/adapter/tag/c;

    .line 385
    .line 386
    invoke-direct {p2, p1}, Lcom/startshorts/androidplayer/adapter/tag/c;-><init>(Lcom/google/android/flexbox/FlexboxLayout;)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 390
    .line 391
    .line 392
    goto :goto_6

    .line 393
    :cond_c
    :goto_5
    invoke-static {p1}, Ljk/b0;->d(Landroid/view/View;)V

    .line 394
    .line 395
    .line 396
    :goto_6
    return-void
.end method
