.class final Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$e;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "SearchModuleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
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
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemSearchModuleTitleBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic h:Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;Lcom/startshorts/androidplayer/databinding/ItemSearchModuleTitleBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemSearchModuleTitleBinding;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$e;->h:Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$e;->g:Lcom/startshorts/androidplayer/databinding/ItemSearchModuleTitleBinding;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$e;->j()Lcom/startshorts/androidplayer/databinding/ItemSearchModuleTitleBinding;

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$e;->k(ILcom/startshorts/androidplayer/bean/search/SearchModule;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j()Lcom/startshorts/androidplayer/databinding/ItemSearchModuleTitleBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$e;->g:Lcom/startshorts/androidplayer/databinding/ItemSearchModuleTitleBinding;

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
    instance-of p1, p2, Lcom/startshorts/androidplayer/bean/search/SearchModule$PopularTitleModule;

    .line 10
    .line 11
    if-eqz p1, :cond_4

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$e;->j()Lcom/startshorts/androidplayer/databinding/ItemSearchModuleTitleBinding;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemSearchModuleTitleBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;

    .line 18
    .line 19
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 20
    .line 21
    sget v1, Lcom/startshorts/androidplayer/R$color;->rank_title_text_start:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lfk/u;->a(I)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    sget v2, Lcom/startshorts/androidplayer/R$color;->rank_title_text_end:I

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lfk/u;->a(I)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p1, v1, v0}, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;->setColor(II)V

    .line 34
    .line 35
    .line 36
    sget-object p1, Lkk/f;->a:Lkk/f;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$e;->j()Lcom/startshorts/androidplayer/databinding/ItemSearchModuleTitleBinding;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemSearchModuleTitleBinding;->a:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 43
    .line 44
    new-instance v1, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 45
    .line 46
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 47
    .line 48
    .line 49
    check-cast p2, Lcom/startshorts/androidplayer/bean/search/SearchModule$PopularTitleModule;

    .line 50
    .line 51
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/search/SearchModule$PopularTitleModule;->getInfo()Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->getCoverId()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    sget-object v2, Lid/c;->a:Lid/c;

    .line 63
    .line 64
    invoke-virtual {v2}, Lid/c;->b()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Lid/c;->a()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 76
    .line 77
    .line 78
    sget-object v2, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;->u:Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$b;

    .line 79
    .line 80
    invoke-static {v2}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$b;->c(Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$b;)I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeWidth(I)V

    .line 85
    .line 86
    .line 87
    invoke-static {v2}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$b;->a(Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$b;)I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeHeight(I)V

    .line 92
    .line 93
    .line 94
    invoke-static {v2}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$b;->b(Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$b;)F

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerRadius(F)V

    .line 99
    .line 100
    .line 101
    const/4 v2, 0x1

    .line 102
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 103
    .line 104
    .line 105
    sget v3, Lcom/startshorts/androidplayer/R$drawable;->ic_cover_placeholder:I

    .line 106
    .line 107
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 108
    .line 109
    .line 110
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 111
    .line 112
    invoke-virtual {p1, v0, v1}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$e;->j()Lcom/startshorts/androidplayer/databinding/ItemSearchModuleTitleBinding;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemSearchModuleTitleBinding;->h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 120
    .line 121
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/search/SearchModule$PopularTitleModule;->getInfo()Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->getShortPlayName()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/search/SearchModule$PopularTitleModule;->getInfo()Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->getLabelList()Ljava/util/List;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    const/4 v0, 0x0

    .line 141
    if-eqz p1, :cond_0

    .line 142
    .line 143
    const/4 v1, 0x0

    .line 144
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->t0(Ljava/util/List;I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    check-cast p1, Lcom/startshorts/androidplayer/bean/search/LabelWithId;

    .line 149
    .line 150
    if-eqz p1, :cond_0

    .line 151
    .line 152
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/search/LabelWithId;->getLabelName()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    if-eqz p1, :cond_0

    .line 157
    .line 158
    invoke-static {p1, v0, v2, v0}, Ljk/v;->v(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/text/Spanned;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    :cond_0
    const-string p1, ""

    .line 163
    .line 164
    if-eqz v0, :cond_2

    .line 165
    .line 166
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-nez v1, :cond_1

    .line 171
    .line 172
    goto :goto_0

    .line 173
    :cond_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$e;->j()Lcom/startshorts/androidplayer/databinding/ItemSearchModuleTitleBinding;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemSearchModuleTitleBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 178
    .line 179
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$e;->j()Lcom/startshorts/androidplayer/databinding/ItemSearchModuleTitleBinding;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemSearchModuleTitleBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 187
    .line 188
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 189
    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$e;->j()Lcom/startshorts/androidplayer/databinding/ItemSearchModuleTitleBinding;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemSearchModuleTitleBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 197
    .line 198
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$e;->j()Lcom/startshorts/androidplayer/databinding/ItemSearchModuleTitleBinding;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemSearchModuleTitleBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 206
    .line 207
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 208
    .line 209
    .line 210
    :goto_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$e;->j()Lcom/startshorts/androidplayer/databinding/ItemSearchModuleTitleBinding;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemSearchModuleTitleBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 215
    .line 216
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/search/SearchModule$PopularTitleModule;->getInfo()Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->getSummary()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/search/SearchModule$PopularTitleModule;->getInfo()Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;

    .line 228
    .line 229
    .line 230
    move-result-object p2

    .line 231
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->getIndex()I

    .line 232
    .line 233
    .line 234
    move-result p2

    .line 235
    add-int/2addr p2, v2

    .line 236
    const/16 v0, 0x14

    .line 237
    .line 238
    if-le p2, v0, :cond_3

    .line 239
    .line 240
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$e;->j()Lcom/startshorts/androidplayer/databinding/ItemSearchModuleTitleBinding;

    .line 241
    .line 242
    .line 243
    move-result-object p2

    .line 244
    iget-object p2, p2, Lcom/startshorts/androidplayer/databinding/ItemSearchModuleTitleBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 245
    .line 246
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$e;->j()Lcom/startshorts/androidplayer/databinding/ItemSearchModuleTitleBinding;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemSearchModuleTitleBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 254
    .line 255
    invoke-static {p1}, Ljk/b0;->d(Landroid/view/View;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$e;->j()Lcom/startshorts/androidplayer/databinding/ItemSearchModuleTitleBinding;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemSearchModuleTitleBinding;->b:Landroid/widget/ImageView;

    .line 263
    .line 264
    invoke-static {p1}, Ljk/b0;->d(Landroid/view/View;)V

    .line 265
    .line 266
    .line 267
    goto :goto_2

    .line 268
    :cond_3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$e;->j()Lcom/startshorts/androidplayer/databinding/ItemSearchModuleTitleBinding;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemSearchModuleTitleBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 273
    .line 274
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object p2

    .line 278
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$e;->j()Lcom/startshorts/androidplayer/databinding/ItemSearchModuleTitleBinding;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemSearchModuleTitleBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 286
    .line 287
    invoke-static {p1}, Ljk/b0;->l(Landroid/view/View;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$e;->j()Lcom/startshorts/androidplayer/databinding/ItemSearchModuleTitleBinding;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemSearchModuleTitleBinding;->b:Landroid/widget/ImageView;

    .line 295
    .line 296
    invoke-static {p1}, Ljk/b0;->l(Landroid/view/View;)V

    .line 297
    .line 298
    .line 299
    :cond_4
    :goto_2
    return-void
.end method
