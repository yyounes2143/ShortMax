.class public final Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/ProductDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OneTimePurchaseOfferDetails"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$DiscountDisplayInfo;,
        Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$ValidTimeWindow;,
        Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$LimitedQuantityInfo;,
        Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$RentalDetails;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final e:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final f:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final g:Ljava/util/List;

.field private final h:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final i:Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$DiscountDisplayInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final j:Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$ValidTimeWindow;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final k:Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$LimitedQuantityInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final l:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final m:Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$RentalDetails;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final n:Lcom/android/billingclient/api/zzcs;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "formattedPrice"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->a:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "priceAmountMicros"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    iput-wide v0, p0, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->b:J

    .line 19
    .line 20
    const-string v0, "priceCurrencyCode"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->c:Ljava/lang/String;

    .line 27
    .line 28
    const-string v0, "offerIdToken"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const/4 v2, 0x0

    .line 39
    const/4 v3, 0x1

    .line 40
    if-ne v3, v1, :cond_0

    .line 41
    .line 42
    move-object v0, v2

    .line 43
    :cond_0
    iput-object v0, p0, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->d:Ljava/lang/String;

    .line 44
    .line 45
    const-string v0, "offerId"

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-ne v3, v1, :cond_1

    .line 56
    .line 57
    move-object v0, v2

    .line 58
    :cond_1
    iput-object v0, p0, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->e:Ljava/lang/String;

    .line 59
    .line 60
    const-string v0, "purchaseOptionId"

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-ne v3, v1, :cond_2

    .line 71
    .line 72
    move-object v0, v2

    .line 73
    :cond_2
    iput-object v0, p0, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->f:Ljava/lang/String;

    .line 74
    .line 75
    const-string v0, "offerType"

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    const-string v0, "offerTags"

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .line 90
    .line 91
    iput-object v1, p0, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->g:Ljava/util/List;

    .line 92
    .line 93
    if-eqz v0, :cond_3

    .line 94
    .line 95
    const/4 v1, 0x0

    .line 96
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-ge v1, v3, :cond_3

    .line 101
    .line 102
    iget-object v3, p0, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->g:Ljava/util/List;

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    add-int/lit8 v1, v1, 0x1

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_3
    const-string v0, "fullPriceMicros"

    .line 115
    .line 116
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_4

    .line 121
    .line 122
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 123
    .line 124
    .line 125
    move-result-wide v0

    .line 126
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    goto :goto_1

    .line 131
    :cond_4
    move-object v0, v2

    .line 132
    :goto_1
    iput-object v0, p0, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->h:Ljava/lang/Long;

    .line 133
    .line 134
    const-string v0, "discountDisplayInfo"

    .line 135
    .line 136
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    if-nez v0, :cond_5

    .line 141
    .line 142
    move-object v1, v2

    .line 143
    goto :goto_2

    .line 144
    :cond_5
    new-instance v1, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$DiscountDisplayInfo;

    .line 145
    .line 146
    invoke-direct {v1, v0}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$DiscountDisplayInfo;-><init>(Lorg/json/JSONObject;)V

    .line 147
    .line 148
    .line 149
    :goto_2
    iput-object v1, p0, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->i:Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$DiscountDisplayInfo;

    .line 150
    .line 151
    const-string/jumbo v0, "validTimeWindow"

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    if-nez v0, :cond_6

    .line 159
    .line 160
    move-object v1, v2

    .line 161
    goto :goto_3

    .line 162
    :cond_6
    new-instance v1, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$ValidTimeWindow;

    .line 163
    .line 164
    invoke-direct {v1, v0}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$ValidTimeWindow;-><init>(Lorg/json/JSONObject;)V

    .line 165
    .line 166
    .line 167
    :goto_3
    iput-object v1, p0, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->j:Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$ValidTimeWindow;

    .line 168
    .line 169
    const-string v0, "limitedQuantityInfo"

    .line 170
    .line 171
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    if-nez v0, :cond_7

    .line 176
    .line 177
    move-object v1, v2

    .line 178
    goto :goto_4

    .line 179
    :cond_7
    new-instance v1, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$LimitedQuantityInfo;

    .line 180
    .line 181
    invoke-direct {v1, v0}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$LimitedQuantityInfo;-><init>(Lorg/json/JSONObject;)V

    .line 182
    .line 183
    .line 184
    :goto_4
    iput-object v1, p0, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->k:Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$LimitedQuantityInfo;

    .line 185
    .line 186
    const-string v0, "serializedDocid"

    .line 187
    .line 188
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    iput-object v0, p0, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->l:Ljava/lang/String;

    .line 193
    .line 194
    const-string v0, "preorderDetails"

    .line 195
    .line 196
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    if-eqz v0, :cond_8

    .line 201
    .line 202
    const-string v1, "preorderReleaseTimeMillis"

    .line 203
    .line 204
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 205
    .line 206
    .line 207
    const-string v1, "preorderPresaleEndTimeMillis"

    .line 208
    .line 209
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 210
    .line 211
    .line 212
    :cond_8
    const-string v0, "rentalDetails"

    .line 213
    .line 214
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    if-nez v0, :cond_9

    .line 219
    .line 220
    move-object v1, v2

    .line 221
    goto :goto_5

    .line 222
    :cond_9
    new-instance v1, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$RentalDetails;

    .line 223
    .line 224
    invoke-direct {v1, v0}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$RentalDetails;-><init>(Lorg/json/JSONObject;)V

    .line 225
    .line 226
    .line 227
    :goto_5
    iput-object v1, p0, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->m:Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$RentalDetails;

    .line 228
    .line 229
    const-string v0, "autoPayDetails"

    .line 230
    .line 231
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    if-nez v0, :cond_a

    .line 236
    .line 237
    goto :goto_6

    .line 238
    :cond_a
    new-instance v2, Lcom/android/billingclient/api/zzcs;

    .line 239
    .line 240
    invoke-direct {v2, v0}, Lcom/android/billingclient/api/zzcs;-><init>(Lorg/json/JSONObject;)V

    .line 241
    .line 242
    .line 243
    :goto_6
    iput-object v2, p0, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->n:Lcom/android/billingclient/api/zzcs;

    .line 244
    .line 245
    const-string v0, "pricingPhases"

    .line 246
    .line 247
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    if-nez p1, :cond_b

    .line 252
    .line 253
    return-void

    .line 254
    :cond_b
    new-instance v0, Lcom/android/billingclient/api/ProductDetails$PricingPhases;

    .line 255
    .line 256
    invoke-direct {v0, p1}, Lcom/android/billingclient/api/ProductDetails$PricingPhases;-><init>(Lorg/json/JSONArray;)V

    .line 257
    .line 258
    .line 259
    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDiscountDisplayInfo()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$DiscountDisplayInfo;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/android/billingclient/api/zzl;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->i:Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$DiscountDisplayInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFormattedPrice()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFullPriceMicros()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/android/billingclient/api/zzl;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->h:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLimitedQuantityInfo()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$LimitedQuantityInfo;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/android/billingclient/api/zzl;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->k:Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$LimitedQuantityInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOfferId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/android/billingclient/api/zzl;
    .end annotation

    .annotation build Lcom/android/billingclient/api/zzm;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOfferTags()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/android/billingclient/api/zzl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->g:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOfferToken()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/android/billingclient/api/zzl;
    .end annotation

    .annotation build Lcom/android/billingclient/api/zzm;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPriceAmountMicros()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getPriceCurrencyCode()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPurchaseOptionId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/android/billingclient/api/zzm;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRentalDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$RentalDetails;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/android/billingclient/api/zzm;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->m:Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$RentalDetails;

    .line 2
    .line 3
    return-object v0
.end method

.method public getValidTimeWindow()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$ValidTimeWindow;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/android/billingclient/api/zzl;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->j:Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails$ValidTimeWindow;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zza()Lcom/android/billingclient/api/zzcs;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->n:Lcom/android/billingclient/api/zzcs;

    .line 2
    .line 3
    return-object v0
.end method
