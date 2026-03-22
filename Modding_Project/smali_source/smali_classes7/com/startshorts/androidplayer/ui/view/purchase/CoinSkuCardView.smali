.class public final Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "CoinSkuCardView.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/ui/view/purchase/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView$a;,
        Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final k:Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

.field private b:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private i:J

.field private j:Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView$b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->k:Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p1, -0x1

    .line 4
    iput-wide p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->i:J

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 5
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic q(Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->w(Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic r(Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->x(Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final setCoinImageView(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->b:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 10
    .line 11
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private final t()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->a:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "mCoinSku"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->isBigCard()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->g:Landroid/view/View;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    sget v3, Lcom/startshorts/androidplayer/R$drawable;->bg_coin_sku_big_card_selected:I

    .line 23
    .line 24
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 25
    .line 26
    .line 27
    :cond_1
    sget-object v0, Lfk/z;->a:Lfk/z;

    .line 28
    .line 29
    invoke-virtual {v0}, Lfk/z;->g()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->setCoinImageView(I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->c:Landroid/widget/TextView;

    .line 37
    .line 38
    if-eqz v0, :cond_6

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    sget v4, Lcom/startshorts/androidplayer/R$string;->common_coins:I

    .line 45
    .line 46
    iget-object v5, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->a:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 47
    .line 48
    if-nez v5, :cond_2

    .line 49
    .line 50
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    move-object v5, v1

    .line 54
    :cond_2
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getCoins()I

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->g:Landroid/view/View;

    .line 75
    .line 76
    if-eqz v0, :cond_4

    .line 77
    .line 78
    sget v3, Lcom/startshorts/androidplayer/R$drawable;->bg_sku_coin_7_selected:I

    .line 79
    .line 80
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 81
    .line 82
    .line 83
    :cond_4
    sget-object v0, Lfk/z;->a:Lfk/z;

    .line 84
    .line 85
    invoke-virtual {v0}, Lfk/z;->d()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->setCoinImageView(I)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->c:Landroid/widget/TextView;

    .line 93
    .line 94
    if-eqz v0, :cond_6

    .line 95
    .line 96
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->a:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 97
    .line 98
    if-nez v3, :cond_5

    .line 99
    .line 100
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    move-object v3, v1

    .line 104
    :cond_5
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getCoins()I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .line 114
    .line 115
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->a:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 116
    .line 117
    if-nez v0, :cond_7

    .line 118
    .line 119
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    move-object v0, v1

    .line 123
    :cond_7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuType()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    const/4 v3, 0x7

    .line 128
    if-ne v0, v3, :cond_a

    .line 129
    .line 130
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->a:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 131
    .line 132
    if-nez v0, :cond_8

    .line 133
    .line 134
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    move-object v0, v1

    .line 138
    :cond_8
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getKeepGiveCoins()Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    if-nez v0, :cond_9

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_e

    .line 150
    .line 151
    :cond_a
    :goto_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->a:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 152
    .line 153
    if-nez v0, :cond_b

    .line 154
    .line 155
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    move-object v0, v1

    .line 159
    :cond_b
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuType()I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-eq v0, v3, :cond_f

    .line 164
    .line 165
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->a:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 166
    .line 167
    if-nez v0, :cond_c

    .line 168
    .line 169
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    move-object v0, v1

    .line 173
    :cond_c
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getProductGiveCoins()Ljava/lang/Integer;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    if-nez v0, :cond_d

    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-nez v0, :cond_f

    .line 185
    .line 186
    :cond_e
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->d:Landroid/widget/TextView;

    .line 187
    .line 188
    if-eqz v0, :cond_17

    .line 189
    .line 190
    const/16 v3, 0x8

    .line 191
    .line 192
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 193
    .line 194
    .line 195
    goto/16 :goto_6

    .line 196
    .line 197
    :cond_f
    :goto_2
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->a:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 198
    .line 199
    if-nez v0, :cond_10

    .line 200
    .line 201
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    move-object v0, v1

    .line 205
    :cond_10
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuType()I

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    const/16 v4, 0x2b

    .line 210
    .line 211
    const-string v5, "getString(...)"

    .line 212
    .line 213
    const/4 v6, 0x0

    .line 214
    if-ne v0, v3, :cond_13

    .line 215
    .line 216
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    sget v3, Lcom/startshorts/androidplayer/R$string;->common_bonus:I

    .line 221
    .line 222
    iget-object v7, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->a:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 223
    .line 224
    if-nez v7, :cond_11

    .line 225
    .line 226
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    move-object v7, v1

    .line 230
    :cond_11
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getKeepGiveCoins()Ljava/lang/Integer;

    .line 231
    .line 232
    .line 233
    move-result-object v7

    .line 234
    if-eqz v7, :cond_12

    .line 235
    .line 236
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 237
    .line 238
    .line 239
    move-result v7

    .line 240
    goto :goto_3

    .line 241
    :cond_12
    move v7, v6

    .line 242
    :goto_3
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v7

    .line 246
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v7

    .line 250
    invoke-virtual {v0, v3, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->d:Landroid/widget/TextView;

    .line 258
    .line 259
    if-eqz v3, :cond_16

    .line 260
    .line 261
    new-instance v5, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    .line 278
    .line 279
    goto :goto_5

    .line 280
    :cond_13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    sget v3, Lcom/startshorts/androidplayer/R$string;->common_bonus:I

    .line 285
    .line 286
    iget-object v7, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->a:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 287
    .line 288
    if-nez v7, :cond_14

    .line 289
    .line 290
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    move-object v7, v1

    .line 294
    :cond_14
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getProductGiveCoins()Ljava/lang/Integer;

    .line 295
    .line 296
    .line 297
    move-result-object v7

    .line 298
    if-eqz v7, :cond_15

    .line 299
    .line 300
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 301
    .line 302
    .line 303
    move-result v7

    .line 304
    goto :goto_4

    .line 305
    :cond_15
    move v7, v6

    .line 306
    :goto_4
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v7

    .line 310
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v7

    .line 314
    invoke-virtual {v0, v3, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->d:Landroid/widget/TextView;

    .line 322
    .line 323
    if-eqz v3, :cond_16

    .line 324
    .line 325
    new-instance v5, Ljava/lang/StringBuilder;

    .line 326
    .line 327
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    .line 342
    .line 343
    :cond_16
    :goto_5
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->d:Landroid/widget/TextView;

    .line 344
    .line 345
    if-eqz v0, :cond_17

    .line 346
    .line 347
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 348
    .line 349
    .line 350
    :cond_17
    :goto_6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->e:Landroid/widget/TextView;

    .line 351
    .line 352
    if-eqz v0, :cond_1b

    .line 353
    .line 354
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->a:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 355
    .line 356
    if-nez v3, :cond_18

    .line 357
    .line 358
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    move-object v3, v1

    .line 362
    :cond_18
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getPriceText()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v3

    .line 366
    if-eqz v3, :cond_19

    .line 367
    .line 368
    goto :goto_8

    .line 369
    :cond_19
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->a:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 370
    .line 371
    if-nez v3, :cond_1a

    .line 372
    .line 373
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    goto :goto_7

    .line 377
    :cond_1a
    move-object v1, v3

    .line 378
    :goto_7
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getOriginPriceText()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v3

    .line 382
    :goto_8
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    .line 384
    .line 385
    :cond_1b
    return-void
.end method

.method private static final w(Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;I)Lkotlin/Unit;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 7
    .line 8
    int-to-long v2, p1

    .line 9
    const/4 p1, 0x1

    .line 10
    invoke-virtual {v1, v2, v3, p1}, Lcom/startshorts/androidplayer/utils/TimeUtil;->c(JZ)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->a:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    const-string v2, "mCoinSku"

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    move-object p1, v1

    .line 28
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->isSubscriptValid()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->a:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 35
    .line 36
    if-nez p1, :cond_1

    .line 37
    .line 38
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move-object v1, p1

    .line 43
    :goto_0
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSubscript()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    const-string p1, ""

    .line 49
    .line 50
    :goto_1
    if-eqz p1, :cond_4

    .line 51
    .line 52
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_3

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    const-string v1, " | "

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->f:Landroid/widget/TextView;

    .line 68
    .line 69
    if-eqz p0, :cond_5

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    :cond_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 79
    .line 80
    return-object p0
.end method

.method private static final x(Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->u()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->j:Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView$b;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-interface {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView$b;->onExpired()V

    .line 9
    .line 10
    .line 11
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method


# virtual methods
.method public final getMListener()Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView$b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->j:Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public i(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->a:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "mCoinSku"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->setSelect(Z)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/startshorts/androidplayer/R$id;->coin_iv:I

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/ImageView;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->b:Landroid/widget/ImageView;

    .line 13
    .line 14
    sget v0, Lcom/startshorts/androidplayer/R$id;->coin_tv:I

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/widget/TextView;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->c:Landroid/widget/TextView;

    .line 23
    .line 24
    sget v0, Lcom/startshorts/androidplayer/R$id;->bonus_tv:I

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/TextView;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->d:Landroid/widget/TextView;

    .line 33
    .line 34
    sget v0, Lcom/startshorts/androidplayer/R$id;->price_tv:I

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroid/widget/TextView;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->e:Landroid/widget/TextView;

    .line 43
    .line 44
    sget v0, Lcom/startshorts/androidplayer/R$id;->countdown_label_right_tv:I

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroid/widget/TextView;

    .line 51
    .line 52
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->f:Landroid/widget/TextView;

    .line 53
    .line 54
    sget v0, Lcom/startshorts/androidplayer/R$id;->bg_selected_view:I

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->g:Landroid/view/View;

    .line 61
    .line 62
    return-void
.end method

.method public final s()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->h:Lkotlinx/coroutines/r;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 13
    .line 14
    const-string v2, "CoinSkuCardView"

    .line 15
    .line 16
    const-string v3, "cancelCountDownJob"

    .line 17
    .line 18
    invoke-virtual {v0, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->h:Lkotlinx/coroutines/r;

    .line 22
    .line 23
    return-void
.end method

.method public final setListener(Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView$b;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->j:Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView$b;

    .line 7
    .line 8
    return-void
.end method

.method public final setMListener(Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView$b;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->j:Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView$b;

    .line 2
    .line 3
    return-void
.end method

.method public final setSelect(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->g:Landroid/view/View;

    .line 4
    .line 5
    invoke-static {p1}, Ljk/b0;->l(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->g:Landroid/view/View;

    .line 10
    .line 11
    invoke-static {p1}, Ljk/b0;->e(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public final setSku(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "coinSku"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->a:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->t()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final u()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->a:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "mCoinSku"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->isSubscriptValid()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->f:Landroid/widget/TextView;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->a:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 23
    .line 24
    if-nez v3, :cond_1

    .line 25
    .line 26
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move-object v1, v3

    .line 31
    :goto_0
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSubscript()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->f:Landroid/widget/TextView;

    .line 39
    .line 40
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_3
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->f:Landroid/widget/TextView;

    .line 45
    .line 46
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 47
    .line 48
    .line 49
    :goto_1
    return-void
.end method

.method public final v()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->s()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-wide v2, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->i:J

    .line 11
    .line 12
    const-wide/16 v4, -0x1

    .line 13
    .line 14
    cmp-long v4, v2, v4

    .line 15
    .line 16
    const/16 v5, 0x3e8

    .line 17
    .line 18
    if-nez v4, :cond_1

    .line 19
    .line 20
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->a:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 21
    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    const-string v2, "mCoinSku"

    .line 25
    .line 26
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    :cond_0
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getRetentionSeconds()J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    int-to-long v4, v5

    .line 35
    div-long/2addr v0, v4

    .line 36
    add-long/2addr v0, v2

    .line 37
    iput-wide v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->i:J

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    int-to-long v4, v5

    .line 41
    div-long/2addr v0, v4

    .line 42
    sub-long/2addr v2, v0

    .line 43
    :goto_0
    const-wide/16 v0, 0x0

    .line 44
    .line 45
    cmp-long v0, v2, v0

    .line 46
    .line 47
    if-gtz v0, :cond_2

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->u()V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->f:Landroid/widget/TextView;

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 61
    .line 62
    long-to-int v1, v2

    .line 63
    new-instance v2, Lcom/startshorts/androidplayer/ui/view/purchase/e;

    .line 64
    .line 65
    invoke-direct {v2, p0}, Lcom/startshorts/androidplayer/ui/view/purchase/e;-><init>(Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;)V

    .line 66
    .line 67
    .line 68
    new-instance v3, Lcom/startshorts/androidplayer/ui/view/purchase/f;

    .line 69
    .line 70
    invoke-direct {v3, p0}, Lcom/startshorts/androidplayer/ui/view/purchase/f;-><init>(Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1, v2, v3}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->d(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/r;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;->h:Lkotlinx/coroutines/r;

    .line 78
    .line 79
    :goto_1
    return-void
.end method
