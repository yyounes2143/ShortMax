.class final Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$m;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "SearchModuleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/search/SearchModule;",
        ">.ViewHolder;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemSearchPopularBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic h:Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;Lcom/startshorts/androidplayer/databinding/ItemSearchPopularBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemSearchPopularBinding;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$m;->h:Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$m;->g:Lcom/startshorts/androidplayer/databinding/ItemSearchPopularBinding;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$m;->j()Lcom/startshorts/androidplayer/databinding/ItemSearchPopularBinding;

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
    check-cast p2, Lcom/startshorts/androidplayer/bean/search/SearchModule;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$m;->k(ILcom/startshorts/androidplayer/bean/search/SearchModule;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j()Lcom/startshorts/androidplayer/databinding/ItemSearchPopularBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$m;->g:Lcom/startshorts/androidplayer/databinding/ItemSearchPopularBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public k(ILcom/startshorts/androidplayer/bean/search/SearchModule;)V
    .locals 4
    .param p2    # Lcom/startshorts/androidplayer/bean/search/SearchModule;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

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
    instance-of p1, p2, Lcom/startshorts/androidplayer/bean/search/SearchModule$PopularEpisodeModule;

    .line 10
    .line 11
    if-eqz p1, :cond_4

    .line 12
    .line 13
    sget-object p1, Lkk/f;->a:Lkk/f;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$m;->j()Lcom/startshorts/androidplayer/databinding/ItemSearchPopularBinding;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemSearchPopularBinding;->a:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 20
    .line 21
    new-instance v1, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 22
    .line 23
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 24
    .line 25
    .line 26
    check-cast p2, Lcom/startshorts/androidplayer/bean/search/SearchModule$PopularEpisodeModule;

    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/search/SearchModule$PopularEpisodeModule;->getInfo()Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->getCoverId()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sget-object v2, Lid/c;->a:Lid/c;

    .line 40
    .line 41
    invoke-virtual {v2}, Lid/c;->b()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Lid/c;->a()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 53
    .line 54
    .line 55
    sget-object v2, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;->u:Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$b;

    .line 56
    .line 57
    invoke-static {v2}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$b;->c(Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$b;)I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeWidth(I)V

    .line 62
    .line 63
    .line 64
    invoke-static {v2}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$b;->a(Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$b;)I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeHeight(I)V

    .line 69
    .line 70
    .line 71
    invoke-static {v2}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$b;->b(Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$b;)F

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerRadius(F)V

    .line 76
    .line 77
    .line 78
    const/4 v2, 0x1

    .line 79
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 80
    .line 81
    .line 82
    sget v3, Lcom/startshorts/androidplayer/R$drawable;->ic_cover_placeholder:I

    .line 83
    .line 84
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 85
    .line 86
    .line 87
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 88
    .line 89
    invoke-virtual {p1, v0, v1}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$m;->j()Lcom/startshorts/androidplayer/databinding/ItemSearchPopularBinding;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemSearchPopularBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 97
    .line 98
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/search/SearchModule$PopularEpisodeModule;->getInfo()Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->getShortPlayName()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/search/SearchModule$PopularEpisodeModule;->getInfo()Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->getLabelList()Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    const/4 v0, 0x0

    .line 118
    if-eqz p1, :cond_0

    .line 119
    .line 120
    const/4 v1, 0x0

    .line 121
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->t0(Ljava/util/List;I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    check-cast p1, Lcom/startshorts/androidplayer/bean/search/LabelWithId;

    .line 126
    .line 127
    if-eqz p1, :cond_0

    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/search/LabelWithId;->getLabelName()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    if-eqz p1, :cond_0

    .line 134
    .line 135
    invoke-static {p1, v0, v2, v0}, Ljk/v;->v(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/text/Spanned;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    :cond_0
    const-string p1, ""

    .line 140
    .line 141
    if-eqz v0, :cond_2

    .line 142
    .line 143
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-nez v1, :cond_1

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$m;->j()Lcom/startshorts/androidplayer/databinding/ItemSearchPopularBinding;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemSearchPopularBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 155
    .line 156
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$m;->j()Lcom/startshorts/androidplayer/databinding/ItemSearchPopularBinding;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemSearchPopularBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 164
    .line 165
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 166
    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$m;->j()Lcom/startshorts/androidplayer/databinding/ItemSearchPopularBinding;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemSearchPopularBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 174
    .line 175
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$m;->j()Lcom/startshorts/androidplayer/databinding/ItemSearchPopularBinding;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemSearchPopularBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 183
    .line 184
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 185
    .line 186
    .line 187
    :goto_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$m;->j()Lcom/startshorts/androidplayer/databinding/ItemSearchPopularBinding;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemSearchPopularBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 192
    .line 193
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/search/SearchModule$PopularEpisodeModule;->getInfo()Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->getSummary()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/search/SearchModule$PopularEpisodeModule;->getInfo()Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->getIndex()I

    .line 209
    .line 210
    .line 211
    move-result p2

    .line 212
    add-int/2addr p2, v2

    .line 213
    const/16 v0, 0x14

    .line 214
    .line 215
    if-le p2, v0, :cond_3

    .line 216
    .line 217
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$m;->j()Lcom/startshorts/androidplayer/databinding/ItemSearchPopularBinding;

    .line 218
    .line 219
    .line 220
    move-result-object p2

    .line 221
    iget-object p2, p2, Lcom/startshorts/androidplayer/databinding/ItemSearchPopularBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 222
    .line 223
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$m;->j()Lcom/startshorts/androidplayer/databinding/ItemSearchPopularBinding;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemSearchPopularBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 231
    .line 232
    invoke-static {p1}, Ljk/b0;->d(Landroid/view/View;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$m;->j()Lcom/startshorts/androidplayer/databinding/ItemSearchPopularBinding;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemSearchPopularBinding;->b:Landroid/widget/ImageView;

    .line 240
    .line 241
    invoke-static {p1}, Ljk/b0;->d(Landroid/view/View;)V

    .line 242
    .line 243
    .line 244
    goto :goto_2

    .line 245
    :cond_3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$m;->j()Lcom/startshorts/androidplayer/databinding/ItemSearchPopularBinding;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemSearchPopularBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 250
    .line 251
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p2

    .line 255
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$m;->j()Lcom/startshorts/androidplayer/databinding/ItemSearchPopularBinding;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemSearchPopularBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 263
    .line 264
    invoke-static {p1}, Ljk/b0;->l(Landroid/view/View;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$m;->j()Lcom/startshorts/androidplayer/databinding/ItemSearchPopularBinding;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemSearchPopularBinding;->b:Landroid/widget/ImageView;

    .line 272
    .line 273
    invoke-static {p1}, Ljk/b0;->l(Landroid/view/View;)V

    .line 274
    .line 275
    .line 276
    :cond_4
    :goto_2
    return-void
.end method
