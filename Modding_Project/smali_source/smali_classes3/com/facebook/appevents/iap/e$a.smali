.class public final Lcom/facebook/appevents/iap/e$a;
.super Ljava/lang/Object;
.source "InAppPurchaseBillingClientWrapperV5V7.kt"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/iap/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/appevents/iap/e$a;-><init>()V

    return-void
.end method

.method private final a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    const-class v0, Landroid/content/Context;

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "newBuilder"

    .line 8
    .line 9
    invoke-static {p2, v1, v0}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "setListener"

    .line 14
    .line 15
    filled-new-array {p4}, [Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {p3, v1, v2}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x0

    .line 24
    new-array v3, v2, [Ljava/lang/Class;

    .line 25
    .line 26
    const-string v4, "enablePendingPurchases"

    .line 27
    .line 28
    invoke-static {p3, v4, v3}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const-string v4, "build"

    .line 33
    .line 34
    new-array v5, v2, [Ljava/lang/Class;

    .line 35
    .line 36
    invoke-static {p3, v4, v5}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const/4 v5, 0x0

    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    if-nez v3, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {p2, v0, v5, p1}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->e(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    filled-new-array {p4}, [Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    move-result-object p4

    .line 66
    invoke-static {p2, p4, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-static {p3, v1, p1, p2}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->e(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-nez p1, :cond_1

    .line 79
    .line 80
    return-object v5

    .line 81
    :cond_1
    new-array p2, v2, [Ljava/lang/Object;

    .line 82
    .line 83
    invoke-static {p3, v3, p1, p2}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->e(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    new-array p2, v2, [Ljava/lang/Object;

    .line 88
    .line 89
    invoke-static {p3, v4, p1, p2}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->e(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    return-object p1

    .line 94
    :cond_2
    :goto_0
    return-object v5
.end method

.method private final b(Landroid/content/Context;)Lcom/facebook/appevents/iap/e;
    .locals 50

    .line 1
    const-string v0, "com.android.billingclient.api.BillingClient"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->a(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v3

    .line 7
    const-string v0, "com.android.billingclient.api.Purchase"

    .line 8
    .line 9
    invoke-static {v0}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->a(Ljava/lang/String;)Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    const-string v0, "com.android.billingclient.api.ProductDetails"

    .line 14
    .line 15
    invoke-static {v0}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->a(Ljava/lang/String;)Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    const-string v0, "com.android.billingclient.api.PurchaseHistoryRecord"

    .line 20
    .line 21
    invoke-static {v0}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->a(Ljava/lang/String;)Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    const-string v0, "com.android.billingclient.api.QueryProductDetailsParams$Product"

    .line 26
    .line 27
    invoke-static {v0}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->a(Ljava/lang/String;)Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    const-string v0, "com.android.billingclient.api.BillingResult"

    .line 32
    .line 33
    invoke-static {v0}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->a(Ljava/lang/String;)Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    const-string v0, "com.android.billingclient.api.QueryProductDetailsParams"

    .line 38
    .line 39
    invoke-static {v0}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->a(Ljava/lang/String;)Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-result-object v9

    .line 43
    const-string v0, "com.android.billingclient.api.QueryPurchaseHistoryParams"

    .line 44
    .line 45
    invoke-static {v0}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->a(Ljava/lang/String;)Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    move-result-object v10

    .line 49
    const-string v0, "com.android.billingclient.api.QueryPurchasesParams"

    .line 50
    .line 51
    invoke-static {v0}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->a(Ljava/lang/String;)Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    move-result-object v11

    .line 55
    const-string v0, "com.android.billingclient.api.QueryProductDetailsParams$Builder"

    .line 56
    .line 57
    invoke-static {v0}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->a(Ljava/lang/String;)Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    move-result-object v12

    .line 61
    const-string v0, "com.android.billingclient.api.QueryPurchaseHistoryParams$Builder"

    .line 62
    .line 63
    invoke-static {v0}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->a(Ljava/lang/String;)Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    move-result-object v13

    .line 67
    const-string v0, "com.android.billingclient.api.QueryPurchasesParams$Builder"

    .line 68
    .line 69
    invoke-static {v0}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->a(Ljava/lang/String;)Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    move-result-object v14

    .line 73
    const-string v0, "com.android.billingclient.api.QueryProductDetailsParams$Product$Builder"

    .line 74
    .line 75
    invoke-static {v0}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->a(Ljava/lang/String;)Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    move-result-object v15

    .line 79
    const-string v0, "com.android.billingclient.api.BillingClient$Builder"

    .line 80
    .line 81
    invoke-static {v0}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->a(Ljava/lang/String;)Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const-string v1, "com.android.billingclient.api.PurchasesUpdatedListener"

    .line 86
    .line 87
    invoke-static {v1}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->a(Ljava/lang/String;)Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    const-string v2, "com.android.billingclient.api.BillingClientStateListener"

    .line 92
    .line 93
    invoke-static {v2}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->a(Ljava/lang/String;)Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    move-result-object v16

    .line 97
    const-string v2, "com.android.billingclient.api.ProductDetailsResponseListener"

    .line 98
    .line 99
    invoke-static {v2}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->a(Ljava/lang/String;)Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    const-string v17, "com.android.billingclient.api.PurchasesResponseListener"

    .line 104
    .line 105
    move-object/from16 v18, v2

    .line 106
    .line 107
    invoke-static/range {v17 .. v17}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->a(Ljava/lang/String;)Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    const-string v17, "com.android.billingclient.api.PurchaseHistoryResponseListener"

    .line 112
    .line 113
    move-object/from16 v19, v2

    .line 114
    .line 115
    invoke-static/range {v17 .. v17}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->a(Ljava/lang/String;)Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    move-object/from16 v17, v2

    .line 120
    .line 121
    const-string v2, "Failed to create Google Play billing library wrapper for in-app purchase auto-logging"

    .line 122
    .line 123
    const/16 v20, 0x0

    .line 124
    .line 125
    if-eqz v3, :cond_0

    .line 126
    .line 127
    if-eqz v4, :cond_0

    .line 128
    .line 129
    if-eqz v5, :cond_0

    .line 130
    .line 131
    if-eqz v6, :cond_0

    .line 132
    .line 133
    if-eqz v7, :cond_0

    .line 134
    .line 135
    if-eqz v8, :cond_0

    .line 136
    .line 137
    if-eqz v9, :cond_0

    .line 138
    .line 139
    if-eqz v10, :cond_0

    .line 140
    .line 141
    if-eqz v11, :cond_0

    .line 142
    .line 143
    if-eqz v12, :cond_0

    .line 144
    .line 145
    if-eqz v13, :cond_0

    .line 146
    .line 147
    if-eqz v14, :cond_0

    .line 148
    .line 149
    if-eqz v15, :cond_0

    .line 150
    .line 151
    if-eqz v0, :cond_0

    .line 152
    .line 153
    if-eqz v1, :cond_0

    .line 154
    .line 155
    if-eqz v16, :cond_0

    .line 156
    .line 157
    if-eqz v18, :cond_0

    .line 158
    .line 159
    if-eqz v19, :cond_0

    .line 160
    .line 161
    if-nez v17, :cond_1

    .line 162
    .line 163
    :cond_0
    move-object v1, v2

    .line 164
    goto/16 :goto_1

    .line 165
    .line 166
    :cond_1
    move-object/from16 v21, v2

    .line 167
    .line 168
    const-string v2, "queryPurchasesAsync"

    .line 169
    .line 170
    move-object/from16 v22, v0

    .line 171
    .line 172
    move-object/from16 v0, v19

    .line 173
    .line 174
    move-object/from16 v19, v1

    .line 175
    .line 176
    filled-new-array {v11, v0}, [Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-static {v3, v2, v1}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 181
    .line 182
    .line 183
    move-result-object v23

    .line 184
    const/4 v1, 0x0

    .line 185
    new-array v2, v1, [Ljava/lang/Class;

    .line 186
    .line 187
    move-object/from16 v24, v0

    .line 188
    .line 189
    const-string v0, "newBuilder"

    .line 190
    .line 191
    invoke-static {v11, v0, v2}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 192
    .line 193
    .line 194
    move-result-object v25

    .line 195
    new-array v2, v1, [Ljava/lang/Class;

    .line 196
    .line 197
    const-string v1, "build"

    .line 198
    .line 199
    invoke-static {v14, v1, v2}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 200
    .line 201
    .line 202
    move-result-object v27

    .line 203
    const-class v2, Ljava/lang/String;

    .line 204
    .line 205
    move-object/from16 v28, v11

    .line 206
    .line 207
    filled-new-array {v2}, [Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    move-result-object v11

    .line 211
    move-object/from16 v29, v8

    .line 212
    .line 213
    const-string v8, "setProductType"

    .line 214
    .line 215
    invoke-static {v14, v8, v11}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 216
    .line 217
    .line 218
    move-result-object v30

    .line 219
    move-object/from16 v26, v14

    .line 220
    .line 221
    const/4 v11, 0x0

    .line 222
    new-array v14, v11, [Ljava/lang/Class;

    .line 223
    .line 224
    const-string v11, "getOriginalJson"

    .line 225
    .line 226
    invoke-static {v4, v11, v14}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 227
    .line 228
    .line 229
    move-result-object v32

    .line 230
    const-string v14, "queryPurchaseHistoryAsync"

    .line 231
    .line 232
    move-object/from16 v33, v4

    .line 233
    .line 234
    move-object/from16 v4, v17

    .line 235
    .line 236
    move-object/from16 v17, v5

    .line 237
    .line 238
    filled-new-array {v10, v4}, [Ljava/lang/Class;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    invoke-static {v3, v14, v5}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 243
    .line 244
    .line 245
    move-result-object v34

    .line 246
    const/4 v5, 0x0

    .line 247
    new-array v14, v5, [Ljava/lang/Class;

    .line 248
    .line 249
    invoke-static {v10, v0, v14}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 250
    .line 251
    .line 252
    move-result-object v31

    .line 253
    new-array v14, v5, [Ljava/lang/Class;

    .line 254
    .line 255
    invoke-static {v13, v1, v14}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 256
    .line 257
    .line 258
    move-result-object v35

    .line 259
    filled-new-array {v2}, [Ljava/lang/Class;

    .line 260
    .line 261
    .line 262
    move-result-object v14

    .line 263
    invoke-static {v13, v8, v14}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 264
    .line 265
    .line 266
    move-result-object v36

    .line 267
    new-array v14, v5, [Ljava/lang/Class;

    .line 268
    .line 269
    invoke-static {v6, v11, v14}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 270
    .line 271
    .line 272
    move-result-object v37

    .line 273
    const-string v11, "queryProductDetailsAsync"

    .line 274
    .line 275
    move-object/from16 v14, v18

    .line 276
    .line 277
    move-object/from16 v18, v4

    .line 278
    .line 279
    filled-new-array {v9, v14}, [Ljava/lang/Class;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    invoke-static {v3, v11, v4}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 284
    .line 285
    .line 286
    move-result-object v38

    .line 287
    new-array v4, v5, [Ljava/lang/Class;

    .line 288
    .line 289
    invoke-static {v9, v0, v4}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 290
    .line 291
    .line 292
    move-result-object v39

    .line 293
    new-array v4, v5, [Ljava/lang/Class;

    .line 294
    .line 295
    invoke-static {v12, v1, v4}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 296
    .line 297
    .line 298
    move-result-object v40

    .line 299
    const-class v4, Ljava/util/List;

    .line 300
    .line 301
    filled-new-array {v4}, [Ljava/lang/Class;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    const-string v11, "setProductList"

    .line 306
    .line 307
    invoke-static {v12, v11, v4}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 308
    .line 309
    .line 310
    move-result-object v42

    .line 311
    new-array v4, v5, [Ljava/lang/Class;

    .line 312
    .line 313
    invoke-static {v7, v0, v4}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    new-array v4, v5, [Ljava/lang/Class;

    .line 318
    .line 319
    invoke-static {v15, v1, v4}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 320
    .line 321
    .line 322
    move-result-object v43

    .line 323
    const-string v1, "setProductId"

    .line 324
    .line 325
    filled-new-array {v2}, [Ljava/lang/Class;

    .line 326
    .line 327
    .line 328
    move-result-object v4

    .line 329
    invoke-static {v15, v1, v4}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 330
    .line 331
    .line 332
    move-result-object v44

    .line 333
    filled-new-array {v2}, [Ljava/lang/Class;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    invoke-static {v15, v8, v1}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 338
    .line 339
    .line 340
    move-result-object v45

    .line 341
    const-string v1, "toString"

    .line 342
    .line 343
    new-array v2, v5, [Ljava/lang/Class;

    .line 344
    .line 345
    move-object/from16 v8, v17

    .line 346
    .line 347
    invoke-static {v8, v1, v2}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 348
    .line 349
    .line 350
    move-result-object v46

    .line 351
    const-string v1, "startConnection"

    .line 352
    .line 353
    filled-new-array/range {v16 .. v16}, [Ljava/lang/Class;

    .line 354
    .line 355
    .line 356
    move-result-object v2

    .line 357
    invoke-static {v3, v1, v2}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 358
    .line 359
    .line 360
    move-result-object v47

    .line 361
    const-string v1, "getResponseCode"

    .line 362
    .line 363
    new-array v2, v5, [Ljava/lang/Class;

    .line 364
    .line 365
    move-object/from16 v11, v29

    .line 366
    .line 367
    invoke-static {v11, v1, v2}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 368
    .line 369
    .line 370
    move-result-object v48

    .line 371
    if-eqz v23, :cond_4

    .line 372
    .line 373
    if-eqz v25, :cond_4

    .line 374
    .line 375
    if-eqz v27, :cond_4

    .line 376
    .line 377
    if-eqz v30, :cond_4

    .line 378
    .line 379
    if-eqz v32, :cond_4

    .line 380
    .line 381
    if-eqz v34, :cond_4

    .line 382
    .line 383
    if-eqz v31, :cond_4

    .line 384
    .line 385
    if-eqz v35, :cond_4

    .line 386
    .line 387
    if-eqz v36, :cond_4

    .line 388
    .line 389
    if-eqz v37, :cond_4

    .line 390
    .line 391
    if-eqz v38, :cond_4

    .line 392
    .line 393
    if-eqz v39, :cond_4

    .line 394
    .line 395
    if-eqz v40, :cond_4

    .line 396
    .line 397
    if-eqz v42, :cond_4

    .line 398
    .line 399
    if-eqz v0, :cond_4

    .line 400
    .line 401
    if-eqz v43, :cond_4

    .line 402
    .line 403
    if-eqz v44, :cond_4

    .line 404
    .line 405
    if-eqz v45, :cond_4

    .line 406
    .line 407
    if-eqz v46, :cond_4

    .line 408
    .line 409
    if-eqz v47, :cond_4

    .line 410
    .line 411
    if-nez v48, :cond_2

    .line 412
    .line 413
    goto/16 :goto_0

    .line 414
    .line 415
    :cond_2
    move-object/from16 v5, p0

    .line 416
    .line 417
    move-object/from16 v1, p1

    .line 418
    .line 419
    move-object/from16 v4, v19

    .line 420
    .line 421
    move-object/from16 v2, v22

    .line 422
    .line 423
    invoke-direct {v5, v1, v3, v2, v4}, Lcom/facebook/appevents/iap/e$a;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v2

    .line 427
    if-nez v2, :cond_3

    .line 428
    .line 429
    invoke-static {}, Lcom/facebook/appevents/iap/e;->h()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    const-string v1, "Failed to build a Google Play billing library wrapper for in-app purchase auto-logging"

    .line 434
    .line 435
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    .line 437
    .line 438
    return-object v20

    .line 439
    :cond_3
    new-instance v49, Lcom/facebook/appevents/iap/e;

    .line 440
    .line 441
    move-object/from16 v1, v49

    .line 442
    .line 443
    const/16 v41, 0x0

    .line 444
    .line 445
    move-object/from16 v17, v14

    .line 446
    .line 447
    move-object/from16 v19, v18

    .line 448
    .line 449
    move-object/from16 v18, v24

    .line 450
    .line 451
    move-object/from16 v4, v33

    .line 452
    .line 453
    move-object v5, v8

    .line 454
    move-object v8, v11

    .line 455
    move-object/from16 v11, v28

    .line 456
    .line 457
    move-object/from16 v14, v26

    .line 458
    .line 459
    move-object/from16 v20, v23

    .line 460
    .line 461
    move-object/from16 v21, v25

    .line 462
    .line 463
    move-object/from16 v22, v27

    .line 464
    .line 465
    move-object/from16 v23, v30

    .line 466
    .line 467
    move-object/from16 v24, v32

    .line 468
    .line 469
    move-object/from16 v25, v34

    .line 470
    .line 471
    move-object/from16 v26, v31

    .line 472
    .line 473
    move-object/from16 v27, v35

    .line 474
    .line 475
    move-object/from16 v28, v36

    .line 476
    .line 477
    move-object/from16 v29, v37

    .line 478
    .line 479
    move-object/from16 v30, v38

    .line 480
    .line 481
    move-object/from16 v31, v39

    .line 482
    .line 483
    move-object/from16 v32, v40

    .line 484
    .line 485
    move-object/from16 v33, v42

    .line 486
    .line 487
    move-object/from16 v34, v0

    .line 488
    .line 489
    move-object/from16 v35, v43

    .line 490
    .line 491
    move-object/from16 v36, v44

    .line 492
    .line 493
    move-object/from16 v37, v45

    .line 494
    .line 495
    move-object/from16 v38, v46

    .line 496
    .line 497
    move-object/from16 v39, v47

    .line 498
    .line 499
    move-object/from16 v40, v48

    .line 500
    .line 501
    invoke-direct/range {v1 .. v41}, Lcom/facebook/appevents/iap/e;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 502
    .line 503
    .line 504
    invoke-static/range {v49 .. v49}, Lcom/facebook/appevents/iap/e;->n(Lcom/facebook/appevents/iap/e;)V

    .line 505
    .line 506
    .line 507
    invoke-static {}, Lcom/facebook/appevents/iap/e;->e()Lcom/facebook/appevents/iap/e;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    return-object v0

    .line 512
    :cond_4
    :goto_0
    invoke-static {}, Lcom/facebook/appevents/iap/e;->h()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    move-object/from16 v1, v21

    .line 517
    .line 518
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    .line 520
    .line 521
    return-object v20

    .line 522
    :goto_1
    invoke-static {}, Lcom/facebook/appevents/iap/e;->h()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    .line 528
    .line 529
    return-object v20
.end method


# virtual methods
.method public final c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/appevents/iap/e;->d()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final declared-synchronized d(Landroid/content/Context;)Lcom/facebook/appevents/iap/e;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "context"

    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/facebook/appevents/iap/e;->e()Lcom/facebook/appevents/iap/e;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/facebook/appevents/iap/e$a;->b(Landroid/content/Context;)Lcom/facebook/appevents/iap/e;

    .line 14
    .line 15
    .line 16
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    monitor-exit p0

    .line 21
    return-object v0

    .line 22
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw p1
.end method

.method public final e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/appevents/iap/e;->f()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/appevents/iap/e;->g()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/reflect/Method;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string p3, "proxy"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "m"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return-object p1
.end method
