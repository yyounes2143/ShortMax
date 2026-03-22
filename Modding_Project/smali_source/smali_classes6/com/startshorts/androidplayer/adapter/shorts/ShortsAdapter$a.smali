.class final Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$a;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "ShortsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;",
        ">.ViewHolder;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemShortsBrandPicAdBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic h:Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;Lcom/startshorts/androidplayer/databinding/ItemShortsBrandPicAdBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemShortsBrandPicAdBinding;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$a;->h:Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$a;->g:Lcom/startshorts/androidplayer/databinding/ItemShortsBrandPicAdBinding;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$a;->j()Lcom/startshorts/androidplayer/databinding/ItemShortsBrandPicAdBinding;

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
    check-cast p2, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$a;->k(ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j()Lcom/startshorts/androidplayer/databinding/ItemShortsBrandPicAdBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$a;->g:Lcom/startshorts/androidplayer/databinding/ItemShortsBrandPicAdBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public k(ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V
    .locals 12
    .param p2    # Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;
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
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->getExtraAdInfo()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_7

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getExtendInfo()Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto/16 :goto_3

    .line 22
    .line 23
    :cond_0
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->getExtraAdInfo()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x0

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getResourceMap()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move-object v1, v2

    .line 36
    :goto_0
    if-eqz v1, :cond_2

    .line 37
    .line 38
    invoke-static {v1}, Ljk/v;->f(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move-object v3, v2

    .line 48
    :goto_1
    sget-object v4, Lkk/f;->a:Lkk/f;

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$a;->j()Lcom/startshorts/androidplayer/databinding/ItemShortsBrandPicAdBinding;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    iget-object v5, v5, Lcom/startshorts/androidplayer/databinding/ItemShortsBrandPicAdBinding;->a:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 55
    .line 56
    new-instance v6, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 57
    .line 58
    invoke-direct {v6}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6, v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const/4 v7, 0x0

    .line 65
    invoke-virtual {v6, v7}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssProcess(Z)V

    .line 66
    .line 67
    .line 68
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 69
    .line 70
    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    const/4 v10, 0x1

    .line 75
    if-eqz v9, :cond_3

    .line 76
    .line 77
    invoke-virtual {v6, v10}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setAutoPlayAnim(Z)V

    .line 78
    .line 79
    .line 80
    :cond_3
    sget-object v9, Lc3/q;->i:Lc3/q;

    .line 81
    .line 82
    invoke-virtual {v6, v9}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setScaleType(Lc3/q;)V

    .line 83
    .line 84
    .line 85
    new-instance v9, Ld4/a;

    .line 86
    .line 87
    const/4 v11, 0x5

    .line 88
    invoke-direct {v9, v10, v11}, Ld4/a;-><init>(II)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v6, v9}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setIterativeBoxBlurPostProcessor(Ld4/a;)V

    .line 92
    .line 93
    .line 94
    sget-object v9, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 95
    .line 96
    invoke-virtual {v4, v5, v6}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$a;->j()Lcom/startshorts/androidplayer/databinding/ItemShortsBrandPicAdBinding;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    iget-object v5, v5, Lcom/startshorts/androidplayer/databinding/ItemShortsBrandPicAdBinding;->c:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 104
    .line 105
    new-instance v6, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 106
    .line 107
    invoke-direct {v6}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v6, v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v6, v7}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssProcess(Z)V

    .line 114
    .line 115
    .line 116
    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_4

    .line 121
    .line 122
    invoke-virtual {v6, v10}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setAutoPlayAnim(Z)V

    .line 123
    .line 124
    .line 125
    :cond_4
    sget-object v1, Lc3/q;->b:Lc3/q;

    .line 126
    .line 127
    invoke-virtual {v6, v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setScaleType(Lc3/q;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4, v5, v6}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->getAdsPicFlag()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    if-eqz v1, :cond_5

    .line 138
    .line 139
    invoke-static {v1}, Ljk/v;->f(Ljava/lang/String;)Z

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    :cond_5
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$a;->j()Lcom/startshorts/androidplayer/databinding/ItemShortsBrandPicAdBinding;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    iget-object v3, v3, Lcom/startshorts/androidplayer/databinding/ItemShortsBrandPicAdBinding;->f:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 152
    .line 153
    new-instance v5, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 154
    .line 155
    invoke-direct {v5}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v5, v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-eqz v1, :cond_6

    .line 166
    .line 167
    invoke-virtual {v5, v10}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setAutoPlayAnim(Z)V

    .line 168
    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_6
    sget-object v1, Lfk/z;->a:Lfk/z;

    .line 172
    .line 173
    invoke-virtual {v1}, Lfk/z;->l()I

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    invoke-virtual {v5, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1}, Lfk/z;->l()I

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    invoke-virtual {v5, v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 185
    .line 186
    .line 187
    :goto_2
    invoke-virtual {v5, v10}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 188
    .line 189
    .line 190
    const/high16 v1, 0x40000000    # 2.0f

    .line 191
    .line 192
    invoke-static {v1}, Ljk/g;->b(F)F

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    invoke-virtual {v5, v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerRadius(F)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v4, v3, v5}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$a;->j()Lcom/startshorts/androidplayer/databinding/ItemShortsBrandPicAdBinding;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemShortsBrandPicAdBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 207
    .line 208
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->getAdsTitle()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$a;->j()Lcom/startshorts/androidplayer/databinding/ItemShortsBrandPicAdBinding;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemShortsBrandPicAdBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 220
    .line 221
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->getAdsText()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$a;->j()Lcom/startshorts/androidplayer/databinding/ItemShortsBrandPicAdBinding;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemShortsBrandPicAdBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 233
    .line 234
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->getAdsContent()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$a;->j()Lcom/startshorts/androidplayer/databinding/ItemShortsBrandPicAdBinding;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    new-instance v1, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$a$a;

    .line 250
    .line 251
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$a;->h:Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;

    .line 252
    .line 253
    invoke-direct {v1, v2, p1, p2}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$a$a;-><init>(Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    .line 258
    .line 259
    :cond_7
    :goto_3
    return-void
.end method
