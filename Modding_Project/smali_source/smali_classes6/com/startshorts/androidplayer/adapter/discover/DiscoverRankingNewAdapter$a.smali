.class final Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter$a;
.super Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;
.source "DiscoverRankingNewAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
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


# instance fields
.field private final i:Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingNewBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final j:[Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final k:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic l:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter;Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingNewBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingNewBinding;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter$a;->l:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter;

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
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter$a;->i:Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingNewBinding;

    .line 16
    .line 17
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_top1:I

    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    sget p2, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_top2:I

    .line 24
    .line 25
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_top3:I

    .line 30
    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    filled-new-array {p1, p2, v0}, [Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter$a;->j:[Ljava/lang/Integer;

    .line 40
    .line 41
    new-instance p1, Lcom/startshorts/androidplayer/adapter/discover/c1;

    .line 42
    .line 43
    invoke-direct {p1}, Lcom/startshorts/androidplayer/adapter/discover/c1;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter$a;->k:Lms/i;

    .line 51
    .line 52
    return-void
.end method

.method public static synthetic g()F
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter$a;->i()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method private static final i()F
    .locals 1

    .line 1
    const/high16 v0, 0x40a00000    # 5.0f

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

.method private final j()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter$a;->k:Lms/i;

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


# virtual methods
.method public bridge synthetic e(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter$a;->h(ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public h(ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V
    .locals 6
    .param p2    # Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget-object v0, Lkk/f;->a:Lkk/f;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter$a;->i:Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingNewBinding;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingNewBinding;->a:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 9
    .line 10
    new-instance v2, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 11
    .line 12
    invoke-direct {v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v3, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter$a;->l:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter;

    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPicUrl()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {v2, v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object v4, Lid/c;->a:Lid/c;

    .line 25
    .line 26
    invoke-virtual {v4}, Lid/c;->b()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    invoke-virtual {v2, v5}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4}, Lid/c;->a()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-virtual {v2, v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 38
    .line 39
    .line 40
    invoke-static {v3}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter;->i(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter;)I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    invoke-virtual {v2, v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeWidth(I)V

    .line 45
    .line 46
    .line 47
    invoke-static {v3}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter;->h(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter;)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeHeight(I)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter$a;->j()F

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerRadius(F)V

    .line 59
    .line 60
    .line 61
    const/4 v3, 0x1

    .line 62
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 63
    .line 64
    .line 65
    sget v4, Lcom/startshorts/androidplayer/R$drawable;->ic_cover_placeholder:I

    .line 66
    .line 67
    invoke-virtual {v2, v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 68
    .line 69
    .line 70
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 71
    .line 72
    invoke-virtual {v0, v1, v2}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 73
    .line 74
    .line 75
    const/4 v0, 0x3

    .line 76
    const/4 v1, 0x0

    .line 77
    const/4 v2, 0x4

    .line 78
    if-ltz p1, :cond_1

    .line 79
    .line 80
    if-ge p1, v0, :cond_1

    .line 81
    .line 82
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter$a;->i:Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingNewBinding;

    .line 83
    .line 84
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingNewBinding;->c:Landroid/widget/ImageView;

    .line 85
    .line 86
    iget-object v3, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter$a;->j:[Ljava/lang/Integer;

    .line 87
    .line 88
    aget-object p1, v3, p1

    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter$a;->i:Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingNewBinding;

    .line 98
    .line 99
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingNewBinding;->c:Landroid/widget/ImageView;

    .line 100
    .line 101
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter$a;->i:Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingNewBinding;

    .line 105
    .line 106
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingNewBinding;->b:Landroid/widget/ImageView;

    .line 107
    .line 108
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter$a;->i:Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingNewBinding;

    .line 112
    .line 113
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingNewBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 114
    .line 115
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_1
    if-gt v0, p1, :cond_3

    .line 120
    .line 121
    const/16 v0, 0x64

    .line 122
    .line 123
    if-ge p1, v0, :cond_3

    .line 124
    .line 125
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter$a;->i:Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingNewBinding;

    .line 126
    .line 127
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingNewBinding;->c:Landroid/widget/ImageView;

    .line 128
    .line 129
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter$a;->i:Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingNewBinding;

    .line 133
    .line 134
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingNewBinding;->b:Landroid/widget/ImageView;

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter$a;->i:Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingNewBinding;

    .line 140
    .line 141
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingNewBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter$a;->i:Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingNewBinding;

    .line 147
    .line 148
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingNewBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 149
    .line 150
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    const-string v4, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    .line 155
    .line 156
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 160
    .line 161
    add-int/2addr p1, v3

    .line 162
    const/16 v3, 0xa

    .line 163
    .line 164
    if-ge p1, v3, :cond_2

    .line 165
    .line 166
    const/high16 v3, 0x40800000    # 4.0f

    .line 167
    .line 168
    invoke-static {v3}, Ljk/g;->a(F)I

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 173
    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_2
    const/high16 v3, 0x40000000    # 2.0f

    .line 177
    .line 178
    invoke-static {v3}, Ljk/g;->a(F)I

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 183
    .line 184
    .line 185
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter$a;->i:Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingNewBinding;

    .line 186
    .line 187
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingNewBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 188
    .line 189
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_3
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter$a;->i:Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingNewBinding;

    .line 198
    .line 199
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingNewBinding;->c:Landroid/widget/ImageView;

    .line 200
    .line 201
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    .line 203
    .line 204
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter$a;->i:Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingNewBinding;

    .line 205
    .line 206
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingNewBinding;->b:Landroid/widget/ImageView;

    .line 207
    .line 208
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 209
    .line 210
    .line 211
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter$a;->i:Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingNewBinding;

    .line 212
    .line 213
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingNewBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 214
    .line 215
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 216
    .line 217
    .line 218
    :goto_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter$a;->i:Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingNewBinding;

    .line 219
    .line 220
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingNewBinding;->h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 221
    .line 222
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayName()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    .line 228
    .line 229
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter$a;->i:Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingNewBinding;

    .line 230
    .line 231
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingNewBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 232
    .line 233
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getRecommendContent()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    if-eqz v0, :cond_5

    .line 238
    .line 239
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    if-nez v0, :cond_4

    .line 244
    .line 245
    goto :goto_2

    .line 246
    :cond_4
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getRecommendContent()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    goto :goto_3

    .line 251
    :cond_5
    :goto_2
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getSummary()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getLabelList()Ljava/util/List;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    if-eqz p1, :cond_6

    .line 263
    .line 264
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    check-cast p1, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 269
    .line 270
    goto :goto_4

    .line 271
    :cond_6
    const/4 p1, 0x0

    .line 272
    :goto_4
    if-nez p1, :cond_7

    .line 273
    .line 274
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter$a;->i:Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingNewBinding;

    .line 275
    .line 276
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingNewBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 277
    .line 278
    const/16 v0, 0x8

    .line 279
    .line 280
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 281
    .line 282
    .line 283
    goto :goto_5

    .line 284
    :cond_7
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter$a;->i:Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingNewBinding;

    .line 285
    .line 286
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingNewBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 287
    .line 288
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;->getLabelName()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    .line 294
    .line 295
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter$a;->i:Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingNewBinding;

    .line 296
    .line 297
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingNewBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 298
    .line 299
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 300
    .line 301
    .line 302
    :goto_5
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getHotScore()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    if-eqz p1, :cond_9

    .line 307
    .line 308
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 309
    .line 310
    .line 311
    move-result p1

    .line 312
    if-nez p1, :cond_8

    .line 313
    .line 314
    goto :goto_6

    .line 315
    :cond_8
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter$a;->i:Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingNewBinding;

    .line 316
    .line 317
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingNewBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 318
    .line 319
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getHotScore()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object p2

    .line 323
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    .line 325
    .line 326
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter$a;->i:Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingNewBinding;

    .line 327
    .line 328
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingNewBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 329
    .line 330
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 331
    .line 332
    .line 333
    goto :goto_7

    .line 334
    :cond_9
    :goto_6
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingNewAdapter$a;->i:Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingNewBinding;

    .line 335
    .line 336
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingNewBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 337
    .line 338
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 339
    .line 340
    .line 341
    :goto_7
    return-void
.end method
