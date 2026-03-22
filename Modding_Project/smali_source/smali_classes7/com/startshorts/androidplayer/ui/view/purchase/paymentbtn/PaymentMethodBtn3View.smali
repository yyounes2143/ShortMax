.class public final Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "PaymentMethodBtn3View.kt"

# interfaces
.implements Ltj/a;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPaymentMethodBtn3View.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentMethodBtn3View.kt\ncom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,507:1\n254#2:508\n774#3:509\n865#3,2:510\n1611#3,9:512\n1863#3:521\n1864#3:524\n1620#3:525\n295#3,2:526\n295#3,2:528\n774#3:530\n865#3,2:531\n774#3:533\n865#3,2:534\n1971#3,14:536\n774#3:550\n865#3,2:551\n1611#3,9:553\n1863#3:562\n1864#3:564\n1620#3:565\n295#3,2:566\n295#3,2:568\n774#3:570\n865#3,2:571\n774#3:573\n865#3,2:574\n1971#3,14:576\n1#4:522\n1#4:523\n1#4:563\n*S KotlinDebug\n*F\n+ 1 PaymentMethodBtn3View.kt\ncom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View\n*L\n70#1:508\n323#1:509\n323#1:510,2\n323#1:512,9\n323#1:521\n323#1:524\n323#1:525\n329#1:526,2\n335#1:528,2\n359#1:530\n359#1:531,2\n368#1:533\n368#1:534,2\n370#1:536,14\n427#1:550\n427#1:551,2\n427#1:553,9\n427#1:562\n427#1:564\n427#1:565\n433#1:566,2\n439#1:568,2\n460#1:570\n460#1:571,2\n472#1:573\n472#1:574,2\n474#1:576,14\n323#1:523\n427#1:563\n*E\n"
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

    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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
    iput p2, p0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->a:I

    .line 6
    new-instance p2, Ltj/e;

    invoke-direct {p2, p1, p0}, Ltj/e;-><init>(Landroid/content/Context;Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;)V

    invoke-static {p2}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    move-result-object p1

    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->b:Lms/i;

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
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->b:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic q(Landroid/content/Context;Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;)Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->s(Landroid/content/Context;Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;)Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic r(Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->a:I

    .line 2
    .line 3
    return p0
.end method

.method private static final s(Landroid/content/Context;Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;)Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;
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
    invoke-static {p0, p1, v0}, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

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
    .locals 9

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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->q:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 297
    .line 298
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 299
    .line 300
    .line 301
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->q:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->q:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 322
    .line 323
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 324
    .line 325
    .line 326
    :goto_b
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->j:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->j:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 347
    .line 348
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    .line 350
    .line 351
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->q:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 356
    .line 357
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 358
    .line 359
    .line 360
    :goto_c
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getProductExtendList()Ljava/util/List;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    const/4 v2, 0x0

    .line 365
    if-eqz v0, :cond_1a

    .line 366
    .line 367
    check-cast v0, Ljava/lang/Iterable;

    .line 368
    .line 369
    new-instance v3, Ljava/util/ArrayList;

    .line 370
    .line 371
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 372
    .line 373
    .line 374
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    :cond_12
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 379
    .line 380
    .line 381
    move-result v4

    .line 382
    if-eqz v4, :cond_14

    .line 383
    .line 384
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v4

    .line 388
    move-object v5, v4

    .line 389
    check-cast v5, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 390
    .line 391
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getPayType()Ljava/lang/Integer;

    .line 392
    .line 393
    .line 394
    move-result-object v5

    .line 395
    sget-object v6, Lqf/e;->a:Lqf/e;

    .line 396
    .line 397
    invoke-virtual {v6}, Lqf/e;->a()I

    .line 398
    .line 399
    .line 400
    move-result v6

    .line 401
    if-nez v5, :cond_13

    .line 402
    .line 403
    goto :goto_e

    .line 404
    :cond_13
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 405
    .line 406
    .line 407
    move-result v5

    .line 408
    if-eq v5, v6, :cond_12

    .line 409
    .line 410
    :goto_e
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    goto :goto_d

    .line 414
    :cond_14
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 419
    .line 420
    .line 421
    move-result v3

    .line 422
    if-nez v3, :cond_15

    .line 423
    .line 424
    move-object v3, v1

    .line 425
    goto :goto_12

    .line 426
    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v3

    .line 430
    check-cast v3, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 431
    .line 432
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getDiscountPercent()Ljava/lang/Integer;

    .line 433
    .line 434
    .line 435
    move-result-object v3

    .line 436
    if-eqz v3, :cond_16

    .line 437
    .line 438
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 439
    .line 440
    .line 441
    move-result v3

    .line 442
    goto :goto_f

    .line 443
    :cond_16
    move v3, v2

    .line 444
    :goto_f
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 445
    .line 446
    .line 447
    move-result-object v3

    .line 448
    :cond_17
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 449
    .line 450
    .line 451
    move-result v4

    .line 452
    if-eqz v4, :cond_19

    .line 453
    .line 454
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    move-result-object v4

    .line 458
    check-cast v4, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 459
    .line 460
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getDiscountPercent()Ljava/lang/Integer;

    .line 461
    .line 462
    .line 463
    move-result-object v4

    .line 464
    if-eqz v4, :cond_18

    .line 465
    .line 466
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 467
    .line 468
    .line 469
    move-result v4

    .line 470
    goto :goto_11

    .line 471
    :cond_18
    move v4, v2

    .line 472
    :goto_11
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 473
    .line 474
    .line 475
    move-result-object v4

    .line 476
    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 477
    .line 478
    .line 479
    move-result v5

    .line 480
    if-gez v5, :cond_17

    .line 481
    .line 482
    move-object v3, v4

    .line 483
    goto :goto_10

    .line 484
    :cond_19
    :goto_12
    if-eqz v3, :cond_1a

    .line 485
    .line 486
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 487
    .line 488
    .line 489
    move-result v0

    .line 490
    goto :goto_13

    .line 491
    :cond_1a
    move v0, v2

    .line 492
    :goto_13
    const/4 v3, 0x4

    .line 493
    if-lez v0, :cond_1b

    .line 494
    .line 495
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 496
    .line 497
    .line 498
    move-result-object v4

    .line 499
    iget-object v4, v4, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 500
    .line 501
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 502
    .line 503
    .line 504
    move-result-object v5

    .line 505
    sget v6, Lcom/startshorts/androidplayer/R$string;->payment_discount_coins_label:I

    .line 506
    .line 507
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    invoke-virtual {v5, v6, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    .line 521
    .line 522
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 527
    .line 528
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 529
    .line 530
    .line 531
    goto :goto_14

    .line 532
    :cond_1b
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 537
    .line 538
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 539
    .line 540
    .line 541
    :goto_14
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 546
    .line 547
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 548
    .line 549
    .line 550
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 551
    .line 552
    .line 553
    move-result-object v0

    .line 554
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 555
    .line 556
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 557
    .line 558
    .line 559
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getProductExtendList()Ljava/util/List;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    if-eqz v0, :cond_1e

    .line 564
    .line 565
    check-cast v0, Ljava/lang/Iterable;

    .line 566
    .line 567
    new-instance v4, Ljava/util/ArrayList;

    .line 568
    .line 569
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 570
    .line 571
    .line 572
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 573
    .line 574
    .line 575
    move-result-object v0

    .line 576
    :cond_1c
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 577
    .line 578
    .line 579
    move-result v5

    .line 580
    if-eqz v5, :cond_1f

    .line 581
    .line 582
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    move-result-object v5

    .line 586
    move-object v6, v5

    .line 587
    check-cast v6, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 588
    .line 589
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getPayType()Ljava/lang/Integer;

    .line 590
    .line 591
    .line 592
    move-result-object v6

    .line 593
    if-nez v6, :cond_1d

    .line 594
    .line 595
    goto :goto_15

    .line 596
    :cond_1d
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 597
    .line 598
    .line 599
    move-result v6

    .line 600
    const/4 v7, 0x5

    .line 601
    if-ne v6, v7, :cond_1c

    .line 602
    .line 603
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 604
    .line 605
    .line 606
    goto :goto_15

    .line 607
    :cond_1e
    move-object v4, v1

    .line 608
    :cond_1f
    if-eqz v4, :cond_21

    .line 609
    .line 610
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 611
    .line 612
    .line 613
    move-result-object v0

    .line 614
    check-cast v0, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 615
    .line 616
    if-eqz v0, :cond_21

    .line 617
    .line 618
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getLogoGoldIcon()Ljava/lang/String;

    .line 619
    .line 620
    .line 621
    move-result-object v5

    .line 622
    if-nez v5, :cond_20

    .line 623
    .line 624
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getLogoIcon()Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object v5

    .line 628
    :cond_20
    if-nez v5, :cond_22

    .line 629
    .line 630
    :cond_21
    const-string v5, ""

    .line 631
    .line 632
    :cond_22
    if-eqz v4, :cond_29

    .line 633
    .line 634
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 635
    .line 636
    .line 637
    move-result-object v0

    .line 638
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 639
    .line 640
    .line 641
    move-result v4

    .line 642
    if-nez v4, :cond_23

    .line 643
    .line 644
    move-object v4, v1

    .line 645
    goto :goto_18

    .line 646
    :cond_23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    move-result-object v4

    .line 650
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 651
    .line 652
    .line 653
    move-result v6

    .line 654
    if-nez v6, :cond_24

    .line 655
    .line 656
    goto :goto_18

    .line 657
    :cond_24
    move-object v6, v4

    .line 658
    check-cast v6, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 659
    .line 660
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getDiscountPercent()Ljava/lang/Integer;

    .line 661
    .line 662
    .line 663
    move-result-object v6

    .line 664
    if-eqz v6, :cond_25

    .line 665
    .line 666
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 667
    .line 668
    .line 669
    move-result v6

    .line 670
    goto :goto_16

    .line 671
    :cond_25
    move v6, v2

    .line 672
    :cond_26
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 673
    .line 674
    .line 675
    move-result-object v7

    .line 676
    move-object v8, v7

    .line 677
    check-cast v8, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 678
    .line 679
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getDiscountPercent()Ljava/lang/Integer;

    .line 680
    .line 681
    .line 682
    move-result-object v8

    .line 683
    if-eqz v8, :cond_27

    .line 684
    .line 685
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 686
    .line 687
    .line 688
    move-result v8

    .line 689
    goto :goto_17

    .line 690
    :cond_27
    move v8, v2

    .line 691
    :goto_17
    if-ge v6, v8, :cond_28

    .line 692
    .line 693
    move-object v4, v7

    .line 694
    move v6, v8

    .line 695
    :cond_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 696
    .line 697
    .line 698
    move-result v7

    .line 699
    if-nez v7, :cond_26

    .line 700
    .line 701
    :goto_18
    check-cast v4, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 702
    .line 703
    goto :goto_19

    .line 704
    :cond_29
    move-object v4, v1

    .line 705
    :goto_19
    if-eqz v4, :cond_2a

    .line 706
    .line 707
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getDiscountPercent()Ljava/lang/Integer;

    .line 708
    .line 709
    .line 710
    move-result-object v0

    .line 711
    if-eqz v0, :cond_2a

    .line 712
    .line 713
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 714
    .line 715
    .line 716
    move-result v0

    .line 717
    goto :goto_1a

    .line 718
    :cond_2a
    move v0, v2

    .line 719
    :goto_1a
    if-lez v0, :cond_2b

    .line 720
    .line 721
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 722
    .line 723
    .line 724
    move-result-object v3

    .line 725
    iget-object v3, v3, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 726
    .line 727
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 728
    .line 729
    .line 730
    move-result-object v4

    .line 731
    sget v6, Lcom/startshorts/androidplayer/R$string;->payment_discount_coins_label:I

    .line 732
    .line 733
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 734
    .line 735
    .line 736
    move-result-object v0

    .line 737
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 738
    .line 739
    .line 740
    move-result-object v0

    .line 741
    invoke-virtual {v4, v6, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 742
    .line 743
    .line 744
    move-result-object v0

    .line 745
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 746
    .line 747
    .line 748
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 749
    .line 750
    .line 751
    move-result-object v0

    .line 752
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 753
    .line 754
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 755
    .line 756
    .line 757
    goto :goto_1b

    .line 758
    :cond_2b
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 759
    .line 760
    .line 761
    move-result-object v0

    .line 762
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 763
    .line 764
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 765
    .line 766
    .line 767
    :goto_1b
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 768
    .line 769
    .line 770
    move-result v0

    .line 771
    if-lez v0, :cond_2c

    .line 772
    .line 773
    sget-object v0, Lkk/f;->a:Lkk/f;

    .line 774
    .line 775
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 776
    .line 777
    .line 778
    move-result-object v2

    .line 779
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->d:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 780
    .line 781
    new-instance v3, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 782
    .line 783
    invoke-direct {v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 784
    .line 785
    .line 786
    invoke-virtual {v3, v5}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 787
    .line 788
    .line 789
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 790
    .line 791
    invoke-virtual {v0, v2, v3}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 792
    .line 793
    .line 794
    :cond_2c
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getPriceText()Ljava/lang/String;

    .line 795
    .line 796
    .line 797
    move-result-object v0

    .line 798
    if-nez v0, :cond_2d

    .line 799
    .line 800
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getOriginPriceText()Ljava/lang/String;

    .line 801
    .line 802
    .line 803
    move-result-object v0

    .line 804
    :cond_2d
    if-eqz v0, :cond_2e

    .line 805
    .line 806
    invoke-static {v0}, Ljk/v;->q(Ljava/lang/String;)Lkotlin/Pair;

    .line 807
    .line 808
    .line 809
    move-result-object v1

    .line 810
    :cond_2e
    if-eqz v1, :cond_30

    .line 811
    .line 812
    invoke-virtual {v1}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 813
    .line 814
    .line 815
    move-result-object p1

    .line 816
    check-cast p1, Ljava/lang/CharSequence;

    .line 817
    .line 818
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 819
    .line 820
    .line 821
    move-result p1

    .line 822
    if-nez p1, :cond_2f

    .line 823
    .line 824
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 825
    .line 826
    .line 827
    move-result-object p1

    .line 828
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->p:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 829
    .line 830
    invoke-static {p1}, Ljk/b0;->l(Landroid/view/View;)V

    .line 831
    .line 832
    .line 833
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 834
    .line 835
    .line 836
    move-result-object p1

    .line 837
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->p:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 838
    .line 839
    invoke-virtual {v1}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 840
    .line 841
    .line 842
    move-result-object v0

    .line 843
    check-cast v0, Ljava/lang/CharSequence;

    .line 844
    .line 845
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 846
    .line 847
    .line 848
    goto :goto_1c

    .line 849
    :cond_2f
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 850
    .line 851
    .line 852
    move-result-object p1

    .line 853
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->p:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 854
    .line 855
    invoke-static {p1}, Ljk/b0;->d(Landroid/view/View;)V

    .line 856
    .line 857
    .line 858
    :goto_1c
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 859
    .line 860
    .line 861
    move-result-object p1

    .line 862
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->n:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 863
    .line 864
    invoke-virtual {v1}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 865
    .line 866
    .line 867
    move-result-object v0

    .line 868
    check-cast v0, Ljava/lang/CharSequence;

    .line 869
    .line 870
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 871
    .line 872
    .line 873
    goto :goto_1d

    .line 874
    :cond_30
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 875
    .line 876
    .line 877
    move-result-object v0

    .line 878
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->n:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 879
    .line 880
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getOriginPriceText()Ljava/lang/String;

    .line 881
    .line 882
    .line 883
    move-result-object p1

    .line 884
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 885
    .line 886
    .line 887
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 888
    .line 889
    .line 890
    move-result-object p1

    .line 891
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->p:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 892
    .line 893
    invoke-static {p1}, Ljk/b0;->d(Landroid/view/View;)V

    .line 894
    .line 895
    .line 896
    :goto_1d
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 897
    .line 898
    .line 899
    move-result-object p1

    .line 900
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->m:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 901
    .line 902
    invoke-static {p1}, Ljk/b0;->d(Landroid/view/View;)V

    .line 903
    .line 904
    .line 905
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 906
    .line 907
    .line 908
    move-result-object p1

    .line 909
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->m:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 910
    .line 911
    invoke-static {p1}, Ljk/b0;->d(Landroid/view/View;)V

    .line 912
    .line 913
    .line 914
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 915
    .line 916
    .line 917
    move-result-object p1

    .line 918
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->o:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 919
    .line 920
    invoke-static {p1}, Ljk/b0;->d(Landroid/view/View;)V

    .line 921
    .line 922
    .line 923
    return-void
.end method

.method private final u(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/a;Ljava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    move-object/from16 v12, p2

    .line 4
    .line 5
    move-object/from16 v13, p3

    .line 6
    .line 7
    const/16 v0, 0x8

    .line 8
    .line 9
    if-nez v13, :cond_0

    .line 10
    .line 11
    if-nez v12, :cond_0

    .line 12
    .line 13
    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    sget-object v1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->N0()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->z0()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget v3, v11, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->a:I

    .line 28
    .line 29
    const/4 v4, 0x1

    .line 30
    const/4 v5, 0x2

    .line 31
    const/4 v6, 0x0

    .line 32
    if-ne v3, v5, :cond_4

    .line 33
    .line 34
    if-eqz v13, :cond_1

    .line 35
    .line 36
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getInSubscription()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move v3, v6

    .line 42
    :goto_0
    if-eqz v1, :cond_2

    .line 43
    .line 44
    if-nez p4, :cond_2

    .line 45
    .line 46
    if-nez v3, :cond_2

    .line 47
    .line 48
    move v7, v4

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move v7, v6

    .line 51
    :goto_1
    if-nez v3, :cond_3

    .line 52
    .line 53
    if-nez v2, :cond_3

    .line 54
    .line 55
    if-eqz v7, :cond_4

    .line 56
    .line 57
    :cond_3
    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_4
    invoke-virtual {v11, v6}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    iget-object v3, v3, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 69
    .line 70
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    iget-object v3, v3, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 78
    .line 79
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    iget-object v3, v3, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 87
    .line 88
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 89
    .line 90
    .line 91
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    iget-object v3, v3, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 96
    .line 97
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 98
    .line 99
    .line 100
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    iget-object v3, v3, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->l:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 105
    .line 106
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 107
    .line 108
    .line 109
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    iget-object v3, v3, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 114
    .line 115
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    iget v3, v11, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->a:I

    .line 119
    .line 120
    if-eq v3, v4, :cond_6

    .line 121
    .line 122
    if-eq v3, v5, :cond_5

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_5
    if-eqz v13, :cond_7

    .line 126
    .line 127
    sget-object v3, Lqf/h;->a:Lqf/h;

    .line 128
    .line 129
    invoke-virtual {v3, v13}, Lqf/h;->o(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Z

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    invoke-direct {v11, v13}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->w(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 134
    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_6
    if-eqz v12, :cond_7

    .line 138
    .line 139
    sget-object v3, Lqf/h;->a:Lqf/h;

    .line 140
    .line 141
    invoke-virtual {v3, v12}, Lqf/h;->n(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)Z

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    invoke-direct {v11, v12}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->t(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V

    .line 146
    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_7
    :goto_2
    move v3, v6

    .line 150
    :goto_3
    if-eqz v1, :cond_8

    .line 151
    .line 152
    if-nez v2, :cond_8

    .line 153
    .line 154
    iget v1, v11, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->a:I

    .line 155
    .line 156
    if-ne v1, v5, :cond_8

    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_8
    move v4, v6

    .line 160
    :goto_4
    if-eqz v3, :cond_a

    .line 161
    .line 162
    if-eqz v4, :cond_9

    .line 163
    .line 164
    goto :goto_5

    .line 165
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 170
    .line 171
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 172
    .line 173
    .line 174
    goto :goto_6

    .line 175
    :cond_a
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 180
    .line 181
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 182
    .line 183
    .line 184
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 189
    .line 190
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 191
    .line 192
    .line 193
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 198
    .line 199
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 200
    .line 201
    .line 202
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 207
    .line 208
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 209
    .line 210
    .line 211
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->l:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 216
    .line 217
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 218
    .line 219
    .line 220
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 225
    .line 226
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 227
    .line 228
    .line 229
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    iget-object v6, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 234
    .line 235
    new-instance v7, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View$a;

    .line 236
    .line 237
    move-object v0, v7

    .line 238
    move-object/from16 v1, p0

    .line 239
    .line 240
    move-object/from16 v2, p9

    .line 241
    .line 242
    move-object/from16 v3, p2

    .line 243
    .line 244
    move-object/from16 v4, p3

    .line 245
    .line 246
    move-object/from16 v5, p4

    .line 247
    .line 248
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View$a;-><init>(Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/a;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    .line 253
    .line 254
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    iget-object v6, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->l:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 259
    .line 260
    new-instance v7, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View$b;

    .line 261
    .line 262
    move-object v0, v7

    .line 263
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View$b;-><init>(Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/a;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    .line 268
    .line 269
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    iget-object v14, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 274
    .line 275
    new-instance v15, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View$c;

    .line 276
    .line 277
    move-object v0, v15

    .line 278
    move-object/from16 v5, p6

    .line 279
    .line 280
    move-object/from16 v6, p5

    .line 281
    .line 282
    move-object/from16 v7, p8

    .line 283
    .line 284
    move-object/from16 v8, p7

    .line 285
    .line 286
    move-object/from16 v9, p1

    .line 287
    .line 288
    move-object/from16 v10, p10

    .line 289
    .line 290
    invoke-direct/range {v0 .. v10}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View$c;-><init>(Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/a;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v14, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    .line 295
    .line 296
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    iget-object v14, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 301
    .line 302
    new-instance v15, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View$d;

    .line 303
    .line 304
    move-object v0, v15

    .line 305
    invoke-direct/range {v0 .. v10}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View$d;-><init>(Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/a;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v14, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    .line 310
    .line 311
    return-void
.end method

.method static synthetic v(Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/a;Ljava/lang/String;ILjava/lang/Object;)V
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
    invoke-direct/range {p2 .. p12}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->u(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/a;Ljava/lang/String;)V

    return-void
.end method

.method private final w(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 12

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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->q:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 297
    .line 298
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 299
    .line 300
    .line 301
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->q:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->q:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 322
    .line 323
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 324
    .line 325
    .line 326
    :goto_b
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->j:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->j:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 347
    .line 348
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    .line 350
    .line 351
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->q:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 356
    .line 357
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 358
    .line 359
    .line 360
    :goto_c
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 365
    .line 366
    const/4 v2, 0x0

    .line 367
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 368
    .line 369
    .line 370
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 375
    .line 376
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getProductExtendList()Ljava/util/List;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    if-eqz v0, :cond_1a

    .line 384
    .line 385
    check-cast v0, Ljava/lang/Iterable;

    .line 386
    .line 387
    new-instance v3, Ljava/util/ArrayList;

    .line 388
    .line 389
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 390
    .line 391
    .line 392
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    :cond_12
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 397
    .line 398
    .line 399
    move-result v4

    .line 400
    if-eqz v4, :cond_14

    .line 401
    .line 402
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v4

    .line 406
    move-object v5, v4

    .line 407
    check-cast v5, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 408
    .line 409
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getPayType()Ljava/lang/Integer;

    .line 410
    .line 411
    .line 412
    move-result-object v5

    .line 413
    sget-object v6, Lqf/e;->a:Lqf/e;

    .line 414
    .line 415
    invoke-virtual {v6}, Lqf/e;->a()I

    .line 416
    .line 417
    .line 418
    move-result v6

    .line 419
    if-nez v5, :cond_13

    .line 420
    .line 421
    goto :goto_e

    .line 422
    :cond_13
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 423
    .line 424
    .line 425
    move-result v5

    .line 426
    if-eq v5, v6, :cond_12

    .line 427
    .line 428
    :goto_e
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 429
    .line 430
    .line 431
    goto :goto_d

    .line 432
    :cond_14
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 437
    .line 438
    .line 439
    move-result v3

    .line 440
    if-nez v3, :cond_15

    .line 441
    .line 442
    move-object v3, v1

    .line 443
    goto :goto_12

    .line 444
    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v3

    .line 448
    check-cast v3, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 449
    .line 450
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getDiscountPercent()Ljava/lang/Integer;

    .line 451
    .line 452
    .line 453
    move-result-object v3

    .line 454
    if-eqz v3, :cond_16

    .line 455
    .line 456
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 457
    .line 458
    .line 459
    move-result v3

    .line 460
    goto :goto_f

    .line 461
    :cond_16
    move v3, v2

    .line 462
    :goto_f
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 463
    .line 464
    .line 465
    move-result-object v3

    .line 466
    :cond_17
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 467
    .line 468
    .line 469
    move-result v4

    .line 470
    if-eqz v4, :cond_19

    .line 471
    .line 472
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    move-result-object v4

    .line 476
    check-cast v4, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 477
    .line 478
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getDiscountPercent()Ljava/lang/Integer;

    .line 479
    .line 480
    .line 481
    move-result-object v4

    .line 482
    if-eqz v4, :cond_18

    .line 483
    .line 484
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 485
    .line 486
    .line 487
    move-result v4

    .line 488
    goto :goto_11

    .line 489
    :cond_18
    move v4, v2

    .line 490
    :goto_11
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 491
    .line 492
    .line 493
    move-result-object v4

    .line 494
    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 495
    .line 496
    .line 497
    move-result v5

    .line 498
    if-gez v5, :cond_17

    .line 499
    .line 500
    move-object v3, v4

    .line 501
    goto :goto_10

    .line 502
    :cond_19
    :goto_12
    if-eqz v3, :cond_1a

    .line 503
    .line 504
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 505
    .line 506
    .line 507
    move-result v0

    .line 508
    goto :goto_13

    .line 509
    :cond_1a
    move v0, v2

    .line 510
    :goto_13
    const/4 v3, 0x4

    .line 511
    if-lez v0, :cond_1b

    .line 512
    .line 513
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 514
    .line 515
    .line 516
    move-result-object v4

    .line 517
    iget-object v4, v4, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 518
    .line 519
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 520
    .line 521
    .line 522
    move-result-object v5

    .line 523
    sget v6, Lcom/startshorts/androidplayer/R$string;->discount_label_off:I

    .line 524
    .line 525
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v0

    .line 533
    invoke-virtual {v5, v6, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    .line 539
    .line 540
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 545
    .line 546
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 547
    .line 548
    .line 549
    goto :goto_14

    .line 550
    :cond_1b
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 551
    .line 552
    .line 553
    move-result-object v0

    .line 554
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 555
    .line 556
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 557
    .line 558
    .line 559
    :goto_14
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getProductExtendList()Ljava/util/List;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    const/4 v4, 0x5

    .line 564
    if-eqz v0, :cond_1e

    .line 565
    .line 566
    check-cast v0, Ljava/lang/Iterable;

    .line 567
    .line 568
    new-instance v5, Ljava/util/ArrayList;

    .line 569
    .line 570
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 571
    .line 572
    .line 573
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 574
    .line 575
    .line 576
    move-result-object v0

    .line 577
    :cond_1c
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 578
    .line 579
    .line 580
    move-result v6

    .line 581
    if-eqz v6, :cond_1f

    .line 582
    .line 583
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 584
    .line 585
    .line 586
    move-result-object v6

    .line 587
    move-object v7, v6

    .line 588
    check-cast v7, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 589
    .line 590
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getPayType()Ljava/lang/Integer;

    .line 591
    .line 592
    .line 593
    move-result-object v7

    .line 594
    if-nez v7, :cond_1d

    .line 595
    .line 596
    goto :goto_15

    .line 597
    :cond_1d
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 598
    .line 599
    .line 600
    move-result v7

    .line 601
    if-ne v7, v4, :cond_1c

    .line 602
    .line 603
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 604
    .line 605
    .line 606
    goto :goto_15

    .line 607
    :cond_1e
    move-object v5, v1

    .line 608
    :cond_1f
    const-string v0, ""

    .line 609
    .line 610
    if-eqz v5, :cond_21

    .line 611
    .line 612
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 613
    .line 614
    .line 615
    move-result-object v6

    .line 616
    check-cast v6, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 617
    .line 618
    if-eqz v6, :cond_21

    .line 619
    .line 620
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getLogoGoldIcon()Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v7

    .line 624
    if-nez v7, :cond_20

    .line 625
    .line 626
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getLogoIcon()Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object v7

    .line 630
    :cond_20
    if-nez v7, :cond_22

    .line 631
    .line 632
    :cond_21
    move-object v7, v0

    .line 633
    :cond_22
    if-eqz v5, :cond_29

    .line 634
    .line 635
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 636
    .line 637
    .line 638
    move-result-object v5

    .line 639
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 640
    .line 641
    .line 642
    move-result v6

    .line 643
    if-nez v6, :cond_23

    .line 644
    .line 645
    move-object v6, v1

    .line 646
    goto :goto_18

    .line 647
    :cond_23
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 648
    .line 649
    .line 650
    move-result-object v6

    .line 651
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 652
    .line 653
    .line 654
    move-result v8

    .line 655
    if-nez v8, :cond_24

    .line 656
    .line 657
    goto :goto_18

    .line 658
    :cond_24
    move-object v8, v6

    .line 659
    check-cast v8, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 660
    .line 661
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getDiscountPercent()Ljava/lang/Integer;

    .line 662
    .line 663
    .line 664
    move-result-object v8

    .line 665
    if-eqz v8, :cond_25

    .line 666
    .line 667
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 668
    .line 669
    .line 670
    move-result v8

    .line 671
    goto :goto_16

    .line 672
    :cond_25
    move v8, v2

    .line 673
    :cond_26
    :goto_16
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 674
    .line 675
    .line 676
    move-result-object v9

    .line 677
    move-object v10, v9

    .line 678
    check-cast v10, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 679
    .line 680
    invoke-virtual {v10}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getDiscountPercent()Ljava/lang/Integer;

    .line 681
    .line 682
    .line 683
    move-result-object v10

    .line 684
    if-eqz v10, :cond_27

    .line 685
    .line 686
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 687
    .line 688
    .line 689
    move-result v10

    .line 690
    goto :goto_17

    .line 691
    :cond_27
    move v10, v2

    .line 692
    :goto_17
    if-ge v8, v10, :cond_28

    .line 693
    .line 694
    move-object v6, v9

    .line 695
    move v8, v10

    .line 696
    :cond_28
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 697
    .line 698
    .line 699
    move-result v9

    .line 700
    if-nez v9, :cond_26

    .line 701
    .line 702
    :goto_18
    check-cast v6, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 703
    .line 704
    goto :goto_19

    .line 705
    :cond_29
    move-object v6, v1

    .line 706
    :goto_19
    if-eqz v6, :cond_2a

    .line 707
    .line 708
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getDiscountPercent()Ljava/lang/Integer;

    .line 709
    .line 710
    .line 711
    move-result-object v5

    .line 712
    if-eqz v5, :cond_2a

    .line 713
    .line 714
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 715
    .line 716
    .line 717
    move-result v5

    .line 718
    goto :goto_1a

    .line 719
    :cond_2a
    move v5, v2

    .line 720
    :goto_1a
    const/4 v8, 0x1

    .line 721
    if-lez v5, :cond_2d

    .line 722
    .line 723
    new-instance v9, Ljava/lang/StringBuilder;

    .line 724
    .line 725
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 726
    .line 727
    .line 728
    if-eqz v6, :cond_2b

    .line 729
    .line 730
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getDiscountPeriodNum()I

    .line 731
    .line 732
    .line 733
    move-result v6

    .line 734
    goto :goto_1b

    .line 735
    :cond_2b
    move v6, v2

    .line 736
    :goto_1b
    if-le v6, v8, :cond_2c

    .line 737
    .line 738
    sget-object v10, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->Companion:Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod$Companion;

    .line 739
    .line 740
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 741
    .line 742
    .line 743
    move-result v11

    .line 744
    invoke-virtual {v10, v6, v11}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod$Companion;->formatCycleCount(II)Ljava/lang/String;

    .line 745
    .line 746
    .line 747
    move-result-object v6

    .line 748
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    .line 750
    .line 751
    const-string v6, " | "

    .line 752
    .line 753
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    .line 755
    .line 756
    :cond_2c
    sget-object v6, Lfk/u;->a:Lfk/u;

    .line 757
    .line 758
    sget v10, Lcom/startshorts/androidplayer/R$string;->discount_label_off:I

    .line 759
    .line 760
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 761
    .line 762
    .line 763
    move-result-object v5

    .line 764
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 765
    .line 766
    .line 767
    move-result-object v5

    .line 768
    invoke-virtual {v6, v10, v5}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 769
    .line 770
    .line 771
    move-result-object v5

    .line 772
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    .line 774
    .line 775
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 776
    .line 777
    .line 778
    move-result-object v5

    .line 779
    iget-object v5, v5, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 780
    .line 781
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 782
    .line 783
    .line 784
    move-result-object v6

    .line 785
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 786
    .line 787
    .line 788
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 789
    .line 790
    .line 791
    move-result-object v5

    .line 792
    iget-object v5, v5, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 793
    .line 794
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 795
    .line 796
    .line 797
    goto :goto_1c

    .line 798
    :cond_2d
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 799
    .line 800
    .line 801
    move-result-object v2

    .line 802
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 803
    .line 804
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 805
    .line 806
    .line 807
    :goto_1c
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 808
    .line 809
    .line 810
    move-result v2

    .line 811
    if-lez v2, :cond_2e

    .line 812
    .line 813
    sget-object v2, Lkk/f;->a:Lkk/f;

    .line 814
    .line 815
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 816
    .line 817
    .line 818
    move-result-object v5

    .line 819
    iget-object v5, v5, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->d:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 820
    .line 821
    new-instance v6, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 822
    .line 823
    invoke-direct {v6}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 824
    .line 825
    .line 826
    invoke-virtual {v6, v7}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 827
    .line 828
    .line 829
    sget-object v7, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 830
    .line 831
    invoke-virtual {v2, v5, v6}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 832
    .line 833
    .line 834
    :cond_2e
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscount()Z

    .line 835
    .line 836
    .line 837
    move-result v2

    .line 838
    if-eqz v2, :cond_2f

    .line 839
    .line 840
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getDiscountPriceText()Ljava/lang/String;

    .line 841
    .line 842
    .line 843
    move-result-object v2

    .line 844
    goto :goto_1d

    .line 845
    :cond_2f
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getOriginPriceText()Ljava/lang/String;

    .line 846
    .line 847
    .line 848
    move-result-object v2

    .line 849
    :goto_1d
    if-eqz v2, :cond_30

    .line 850
    .line 851
    invoke-static {v2}, Ljk/v;->q(Ljava/lang/String;)Lkotlin/Pair;

    .line 852
    .line 853
    .line 854
    move-result-object v1

    .line 855
    :cond_30
    if-eqz v1, :cond_32

    .line 856
    .line 857
    invoke-virtual {v1}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 858
    .line 859
    .line 860
    move-result-object v2

    .line 861
    check-cast v2, Ljava/lang/CharSequence;

    .line 862
    .line 863
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 864
    .line 865
    .line 866
    move-result v2

    .line 867
    if-nez v2, :cond_31

    .line 868
    .line 869
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 870
    .line 871
    .line 872
    move-result-object v2

    .line 873
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->p:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 874
    .line 875
    invoke-static {v2}, Ljk/b0;->l(Landroid/view/View;)V

    .line 876
    .line 877
    .line 878
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 879
    .line 880
    .line 881
    move-result-object v2

    .line 882
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->p:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 883
    .line 884
    invoke-virtual {v1}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 885
    .line 886
    .line 887
    move-result-object v5

    .line 888
    check-cast v5, Ljava/lang/CharSequence;

    .line 889
    .line 890
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 891
    .line 892
    .line 893
    goto :goto_1e

    .line 894
    :cond_31
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 895
    .line 896
    .line 897
    move-result-object v2

    .line 898
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->p:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 899
    .line 900
    invoke-static {v2}, Ljk/b0;->d(Landroid/view/View;)V

    .line 901
    .line 902
    .line 903
    :goto_1e
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 904
    .line 905
    .line 906
    move-result-object v2

    .line 907
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->n:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 908
    .line 909
    invoke-virtual {v1}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 910
    .line 911
    .line 912
    move-result-object v1

    .line 913
    check-cast v1, Ljava/lang/CharSequence;

    .line 914
    .line 915
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 916
    .line 917
    .line 918
    goto :goto_1f

    .line 919
    :cond_32
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 920
    .line 921
    .line 922
    move-result-object v1

    .line 923
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->n:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 924
    .line 925
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getOriginPriceText()Ljava/lang/String;

    .line 926
    .line 927
    .line 928
    move-result-object v2

    .line 929
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 930
    .line 931
    .line 932
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 933
    .line 934
    .line 935
    move-result-object v1

    .line 936
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->p:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 937
    .line 938
    invoke-static {v1}, Ljk/b0;->d(Landroid/view/View;)V

    .line 939
    .line 940
    .line 941
    :goto_1f
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 942
    .line 943
    .line 944
    move-result v1

    .line 945
    if-eq v1, v8, :cond_35

    .line 946
    .line 947
    const/4 v2, 0x2

    .line 948
    if-eq v1, v2, :cond_34

    .line 949
    .line 950
    if-eq v1, v3, :cond_33

    .line 951
    .line 952
    if-eq v1, v4, :cond_35

    .line 953
    .line 954
    const/4 v2, 0x6

    .line 955
    if-eq v1, v2, :cond_34

    .line 956
    .line 957
    const/4 v2, 0x7

    .line 958
    if-eq v1, v2, :cond_33

    .line 959
    .line 960
    goto :goto_20

    .line 961
    :cond_33
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 962
    .line 963
    .line 964
    move-result-object v0

    .line 965
    sget v1, Lcom/startshorts/androidplayer/R$string;->subs_type_year_unit:I

    .line 966
    .line 967
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 968
    .line 969
    .line 970
    move-result-object v0

    .line 971
    goto :goto_20

    .line 972
    :cond_34
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 973
    .line 974
    .line 975
    move-result-object v0

    .line 976
    sget v1, Lcom/startshorts/androidplayer/R$string;->subs_type_month_unit:I

    .line 977
    .line 978
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 979
    .line 980
    .line 981
    move-result-object v0

    .line 982
    goto :goto_20

    .line 983
    :cond_35
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 984
    .line 985
    .line 986
    move-result-object v0

    .line 987
    sget v1, Lcom/startshorts/androidplayer/R$string;->subs_type_week_unit:I

    .line 988
    .line 989
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 990
    .line 991
    .line 992
    move-result-object v0

    .line 993
    :goto_20
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 994
    .line 995
    .line 996
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 997
    .line 998
    .line 999
    move-result-object v1

    .line 1000
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->m:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 1001
    .line 1002
    invoke-static {v1}, Ljk/b0;->l(Landroid/view/View;)V

    .line 1003
    .line 1004
    .line 1005
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v1

    .line 1009
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->m:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 1010
    .line 1011
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1012
    .line 1013
    .line 1014
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscount()Z

    .line 1015
    .line 1016
    .line 1017
    move-result v0

    .line 1018
    if-eqz v0, :cond_36

    .line 1019
    .line 1020
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v0

    .line 1024
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->o:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 1025
    .line 1026
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 1027
    .line 1028
    .line 1029
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v0

    .line 1033
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->o:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 1034
    .line 1035
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getOriginPriceText()Ljava/lang/String;

    .line 1036
    .line 1037
    .line 1038
    move-result-object p1

    .line 1039
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1040
    .line 1041
    .line 1042
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 1043
    .line 1044
    .line 1045
    move-result-object p1

    .line 1046
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->o:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 1047
    .line 1048
    const-string v0, "tvGooglePayOrgPrice"

    .line 1049
    .line 1050
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1051
    .line 1052
    .line 1053
    invoke-static {p1, v8}, Ljk/y;->j(Landroid/widget/TextView;Z)V

    .line 1054
    .line 1055
    .line 1056
    goto :goto_21

    .line 1057
    :cond_36
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;

    .line 1058
    .line 1059
    .line 1060
    move-result-object p1

    .line 1061
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ViewPaymentMethodBtn3Binding;->o:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 1062
    .line 1063
    invoke-static {p1}, Ljk/b0;->d(Landroid/view/View;)V

    .line 1064
    .line 1065
    .line 1066
    :goto_21
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
    iput v0, v14, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->a:I

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
    invoke-static/range {v1 .. v13}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->v(Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/a;Ljava/lang/String;ILjava/lang/Object;)V

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
    iput v0, v14, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->a:I

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
    invoke-static/range {v1 .. v13}, Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;->v(Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/PaymentMethodBtn3View;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/ui/view/purchase/paymentbtn/a;Ljava/lang/String;ILjava/lang/Object;)V

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
