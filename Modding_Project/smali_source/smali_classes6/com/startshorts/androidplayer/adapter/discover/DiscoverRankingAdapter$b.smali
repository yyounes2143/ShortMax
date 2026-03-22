.class final Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter$b;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "DiscoverRankingAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter;
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
        "SMAP\nDiscoverRankingAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverRankingAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter$RankingViewHolder\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,115:1\n256#2,2:116\n256#2,2:118\n*S KotlinDebug\n*F\n+ 1 DiscoverRankingAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter$RankingViewHolder\n*L\n86#1:116,2\n89#1:118,2\n*E\n"
    }
.end annotation


# instance fields
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic h:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter;Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingBinding;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter$b;->h:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter$b;->g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingBinding;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingBinding;

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter$b;->k(ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter$b;->g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public k(ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V
    .locals 6
    .param p2    # Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;
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
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingBinding;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingBinding;->a:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    sget v3, Lcom/startshorts/androidplayer/R$string;->banner_pic:I

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const/16 v2, 0x20

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getId()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    sget-object v0, Lkk/f;->a:Lkk/f;

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingBinding;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingBinding;->a:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 64
    .line 65
    new-instance v2, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 66
    .line 67
    invoke-direct {v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 68
    .line 69
    .line 70
    iget-object v3, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter$b;->h:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter;

    .line 71
    .line 72
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPicUrl()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {v2, v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    sget-object v4, Lid/c;->a:Lid/c;

    .line 80
    .line 81
    invoke-virtual {v4}, Lid/c;->b()I

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    invoke-virtual {v2, v5}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4}, Lid/c;->a()I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    invoke-virtual {v2, v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 93
    .line 94
    .line 95
    invoke-static {v3}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter;->I(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter;)I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    invoke-virtual {v2, v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeWidth(I)V

    .line 100
    .line 101
    .line 102
    invoke-static {v3}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter;->H(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter;)I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    invoke-virtual {v2, v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeHeight(I)V

    .line 107
    .line 108
    .line 109
    sget v4, Lcom/startshorts/androidplayer/R$drawable;->ic_cover_placeholder:I

    .line 110
    .line 111
    invoke-virtual {v2, v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 112
    .line 113
    .line 114
    const/4 v4, 0x1

    .line 115
    invoke-virtual {v2, v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 116
    .line 117
    .line 118
    invoke-static {v3}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter;->F(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter;)F

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerRadius(F)V

    .line 123
    .line 124
    .line 125
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 126
    .line 127
    invoke-virtual {v0, v1, v2}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 128
    .line 129
    .line 130
    sget-object v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->C:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;

    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingBinding;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 137
    .line 138
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPlayNum()Ljava/lang/Long;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;->i(Landroid/widget/TextView;Ljava/lang/Long;)V

    .line 143
    .line 144
    .line 145
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter$b;->h:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter;

    .line 146
    .line 147
    invoke-static {v0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter;->G(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter;)Ljava/util/List;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->t0(Ljava/util/List;I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    check-cast v0, Lkotlin/Pair;

    .line 156
    .line 157
    if-nez v0, :cond_0

    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingBinding;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingBinding;->c:Landroid/widget/ImageView;

    .line 164
    .line 165
    const-string/jumbo v1, "shortsIndex"

    .line 166
    .line 167
    .line 168
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    const/16 v1, 0x8

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 174
    .line 175
    .line 176
    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingBinding;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingBinding;->c:Landroid/widget/ImageView;

    .line 182
    .line 183
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    const/4 v2, 0x0

    .line 187
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    check-cast v2, Ljava/lang/Number;

    .line 195
    .line 196
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    check-cast v2, Ljava/lang/Number;

    .line 212
    .line 213
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 214
    .line 215
    .line 216
    move-result v2

    .line 217
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    invoke-virtual {v0}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    check-cast v0, Ljava/lang/Number;

    .line 229
    .line 230
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 235
    .line 236
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    .line 238
    .line 239
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    :goto_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingBinding;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 247
    .line 248
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayName()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p2

    .line 252
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingBinding;

    .line 256
    .line 257
    .line 258
    move-result-object p2

    .line 259
    invoke-virtual {p2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 260
    .line 261
    .line 262
    move-result-object p2

    .line 263
    int-to-float p1, p1

    .line 264
    neg-float p1, p1

    .line 265
    invoke-virtual {p2, p1}, Landroid/view/View;->setElevation(F)V

    .line 266
    .line 267
    .line 268
    return-void
.end method
