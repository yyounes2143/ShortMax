.class public abstract Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;
.super Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;
.source "BaseCoinSkuView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Landroid/view/ViewStub;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Landroid/view/ViewStub;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private i:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private j:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method protected final getMBonusTV()Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMCoinSku()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->j:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final getMLabelTV()Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final setMBonusTV(Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 2
    .line 3
    return-void
.end method

.method public final setMCoinSku(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->j:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 2
    .line 3
    return-void
.end method

.method protected final setMLabelTV(Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 2
    .line 3
    return-void
.end method

.method public u(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p2, "context"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget p1, Lcom/startshorts/androidplayer/R$id;->coin_tv:I

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 15
    .line 16
    sget p1, Lcom/startshorts/androidplayer/R$id;->bonus_tv:I

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 25
    .line 26
    sget p1, Lcom/startshorts/androidplayer/R$id;->bonus_viewstub:I

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Landroid/view/ViewStub;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->c:Landroid/view/ViewStub;

    .line 35
    .line 36
    sget p1, Lcom/startshorts/androidplayer/R$id;->price_tv:I

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 43
    .line 44
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 45
    .line 46
    sget p1, Lcom/startshorts/androidplayer/R$id;->label_viewstub:I

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Landroid/view/ViewStub;

    .line 53
    .line 54
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->f:Landroid/view/ViewStub;

    .line 55
    .line 56
    if-nez p1, :cond_0

    .line 57
    .line 58
    sget p1, Lcom/startshorts/androidplayer/R$id;->label_tv:I

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 65
    .line 66
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 67
    .line 68
    :cond_0
    sget p1, Lcom/startshorts/androidplayer/R$id;->third_label_viewstub:I

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Landroid/view/ViewStub;

    .line 75
    .line 76
    if-eqz p1, :cond_1

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    goto :goto_0

    .line 83
    :cond_1
    const/4 p1, 0x0

    .line 84
    :goto_0
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->h:Landroid/view/View;

    .line 85
    .line 86
    return-void
.end method

.method public v(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V
    .locals 9
    .param p1    # Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    const-string v0, "sku"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->j:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getPayment()Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/16 v1, 0x2b

    .line 13
    .line 14
    const/16 v2, 0x8

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    if-eqz v0, :cond_13

    .line 19
    .line 20
    sget-object v5, Lqf/h;->a:Lqf/h;

    .line 21
    .line 22
    invoke-virtual {v5, v0}, Lqf/h;->m(Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;)Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-eqz v5, :cond_13

    .line 27
    .line 28
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->h:Landroid/view/View;

    .line 29
    .line 30
    if-eqz p1, :cond_6

    .line 31
    .line 32
    sget v5, Lcom/startshorts/androidplayer/R$id;->iv_ttp_logo:I

    .line 33
    .line 34
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    check-cast v5, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 39
    .line 40
    iput-object v5, p0, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->i:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getLabelIcon()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    if-eqz v5, :cond_1

    .line 47
    .line 48
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-nez v6, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    sget-object v6, Lkk/f;->a:Lkk/f;

    .line 56
    .line 57
    iget-object v7, p0, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->i:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 58
    .line 59
    new-instance v8, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 60
    .line 61
    invoke-direct {v8}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v8, v5}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 68
    .line 69
    invoke-virtual {v6, v7, v8}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 70
    .line 71
    .line 72
    iget-object v5, p0, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->i:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 73
    .line 74
    if-eqz v5, :cond_2

    .line 75
    .line 76
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->i:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 81
    .line 82
    if-eqz v5, :cond_2

    .line 83
    .line 84
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .line 86
    .line 87
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getDiscountPercent()Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    if-eqz v5, :cond_3

    .line 92
    .line 93
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    goto :goto_2

    .line 98
    :cond_3
    move v5, v4

    .line 99
    :goto_2
    if-lez v5, :cond_5

    .line 100
    .line 101
    sget v6, Lcom/startshorts/androidplayer/R$id;->tv_ttp_label:I

    .line 102
    .line 103
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    check-cast v6, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 108
    .line 109
    if-eqz v6, :cond_4

    .line 110
    .line 111
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    sget v8, Lcom/startshorts/androidplayer/R$string;->payment_discount_coins_label:I

    .line 116
    .line 117
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-virtual {v7, v8, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    .line 131
    .line 132
    :cond_4
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 133
    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_5
    const/4 v5, 0x4

    .line 137
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 138
    .line 139
    .line 140
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 141
    .line 142
    if-eqz p1, :cond_7

    .line 143
    .line 144
    new-instance v5, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getCoins()Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v6, " Coins"

    .line 157
    .line 158
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    .line 167
    .line 168
    :cond_7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->isFirstBuy()Ljava/lang/Boolean;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 173
    .line 174
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    if-eqz p1, :cond_9

    .line 179
    .line 180
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getFirstAmount()Ljava/lang/Float;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    const/4 v5, 0x0

    .line 185
    if-eqz p1, :cond_8

    .line 186
    .line 187
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    goto :goto_4

    .line 192
    :cond_8
    move p1, v5

    .line 193
    :goto_4
    cmpl-float p1, p1, v5

    .line 194
    .line 195
    if-lez p1, :cond_9

    .line 196
    .line 197
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 198
    .line 199
    if-eqz p1, :cond_a

    .line 200
    .line 201
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getDiscountPriceText()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    .line 207
    .line 208
    goto :goto_5

    .line 209
    :cond_9
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 210
    .line 211
    if-eqz p1, :cond_a

    .line 212
    .line 213
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getOriginPriceText()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    .line 219
    .line 220
    :cond_a
    :goto_5
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 221
    .line 222
    if-nez p1, :cond_d

    .line 223
    .line 224
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->c:Landroid/view/ViewStub;

    .line 225
    .line 226
    if-eqz p1, :cond_b

    .line 227
    .line 228
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    goto :goto_6

    .line 233
    :cond_b
    move-object p1, v3

    .line 234
    :goto_6
    instance-of v4, p1, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 235
    .line 236
    if-eqz v4, :cond_c

    .line 237
    .line 238
    move-object v3, p1

    .line 239
    check-cast v3, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 240
    .line 241
    :cond_c
    iput-object v3, p0, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 242
    .line 243
    goto :goto_7

    .line 244
    :cond_d
    if-eqz p1, :cond_e

    .line 245
    .line 246
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 247
    .line 248
    .line 249
    :cond_e
    :goto_7
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 250
    .line 251
    if-eqz p1, :cond_f

    .line 252
    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getBonus()Ljava/lang/Integer;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    const-string v1, " Bonus"

    .line 269
    .line 270
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    .line 279
    .line 280
    :cond_f
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getBonus()Ljava/lang/Integer;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    if-nez p1, :cond_10

    .line 285
    .line 286
    goto :goto_8

    .line 287
    :cond_10
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 288
    .line 289
    .line 290
    move-result p1

    .line 291
    if-nez p1, :cond_11

    .line 292
    .line 293
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 294
    .line 295
    if-eqz p1, :cond_12

    .line 296
    .line 297
    invoke-static {p1}, Ljk/b0;->d(Landroid/view/View;)V

    .line 298
    .line 299
    .line 300
    goto :goto_9

    .line 301
    :cond_11
    :goto_8
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 302
    .line 303
    if-eqz p1, :cond_12

    .line 304
    .line 305
    invoke-static {p1}, Ljk/b0;->l(Landroid/view/View;)V

    .line 306
    .line 307
    .line 308
    :cond_12
    :goto_9
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 309
    .line 310
    if-eqz p1, :cond_2c

    .line 311
    .line 312
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 313
    .line 314
    .line 315
    goto/16 :goto_14

    .line 316
    .line 317
    :cond_13
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->isSubscriptValid()Z

    .line 318
    .line 319
    .line 320
    move-result v0

    .line 321
    if-eqz v0, :cond_18

    .line 322
    .line 323
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 324
    .line 325
    if-nez v0, :cond_16

    .line 326
    .line 327
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->f:Landroid/view/ViewStub;

    .line 328
    .line 329
    if-eqz v0, :cond_14

    .line 330
    .line 331
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    goto :goto_a

    .line 336
    :cond_14
    move-object v0, v3

    .line 337
    :goto_a
    instance-of v5, v0, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 338
    .line 339
    if-eqz v5, :cond_15

    .line 340
    .line 341
    check-cast v0, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 342
    .line 343
    goto :goto_b

    .line 344
    :cond_15
    move-object v0, v3

    .line 345
    :goto_b
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 346
    .line 347
    :cond_16
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 348
    .line 349
    if-eqz v0, :cond_17

    .line 350
    .line 351
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSubscript()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v5

    .line 355
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    .line 357
    .line 358
    :cond_17
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 359
    .line 360
    if-eqz v0, :cond_19

    .line 361
    .line 362
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 363
    .line 364
    .line 365
    goto :goto_c

    .line 366
    :cond_18
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 367
    .line 368
    if-eqz v0, :cond_19

    .line 369
    .line 370
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 371
    .line 372
    .line 373
    :cond_19
    :goto_c
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 374
    .line 375
    const/16 v5, 0x20

    .line 376
    .line 377
    if-eqz v0, :cond_1a

    .line 378
    .line 379
    new-instance v6, Ljava/lang/StringBuilder;

    .line 380
    .line 381
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 382
    .line 383
    .line 384
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getCoins()I

    .line 385
    .line 386
    .line 387
    move-result v7

    .line 388
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getCoinsUnit()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v7

    .line 398
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v6

    .line 405
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    .line 407
    .line 408
    :cond_1a
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuType()I

    .line 409
    .line 410
    .line 411
    move-result v0

    .line 412
    const/4 v6, 0x7

    .line 413
    if-ne v0, v6, :cond_1c

    .line 414
    .line 415
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getKeepGiveCoins()Ljava/lang/Integer;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    if-nez v0, :cond_1b

    .line 420
    .line 421
    goto :goto_d

    .line 422
    :cond_1b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 423
    .line 424
    .line 425
    move-result v0

    .line 426
    if-nez v0, :cond_1c

    .line 427
    .line 428
    goto :goto_e

    .line 429
    :cond_1c
    :goto_d
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuType()I

    .line 430
    .line 431
    .line 432
    move-result v0

    .line 433
    if-eq v0, v6, :cond_1e

    .line 434
    .line 435
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getProductGiveCoins()Ljava/lang/Integer;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    if-nez v0, :cond_1d

    .line 440
    .line 441
    goto :goto_f

    .line 442
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 443
    .line 444
    .line 445
    move-result v0

    .line 446
    if-nez v0, :cond_1e

    .line 447
    .line 448
    :goto_e
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 449
    .line 450
    if-eqz v0, :cond_2a

    .line 451
    .line 452
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 453
    .line 454
    .line 455
    goto/16 :goto_13

    .line 456
    .line 457
    :cond_1e
    :goto_f
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 458
    .line 459
    if-nez v0, :cond_21

    .line 460
    .line 461
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->c:Landroid/view/ViewStub;

    .line 462
    .line 463
    if-eqz v0, :cond_1f

    .line 464
    .line 465
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    goto :goto_10

    .line 470
    :cond_1f
    move-object v0, v3

    .line 471
    :goto_10
    instance-of v7, v0, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 472
    .line 473
    if-eqz v7, :cond_20

    .line 474
    .line 475
    move-object v3, v0

    .line 476
    check-cast v3, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 477
    .line 478
    :cond_20
    iput-object v3, p0, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 479
    .line 480
    goto :goto_11

    .line 481
    :cond_21
    if-eqz v0, :cond_22

    .line 482
    .line 483
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 484
    .line 485
    .line 486
    :cond_22
    :goto_11
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuType()I

    .line 487
    .line 488
    .line 489
    move-result v0

    .line 490
    if-ne v0, v6, :cond_26

    .line 491
    .line 492
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getKeepGiveCoins()Ljava/lang/Integer;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    if-eqz v0, :cond_23

    .line 497
    .line 498
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 499
    .line 500
    .line 501
    move-result v4

    .line 502
    :cond_23
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 503
    .line 504
    if-eqz v0, :cond_24

    .line 505
    .line 506
    new-instance v3, Ljava/lang/StringBuilder;

    .line 507
    .line 508
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 509
    .line 510
    .line 511
    new-instance v6, Ljava/lang/StringBuilder;

    .line 512
    .line 513
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v1

    .line 526
    invoke-static {v1}, Ljk/v;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v1

    .line 530
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGiveCoinsUnit()Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v1

    .line 540
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v1

    .line 547
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    .line 549
    .line 550
    :cond_24
    if-nez v4, :cond_25

    .line 551
    .line 552
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 553
    .line 554
    if-eqz v0, :cond_2a

    .line 555
    .line 556
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 557
    .line 558
    .line 559
    goto :goto_13

    .line 560
    :cond_25
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 561
    .line 562
    if-eqz v0, :cond_2a

    .line 563
    .line 564
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 565
    .line 566
    .line 567
    goto :goto_13

    .line 568
    :cond_26
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getProductGiveCoins()Ljava/lang/Integer;

    .line 569
    .line 570
    .line 571
    move-result-object v0

    .line 572
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 573
    .line 574
    if-eqz v3, :cond_27

    .line 575
    .line 576
    new-instance v4, Ljava/lang/StringBuilder;

    .line 577
    .line 578
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 579
    .line 580
    .line 581
    new-instance v6, Ljava/lang/StringBuilder;

    .line 582
    .line 583
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 584
    .line 585
    .line 586
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 587
    .line 588
    .line 589
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v1

    .line 596
    invoke-static {v1}, Ljk/v;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v1

    .line 600
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 604
    .line 605
    .line 606
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGiveCoinsUnit()Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v1

    .line 610
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v1

    .line 617
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    .line 619
    .line 620
    :cond_27
    if-nez v0, :cond_28

    .line 621
    .line 622
    goto :goto_12

    .line 623
    :cond_28
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 624
    .line 625
    .line 626
    move-result v0

    .line 627
    if-nez v0, :cond_29

    .line 628
    .line 629
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 630
    .line 631
    if-eqz v0, :cond_2a

    .line 632
    .line 633
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 634
    .line 635
    .line 636
    goto :goto_13

    .line 637
    :cond_29
    :goto_12
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 638
    .line 639
    if-eqz v0, :cond_2a

    .line 640
    .line 641
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 642
    .line 643
    .line 644
    :cond_2a
    :goto_13
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 645
    .line 646
    if-eqz v0, :cond_2b

    .line 647
    .line 648
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getPriceText()Ljava/lang/String;

    .line 649
    .line 650
    .line 651
    move-result-object p1

    .line 652
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 653
    .line 654
    .line 655
    :cond_2b
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->h:Landroid/view/View;

    .line 656
    .line 657
    if-eqz p1, :cond_2c

    .line 658
    .line 659
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 660
    .line 661
    .line 662
    :cond_2c
    :goto_14
    return-void
.end method

.method public final w(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "sku"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/view/purchase/BaseCoinSkuView;->v(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p1

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "initSafely exception -> "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;->r(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method
