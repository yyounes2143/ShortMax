.class public final Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "PaymentMethodBtn2View.kt"

# interfaces
.implements Ltj/a;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPaymentMethodBtn2View.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentMethodBtn2View.kt\ncom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,419:1\n254#2:420\n774#3:421\n865#3,2:422\n1611#3,9:424\n1863#3:433\n1864#3:436\n1620#3:437\n295#3,2:438\n295#3,2:440\n774#3:442\n865#3,2:443\n1971#3,14:445\n774#3:459\n865#3,2:460\n1611#3,9:462\n1863#3:471\n1864#3:473\n1620#3:474\n295#3,2:475\n295#3,2:477\n774#3:479\n865#3,2:480\n1#4:434\n1#4:435\n1#4:472\n*S KotlinDebug\n*F\n+ 1 PaymentMethodBtn2View.kt\ncom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View\n*L\n68#1:420\n252#1:421\n252#1:422,2\n252#1:424,9\n252#1:433\n252#1:436\n252#1:437\n258#1:438,2\n264#1:440,2\n299#1:442\n299#1:443,2\n299#1:445,14\n353#1:459\n353#1:460,2\n353#1:462,9\n353#1:471\n353#1:473\n353#1:474\n359#1:475,2\n365#1:477,2\n389#1:479\n389#1:480,2\n252#1:435\n353#1:472\n*E\n"
    }
.end annotation


# instance fields
.field private a:I

.field private final b:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
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

    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x2

    .line 5
    iput p2, p0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->a:I

    .line 6
    new-instance p2, Ltj/d;

    invoke-direct {p2, p1, p0}, Ltj/d;-><init>(Landroid/content/Context;Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;)V

    invoke-static {p2}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    move-result-object p1

    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->b:Lms/i;

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

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->b:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic q(Landroid/content/Context;Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;)Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->s(Landroid/content/Context;Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;)Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic r(Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->a:I

    .line 2
    .line 3
    return p0
.end method

.method private static final s(Landroid/content/Context;Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;)Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-static {p0, p1, v0}, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string p1, "inflate(...)"

    .line 11
    .line 12
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method private final t(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getProductExtendList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_7

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Iterable;

    .line 9
    .line 10
    new-instance v2, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_2

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    move-object v4, v3

    .line 30
    check-cast v4, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getPayType()Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    sget-object v5, Lqf/e;->a:Lqf/e;

    .line 37
    .line 38
    invoke-virtual {v5}, Lqf/e;->a()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-nez v4, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eq v4, v5, :cond_0

    .line 50
    .line 51
    :goto_1
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_6

    .line 69
    .line 70
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 75
    .line 76
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->isFirstBuy()Ljava/lang/Boolean;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 81
    .line 82
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-eqz v4, :cond_4

    .line 87
    .line 88
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getFirstAmount()Ljava/lang/Float;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    goto :goto_3

    .line 93
    :cond_4
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getPayAmount()Ljava/lang/Float;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    :goto_3
    if-eqz v3, :cond_5

    .line 98
    .line 99
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    const/4 v5, 0x0

    .line 104
    cmpl-float v4, v4, v5

    .line 105
    .line 106
    if-lez v4, :cond_5

    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_5
    move-object v3, v1

    .line 110
    :goto_4
    if-eqz v3, :cond_3

    .line 111
    .line 112
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_6
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->H0(Ljava/lang/Iterable;)Ljava/lang/Float;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    if-eqz v0, :cond_7

    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    goto :goto_5

    .line 127
    :cond_7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getOriginalPrice()F

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    :goto_5
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getProductExtendList()Ljava/util/List;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    if-eqz v2, :cond_b

    .line 136
    .line 137
    check-cast v2, Ljava/lang/Iterable;

    .line 138
    .line 139
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-eqz v3, :cond_a

    .line 148
    .line 149
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    move-object v4, v3

    .line 154
    check-cast v4, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 155
    .line 156
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getCurrencyUnit()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    if-eqz v5, :cond_8

    .line 161
    .line 162
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getPayType()Ljava/lang/Integer;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    sget-object v5, Lqf/e;->a:Lqf/e;

    .line 167
    .line 168
    invoke-virtual {v5}, Lqf/e;->a()I

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    if-nez v4, :cond_9

    .line 173
    .line 174
    goto :goto_6

    .line 175
    :cond_9
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    if-eq v4, v5, :cond_8

    .line 180
    .line 181
    goto :goto_6

    .line 182
    :cond_a
    move-object v3, v1

    .line 183
    :goto_6
    check-cast v3, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 184
    .line 185
    if-eqz v3, :cond_b

    .line 186
    .line 187
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getCurrencyUnit()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    goto :goto_7

    .line 192
    :cond_b
    move-object v2, v1

    .line 193
    :goto_7
    if-nez v2, :cond_f

    .line 194
    .line 195
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getProductExtendList()Ljava/util/List;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    if-eqz v2, :cond_e

    .line 200
    .line 201
    check-cast v2, Ljava/lang/Iterable;

    .line 202
    .line 203
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 208
    .line 209
    .line 210
    move-result v3

    .line 211
    if-eqz v3, :cond_d

    .line 212
    .line 213
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    move-object v4, v3

    .line 218
    check-cast v4, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 219
    .line 220
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getCurrency()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    if-eqz v4, :cond_c

    .line 225
    .line 226
    goto :goto_8

    .line 227
    :cond_d
    move-object v3, v1

    .line 228
    :goto_8
    check-cast v3, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 229
    .line 230
    if-eqz v3, :cond_e

    .line 231
    .line 232
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getCurrency()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    goto :goto_9

    .line 237
    :cond_e
    move-object v2, v1

    .line 238
    :goto_9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    const-string v2, "$ "

    .line 247
    .line 248
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    goto :goto_a

    .line 259
    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    :goto_a
    invoke-static {v0}, Ljk/v;->q(Ljava/lang/String;)Lkotlin/Pair;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    if-eqz v2, :cond_11

    .line 279
    .line 280
    invoke-virtual {v2}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    check-cast v0, Ljava/lang/CharSequence;

    .line 285
    .line 286
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    if-nez v0, :cond_10

    .line 291
    .line 292
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->n:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 297
    .line 298
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 299
    .line 300
    .line 301
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->n:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 306
    .line 307
    invoke-virtual {v2}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    check-cast v3, Ljava/lang/CharSequence;

    .line 312
    .line 313
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    .line 315
    .line 316
    goto :goto_b

    .line 317
    :cond_10
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->n:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 322
    .line 323
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 324
    .line 325
    .line 326
    :goto_b
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 331
    .line 332
    invoke-virtual {v2}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    check-cast v2, Ljava/lang/CharSequence;

    .line 337
    .line 338
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    .line 340
    .line 341
    goto :goto_c

    .line 342
    :cond_11
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 347
    .line 348
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    .line 350
    .line 351
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->n:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 356
    .line 357
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 358
    .line 359
    .line 360
    :goto_c
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 365
    .line 366
    const/16 v2, 0x8

    .line 367
    .line 368
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getProductExtendList()Ljava/util/List;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    const/4 v2, 0x0

    .line 376
    if-eqz v0, :cond_1a

    .line 377
    .line 378
    check-cast v0, Ljava/lang/Iterable;

    .line 379
    .line 380
    new-instance v3, Ljava/util/ArrayList;

    .line 381
    .line 382
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 383
    .line 384
    .line 385
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    :cond_12
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 390
    .line 391
    .line 392
    move-result v4

    .line 393
    if-eqz v4, :cond_14

    .line 394
    .line 395
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v4

    .line 399
    move-object v5, v4

    .line 400
    check-cast v5, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 401
    .line 402
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getPayType()Ljava/lang/Integer;

    .line 403
    .line 404
    .line 405
    move-result-object v5

    .line 406
    sget-object v6, Lqf/e;->a:Lqf/e;

    .line 407
    .line 408
    invoke-virtual {v6}, Lqf/e;->a()I

    .line 409
    .line 410
    .line 411
    move-result v6

    .line 412
    if-nez v5, :cond_13

    .line 413
    .line 414
    goto :goto_e

    .line 415
    :cond_13
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 416
    .line 417
    .line 418
    move-result v5

    .line 419
    if-eq v5, v6, :cond_12

    .line 420
    .line 421
    :goto_e
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    goto :goto_d

    .line 425
    :cond_14
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 430
    .line 431
    .line 432
    move-result v3

    .line 433
    if-nez v3, :cond_15

    .line 434
    .line 435
    move-object v3, v1

    .line 436
    goto :goto_12

    .line 437
    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v3

    .line 441
    check-cast v3, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 442
    .line 443
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getDiscountPercent()Ljava/lang/Integer;

    .line 444
    .line 445
    .line 446
    move-result-object v3

    .line 447
    if-eqz v3, :cond_16

    .line 448
    .line 449
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 450
    .line 451
    .line 452
    move-result v3

    .line 453
    goto :goto_f

    .line 454
    :cond_16
    move v3, v2

    .line 455
    :goto_f
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 456
    .line 457
    .line 458
    move-result-object v3

    .line 459
    :cond_17
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 460
    .line 461
    .line 462
    move-result v4

    .line 463
    if-eqz v4, :cond_19

    .line 464
    .line 465
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object v4

    .line 469
    check-cast v4, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 470
    .line 471
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getDiscountPercent()Ljava/lang/Integer;

    .line 472
    .line 473
    .line 474
    move-result-object v4

    .line 475
    if-eqz v4, :cond_18

    .line 476
    .line 477
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 478
    .line 479
    .line 480
    move-result v4

    .line 481
    goto :goto_11

    .line 482
    :cond_18
    move v4, v2

    .line 483
    :goto_11
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 484
    .line 485
    .line 486
    move-result-object v4

    .line 487
    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 488
    .line 489
    .line 490
    move-result v5

    .line 491
    if-gez v5, :cond_17

    .line 492
    .line 493
    move-object v3, v4

    .line 494
    goto :goto_10

    .line 495
    :cond_19
    :goto_12
    if-eqz v3, :cond_1a

    .line 496
    .line 497
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 498
    .line 499
    .line 500
    move-result v0

    .line 501
    goto :goto_13

    .line 502
    :cond_1a
    move v0, v2

    .line 503
    :goto_13
    if-lez v0, :cond_1b

    .line 504
    .line 505
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 506
    .line 507
    .line 508
    move-result-object v3

    .line 509
    iget-object v3, v3, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 510
    .line 511
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 512
    .line 513
    .line 514
    move-result-object v4

    .line 515
    sget v5, Lcom/startshorts/androidplayer/R$string;->payment_discount_coins_label:I

    .line 516
    .line 517
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    move-result-object v0

    .line 525
    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    .line 531
    .line 532
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 537
    .line 538
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 539
    .line 540
    .line 541
    goto :goto_14

    .line 542
    :cond_1b
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 547
    .line 548
    const/4 v3, 0x4

    .line 549
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 550
    .line 551
    .line 552
    :goto_14
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 553
    .line 554
    .line 555
    move-result-object v0

    .line 556
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 557
    .line 558
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 559
    .line 560
    .line 561
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getPriceText()Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v0

    .line 565
    if-nez v0, :cond_1c

    .line 566
    .line 567
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getOriginPriceText()Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    :cond_1c
    if-eqz v0, :cond_1d

    .line 572
    .line 573
    invoke-static {v0}, Ljk/v;->q(Ljava/lang/String;)Lkotlin/Pair;

    .line 574
    .line 575
    .line 576
    move-result-object v1

    .line 577
    :cond_1d
    if-eqz v1, :cond_1f

    .line 578
    .line 579
    invoke-virtual {v1}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 580
    .line 581
    .line 582
    move-result-object p1

    .line 583
    check-cast p1, Ljava/lang/CharSequence;

    .line 584
    .line 585
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 586
    .line 587
    .line 588
    move-result p1

    .line 589
    if-nez p1, :cond_1e

    .line 590
    .line 591
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 592
    .line 593
    .line 594
    move-result-object p1

    .line 595
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->m:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 596
    .line 597
    invoke-static {p1}, Ljk/b0;->l(Landroid/view/View;)V

    .line 598
    .line 599
    .line 600
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 601
    .line 602
    .line 603
    move-result-object p1

    .line 604
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->m:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 605
    .line 606
    invoke-virtual {v1}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 607
    .line 608
    .line 609
    move-result-object v0

    .line 610
    check-cast v0, Ljava/lang/CharSequence;

    .line 611
    .line 612
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 613
    .line 614
    .line 615
    goto :goto_15

    .line 616
    :cond_1e
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 617
    .line 618
    .line 619
    move-result-object p1

    .line 620
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->m:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 621
    .line 622
    invoke-static {p1}, Ljk/b0;->d(Landroid/view/View;)V

    .line 623
    .line 624
    .line 625
    :goto_15
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 626
    .line 627
    .line 628
    move-result-object p1

    .line 629
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->k:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 630
    .line 631
    invoke-virtual {v1}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 632
    .line 633
    .line 634
    move-result-object v0

    .line 635
    check-cast v0, Ljava/lang/CharSequence;

    .line 636
    .line 637
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 638
    .line 639
    .line 640
    goto :goto_16

    .line 641
    :cond_1f
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 642
    .line 643
    .line 644
    move-result-object v0

    .line 645
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->k:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 646
    .line 647
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getOriginPriceText()Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object p1

    .line 651
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 652
    .line 653
    .line 654
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 655
    .line 656
    .line 657
    move-result-object p1

    .line 658
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->m:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 659
    .line 660
    invoke-static {p1}, Ljk/b0;->d(Landroid/view/View;)V

    .line 661
    .line 662
    .line 663
    :goto_16
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 664
    .line 665
    .line 666
    move-result-object p1

    .line 667
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->j:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 668
    .line 669
    invoke-static {p1}, Ljk/b0;->d(Landroid/view/View;)V

    .line 670
    .line 671
    .line 672
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 673
    .line 674
    .line 675
    move-result-object p1

    .line 676
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->j:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 677
    .line 678
    invoke-static {p1}, Ljk/b0;->d(Landroid/view/View;)V

    .line 679
    .line 680
    .line 681
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 682
    .line 683
    .line 684
    move-result-object p1

    .line 685
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->l:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 686
    .line 687
    invoke-static {p1}, Ljk/b0;->d(Landroid/view/View;)V

    .line 688
    .line 689
    .line 690
    return-void
.end method

.method private final u(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/a;Ljava/lang/String;)V
    .locals 14

    .line 1
    move-object v11, p0

    .line 2
    move-object/from16 v6, p2

    .line 3
    .line 4
    move-object/from16 v7, p3

    .line 5
    .line 6
    const/16 v0, 0x8

    .line 7
    .line 8
    if-nez v7, :cond_0

    .line 9
    .line 10
    if-nez v6, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    sget-object v1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->N0()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->z0()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iget v3, v11, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->a:I

    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    const/4 v5, 0x2

    .line 30
    const/4 v8, 0x0

    .line 31
    if-ne v3, v5, :cond_4

    .line 32
    .line 33
    if-eqz v7, :cond_1

    .line 34
    .line 35
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getInSubscription()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move v3, v8

    .line 41
    :goto_0
    if-eqz v1, :cond_2

    .line 42
    .line 43
    if-nez p4, :cond_2

    .line 44
    .line 45
    if-nez v3, :cond_2

    .line 46
    .line 47
    move v9, v4

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    move v9, v8

    .line 50
    :goto_1
    if-nez v3, :cond_3

    .line 51
    .line 52
    if-nez v2, :cond_3

    .line 53
    .line 54
    if-eqz v9, :cond_4

    .line 55
    .line 56
    :cond_3
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_4
    invoke-virtual {p0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    iget-object v3, v3, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 68
    .line 69
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    iget-object v3, v3, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 77
    .line 78
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 79
    .line 80
    .line 81
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    iget-object v3, v3, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->i:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 86
    .line 87
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    iget-object v3, v3, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 95
    .line 96
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    iget v3, v11, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->a:I

    .line 100
    .line 101
    if-eq v3, v4, :cond_6

    .line 102
    .line 103
    if-eq v3, v5, :cond_5

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_5
    if-eqz v7, :cond_7

    .line 107
    .line 108
    sget-object v3, Lqf/h;->a:Lqf/h;

    .line 109
    .line 110
    invoke-virtual {v3, v7}, Lqf/h;->o(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    invoke-direct {p0, v7}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->w(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 115
    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_6
    if-eqz v6, :cond_7

    .line 119
    .line 120
    sget-object v3, Lqf/h;->a:Lqf/h;

    .line 121
    .line 122
    invoke-virtual {v3, v6}, Lqf/h;->n(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)Z

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    invoke-direct {p0, v6}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->t(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_7
    :goto_2
    move v3, v8

    .line 131
    :goto_3
    if-eqz v1, :cond_8

    .line 132
    .line 133
    if-nez v2, :cond_8

    .line 134
    .line 135
    iget v1, v11, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->a:I

    .line 136
    .line 137
    if-ne v1, v5, :cond_8

    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_8
    move v4, v8

    .line 141
    :goto_4
    if-eqz v3, :cond_a

    .line 142
    .line 143
    if-eqz v4, :cond_9

    .line 144
    .line 145
    goto :goto_5

    .line 146
    :cond_9
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 151
    .line 152
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 153
    .line 154
    .line 155
    goto :goto_6

    .line 156
    :cond_a
    :goto_5
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 161
    .line 162
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 163
    .line 164
    .line 165
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 170
    .line 171
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 172
    .line 173
    .line 174
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->i:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 179
    .line 180
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 181
    .line 182
    .line 183
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 188
    .line 189
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 190
    .line 191
    .line 192
    :goto_6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    iget-object v8, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 197
    .line 198
    new-instance v9, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View$a;

    .line 199
    .line 200
    move-object v0, v9

    .line 201
    move-object v1, p0

    .line 202
    move-object/from16 v2, p9

    .line 203
    .line 204
    move-object/from16 v3, p2

    .line 205
    .line 206
    move-object/from16 v4, p3

    .line 207
    .line 208
    move-object/from16 v5, p4

    .line 209
    .line 210
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View$a;-><init>(Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/a;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    .line 215
    .line 216
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    iget-object v8, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->i:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 221
    .line 222
    new-instance v9, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View$b;

    .line 223
    .line 224
    move-object v0, v9

    .line 225
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View$b;-><init>(Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/a;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    .line 230
    .line 231
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    iget-object v12, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 236
    .line 237
    new-instance v13, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View$c;

    .line 238
    .line 239
    move-object v0, v13

    .line 240
    move-object/from16 v5, p6

    .line 241
    .line 242
    move-object/from16 v6, p5

    .line 243
    .line 244
    move-object/from16 v7, p8

    .line 245
    .line 246
    move-object/from16 v8, p7

    .line 247
    .line 248
    move-object v9, p1

    .line 249
    move-object/from16 v10, p10

    .line 250
    .line 251
    invoke-direct/range {v0 .. v10}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View$c;-><init>(Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/a;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v12, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    .line 256
    .line 257
    return-void
.end method

.method static synthetic v(Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/a;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 10

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object v3, p3

    :goto_1
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_2

    move-object v4, v2

    goto :goto_2

    :cond_2
    move-object v4, p4

    :goto_2
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_3

    move-object v5, v2

    goto :goto_3

    :cond_3
    move-object v5, p5

    :goto_3
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_4

    move-object v6, v2

    goto :goto_4

    :cond_4
    move-object/from16 v6, p6

    :goto_4
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_5

    move-object v7, v2

    goto :goto_5

    :cond_5
    move-object/from16 v7, p7

    :goto_5
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_6

    move-object v8, v2

    goto :goto_6

    :cond_6
    move-object/from16 v8, p8

    :goto_6
    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_7

    move-object v9, v2

    goto :goto_7

    :cond_7
    move-object/from16 v9, p9

    :goto_7
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    goto :goto_8

    :cond_8
    move-object/from16 v2, p10

    :goto_8
    move-object p2, p0

    move-object p3, p1

    move-object p4, v1

    move-object p5, v3

    move-object/from16 p6, v4

    move-object/from16 p7, v5

    move-object/from16 p8, v6

    move-object/from16 p9, v7

    move-object/from16 p10, v8

    move-object/from16 p11, v9

    move-object/from16 p12, v2

    .line 1
    invoke-direct/range {p2 .. p12}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->u(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/a;Ljava/lang/String;)V

    return-void
.end method

.method private final w(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 14

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getProductExtendList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_7

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Iterable;

    .line 9
    .line 10
    new-instance v2, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_2

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    move-object v4, v3

    .line 30
    check-cast v4, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getPayType()Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    sget-object v5, Lqf/e;->a:Lqf/e;

    .line 37
    .line 38
    invoke-virtual {v5}, Lqf/e;->a()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-nez v4, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eq v4, v5, :cond_0

    .line 50
    .line 51
    :goto_1
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_6

    .line 69
    .line 70
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 75
    .line 76
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->isFirstBuy()Ljava/lang/Boolean;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 81
    .line 82
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-eqz v4, :cond_4

    .line 87
    .line 88
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getFirstAmount()Ljava/lang/Float;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    goto :goto_3

    .line 93
    :cond_4
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getPayAmount()Ljava/lang/Float;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    :goto_3
    if-eqz v3, :cond_5

    .line 98
    .line 99
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    const/4 v5, 0x0

    .line 104
    cmpl-float v4, v4, v5

    .line 105
    .line 106
    if-lez v4, :cond_5

    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_5
    move-object v3, v1

    .line 110
    :goto_4
    if-eqz v3, :cond_3

    .line 111
    .line 112
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_6
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->H0(Ljava/lang/Iterable;)Ljava/lang/Float;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    if-eqz v0, :cond_7

    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    goto :goto_5

    .line 127
    :cond_7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getPayAmount()F

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    :goto_5
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getProductExtendList()Ljava/util/List;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    if-eqz v2, :cond_b

    .line 136
    .line 137
    check-cast v2, Ljava/lang/Iterable;

    .line 138
    .line 139
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-eqz v3, :cond_a

    .line 148
    .line 149
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    move-object v4, v3

    .line 154
    check-cast v4, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 155
    .line 156
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getCurrencyUnit()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    if-eqz v5, :cond_8

    .line 161
    .line 162
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getPayType()Ljava/lang/Integer;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    sget-object v5, Lqf/e;->a:Lqf/e;

    .line 167
    .line 168
    invoke-virtual {v5}, Lqf/e;->a()I

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    if-nez v4, :cond_9

    .line 173
    .line 174
    goto :goto_6

    .line 175
    :cond_9
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    if-eq v4, v5, :cond_8

    .line 180
    .line 181
    goto :goto_6

    .line 182
    :cond_a
    move-object v3, v1

    .line 183
    :goto_6
    check-cast v3, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 184
    .line 185
    if-eqz v3, :cond_b

    .line 186
    .line 187
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getCurrencyUnit()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    goto :goto_7

    .line 192
    :cond_b
    move-object v2, v1

    .line 193
    :goto_7
    if-nez v2, :cond_f

    .line 194
    .line 195
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getProductExtendList()Ljava/util/List;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    if-eqz v2, :cond_e

    .line 200
    .line 201
    check-cast v2, Ljava/lang/Iterable;

    .line 202
    .line 203
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 208
    .line 209
    .line 210
    move-result v3

    .line 211
    if-eqz v3, :cond_d

    .line 212
    .line 213
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    move-object v4, v3

    .line 218
    check-cast v4, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 219
    .line 220
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getCurrency()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    if-eqz v4, :cond_c

    .line 225
    .line 226
    goto :goto_8

    .line 227
    :cond_d
    move-object v3, v1

    .line 228
    :goto_8
    check-cast v3, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 229
    .line 230
    if-eqz v3, :cond_e

    .line 231
    .line 232
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getCurrency()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    goto :goto_9

    .line 237
    :cond_e
    move-object v2, v1

    .line 238
    :goto_9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    const-string v2, "$ "

    .line 247
    .line 248
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    goto :goto_a

    .line 259
    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    :goto_a
    invoke-static {v0}, Ljk/v;->q(Ljava/lang/String;)Lkotlin/Pair;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    if-eqz v2, :cond_11

    .line 279
    .line 280
    invoke-virtual {v2}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    check-cast v0, Ljava/lang/CharSequence;

    .line 285
    .line 286
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    if-nez v0, :cond_10

    .line 291
    .line 292
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->n:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 297
    .line 298
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 299
    .line 300
    .line 301
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->n:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 306
    .line 307
    invoke-virtual {v2}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    check-cast v3, Ljava/lang/CharSequence;

    .line 312
    .line 313
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    .line 315
    .line 316
    goto :goto_b

    .line 317
    :cond_10
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->n:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 322
    .line 323
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 324
    .line 325
    .line 326
    :goto_b
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 331
    .line 332
    invoke-virtual {v2}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    check-cast v2, Ljava/lang/CharSequence;

    .line 337
    .line 338
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    .line 340
    .line 341
    goto :goto_c

    .line 342
    :cond_11
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 347
    .line 348
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    .line 350
    .line 351
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->n:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 356
    .line 357
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 358
    .line 359
    .line 360
    :goto_c
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 361
    .line 362
    .line 363
    move-result v0

    .line 364
    const-string v2, ""

    .line 365
    .line 366
    const/4 v3, 0x7

    .line 367
    const/4 v4, 0x6

    .line 368
    const/4 v5, 0x5

    .line 369
    const/4 v6, 0x2

    .line 370
    const/4 v7, 0x4

    .line 371
    const/4 v8, 0x1

    .line 372
    if-eq v0, v8, :cond_14

    .line 373
    .line 374
    if-eq v0, v6, :cond_13

    .line 375
    .line 376
    if-eq v0, v7, :cond_12

    .line 377
    .line 378
    if-eq v0, v5, :cond_14

    .line 379
    .line 380
    if-eq v0, v4, :cond_13

    .line 381
    .line 382
    if-eq v0, v3, :cond_12

    .line 383
    .line 384
    move-object v0, v2

    .line 385
    goto :goto_d

    .line 386
    :cond_12
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 387
    .line 388
    sget v9, Lcom/startshorts/androidplayer/R$string;->subs_type_year_unit:I

    .line 389
    .line 390
    invoke-virtual {v0, v9}, Lfk/u;->d(I)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    goto :goto_d

    .line 395
    :cond_13
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 396
    .line 397
    sget v9, Lcom/startshorts/androidplayer/R$string;->subs_type_month_unit:I

    .line 398
    .line 399
    invoke-virtual {v0, v9}, Lfk/u;->d(I)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    goto :goto_d

    .line 404
    :cond_14
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 405
    .line 406
    sget v9, Lcom/startshorts/androidplayer/R$string;->subs_type_week_unit:I

    .line 407
    .line 408
    invoke-virtual {v0, v9}, Lfk/u;->d(I)Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    :goto_d
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 413
    .line 414
    .line 415
    move-result v9

    .line 416
    if-nez v9, :cond_15

    .line 417
    .line 418
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 423
    .line 424
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 425
    .line 426
    .line 427
    goto :goto_e

    .line 428
    :cond_15
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 429
    .line 430
    .line 431
    move-result-object v9

    .line 432
    iget-object v9, v9, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 433
    .line 434
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    .line 436
    .line 437
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 442
    .line 443
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 444
    .line 445
    .line 446
    :goto_e
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getProductExtendList()Ljava/util/List;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    const/4 v9, 0x0

    .line 451
    if-eqz v0, :cond_1f

    .line 452
    .line 453
    check-cast v0, Ljava/lang/Iterable;

    .line 454
    .line 455
    new-instance v10, Ljava/util/ArrayList;

    .line 456
    .line 457
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 458
    .line 459
    .line 460
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    :cond_16
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 465
    .line 466
    .line 467
    move-result v11

    .line 468
    if-eqz v11, :cond_18

    .line 469
    .line 470
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v11

    .line 474
    move-object v12, v11

    .line 475
    check-cast v12, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 476
    .line 477
    invoke-virtual {v12}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getPayType()Ljava/lang/Integer;

    .line 478
    .line 479
    .line 480
    move-result-object v12

    .line 481
    sget-object v13, Lqf/e;->a:Lqf/e;

    .line 482
    .line 483
    invoke-virtual {v13}, Lqf/e;->a()I

    .line 484
    .line 485
    .line 486
    move-result v13

    .line 487
    if-nez v12, :cond_17

    .line 488
    .line 489
    goto :goto_10

    .line 490
    :cond_17
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 491
    .line 492
    .line 493
    move-result v12

    .line 494
    if-eq v12, v13, :cond_16

    .line 495
    .line 496
    :goto_10
    invoke-interface {v10, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 497
    .line 498
    .line 499
    goto :goto_f

    .line 500
    :cond_18
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 501
    .line 502
    .line 503
    move-result-object v0

    .line 504
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 505
    .line 506
    .line 507
    move-result v10

    .line 508
    if-nez v10, :cond_19

    .line 509
    .line 510
    move-object v10, v1

    .line 511
    goto :goto_13

    .line 512
    :cond_19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v10

    .line 516
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 517
    .line 518
    .line 519
    move-result v11

    .line 520
    if-nez v11, :cond_1a

    .line 521
    .line 522
    goto :goto_13

    .line 523
    :cond_1a
    move-object v11, v10

    .line 524
    check-cast v11, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 525
    .line 526
    invoke-virtual {v11}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getDiscountPercent()Ljava/lang/Integer;

    .line 527
    .line 528
    .line 529
    move-result-object v11

    .line 530
    if-eqz v11, :cond_1b

    .line 531
    .line 532
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 533
    .line 534
    .line 535
    move-result v11

    .line 536
    goto :goto_11

    .line 537
    :cond_1b
    move v11, v9

    .line 538
    :cond_1c
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 539
    .line 540
    .line 541
    move-result-object v12

    .line 542
    move-object v13, v12

    .line 543
    check-cast v13, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 544
    .line 545
    invoke-virtual {v13}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getDiscountPercent()Ljava/lang/Integer;

    .line 546
    .line 547
    .line 548
    move-result-object v13

    .line 549
    if-eqz v13, :cond_1d

    .line 550
    .line 551
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 552
    .line 553
    .line 554
    move-result v13

    .line 555
    goto :goto_12

    .line 556
    :cond_1d
    move v13, v9

    .line 557
    :goto_12
    if-ge v11, v13, :cond_1e

    .line 558
    .line 559
    move-object v10, v12

    .line 560
    move v11, v13

    .line 561
    :cond_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 562
    .line 563
    .line 564
    move-result v12

    .line 565
    if-nez v12, :cond_1c

    .line 566
    .line 567
    :goto_13
    check-cast v10, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 568
    .line 569
    goto :goto_14

    .line 570
    :cond_1f
    move-object v10, v1

    .line 571
    :goto_14
    if-eqz v10, :cond_20

    .line 572
    .line 573
    invoke-virtual {v10}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getDiscountPercent()Ljava/lang/Integer;

    .line 574
    .line 575
    .line 576
    move-result-object v0

    .line 577
    if-eqz v0, :cond_20

    .line 578
    .line 579
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 580
    .line 581
    .line 582
    move-result v0

    .line 583
    goto :goto_15

    .line 584
    :cond_20
    move v0, v9

    .line 585
    :goto_15
    if-lez v0, :cond_23

    .line 586
    .line 587
    new-instance v11, Ljava/lang/StringBuilder;

    .line 588
    .line 589
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 590
    .line 591
    .line 592
    if-eqz v10, :cond_21

    .line 593
    .line 594
    invoke-virtual {v10}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getDiscountPeriodNum()I

    .line 595
    .line 596
    .line 597
    move-result v10

    .line 598
    goto :goto_16

    .line 599
    :cond_21
    move v10, v9

    .line 600
    :goto_16
    if-le v10, v8, :cond_22

    .line 601
    .line 602
    sget-object v12, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->Companion:Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod$Companion;

    .line 603
    .line 604
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 605
    .line 606
    .line 607
    move-result v13

    .line 608
    invoke-virtual {v12, v10, v13}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod$Companion;->formatCycleCount(II)Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v10

    .line 612
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    const-string v10, " | "

    .line 616
    .line 617
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    :cond_22
    sget-object v10, Lfk/u;->a:Lfk/u;

    .line 621
    .line 622
    sget v12, Lcom/startshorts/androidplayer/R$string;->discount_label_off:I

    .line 623
    .line 624
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object v0

    .line 628
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 629
    .line 630
    .line 631
    move-result-object v0

    .line 632
    invoke-virtual {v10, v12, v0}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object v0

    .line 636
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    .line 638
    .line 639
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 640
    .line 641
    .line 642
    move-result-object v0

    .line 643
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 644
    .line 645
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 646
    .line 647
    .line 648
    move-result-object v10

    .line 649
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 650
    .line 651
    .line 652
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 653
    .line 654
    .line 655
    move-result-object v0

    .line 656
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 657
    .line 658
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 659
    .line 660
    .line 661
    goto :goto_17

    .line 662
    :cond_23
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 663
    .line 664
    .line 665
    move-result-object v0

    .line 666
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 667
    .line 668
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 669
    .line 670
    .line 671
    :goto_17
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 672
    .line 673
    .line 674
    move-result-object v0

    .line 675
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 676
    .line 677
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 678
    .line 679
    .line 680
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscount()Z

    .line 681
    .line 682
    .line 683
    move-result v0

    .line 684
    if-eqz v0, :cond_24

    .line 685
    .line 686
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getDiscountPriceText()Ljava/lang/String;

    .line 687
    .line 688
    .line 689
    move-result-object v0

    .line 690
    goto :goto_18

    .line 691
    :cond_24
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getOriginPriceText()Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v0

    .line 695
    :goto_18
    if-eqz v0, :cond_25

    .line 696
    .line 697
    invoke-static {v0}, Ljk/v;->q(Ljava/lang/String;)Lkotlin/Pair;

    .line 698
    .line 699
    .line 700
    move-result-object v1

    .line 701
    :cond_25
    if-eqz v1, :cond_27

    .line 702
    .line 703
    invoke-virtual {v1}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 704
    .line 705
    .line 706
    move-result-object v0

    .line 707
    check-cast v0, Ljava/lang/CharSequence;

    .line 708
    .line 709
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 710
    .line 711
    .line 712
    move-result v0

    .line 713
    if-nez v0, :cond_26

    .line 714
    .line 715
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 716
    .line 717
    .line 718
    move-result-object v0

    .line 719
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->m:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 720
    .line 721
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 722
    .line 723
    .line 724
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 725
    .line 726
    .line 727
    move-result-object v0

    .line 728
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->m:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 729
    .line 730
    invoke-virtual {v1}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 731
    .line 732
    .line 733
    move-result-object v9

    .line 734
    check-cast v9, Ljava/lang/CharSequence;

    .line 735
    .line 736
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 737
    .line 738
    .line 739
    goto :goto_19

    .line 740
    :cond_26
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 741
    .line 742
    .line 743
    move-result-object v0

    .line 744
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->m:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 745
    .line 746
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 747
    .line 748
    .line 749
    :goto_19
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 750
    .line 751
    .line 752
    move-result-object v0

    .line 753
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->k:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 754
    .line 755
    invoke-virtual {v1}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 756
    .line 757
    .line 758
    move-result-object v1

    .line 759
    check-cast v1, Ljava/lang/CharSequence;

    .line 760
    .line 761
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 762
    .line 763
    .line 764
    goto :goto_1a

    .line 765
    :cond_27
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 766
    .line 767
    .line 768
    move-result-object v0

    .line 769
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->k:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 770
    .line 771
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getOriginPriceText()Ljava/lang/String;

    .line 772
    .line 773
    .line 774
    move-result-object v1

    .line 775
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 776
    .line 777
    .line 778
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 779
    .line 780
    .line 781
    move-result-object v0

    .line 782
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->m:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 783
    .line 784
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 785
    .line 786
    .line 787
    :goto_1a
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 788
    .line 789
    .line 790
    move-result v0

    .line 791
    if-eq v0, v8, :cond_2a

    .line 792
    .line 793
    if-eq v0, v6, :cond_29

    .line 794
    .line 795
    if-eq v0, v7, :cond_28

    .line 796
    .line 797
    if-eq v0, v5, :cond_2a

    .line 798
    .line 799
    if-eq v0, v4, :cond_29

    .line 800
    .line 801
    if-eq v0, v3, :cond_28

    .line 802
    .line 803
    goto :goto_1b

    .line 804
    :cond_28
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 805
    .line 806
    .line 807
    move-result-object v0

    .line 808
    sget v1, Lcom/startshorts/androidplayer/R$string;->subs_type_year_unit:I

    .line 809
    .line 810
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 811
    .line 812
    .line 813
    move-result-object v2

    .line 814
    goto :goto_1b

    .line 815
    :cond_29
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 816
    .line 817
    .line 818
    move-result-object v0

    .line 819
    sget v1, Lcom/startshorts/androidplayer/R$string;->subs_type_month_unit:I

    .line 820
    .line 821
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 822
    .line 823
    .line 824
    move-result-object v2

    .line 825
    goto :goto_1b

    .line 826
    :cond_2a
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 827
    .line 828
    .line 829
    move-result-object v0

    .line 830
    sget v1, Lcom/startshorts/androidplayer/R$string;->subs_type_week_unit:I

    .line 831
    .line 832
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 833
    .line 834
    .line 835
    move-result-object v2

    .line 836
    :goto_1b
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 837
    .line 838
    .line 839
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 840
    .line 841
    .line 842
    move-result-object v0

    .line 843
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->j:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 844
    .line 845
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 846
    .line 847
    .line 848
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 849
    .line 850
    .line 851
    move-result-object v0

    .line 852
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->j:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 853
    .line 854
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 855
    .line 856
    .line 857
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscount()Z

    .line 858
    .line 859
    .line 860
    move-result v0

    .line 861
    if-eqz v0, :cond_2b

    .line 862
    .line 863
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 864
    .line 865
    .line 866
    move-result-object v0

    .line 867
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->l:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 868
    .line 869
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 870
    .line 871
    .line 872
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 873
    .line 874
    .line 875
    move-result-object v0

    .line 876
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->l:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 877
    .line 878
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getOriginPriceText()Ljava/lang/String;

    .line 879
    .line 880
    .line 881
    move-result-object p1

    .line 882
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 883
    .line 884
    .line 885
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 886
    .line 887
    .line 888
    move-result-object p1

    .line 889
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->l:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 890
    .line 891
    const-string v0, "tvGooglePayOrgPrice"

    .line 892
    .line 893
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 894
    .line 895
    .line 896
    invoke-static {p1, v8}, Ljk/y;->j(Landroid/widget/TextView;Z)V

    .line 897
    .line 898
    .line 899
    goto :goto_1c

    .line 900
    :cond_2b
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;

    .line 901
    .line 902
    .line 903
    move-result-object p1

    .line 904
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn2Binding;->l:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 905
    .line 906
    invoke-static {p1}, Ljk/b0;->d(Landroid/view/View;)V

    .line 907
    .line 908
    .line 909
    :goto_1c
    return-void
.end method


# virtual methods
.method public l(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/a;Ljava/lang/String;)V
    .locals 15
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "scene"

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    move-object v14, p0

    .line 10
    iput v0, v14, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->a:I

    .line 11
    .line 12
    const/16 v12, 0xc4

    .line 13
    .line 14
    const/4 v13, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v8, 0x0

    .line 18
    const/4 v9, 0x0

    .line 19
    move-object v1, p0

    .line 20
    move-object/from16 v3, p2

    .line 21
    .line 22
    move-object/from16 v6, p3

    .line 23
    .line 24
    move-object/from16 v7, p4

    .line 25
    .line 26
    move-object/from16 v10, p5

    .line 27
    .line 28
    move-object/from16 v11, p6

    .line 29
    .line 30
    invoke-static/range {v1 .. v13}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->v(Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/a;Ljava/lang/String;ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public n(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/a;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 15
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "scene"

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    move-object v14, p0

    .line 10
    iput v0, v14, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->a:I

    .line 11
    .line 12
    const/16 v12, 0xc2

    .line 13
    .line 14
    const/4 v13, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v8, 0x0

    .line 17
    const/4 v9, 0x0

    .line 18
    move-object v1, p0

    .line 19
    move-object/from16 v4, p2

    .line 20
    .line 21
    move-object/from16 v5, p7

    .line 22
    .line 23
    move-object/from16 v6, p3

    .line 24
    .line 25
    move-object/from16 v7, p4

    .line 26
    .line 27
    move-object/from16 v10, p5

    .line 28
    .line 29
    move-object/from16 v11, p6

    .line 30
    .line 31
    invoke-static/range {v1 .. v13}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;->v(Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn2View;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/a;Ljava/lang/String;ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public p()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public setBtnVisibility(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
