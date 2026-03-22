.class public final Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;
.super Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;
.source "PurchaseViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPurchaseViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PurchaseViewModel.kt\ncom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,671:1\n360#2,7:672\n1863#2,2:680\n1863#2,2:682\n1863#2,2:684\n1863#2,2:686\n1863#2,2:688\n1863#2,2:690\n1863#2,2:692\n1863#2,2:694\n1863#2,2:696\n1#3:679\n*S KotlinDebug\n*F\n+ 1 PurchaseViewModel.kt\ncom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel\n*L\n138#1:672,7\n294#1:680,2\n440#1:682,2\n445#1:684,2\n458#1:686,2\n464#1:688,2\n523#1:690,2\n526#1:692,2\n541#1:694,2\n562#1:696,2\n*E\n"
    }
.end annotation


# static fields
.field public static final p:Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final e:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private i:Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private j:Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/purchase/BlackFridayCoinSku;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private l:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private m:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private n:Z

.field private o:Lcom/startshorts/androidplayer/bean/subs/SubsSku;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->p:Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lal/a;

    .line 5
    .line 6
    invoke-direct {v0}, Lal/a;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->e:Lms/i;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic A()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->X()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic B(Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic C(Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->h:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic D(Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->k:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic E(Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->l:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic F(Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->o:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic G(Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->j:Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic H(Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->i0(Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final T(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->N()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->h:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->g:Ljava/lang/String;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    const-string v2, "other"

    .line 14
    .line 15
    :cond_0
    iget-object v4, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->j:Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;

    .line 16
    .line 17
    const/4 v8, 0x0

    .line 18
    if-eqz v4, :cond_1

    .line 19
    .line 20
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;->enable()Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move v4, v8

    .line 26
    :goto_0
    const/16 v6, 0x10

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    const/4 v5, 0x0

    .line 30
    invoke-static/range {v0 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->Y0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLcom/startshorts/androidplayer/bean/act/ActResource;ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->f:Ljava/lang/String;

    .line 34
    .line 35
    if-eqz v0, :cond_1c

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const/4 v2, 0x2

    .line 42
    const/4 v3, 0x0

    .line 43
    sparse-switch v1, :sswitch_data_0

    .line 44
    .line 45
    .line 46
    goto/16 :goto_c

    .line 47
    .line 48
    :sswitch_0
    const-string v1, "black_friday"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    goto/16 :goto_c

    .line 57
    .line 58
    :cond_2
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->k:Ljava/util/List;

    .line 59
    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    check-cast v0, Ljava/lang/Iterable;

    .line 63
    .line 64
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_4

    .line 73
    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Lcom/startshorts/androidplayer/bean/purchase/BlackFridayCoinSku;

    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-lez v4, :cond_3

    .line 89
    .line 90
    invoke-static {v1, p1, v8, v2, v3}, Ljk/u;->l(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Ljava/util/List;ZILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->R()Landroidx/lifecycle/MutableLiveData;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/purchase/b$h;

    .line 99
    .line 100
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->k:Ljava/util/List;

    .line 101
    .line 102
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/purchase/b$h;-><init>(Ljava/util/List;)V

    .line 103
    .line 104
    .line 105
    invoke-static {p1, v0}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    goto/16 :goto_c

    .line 109
    .line 110
    :sswitch_1
    const-string v1, "expansion"

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-nez v0, :cond_5

    .line 117
    .line 118
    goto/16 :goto_c

    .line 119
    .line 120
    :cond_5
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->l:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 121
    .line 122
    if-eqz v0, :cond_6

    .line 123
    .line 124
    invoke-static {v0, p1, v8, v2, v3}, Ljk/u;->l(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Ljava/util/List;ZILjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    :cond_6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->R()Landroidx/lifecycle/MutableLiveData;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/purchase/b$i;

    .line 132
    .line 133
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->l:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 134
    .line 135
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/purchase/b$i;-><init>(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V

    .line 136
    .line 137
    .line 138
    invoke-static {p1, v0}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    goto/16 :goto_c

    .line 142
    .line 143
    :sswitch_2
    const-string v1, "subs_expansion"

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-nez v0, :cond_7

    .line 150
    .line 151
    goto/16 :goto_c

    .line 152
    .line 153
    :cond_7
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->o:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 154
    .line 155
    if-eqz v0, :cond_8

    .line 156
    .line 157
    invoke-static {v0, p1}, Ljk/u;->k(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/util/List;)V

    .line 158
    .line 159
    .line 160
    :cond_8
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->R()Landroidx/lifecycle/MutableLiveData;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/purchase/b$j;

    .line 165
    .line 166
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->o:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 167
    .line 168
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/purchase/b$j;-><init>(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 169
    .line 170
    .line 171
    invoke-static {p1, v0}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    goto/16 :goto_c

    .line 175
    .line 176
    :sswitch_3
    const-string v1, "top_up"

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-nez v0, :cond_13

    .line 183
    .line 184
    goto/16 :goto_c

    .line 185
    .line 186
    :sswitch_4
    const-string v1, "coin_store"

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-nez v0, :cond_9

    .line 193
    .line 194
    goto/16 :goto_c

    .line 195
    .line 196
    :cond_9
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->i:Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;

    .line 197
    .line 198
    if-eqz v0, :cond_a

    .line 199
    .line 200
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;->getSkuInfoResponses()Ljava/util/List;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    goto :goto_2

    .line 205
    :cond_a
    move-object v0, v3

    .line 206
    :goto_2
    if-eqz v0, :cond_b

    .line 207
    .line 208
    move-object v1, v0

    .line 209
    check-cast v1, Ljava/lang/Iterable;

    .line 210
    .line 211
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 216
    .line 217
    .line 218
    move-result v4

    .line 219
    if-eqz v4, :cond_b

    .line 220
    .line 221
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    check-cast v4, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 226
    .line 227
    invoke-static {v4, p1, v8, v2, v3}, Ljk/u;->l(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Ljava/util/List;ZILjava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    goto :goto_3

    .line 231
    :cond_b
    if-eqz v0, :cond_e

    .line 232
    .line 233
    move-object p1, v0

    .line 234
    check-cast p1, Ljava/lang/Iterable;

    .line 235
    .line 236
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    :cond_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    if-eqz v1, :cond_d

    .line 245
    .line 246
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    move-object v2, v1

    .line 251
    check-cast v2, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 252
    .line 253
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuType()I

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    if-nez v2, :cond_c

    .line 258
    .line 259
    goto :goto_4

    .line 260
    :cond_d
    move-object v1, v3

    .line 261
    :goto_4
    check-cast v1, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 262
    .line 263
    goto :goto_5

    .line 264
    :cond_e
    move-object v1, v3

    .line 265
    :goto_5
    if-eqz v1, :cond_f

    .line 266
    .line 267
    if-eqz v0, :cond_11

    .line 268
    .line 269
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    goto :goto_6

    .line 273
    :cond_f
    move-object p1, v0

    .line 274
    check-cast p1, Ljava/util/Collection;

    .line 275
    .line 276
    if-eqz p1, :cond_11

    .line 277
    .line 278
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 279
    .line 280
    .line 281
    move-result p1

    .line 282
    if-eqz p1, :cond_10

    .line 283
    .line 284
    goto :goto_6

    .line 285
    :cond_10
    invoke-interface {v0, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    move-object v1, p1

    .line 290
    check-cast v1, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 291
    .line 292
    :cond_11
    :goto_6
    if-eqz v1, :cond_12

    .line 293
    .line 294
    iput-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->m:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 295
    .line 296
    :cond_12
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->R()Landroidx/lifecycle/MutableLiveData;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/purchase/b$k;

    .line 301
    .line 302
    invoke-direct {v2, v0, v1, v3, v3}, Lcom/startshorts/androidplayer/viewmodel/purchase/b$k;-><init>(Ljava/util/List;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Ljava/util/List;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 303
    .line 304
    .line 305
    invoke-static {p1, v2}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 306
    .line 307
    .line 308
    goto/16 :goto_c

    .line 309
    .line 310
    :sswitch_5
    const-string v1, "top_up_dialog"

    .line 311
    .line 312
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result v0

    .line 316
    if-nez v0, :cond_13

    .line 317
    .line 318
    goto/16 :goto_c

    .line 319
    .line 320
    :cond_13
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->i:Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;

    .line 321
    .line 322
    if-eqz v0, :cond_14

    .line 323
    .line 324
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;->getSkuInfoResponses()Ljava/util/List;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    goto :goto_7

    .line 329
    :cond_14
    move-object v0, v3

    .line 330
    :goto_7
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->n:Z

    .line 331
    .line 332
    const-string v4, ""

    .line 333
    .line 334
    if-eqz v1, :cond_15

    .line 335
    .line 336
    if-eqz v0, :cond_15

    .line 337
    .line 338
    new-instance v1, Lcom/startshorts/androidplayer/bean/purchase/LowSkuTemplateNotificationCoinSku;

    .line 339
    .line 340
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/purchase/LowSkuTemplateNotificationCoinSku;-><init>()V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v1, v4}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setGpSkuId(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 347
    .line 348
    invoke-interface {v0, v8, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 349
    .line 350
    .line 351
    :cond_15
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->S()Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    if-eqz v1, :cond_16

    .line 356
    .line 357
    if-eqz v0, :cond_16

    .line 358
    .line 359
    new-instance v5, Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentCoinSku;

    .line 360
    .line 361
    invoke-direct {v5, v1}, Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentCoinSku;-><init>(Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v5, v4}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setGpSkuId(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 368
    .line 369
    invoke-interface {v0, v8, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 370
    .line 371
    .line 372
    :cond_16
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->i:Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;

    .line 373
    .line 374
    if-eqz v1, :cond_17

    .line 375
    .line 376
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;->getActiveSubscribeSku()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    goto :goto_8

    .line 381
    :cond_17
    move-object v1, v3

    .line 382
    :goto_8
    if-eqz v1, :cond_18

    .line 383
    .line 384
    invoke-static {v1, p1}, Ljk/u;->k(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/util/List;)V

    .line 385
    .line 386
    .line 387
    :cond_18
    iget-object v4, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->i:Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;

    .line 388
    .line 389
    if-eqz v4, :cond_19

    .line 390
    .line 391
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;->getSubscribeSkuResponses()Ljava/util/List;

    .line 392
    .line 393
    .line 394
    move-result-object v4

    .line 395
    goto :goto_9

    .line 396
    :cond_19
    move-object v4, v3

    .line 397
    :goto_9
    if-eqz v4, :cond_1a

    .line 398
    .line 399
    move-object v5, v4

    .line 400
    check-cast v5, Ljava/lang/Iterable;

    .line 401
    .line 402
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 403
    .line 404
    .line 405
    move-result-object v5

    .line 406
    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 407
    .line 408
    .line 409
    move-result v6

    .line 410
    if-eqz v6, :cond_1a

    .line 411
    .line 412
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object v6

    .line 416
    check-cast v6, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 417
    .line 418
    invoke-static {v6, p1}, Ljk/u;->k(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/util/List;)V

    .line 419
    .line 420
    .line 421
    goto :goto_a

    .line 422
    :cond_1a
    if-eqz v0, :cond_1b

    .line 423
    .line 424
    move-object v5, v0

    .line 425
    check-cast v5, Ljava/lang/Iterable;

    .line 426
    .line 427
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 428
    .line 429
    .line 430
    move-result-object v5

    .line 431
    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 432
    .line 433
    .line 434
    move-result v6

    .line 435
    if-eqz v6, :cond_1b

    .line 436
    .line 437
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v6

    .line 441
    check-cast v6, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 442
    .line 443
    invoke-static {v6, p1, v8, v2, v3}, Ljk/u;->l(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Ljava/util/List;ZILjava/lang/Object;)V

    .line 444
    .line 445
    .line 446
    goto :goto_b

    .line 447
    :cond_1b
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->R()Landroidx/lifecycle/MutableLiveData;

    .line 448
    .line 449
    .line 450
    move-result-object p1

    .line 451
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/purchase/b$k;

    .line 452
    .line 453
    invoke-direct {v2, v0, v3, v4, v1}, Lcom/startshorts/androidplayer/viewmodel/purchase/b$k;-><init>(Ljava/util/List;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Ljava/util/List;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 454
    .line 455
    .line 456
    invoke-static {p1, v2}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 457
    .line 458
    .line 459
    :cond_1c
    :goto_c
    return-void

    .line 460
    nop

    .line 461
    :sswitch_data_0
    .sparse-switch
        -0x4376d2fe -> :sswitch_5
        -0x3efce64d -> :sswitch_4
        -0x33bd4a3b -> :sswitch_3
        -0xa6d124d -> :sswitch_2
        0x110ccbf -> :sswitch_1
        0x69db459f -> :sswitch_0
    .end sparse-switch
.end method

.method private final U(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;I)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    iget-object v3, v0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->o:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 3
    .line 4
    if-eqz v3, :cond_0

    .line 5
    .line 6
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 7
    .line 8
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v9

    .line 12
    const/16 v12, 0x360

    .line 13
    .line 14
    const/4 v13, 0x0

    .line 15
    const/4 v7, 0x0

    .line 16
    const/4 v8, 0x0

    .line 17
    const/4 v10, 0x0

    .line 18
    const/4 v11, 0x0

    .line 19
    move-object v2, p1

    .line 20
    move-object/from16 v4, p4

    .line 21
    .line 22
    move-object/from16 v5, p2

    .line 23
    .line 24
    move-object/from16 v6, p5

    .line 25
    .line 26
    invoke-static/range {v1 .. v13}, Lcom/startshorts/androidplayer/manager/event/EventManager;->U0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method private final V(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget-object v2, v0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->f:Ljava/lang/String;

    .line 6
    .line 7
    const-string v3, "black_friday"

    .line 8
    .line 9
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/4 v4, 0x0

    .line 14
    if-eqz v3, :cond_4

    .line 15
    .line 16
    iget-object v2, v0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->k:Ljava/util/List;

    .line 17
    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    check-cast v2, Ljava/lang/Iterable;

    .line 21
    .line 22
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    move-object v5, v3

    .line 37
    check-cast v5, Lcom/startshorts/androidplayer/bean/purchase/BlackFridayCoinSku;

    .line 38
    .line 39
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move-object v3, v4

    .line 51
    :goto_0
    check-cast v3, Lcom/startshorts/androidplayer/bean/purchase/BlackFridayCoinSku;

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    move-object v3, v4

    .line 55
    :cond_3
    :goto_1
    move-object v7, v3

    .line 56
    goto :goto_5

    .line 57
    :cond_4
    const-string v3, "expansion"

    .line 58
    .line 59
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_5

    .line 64
    .line 65
    iget-object v3, v0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->l:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_5
    iget-object v2, v0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->i:Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;

    .line 69
    .line 70
    if-eqz v2, :cond_8

    .line 71
    .line 72
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;->getSkuInfoResponses()Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    if-eqz v2, :cond_8

    .line 77
    .line 78
    check-cast v2, Ljava/lang/Iterable;

    .line 79
    .line 80
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_7

    .line 89
    .line 90
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    move-object v5, v3

    .line 95
    check-cast v5, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 96
    .line 97
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    if-eqz v5, :cond_6

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_7
    move-object v3, v4

    .line 109
    :goto_2
    check-cast v3, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_8
    move-object v3, v4

    .line 113
    :goto_3
    if-nez v3, :cond_3

    .line 114
    .line 115
    iget-object v2, v0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->m:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 116
    .line 117
    if-eqz v2, :cond_3

    .line 118
    .line 119
    if-eqz v2, :cond_9

    .line 120
    .line 121
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    goto :goto_4

    .line 126
    :cond_9
    move-object v2, v4

    .line 127
    :goto_4
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-eqz v1, :cond_3

    .line 132
    .line 133
    iget-object v1, v0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->m:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 134
    .line 135
    move-object v3, v1

    .line 136
    goto :goto_1

    .line 137
    :goto_5
    sget-object v5, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 138
    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->N()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    if-nez p4, :cond_a

    .line 144
    .line 145
    :goto_6
    move-object v11, v4

    .line 146
    goto :goto_7

    .line 147
    :cond_a
    sget-object v1, Lud/a;->a:Lud/a;

    .line 148
    .line 149
    invoke-virtual {v1}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    goto :goto_6

    .line 154
    :goto_7
    const/16 v15, 0x1c0

    .line 155
    .line 156
    const/16 v16, 0x0

    .line 157
    .line 158
    const/4 v12, 0x0

    .line 159
    const/4 v13, 0x0

    .line 160
    const/4 v14, 0x0

    .line 161
    move-object/from16 v8, p3

    .line 162
    .line 163
    move-object/from16 v9, p1

    .line 164
    .line 165
    move-object/from16 v10, p4

    .line 166
    .line 167
    invoke-static/range {v5 .. v16}, Lcom/startshorts/androidplayer/manager/event/EventManager;->T0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    return-void
.end method

.method private final W(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->i:Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;->getSubscribeSkuResponses()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    check-cast v1, Ljava/lang/Iterable;

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    move-object v3, v2

    .line 30
    check-cast v3, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 31
    .line 32
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    move-object/from16 v4, p2

    .line 37
    .line 38
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v2, 0x0

    .line 46
    :goto_0
    move-object v5, v2

    .line 47
    check-cast v5, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 48
    .line 49
    if-eqz v5, :cond_2

    .line 50
    .line 51
    sget-object v3, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 52
    .line 53
    const/16 v14, 0x3f0

    .line 54
    .line 55
    const/4 v15, 0x0

    .line 56
    const-string v4, "recharge"

    .line 57
    .line 58
    const/4 v8, 0x0

    .line 59
    const/4 v9, 0x0

    .line 60
    const/4 v10, 0x0

    .line 61
    const/4 v11, 0x0

    .line 62
    const/4 v12, 0x0

    .line 63
    const/4 v13, 0x0

    .line 64
    move-object/from16 v6, p3

    .line 65
    .line 66
    move-object/from16 v7, p1

    .line 67
    .line 68
    invoke-static/range {v3 .. v15}, Lcom/startshorts/androidplayer/manager/event/EventManager;->U0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    return-void
.end method

.method private static final X()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final Z()Lkotlinx/coroutines/r;
    .locals 6

    .line 1
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryBlackFridayCoinSkuList$1;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {v3, p0, v0}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryBlackFridayCoinSkuList$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;Lrs/c;)V

    .line 5
    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x0

    .line 9
    const-string v1, "queryBlackFridayCoinSkuList"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    move-object v0, p0

    .line 13
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method private final a0()Lkotlinx/coroutines/r;
    .locals 6

    .line 1
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryExpansionCoinSku$1;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {v3, p0, v0}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryExpansionCoinSku$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;Lrs/c;)V

    .line 5
    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x0

    .line 9
    const-string v1, "queryExpansionCoinSku"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    move-object v0, p0

    .line 13
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method private final b0()Lkotlinx/coroutines/r;
    .locals 6

    .line 1
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryExpansionSubsSku$1;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {v3, p0, v0}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryExpansionSubsSku$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;Lrs/c;)V

    .line 5
    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x0

    .line 9
    const-string v1, "queryExpansionSubsSku"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    move-object v0, p0

    .line 13
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method private final c0(Ljava/lang/String;Ljava/lang/String;)Lkotlinx/coroutines/r;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "queryNormalCoinSkuList("

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const/16 v1, 0x29

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    new-instance v5, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryNormalCoinSkuList$1;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-direct {v5, p0, p2, p1, v0}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryNormalCoinSkuList$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;Ljava/lang/String;Ljava/lang/String;Lrs/c;)V

    .line 27
    .line 28
    .line 29
    const/4 v6, 0x2

    .line 30
    const/4 v7, 0x0

    .line 31
    const/4 v4, 0x0

    .line 32
    move-object v2, p0

    .line 33
    invoke-static/range {v2 .. v7}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1
.end method

.method private final d0()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->f:Ljava/lang/String;

    .line 17
    .line 18
    if-eqz v3, :cond_a

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    sparse-switch v4, :sswitch_data_0

    .line 25
    .line 26
    .line 27
    goto/16 :goto_4

    .line 28
    .line 29
    :sswitch_0
    const-string v4, "black_friday"

    .line 30
    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_0

    .line 36
    .line 37
    goto/16 :goto_4

    .line 38
    .line 39
    :cond_0
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->k:Ljava/util/List;

    .line 40
    .line 41
    if-eqz v3, :cond_a

    .line 42
    .line 43
    check-cast v3, Ljava/lang/Iterable;

    .line 44
    .line 45
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_a

    .line 54
    .line 55
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Lcom/startshorts/androidplayer/bean/purchase/BlackFridayCoinSku;

    .line 60
    .line 61
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-lez v5, :cond_1

    .line 70
    .line 71
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :sswitch_1
    const-string v4, "expansion"

    .line 80
    .line 81
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-nez v3, :cond_2

    .line 86
    .line 87
    goto/16 :goto_4

    .line 88
    .line 89
    :cond_2
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->l:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 90
    .line 91
    if-eqz v3, :cond_a

    .line 92
    .line 93
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    goto/16 :goto_4

    .line 101
    .line 102
    :sswitch_2
    const-string v4, "subs_expansion"

    .line 103
    .line 104
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-nez v3, :cond_3

    .line 109
    .line 110
    goto/16 :goto_4

    .line 111
    .line 112
    :cond_3
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->o:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 113
    .line 114
    if-eqz v3, :cond_a

    .line 115
    .line 116
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    goto/16 :goto_4

    .line 124
    .line 125
    :sswitch_3
    const-string v4, "top_up"

    .line 126
    .line 127
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    if-nez v3, :cond_5

    .line 132
    .line 133
    goto/16 :goto_4

    .line 134
    .line 135
    :sswitch_4
    const-string v4, "coin_store"

    .line 136
    .line 137
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    if-nez v3, :cond_4

    .line 142
    .line 143
    goto/16 :goto_4

    .line 144
    .line 145
    :cond_4
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->i:Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;

    .line 146
    .line 147
    if-eqz v3, :cond_a

    .line 148
    .line 149
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;->getSkuInfoResponses()Ljava/util/List;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    if-eqz v3, :cond_a

    .line 154
    .line 155
    check-cast v3, Ljava/lang/Iterable;

    .line 156
    .line 157
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    if-eqz v4, :cond_a

    .line 166
    .line 167
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    check-cast v4, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 172
    .line 173
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    goto :goto_1

    .line 181
    :sswitch_5
    const-string v4, "top_up_dialog"

    .line 182
    .line 183
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    if-nez v3, :cond_5

    .line 188
    .line 189
    goto/16 :goto_4

    .line 190
    .line 191
    :cond_5
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->i:Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;

    .line 192
    .line 193
    if-eqz v3, :cond_7

    .line 194
    .line 195
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;->getSkuInfoResponses()Ljava/util/List;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    if-eqz v3, :cond_7

    .line 200
    .line 201
    check-cast v3, Ljava/lang/Iterable;

    .line 202
    .line 203
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 208
    .line 209
    .line 210
    move-result v4

    .line 211
    if-eqz v4, :cond_7

    .line 212
    .line 213
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    check-cast v4, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 218
    .line 219
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 224
    .line 225
    .line 226
    move-result v5

    .line 227
    if-lez v5, :cond_6

    .line 228
    .line 229
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    goto :goto_2

    .line 237
    :cond_7
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->i:Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;

    .line 238
    .line 239
    if-eqz v3, :cond_9

    .line 240
    .line 241
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;->getSubscribeSkuResponses()Ljava/util/List;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    if-eqz v3, :cond_9

    .line 246
    .line 247
    check-cast v3, Ljava/lang/Iterable;

    .line 248
    .line 249
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    :cond_8
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 254
    .line 255
    .line 256
    move-result v4

    .line 257
    if-eqz v4, :cond_9

    .line 258
    .line 259
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v4

    .line 263
    check-cast v4, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 264
    .line 265
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v5

    .line 269
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 270
    .line 271
    .line 272
    move-result v5

    .line 273
    if-nez v5, :cond_8

    .line 274
    .line 275
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v4

    .line 279
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    goto :goto_3

    .line 283
    :cond_9
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->i:Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;

    .line 284
    .line 285
    if-eqz v3, :cond_a

    .line 286
    .line 287
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;->getActiveSubscribeSku()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    if-eqz v3, :cond_a

    .line 292
    .line 293
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 298
    .line 299
    .line 300
    move-result v4

    .line 301
    if-nez v4, :cond_a

    .line 302
    .line 303
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    :cond_a
    :goto_4
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 311
    .line 312
    .line 313
    move-result v3

    .line 314
    if-nez v3, :cond_b

    .line 315
    .line 316
    new-instance v3, Lzc/g;

    .line 317
    .line 318
    sget-object v4, Lle/h;->a:Lle/h;

    .line 319
    .line 320
    invoke-virtual {v4}, Lle/h;->a()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v4

    .line 324
    invoke-direct {v3, v4, v1}, Lzc/g;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 325
    .line 326
    .line 327
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    :cond_b
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 331
    .line 332
    .line 333
    move-result v1

    .line 334
    if-nez v1, :cond_c

    .line 335
    .line 336
    new-instance v1, Lzc/g;

    .line 337
    .line 338
    sget-object v3, Lle/h;->a:Lle/h;

    .line 339
    .line 340
    invoke-virtual {v3}, Lle/h;->b()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v3

    .line 344
    invoke-direct {v1, v3, v2}, Lzc/g;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 345
    .line 346
    .line 347
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    :cond_c
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->R()Landroidx/lifecycle/MutableLiveData;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/purchase/b$e;

    .line 355
    .line 356
    invoke-direct {v2, v0}, Lcom/startshorts/androidplayer/viewmodel/purchase/b$e;-><init>(Ljava/util/List;)V

    .line 357
    .line 358
    .line 359
    invoke-static {v1, v2}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 360
    .line 361
    .line 362
    return-void

    .line 363
    :sswitch_data_0
    .sparse-switch
        -0x4376d2fe -> :sswitch_5
        -0x3efce64d -> :sswitch_4
        -0x33bd4a3b -> :sswitch_3
        -0xa6d124d -> :sswitch_2
        0x110ccbf -> :sswitch_1
        0x69db459f -> :sswitch_0
    .end sparse-switch
.end method

.method private final e0(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 7

    .line 1
    new-instance v6, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$querySubsUpdateMode$1;

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    move-object v0, v6

    .line 5
    move-object v1, p2

    .line 6
    move-object v2, p1

    .line 7
    move-object v3, p0

    .line 8
    move-object v4, p3

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$querySubsUpdateMode$1;-><init>(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Landroid/content/Context;Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lrs/c;)V

    .line 10
    .line 11
    .line 12
    const/4 v4, 0x2

    .line 13
    const-string v1, "querySubsUpdateMode"

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    move-object v0, p0

    .line 17
    move-object v3, v6

    .line 18
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private final f0(Ljava/lang/String;Ljava/lang/Integer;)Lkotlinx/coroutines/r;
    .locals 6

    .line 1
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryTTPInfo$1;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {v3, p1, p2, p0, v0}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryTTPInfo$1;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;Lrs/c;)V

    .line 5
    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x0

    .line 9
    const-string v1, "queryTTPInfo"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    move-object v0, p0

    .line 13
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method private final i0(Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;)V
    .locals 6

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;->getSubscribeSkuResponses()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast v0, Ljava/lang/Iterable;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 26
    .line 27
    const-string v2, "3"

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->setSource(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object v2, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->p0()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->setReceiveType(I)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v0, 0x0

    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;->getSkuInfoResponses()Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    move-object v1, v0

    .line 51
    :goto_1
    check-cast v1, Ljava/util/Collection;

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    const/4 v3, 0x0

    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    move v1, v3

    .line 65
    goto :goto_3

    .line 66
    :cond_3
    :goto_2
    move v1, v2

    .line 67
    :goto_3
    sget-object v4, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 68
    .line 69
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->c1()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->isEnable()Lkotlin/jvm/functions/Function0;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    check-cast v4, Ljava/lang/Boolean;

    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_6

    .line 88
    .line 89
    if-eqz v1, :cond_5

    .line 90
    .line 91
    :cond_4
    move v4, v3

    .line 92
    goto :goto_4

    .line 93
    :cond_5
    if-eqz p1, :cond_4

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;->isLowPayScoreUser()Z

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    :goto_4
    iput-boolean v4, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->n:Z

    .line 100
    .line 101
    :cond_6
    if-eqz p1, :cond_7

    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;->getSubscribeSkuResponses()Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    :cond_7
    check-cast v0, Ljava/util/Collection;

    .line 108
    .line 109
    if-eqz v0, :cond_9

    .line 110
    .line 111
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_8

    .line 116
    .line 117
    goto :goto_5

    .line 118
    :cond_8
    move v0, v3

    .line 119
    goto :goto_6

    .line 120
    :cond_9
    :goto_5
    move v0, v2

    .line 121
    :goto_6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->R()Landroidx/lifecycle/MutableLiveData;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    new-instance v5, Lcom/startshorts/androidplayer/viewmodel/purchase/b$d;

    .line 126
    .line 127
    if-eqz v1, :cond_a

    .line 128
    .line 129
    if-eqz v0, :cond_a

    .line 130
    .line 131
    goto :goto_7

    .line 132
    :cond_a
    move v2, v3

    .line 133
    :goto_7
    invoke-direct {v5, v2, p1}, Lcom/startshorts/androidplayer/viewmodel/purchase/b$d;-><init>(ZLcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;)V

    .line 134
    .line 135
    .line 136
    invoke-static {v4, v5}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    return-void
.end method


# virtual methods
.method public final I(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 7
    .param p1    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "discountSubs"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->i:Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;

    .line 7
    .line 8
    if-eqz v0, :cond_7

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;->getSubscribeSkuResponses()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Ljava/util/Collection;

    .line 15
    .line 16
    if-eqz v1, :cond_6

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    goto :goto_4

    .line 25
    :cond_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;->getSubscribeSkuResponses()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_7

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const/4 v2, 0x0

    .line 36
    move v3, v2

    .line 37
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    const/4 v5, -0x1

    .line 42
    if-eqz v4, :cond_2

    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 49
    .line 50
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-ne v4, v6, :cond_1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    move v3, v5

    .line 65
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-eq v3, v5, :cond_3

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_3
    const/4 v1, 0x0

    .line 77
    :goto_2
    if-eqz v1, :cond_4

    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    goto :goto_3

    .line 84
    :cond_4
    move v1, v5

    .line 85
    :goto_3
    if-eq v1, v5, :cond_5

    .line 86
    .line 87
    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    goto :goto_5

    .line 91
    :cond_5
    invoke-interface {v0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    goto :goto_5

    .line 95
    :cond_6
    :goto_4
    filled-new-array {p1}, [Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;->setSubscribeSkuResponses(Ljava/util/List;)V

    .line 104
    .line 105
    .line 106
    :cond_7
    :goto_5
    return-void
.end method

.method public final J()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->k:Ljava/util/List;

    .line 3
    .line 4
    return-void
.end method

.method public final K(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "scene"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->i:Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->j:Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;

    .line 10
    .line 11
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->a:Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->f(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final L()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->k:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public final M()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->i:Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public final N()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->f:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sparse-switch v1, :sswitch_data_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :sswitch_0
    const-string v1, "coins_2_sub_dialog"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string v0, "pay_coins_2_sub"

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :sswitch_1
    const-string v1, "black_friday"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const-string v0, "my_wallet_discount"

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :sswitch_2
    const-string v1, "expansion"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const-string v0, "pay_retain"

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :sswitch_3
    const-string v1, "subs_expansion"

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_3

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    const-string v0, "retention_pop_sku_pay"

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :sswitch_4
    const-string v1, "top_up"

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_4

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    const-string v0, "recharge_page"

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :sswitch_5
    const-string v1, "coin_store"

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_5

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_5
    move-object v0, v1

    .line 83
    goto :goto_1

    .line 84
    :sswitch_6
    const-string v1, "top_up_dialog"

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_5

    .line 91
    .line 92
    :cond_6
    :goto_0
    const-string v0, ""

    .line 93
    .line 94
    :goto_1
    return-object v0

    .line 95
    :sswitch_data_0
    .sparse-switch
        -0x4376d2fe -> :sswitch_6
        -0x3efce64d -> :sswitch_5
        -0x33bd4a3b -> :sswitch_4
        -0xa6d124d -> :sswitch_3
        0x110ccbf -> :sswitch_2
        0x69db459f -> :sswitch_1
        0x7080af71 -> :sswitch_0
    .end sparse-switch
.end method

.method public final O()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->l:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 2
    .line 3
    return-object v0
.end method

.method public final P()Lcom/startshorts/androidplayer/bean/subs/SubsSku;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->o:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Q()Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->i:Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;

    .line 2
    .line 3
    return-object v0
.end method

.method public final R()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/purchase/b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->e:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    return-object v0
.end method

.method public final S()Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->j:Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;->enable()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->j:Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return-object v0
.end method

.method public final Y(Lcom/startshorts/androidplayer/viewmodel/purchase/a;)V
    .locals 7
    .param p1    # Lcom/startshorts/androidplayer/viewmodel/purchase/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "intent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/purchase/a$g;

    .line 7
    .line 8
    if-eqz v0, :cond_5

    .line 9
    .line 10
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/purchase/a$g;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/purchase/a$g;->c()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->f:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/purchase/a$g;->a()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->g:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/purchase/a$g;->b()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->h:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/purchase/a$g;->c()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    sparse-switch v1, :sswitch_data_0

    .line 39
    .line 40
    .line 41
    goto/16 :goto_0

    .line 42
    .line 43
    :sswitch_0
    const-string p1, "coins_2_sub_dialog"

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_0

    .line 50
    .line 51
    goto/16 :goto_0

    .line 52
    .line 53
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->b0()Lkotlinx/coroutines/r;

    .line 54
    .line 55
    .line 56
    goto/16 :goto_0

    .line 57
    .line 58
    :sswitch_1
    const-string p1, "black_friday"

    .line 59
    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-nez p1, :cond_1

    .line 65
    .line 66
    goto/16 :goto_0

    .line 67
    .line 68
    :cond_1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->Z()Lkotlinx/coroutines/r;

    .line 69
    .line 70
    .line 71
    goto/16 :goto_0

    .line 72
    .line 73
    :sswitch_2
    const-string p1, "expansion"

    .line 74
    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-nez p1, :cond_2

    .line 80
    .line 81
    goto/16 :goto_0

    .line 82
    .line 83
    :cond_2
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->a0()Lkotlinx/coroutines/r;

    .line 84
    .line 85
    .line 86
    goto/16 :goto_0

    .line 87
    .line 88
    :sswitch_3
    const-string p1, "subs_expansion"

    .line 89
    .line 90
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-nez p1, :cond_3

    .line 95
    .line 96
    goto/16 :goto_0

    .line 97
    .line 98
    :cond_3
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->b0()Lkotlinx/coroutines/r;

    .line 99
    .line 100
    .line 101
    goto/16 :goto_0

    .line 102
    .line 103
    :sswitch_4
    const-string v1, "top_up"

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-nez v0, :cond_4

    .line 110
    .line 111
    goto/16 :goto_0

    .line 112
    .line 113
    :sswitch_5
    const-string v1, "coin_store"

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-nez v0, :cond_4

    .line 120
    .line 121
    goto/16 :goto_0

    .line 122
    .line 123
    :sswitch_6
    const-string v1, "top_up_dialog"

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-nez v0, :cond_4

    .line 130
    .line 131
    goto/16 :goto_0

    .line 132
    .line 133
    :cond_4
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/purchase/a$g;->c()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    const-string v0, "topup"

    .line 138
    .line 139
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->c0(Ljava/lang/String;Ljava/lang/String;)Lkotlinx/coroutines/r;

    .line 140
    .line 141
    .line 142
    goto/16 :goto_0

    .line 143
    .line 144
    :cond_5
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/purchase/a$f;

    .line 145
    .line 146
    if-eqz v0, :cond_6

    .line 147
    .line 148
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->d0()V

    .line 149
    .line 150
    .line 151
    goto/16 :goto_0

    .line 152
    .line 153
    :cond_6
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/purchase/a$b;

    .line 154
    .line 155
    if-eqz v0, :cond_7

    .line 156
    .line 157
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/purchase/a$b;

    .line 158
    .line 159
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/purchase/a$b;->a()Ljava/util/List;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->T(Ljava/util/List;)V

    .line 164
    .line 165
    .line 166
    goto/16 :goto_0

    .line 167
    .line 168
    :cond_7
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/purchase/a$d;

    .line 169
    .line 170
    if-eqz v0, :cond_8

    .line 171
    .line 172
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/purchase/a$d;

    .line 173
    .line 174
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/purchase/a$d;->b()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/purchase/a$d;->c()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/purchase/a$d;->d()Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/purchase/a$d;->a()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->V(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 191
    .line 192
    .line 193
    goto :goto_0

    .line 194
    :cond_8
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/purchase/a$e;

    .line 195
    .line 196
    if-eqz v0, :cond_9

    .line 197
    .line 198
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/purchase/a$e;

    .line 199
    .line 200
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/purchase/a$e;->a()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/purchase/a$e;->b()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/purchase/a$e;->c()Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    invoke-direct {p0, v0, v1, p1}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->W(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V

    .line 213
    .line 214
    .line 215
    goto :goto_0

    .line 216
    :cond_9
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/purchase/a$c;

    .line 217
    .line 218
    if-eqz v0, :cond_a

    .line 219
    .line 220
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/purchase/a$c;

    .line 221
    .line 222
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/purchase/a$c;->e()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/purchase/a$c;->b()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/purchase/a$c;->c()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/purchase/a$c;->d()Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/purchase/a$c;->a()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/purchase/a$c;->f()I

    .line 243
    .line 244
    .line 245
    move-result v6

    .line 246
    move-object v0, p0

    .line 247
    invoke-direct/range {v0 .. v6}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->U(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;I)V

    .line 248
    .line 249
    .line 250
    goto :goto_0

    .line 251
    :cond_a
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/purchase/a$i;

    .line 252
    .line 253
    if-eqz v0, :cond_b

    .line 254
    .line 255
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/purchase/a$i;

    .line 256
    .line 257
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/purchase/a$i;->a()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/purchase/a$i;->b()Ljava/lang/Integer;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    invoke-direct {p0, v0, p1}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->f0(Ljava/lang/String;Ljava/lang/Integer;)Lkotlinx/coroutines/r;

    .line 266
    .line 267
    .line 268
    goto :goto_0

    .line 269
    :cond_b
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/purchase/a$h;

    .line 270
    .line 271
    if-eqz v0, :cond_c

    .line 272
    .line 273
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/purchase/a$h;

    .line 274
    .line 275
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/purchase/a$h;->b()Landroid/content/Context;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/purchase/a$h;->a()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/purchase/a$h;->c()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    invoke-direct {p0, v0, v1, p1}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->e0(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 288
    .line 289
    .line 290
    :goto_0
    return-void

    .line 291
    :cond_c
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 292
    .line 293
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 294
    .line 295
    .line 296
    throw p1

    .line 297
    :sswitch_data_0
    .sparse-switch
        -0x4376d2fe -> :sswitch_6
        -0x3efce64d -> :sswitch_5
        -0x33bd4a3b -> :sswitch_4
        -0xa6d124d -> :sswitch_3
        0x110ccbf -> :sswitch_2
        0x69db459f -> :sswitch_1
        0x7080af71 -> :sswitch_0
    .end sparse-switch
.end method

.method public final g0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->n:Z

    .line 2
    .line 3
    return-void
.end method

.method public final h0(Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->i:Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;

    .line 2
    .line 3
    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "PurchaseViewModel"

    .line 2
    .line 3
    return-object v0
.end method
