.class final Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter$a;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "MyCollectionAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/mylist/MyCollection;",
        ">.ViewHolder;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemMyCollectionBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic h:Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;Lcom/startshorts/androidplayer/databinding/ItemMyCollectionBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemMyCollectionBinding;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter$a;->h:Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter$a;->g:Lcom/startshorts/androidplayer/databinding/ItemMyCollectionBinding;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic j(Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter$a;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter$a;->n(Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final n(Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter$a;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter$a;->k()Lcom/startshorts/androidplayer/databinding/ItemMyCollectionBinding;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lcom/startshorts/androidplayer/databinding/ItemMyCollectionBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter$a;->k()Lcom/startshorts/androidplayer/databinding/ItemMyCollectionBinding;

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
    check-cast p2, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter$a;->l(ILcom/startshorts/androidplayer/bean/mylist/MyCollection;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic g(ILjava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter$a;->m(ILcom/startshorts/androidplayer/bean/mylist/MyCollection;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k()Lcom/startshorts/androidplayer/databinding/ItemMyCollectionBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter$a;->g:Lcom/startshorts/androidplayer/databinding/ItemMyCollectionBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public l(ILcom/startshorts/androidplayer/bean/mylist/MyCollection;)V
    .locals 5
    .param p2    # Lcom/startshorts/androidplayer/bean/mylist/MyCollection;
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
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->h(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    sget-object p1, Lkk/f;->a:Lkk/f;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter$a;->k()Lcom/startshorts/androidplayer/databinding/ItemMyCollectionBinding;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemMyCollectionBinding;->b:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 19
    .line 20
    new-instance v1, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 21
    .line 22
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter$a;->h:Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;

    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getCoverId()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget-object v3, Lid/c;->a:Lid/c;

    .line 35
    .line 36
    invoke-virtual {v3}, Lid/c;->b()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    invoke-virtual {v1, v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Lid/c;->a()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 48
    .line 49
    .line 50
    invoke-static {v2}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;->G(Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeWidth(I)V

    .line 55
    .line 56
    .line 57
    invoke-static {v2}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;->F(Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;)I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeHeight(I)V

    .line 62
    .line 63
    .line 64
    sget v3, Lcom/startshorts/androidplayer/R$drawable;->ic_cover_placeholder:I

    .line 65
    .line 66
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 67
    .line 68
    .line 69
    const/4 v3, 0x1

    .line 70
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 71
    .line 72
    .line 73
    invoke-static {v2}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;->E(Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;)F

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerRadius(F)V

    .line 78
    .line 79
    .line 80
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 81
    .line 82
    invoke-virtual {p1, v0, v1}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter$a;->k()Lcom/startshorts/androidplayer/databinding/ItemMyCollectionBinding;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemMyCollectionBinding;->k:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 90
    .line 91
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getShortPlayName()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter$a;->k()Lcom/startshorts/androidplayer/databinding/ItemMyCollectionBinding;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemMyCollectionBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter$a;->k()Lcom/startshorts/androidplayer/databinding/ItemMyCollectionBinding;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemMyCollectionBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    sget v1, Lcom/startshorts/androidplayer/R$string;->common_current_ep:I

    .line 115
    .line 116
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getEpisodeNum()I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter$a;->k()Lcom/startshorts/androidplayer/databinding/ItemMyCollectionBinding;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemMyCollectionBinding;->l:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 140
    .line 141
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter$a;->k()Lcom/startshorts/androidplayer/databinding/ItemMyCollectionBinding;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemMyCollectionBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 146
    .line 147
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    sget v1, Lcom/startshorts/androidplayer/R$string;->common_total_ep:I

    .line 152
    .line 153
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getTotalEpisodes()I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter$a;->k()Lcom/startshorts/androidplayer/databinding/ItemMyCollectionBinding;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemMyCollectionBinding;->j:Landroid/widget/ImageView;

    .line 177
    .line 178
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getShowRedPoint()Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    const/16 v1, 0x8

    .line 183
    .line 184
    const/4 v2, 0x0

    .line 185
    if-eqz v0, :cond_0

    .line 186
    .line 187
    move v0, v2

    .line 188
    goto :goto_0

    .line 189
    :cond_0
    move v0, v1

    .line 190
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 191
    .line 192
    .line 193
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter$a;->h:Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;

    .line 194
    .line 195
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter$a;->k()Lcom/startshorts/androidplayer/databinding/ItemMyCollectionBinding;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->isSelected()Z

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    invoke-static {p1, v0, v3}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;->H(Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;Lcom/startshorts/androidplayer/databinding/ItemMyCollectionBinding;Z)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter$a;->k()Lcom/startshorts/androidplayer/databinding/ItemMyCollectionBinding;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemMyCollectionBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 211
    .line 212
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->isWholeBuy()Z

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    if-eqz v0, :cond_1

    .line 217
    .line 218
    move v1, v2

    .line 219
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->isWholeBuy()Z

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    if-eqz p1, :cond_2

    .line 227
    .line 228
    sget-object p1, Lfk/h0;->a:Lfk/h0;

    .line 229
    .line 230
    new-instance p2, Lcom/startshorts/androidplayer/adapter/mylist/a;

    .line 231
    .line 232
    invoke-direct {p2, p0}, Lcom/startshorts/androidplayer/adapter/mylist/a;-><init>(Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter$a;)V

    .line 233
    .line 234
    .line 235
    const-wide/16 v0, 0x1f4

    .line 236
    .line 237
    invoke-virtual {p1, p2, v0, v1}, Lfk/h0;->d(Ljava/lang/Runnable;J)V

    .line 238
    .line 239
    .line 240
    :cond_2
    return-void
.end method

.method public m(ILcom/startshorts/androidplayer/bean/mylist/MyCollection;Ljava/util/List;)V
    .locals 5
    .param p2    # Lcom/startshorts/androidplayer/bean/mylist/MyCollection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/startshorts/androidplayer/bean/mylist/MyCollection;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "payloads"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_4

    .line 7
    .line 8
    const-string v0, "ignore_refresh"

    .line 9
    .line 10
    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_0
    const-string/jumbo v0, "update_checkbox"

    .line 18
    .line 19
    .line 20
    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter$a;->h:Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter$a;->k()Lcom/startshorts/androidplayer/databinding/ItemMyCollectionBinding;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->isSelected()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-static {v0, v2, v3}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;->H(Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;Lcom/startshorts/androidplayer/databinding/ItemMyCollectionBinding;Z)V

    .line 38
    .line 39
    .line 40
    move v0, v1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 v0, 0x1

    .line 43
    :goto_0
    const-string/jumbo v2, "update_episode_num"

    .line 44
    .line 45
    .line 46
    invoke-interface {p3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter$a;->k()Lcom/startshorts/androidplayer/databinding/ItemMyCollectionBinding;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemMyCollectionBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter$a;->k()Lcom/startshorts/androidplayer/databinding/ItemMyCollectionBinding;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ItemMyCollectionBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 63
    .line 64
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    sget v3, Lcom/startshorts/androidplayer/R$string;->common_current_ep:I

    .line 69
    .line 70
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getEpisodeNum()I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    move v0, v1

    .line 90
    :cond_2
    const-string v2, "delete_item"

    .line 91
    .line 92
    invoke-interface {p3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result p3

    .line 96
    if-eqz p3, :cond_3

    .line 97
    .line 98
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->i(I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->h(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->f(ILjava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    iget-object p3, p0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter$a;->h:Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;

    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter$a;->k()Lcom/startshorts/androidplayer/databinding/ItemMyCollectionBinding;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->isSelected()Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    invoke-static {p3, v0, v2}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;->H(Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;Lcom/startshorts/androidplayer/databinding/ItemMyCollectionBinding;Z)V

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_3
    move v1, v0

    .line 122
    :goto_1
    if-eqz v1, :cond_4

    .line 123
    .line 124
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter$a;->l(ILcom/startshorts/androidplayer/bean/mylist/MyCollection;)V

    .line 125
    .line 126
    .line 127
    :cond_4
    :goto_2
    return-void
.end method
