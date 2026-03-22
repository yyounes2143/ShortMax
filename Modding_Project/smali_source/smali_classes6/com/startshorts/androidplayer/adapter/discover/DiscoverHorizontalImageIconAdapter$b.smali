.class final Lcom/startshorts/androidplayer/adapter/discover/DiscoverHorizontalImageIconAdapter$b;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "DiscoverHorizontalImageIconAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/discover/DiscoverHorizontalImageIconAdapter;
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


# instance fields
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageIconBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic h:Lcom/startshorts/androidplayer/adapter/discover/DiscoverHorizontalImageIconAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverHorizontalImageIconAdapter;Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageIconBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/discover/DiscoverHorizontalImageIconAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageIconBinding;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverHorizontalImageIconAdapter$b;->h:Lcom/startshorts/androidplayer/adapter/discover/DiscoverHorizontalImageIconAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverHorizontalImageIconAdapter$b;->g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageIconBinding;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverHorizontalImageIconAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageIconBinding;

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverHorizontalImageIconAdapter$b;->k(ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic g(ILjava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverHorizontalImageIconAdapter$b;->l(ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageIconBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverHorizontalImageIconAdapter$b;->g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageIconBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public k(ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V
    .locals 5
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
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverHorizontalImageIconAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageIconBinding;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageIconBinding;->a:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

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
    const/16 p1, 0x20

    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getId()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    sget-object p1, Lkk/f;->a:Lkk/f;

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverHorizontalImageIconAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageIconBinding;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageIconBinding;->a:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 64
    .line 65
    new-instance v1, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 66
    .line 67
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 68
    .line 69
    .line 70
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverHorizontalImageIconAdapter$b;->h:Lcom/startshorts/androidplayer/adapter/discover/DiscoverHorizontalImageIconAdapter;

    .line 71
    .line 72
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPicUrl()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    sget-object v3, Lid/c;->a:Lid/c;

    .line 80
    .line 81
    invoke-virtual {v3}, Lid/c;->b()I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    invoke-virtual {v1, v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Lid/c;->a()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 93
    .line 94
    .line 95
    invoke-static {v2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverHorizontalImageIconAdapter;->F(Lcom/startshorts/androidplayer/adapter/discover/DiscoverHorizontalImageIconAdapter;)I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeWidth(I)V

    .line 100
    .line 101
    .line 102
    invoke-static {v2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverHorizontalImageIconAdapter;->E(Lcom/startshorts/androidplayer/adapter/discover/DiscoverHorizontalImageIconAdapter;)I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeHeight(I)V

    .line 107
    .line 108
    .line 109
    sget v2, Lcom/startshorts/androidplayer/R$drawable;->ic_cover_placeholder:I

    .line 110
    .line 111
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 112
    .line 113
    .line 114
    sget-object v2, Lfk/z;->a:Lfk/z;

    .line 115
    .line 116
    invoke-virtual {v2}, Lfk/z;->r()I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    int-to-float v2, v2

    .line 121
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerRadius(F)V

    .line 122
    .line 123
    .line 124
    const/4 v2, 0x1

    .line 125
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 126
    .line 127
    .line 128
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 129
    .line 130
    invoke-virtual {p1, v0, v1}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverHorizontalImageIconAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageIconBinding;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageIconBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 138
    .line 139
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayName()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    .line 145
    .line 146
    sget-object p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->C:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;

    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverHorizontalImageIconAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageIconBinding;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageIconBinding;->i:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 153
    .line 154
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPlayNum()Ljava/lang/Long;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;->i(Landroid/widget/TextView;Ljava/lang/Long;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getEpisodeNum()I

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    if-ltz p1, :cond_1

    .line 166
    .line 167
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getTotalEpisodes()I

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    if-lez p1, :cond_1

    .line 172
    .line 173
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverHorizontalImageIconAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageIconBinding;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageIconBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 178
    .line 179
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverHorizontalImageIconAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageIconBinding;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageIconBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 184
    .line 185
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    sget v1, Lcom/startshorts/androidplayer/R$string;->common_current_ep:I

    .line 190
    .line 191
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getEpisodeNum()I

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    if-nez v3, :cond_0

    .line 196
    .line 197
    goto :goto_0

    .line 198
    :cond_0
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getEpisodeNum()I

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverHorizontalImageIconAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageIconBinding;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageIconBinding;->h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 222
    .line 223
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverHorizontalImageIconAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageIconBinding;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageIconBinding;->h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 228
    .line 229
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    sget v1, Lcom/startshorts/androidplayer/R$string;->common_total_ep:I

    .line 234
    .line 235
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getTotalEpisodes()I

    .line 236
    .line 237
    .line 238
    move-result p2

    .line 239
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p2

    .line 243
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object p2

    .line 247
    invoke-virtual {v0, v1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p2

    .line 251
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    .line 253
    .line 254
    :cond_1
    return-void
.end method

.method public l(ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Ljava/util/List;)V
    .locals 1
    .param p2    # Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;
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
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
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
    if-eqz p2, :cond_2

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
    goto :goto_0

    .line 17
    :cond_0
    const-string/jumbo v0, "update_episode_num"

    .line 18
    .line 19
    .line 20
    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    if-eqz p3, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverHorizontalImageIconAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageIconBinding;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageIconBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverHorizontalImageIconAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageIconBinding;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    iget-object p3, p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageIconBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 37
    .line 38
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    sget v0, Lcom/startshorts/androidplayer/R$string;->common_current_ep:I

    .line 43
    .line 44
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getEpisodeNum()I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-virtual {p3, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->h(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverHorizontalImageIconAdapter$b;->k(ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    :goto_0
    return-void
.end method
