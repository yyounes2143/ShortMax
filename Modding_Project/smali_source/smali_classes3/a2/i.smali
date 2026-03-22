.class public final La2/i;
.super Ljava/lang/Object;
.source "AutomaticAnalyticsLogger.kt"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La2/i$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAutomaticAnalyticsLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AutomaticAnalyticsLogger.kt\ncom/facebook/appevents/internal/AutomaticAnalyticsLogger\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,532:1\n1549#2:533\n1620#2,3:534\n215#3,2:537\n*S KotlinDebug\n*F\n+ 1 AutomaticAnalyticsLogger.kt\ncom/facebook/appevents/internal/AutomaticAnalyticsLogger\n*L\n198#1:533\n198#1:534,3\n480#1:537,2\n*E\n"
    }
.end annotation


# static fields
.field public static final a:La2/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Ljava/lang/String;

.field private static final c:Lcom/facebook/appevents/h0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, La2/i;

    .line 2
    .line 3
    invoke-direct {v0}, La2/i;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, La2/i;->a:La2/i;

    .line 7
    .line 8
    const-class v0, La2/i;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, La2/i;->b:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v0, Lcom/facebook/appevents/h0;

    .line 17
    .line 18
    invoke-static {}, Lcom/facebook/v;->l()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-direct {v0, v1}, Lcom/facebook/appevents/h0;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    sput-object v0, La2/i;->c:Lcom/facebook/appevents/h0;

    .line 26
    .line 27
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final declared-synchronized a(Ljava/util/List;)Landroid/os/Bundle;
    .locals 6
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "La2/i$a;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-class v0, La2/i;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "purchaseLoggingParametersList"

    .line 5
    .line 6
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, La2/i$a;

    .line 15
    .line 16
    new-instance v1, Ly1/a;

    .line 17
    .line 18
    const-string v2, "fb_mobile_purchase"

    .line 19
    .line 20
    invoke-virtual {p0}, La2/i$a;->d()Ljava/math/BigDecimal;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    invoke-virtual {p0}, La2/i$a;->a()Ljava/util/Currency;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-direct {v1, v2, v3, v4, v5}, Ly1/a;-><init>(Ljava/lang/String;DLjava/util/Currency;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    new-instance v4, Lkotlin/Pair;

    .line 44
    .line 45
    invoke-virtual {p0}, La2/i$a;->c()Landroid/os/Bundle;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {p0}, La2/i$a;->b()Lcom/facebook/appevents/i0;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-direct {v4, v5, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    const/4 v4, 0x1

    .line 61
    invoke-static {v1, v2, v3, v4, p0}, Lcom/facebook/appevents/iap/g;->f(Ljava/util/List;JZLjava/util/List;)Landroid/os/Bundle;

    .line 62
    .line 63
    .line 64
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit v0

    .line 66
    return-object p0

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    throw p0
.end method

.method private final b(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/appevents/iap/InAppPurchaseUtils$BillingClientVersion;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/facebook/appevents/iap/InAppPurchaseUtils$BillingClientVersion;",
            ")",
            "Ljava/util/List<",
            "La2/i$a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2, v0, p3}, La2/i;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/appevents/iap/InAppPurchaseUtils$BillingClientVersion;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method private final c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/appevents/iap/InAppPurchaseUtils$BillingClientVersion;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/appevents/iap/InAppPurchaseUtils$BillingClientVersion;",
            ")",
            "Ljava/util/List<",
            "La2/i$a;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    const-string v1, "purchaseJSON.getString(C\u2026stants.GP_IAP_PRODUCT_ID)"

    .line 4
    .line 5
    const-string v2, "productId"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    .line 9
    .line 10
    move-object/from16 v4, p1

    .line 11
    .line 12
    invoke-direct {v8, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance v9, Lorg/json/JSONObject;

    .line 16
    .line 17
    move-object/from16 v4, p2

    .line 18
    .line 19
    invoke-direct {v9, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance v6, Landroid/os/Bundle;

    .line 23
    .line 24
    const/4 v4, 0x1

    .line 25
    invoke-direct {v6, v4}, Landroid/os/Bundle;-><init>(I)V

    .line 26
    .line 27
    .line 28
    new-instance v7, Lcom/facebook/appevents/i0;

    .line 29
    .line 30
    invoke-direct {v7}, Lcom/facebook/appevents/i0;-><init>()V

    .line 31
    .line 32
    .line 33
    if-eqz p4, :cond_0

    .line 34
    .line 35
    sget-object v10, Lcom/facebook/appevents/i0;->b:Lcom/facebook/appevents/i0$a;

    .line 36
    .line 37
    sget-object v11, Lcom/facebook/appevents/OperationalDataEnum;->IAPParameters:Lcom/facebook/appevents/OperationalDataEnum;

    .line 38
    .line 39
    const-string v12, "fb_iap_sdk_supported_library_versions"

    .line 40
    .line 41
    invoke-virtual/range {p4 .. p4}, Lcom/facebook/appevents/iap/InAppPurchaseUtils$BillingClientVersion;->getType()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v13

    .line 45
    move-object v14, v6

    .line 46
    move-object v15, v7

    .line 47
    invoke-virtual/range {v10 .. v15}, Lcom/facebook/appevents/i0$a;->a(Lcom/facebook/appevents/OperationalDataEnum;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/appevents/i0;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    move-object/from16 v2, p0

    .line 53
    .line 54
    goto/16 :goto_3

    .line 55
    .line 56
    :catch_1
    move-exception v0

    .line 57
    move-object/from16 v2, p0

    .line 58
    .line 59
    goto/16 :goto_4

    .line 60
    .line 61
    :cond_0
    :goto_0
    sget-object v4, Lcom/facebook/appevents/i0;->b:Lcom/facebook/appevents/i0$a;

    .line 62
    .line 63
    sget-object v5, Lcom/facebook/appevents/OperationalDataEnum;->IAPParameters:Lcom/facebook/appevents/OperationalDataEnum;

    .line 64
    .line 65
    const-string v12, "fb_iap_product_id"

    .line 66
    .line 67
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v13

    .line 71
    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    move-object v10, v4

    .line 75
    move-object v11, v5

    .line 76
    move-object v14, v6

    .line 77
    move-object v15, v7

    .line 78
    invoke-virtual/range {v10 .. v15}, Lcom/facebook/appevents/i0$a;->a(Lcom/facebook/appevents/OperationalDataEnum;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/appevents/i0;)V

    .line 79
    .line 80
    .line 81
    const-string v12, "fb_content_id"

    .line 82
    .line 83
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v13

    .line 87
    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    move-object v10, v4

    .line 91
    move-object v11, v5

    .line 92
    move-object v14, v6

    .line 93
    move-object v15, v7

    .line 94
    invoke-virtual/range {v10 .. v15}, Lcom/facebook/appevents/i0$a;->a(Lcom/facebook/appevents/OperationalDataEnum;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/appevents/i0;)V

    .line 95
    .line 96
    .line 97
    const-string v12, "android_dynamic_ads_content_id"

    .line 98
    .line 99
    const-string v13, "client_implicit"

    .line 100
    .line 101
    move-object v10, v4

    .line 102
    move-object v11, v5

    .line 103
    move-object v14, v6

    .line 104
    move-object v15, v7

    .line 105
    invoke-virtual/range {v10 .. v15}, Lcom/facebook/appevents/i0$a;->a(Lcom/facebook/appevents/OperationalDataEnum;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/appevents/i0;)V

    .line 106
    .line 107
    .line 108
    const-string v12, "fb_iap_purchase_time"

    .line 109
    .line 110
    const-string v1, "purchaseTime"

    .line 111
    .line 112
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v13

    .line 116
    const-string v1, "purchaseJSON.getString(C\u2026nts.GP_IAP_PURCHASE_TIME)"

    .line 117
    .line 118
    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    move-object v10, v4

    .line 122
    move-object v11, v5

    .line 123
    move-object v14, v6

    .line 124
    move-object v15, v7

    .line 125
    invoke-virtual/range {v10 .. v15}, Lcom/facebook/appevents/i0$a;->a(Lcom/facebook/appevents/OperationalDataEnum;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/appevents/i0;)V

    .line 126
    .line 127
    .line 128
    const-string v12, "fb_iap_purchase_token"

    .line 129
    .line 130
    const-string v1, "purchaseToken"

    .line 131
    .line 132
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v13

    .line 136
    const-string v1, "purchaseJSON.getString(C\u2026ts.GP_IAP_PURCHASE_TOKEN)"

    .line 137
    .line 138
    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    move-object v10, v4

    .line 142
    move-object v11, v5

    .line 143
    move-object v14, v6

    .line 144
    move-object v15, v7

    .line 145
    invoke-virtual/range {v10 .. v15}, Lcom/facebook/appevents/i0$a;->a(Lcom/facebook/appevents/OperationalDataEnum;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/appevents/i0;)V

    .line 146
    .line 147
    .line 148
    const-string v12, "fb_iap_package_name"

    .line 149
    .line 150
    const-string v1, "packageName"

    .line 151
    .line 152
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v13

    .line 156
    const-string v1, "purchaseJSON.optString(C\u2026ants.GP_IAP_PACKAGE_NAME)"

    .line 157
    .line 158
    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    move-object v10, v4

    .line 162
    move-object v11, v5

    .line 163
    move-object v14, v6

    .line 164
    move-object v15, v7

    .line 165
    invoke-virtual/range {v10 .. v15}, Lcom/facebook/appevents/i0$a;->a(Lcom/facebook/appevents/OperationalDataEnum;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/appevents/i0;)V

    .line 166
    .line 167
    .line 168
    const-string v12, "fb_iap_product_title"

    .line 169
    .line 170
    const-string v1, "title"

    .line 171
    .line 172
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v13

    .line 176
    const-string v1, "skuDetailsJSON.optString(Constants.GP_IAP_TITLE)"

    .line 177
    .line 178
    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    move-object v10, v4

    .line 182
    move-object v11, v5

    .line 183
    move-object v14, v6

    .line 184
    move-object v15, v7

    .line 185
    invoke-virtual/range {v10 .. v15}, Lcom/facebook/appevents/i0$a;->a(Lcom/facebook/appevents/OperationalDataEnum;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/appevents/i0;)V

    .line 186
    .line 187
    .line 188
    const-string v12, "fb_iap_product_description"

    .line 189
    .line 190
    const-string v1, "description"

    .line 191
    .line 192
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v13

    .line 196
    const-string v1, "skuDetailsJSON.optString\u2026tants.GP_IAP_DESCRIPTION)"

    .line 197
    .line 198
    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    move-object v10, v4

    .line 202
    move-object v11, v5

    .line 203
    move-object v14, v6

    .line 204
    move-object v15, v7

    .line 205
    invoke-virtual/range {v10 .. v15}, Lcom/facebook/appevents/i0$a;->a(Lcom/facebook/appevents/OperationalDataEnum;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/appevents/i0;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    const-string v12, "fb_iap_product_type"

    .line 213
    .line 214
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    move-object v10, v4

    .line 218
    move-object v11, v5

    .line 219
    move-object v13, v1

    .line 220
    move-object v14, v6

    .line 221
    move-object v15, v7

    .line 222
    invoke-virtual/range {v10 .. v15}, Lcom/facebook/appevents/i0$a;->a(Lcom/facebook/appevents/OperationalDataEnum;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/appevents/i0;)V

    .line 223
    .line 224
    .line 225
    invoke-static {}, Lcom/facebook/appevents/iap/g;->e()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v13

    .line 229
    if-eqz v13, :cond_1

    .line 230
    .line 231
    const-string v12, "fb_iap_client_library_version"

    .line 232
    .line 233
    move-object v10, v4

    .line 234
    move-object v11, v5

    .line 235
    move-object v14, v6

    .line 236
    move-object v15, v7

    .line 237
    invoke-virtual/range {v10 .. v15}, Lcom/facebook/appevents/i0$a;->a(Lcom/facebook/appevents/OperationalDataEnum;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/appevents/i0;)V

    .line 238
    .line 239
    .line 240
    :cond_1
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 249
    .line 250
    .line 251
    move-result v2

    .line 252
    if-eqz v2, :cond_2

    .line 253
    .line 254
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    check-cast v2, Ljava/util/Map$Entry;

    .line 259
    .line 260
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v4

    .line 264
    move-object v12, v4

    .line 265
    check-cast v12, Ljava/lang/String;

    .line 266
    .line 267
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    move-object v13, v2

    .line 272
    check-cast v13, Ljava/lang/String;

    .line 273
    .line 274
    sget-object v10, Lcom/facebook/appevents/i0;->b:Lcom/facebook/appevents/i0$a;

    .line 275
    .line 276
    sget-object v11, Lcom/facebook/appevents/OperationalDataEnum;->IAPParameters:Lcom/facebook/appevents/OperationalDataEnum;

    .line 277
    .line 278
    move-object v14, v6

    .line 279
    move-object v15, v7

    .line 280
    invoke-virtual/range {v10 .. v15}, Lcom/facebook/appevents/i0$a;->a(Lcom/facebook/appevents/OperationalDataEnum;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/appevents/i0;)V

    .line 281
    .line 282
    .line 283
    goto :goto_1

    .line 284
    :cond_2
    const-string v0, "price_amount_micros"

    .line 285
    .line 286
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    if-eqz v0, :cond_4

    .line 291
    .line 292
    move-object/from16 v4, p0

    .line 293
    .line 294
    move-object v5, v1

    .line 295
    invoke-direct/range {v4 .. v9}, La2/i;->d(Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/appevents/i0;Lorg/json/JSONObject;Lorg/json/JSONObject;)La2/i$a;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    filled-new-array {v0}, [La2/i$a;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    :cond_3
    move-object/from16 v2, p0

    .line 308
    .line 309
    goto :goto_2

    .line 310
    :cond_4
    const-string v0, "subscriptionOfferDetails"

    .line 311
    .line 312
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 313
    .line 314
    .line 315
    move-result v0

    .line 316
    if-nez v0, :cond_5

    .line 317
    .line 318
    const-string v0, "oneTimePurchaseOfferDetails"

    .line 319
    .line 320
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 321
    .line 322
    .line 323
    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    if-eqz v0, :cond_3

    .line 325
    .line 326
    :cond_5
    move-object/from16 v2, p0

    .line 327
    .line 328
    :try_start_1
    invoke-direct {v2, v1, v6, v7, v9}, La2/i;->e(Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/appevents/i0;Lorg/json/JSONObject;)Ljava/util/List;

    .line 329
    .line 330
    .line 331
    move-result-object v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 332
    :goto_2
    return-object v3

    .line 333
    :catch_2
    move-exception v0

    .line 334
    goto :goto_3

    .line 335
    :catch_3
    move-exception v0

    .line 336
    goto :goto_4

    .line 337
    :goto_3
    sget-object v1, La2/i;->b:Ljava/lang/String;

    .line 338
    .line 339
    const-string v4, "Failed to get purchase logging parameters,"

    .line 340
    .line 341
    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 342
    .line 343
    .line 344
    return-object v3

    .line 345
    :goto_4
    sget-object v1, La2/i;->b:Ljava/lang/String;

    .line 346
    .line 347
    const-string v4, "Error parsing in-app purchase/subscription data."

    .line 348
    .line 349
    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 350
    .line 351
    .line 352
    return-object v3
.end method

.method private final d(Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/appevents/i0;Lorg/json/JSONObject;Lorg/json/JSONObject;)La2/i$a;
    .locals 7

    .line 1
    sget-object v0, Lcom/facebook/appevents/iap/InAppPurchaseUtils$IAPProductType;->SUBS:Lcom/facebook/appevents/iap/InAppPurchaseUtils$IAPProductType;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/facebook/appevents/iap/InAppPurchaseUtils$IAPProductType;->getType()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    sget-object p1, Lcom/facebook/appevents/i0;->b:Lcom/facebook/appevents/i0$a;

    .line 14
    .line 15
    sget-object v6, Lcom/facebook/appevents/OperationalDataEnum;->IAPParameters:Lcom/facebook/appevents/OperationalDataEnum;

    .line 16
    .line 17
    const-string v0, "autoRenewing"

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p4, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 21
    .line 22
    .line 23
    move-result p4

    .line 24
    invoke-static {p4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const-string p4, "toString(\n              \u2026      )\n                )"

    .line 29
    .line 30
    invoke-static {v3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v2, "fb_iap_subs_auto_renewing"

    .line 34
    .line 35
    move-object v0, p1

    .line 36
    move-object v1, v6

    .line 37
    move-object v4, p2

    .line 38
    move-object v5, p3

    .line 39
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/appevents/i0$a;->a(Lcom/facebook/appevents/OperationalDataEnum;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/appevents/i0;)V

    .line 40
    .line 41
    .line 42
    const-string p4, "subscriptionPeriod"

    .line 43
    .line 44
    invoke-virtual {p5, p4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    const-string p4, "skuDetailsJSON.optString\u2026_IAP_SUBSCRIPTION_PERIOD)"

    .line 49
    .line 50
    invoke-static {v3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string v2, "fb_iap_subs_period"

    .line 54
    .line 55
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/appevents/i0$a;->a(Lcom/facebook/appevents/OperationalDataEnum;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/appevents/i0;)V

    .line 56
    .line 57
    .line 58
    const-string p4, "freeTrialPeriod"

    .line 59
    .line 60
    invoke-virtual {p5, p4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    const-string p4, "skuDetailsJSON.optString\u2026GP_IAP_FREE_TRIAL_PERIOD)"

    .line 65
    .line 66
    invoke-static {v3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v2, "fb_free_trial_period"

    .line 70
    .line 71
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/appevents/i0$a;->a(Lcom/facebook/appevents/OperationalDataEnum;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/appevents/i0;)V

    .line 72
    .line 73
    .line 74
    const-string p4, "introductoryPriceCycles"

    .line 75
    .line 76
    invoke-virtual {p5, p4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-static {v3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 84
    .line 85
    .line 86
    move-result p4

    .line 87
    if-lez p4, :cond_0

    .line 88
    .line 89
    const-string v2, "fb_intro_price_cycles"

    .line 90
    .line 91
    move-object v0, p1

    .line 92
    move-object v1, v6

    .line 93
    move-object v4, p2

    .line 94
    move-object v5, p3

    .line 95
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/appevents/i0$a;->a(Lcom/facebook/appevents/OperationalDataEnum;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/appevents/i0;)V

    .line 96
    .line 97
    .line 98
    :cond_0
    const-string p4, "introductoryPricePeriod"

    .line 99
    .line 100
    invoke-virtual {p5, p4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-static {v3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 108
    .line 109
    .line 110
    move-result p4

    .line 111
    if-lez p4, :cond_1

    .line 112
    .line 113
    const-string v2, "fb_intro_period"

    .line 114
    .line 115
    move-object v0, p1

    .line 116
    move-object v1, v6

    .line 117
    move-object v4, p2

    .line 118
    move-object v5, p3

    .line 119
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/appevents/i0$a;->a(Lcom/facebook/appevents/OperationalDataEnum;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/appevents/i0;)V

    .line 120
    .line 121
    .line 122
    :cond_1
    const-string p4, "introductoryPriceAmountMicros"

    .line 123
    .line 124
    invoke-virtual {p5, p4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-static {v3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 132
    .line 133
    .line 134
    move-result p4

    .line 135
    if-lez p4, :cond_2

    .line 136
    .line 137
    const-string v2, "fb_intro_price_amount_micros"

    .line 138
    .line 139
    move-object v0, p1

    .line 140
    move-object v1, v6

    .line 141
    move-object v4, p2

    .line 142
    move-object v5, p3

    .line 143
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/appevents/i0$a;->a(Lcom/facebook/appevents/OperationalDataEnum;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/appevents/i0;)V

    .line 144
    .line 145
    .line 146
    :cond_2
    new-instance p1, La2/i$a;

    .line 147
    .line 148
    new-instance p4, Ljava/math/BigDecimal;

    .line 149
    .line 150
    const-string v0, "price_amount_micros"

    .line 151
    .line 152
    invoke-virtual {p5, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 153
    .line 154
    .line 155
    move-result-wide v0

    .line 156
    long-to-double v0, v0

    .line 157
    const-wide v2, 0x412e848000000000L    # 1000000.0

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    div-double/2addr v0, v2

    .line 163
    invoke-direct {p4, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    .line 164
    .line 165
    .line 166
    const-string v0, "price_currency_code"

    .line 167
    .line 168
    invoke-virtual {p5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p5

    .line 172
    invoke-static {p5}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    .line 173
    .line 174
    .line 175
    move-result-object p5

    .line 176
    const-string v0, "getInstance(skuDetailsJS\u2026RICE_CURRENCY_CODE_V2V4))"

    .line 177
    .line 178
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-direct {p1, p4, p5, p2, p3}, La2/i$a;-><init>(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;Lcom/facebook/appevents/i0;)V

    .line 182
    .line 183
    .line 184
    return-object p1
.end method

.method private final e(Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/appevents/i0;Lorg/json/JSONObject;)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/facebook/appevents/i0;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "La2/i$a;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    sget-object v2, Lcom/facebook/appevents/iap/InAppPurchaseUtils$IAPProductType;->SUBS:Lcom/facebook/appevents/iap/InAppPurchaseUtils$IAPProductType;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/facebook/appevents/iap/InAppPurchaseUtils$IAPProductType;->getType()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    move-object/from16 v3, p1

    .line 12
    .line 13
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const-string v3, "priceCurrencyCode"

    .line 18
    .line 19
    const-wide v4, 0x412e848000000000L    # 1000000.0

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    const-string v6, "priceAmountMicros"

    .line 25
    .line 26
    const/4 v7, 0x0

    .line 27
    if-eqz v2, :cond_5

    .line 28
    .line 29
    new-instance v2, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v8, "subscriptionOfferDetails"

    .line 35
    .line 36
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 37
    .line 38
    .line 39
    move-result-object v9

    .line 40
    if-nez v9, :cond_0

    .line 41
    .line 42
    return-object v7

    .line 43
    :cond_0
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    .line 44
    .line 45
    .line 46
    move-result v9

    .line 47
    const/4 v10, 0x0

    .line 48
    :goto_0
    if-ge v10, v9, :cond_4

    .line 49
    .line 50
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 51
    .line 52
    .line 53
    move-result-object v11

    .line 54
    invoke-virtual {v11, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 55
    .line 56
    .line 57
    move-result-object v11

    .line 58
    if-nez v11, :cond_1

    .line 59
    .line 60
    return-object v7

    .line 61
    :cond_1
    new-instance v15, Landroid/os/Bundle;

    .line 62
    .line 63
    invoke-direct {v15, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual/range {p3 .. p3}, Lcom/facebook/appevents/i0;->c()Lcom/facebook/appevents/i0;

    .line 67
    .line 68
    .line 69
    move-result-object v14

    .line 70
    const-string v12, "basePlanId"

    .line 71
    .line 72
    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v13

    .line 76
    sget-object v18, Lcom/facebook/appevents/i0;->b:Lcom/facebook/appevents/i0$a;

    .line 77
    .line 78
    sget-object v19, Lcom/facebook/appevents/OperationalDataEnum;->IAPParameters:Lcom/facebook/appevents/OperationalDataEnum;

    .line 79
    .line 80
    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string v16, "fb_iap_base_plan"

    .line 84
    .line 85
    move-object/from16 v12, v18

    .line 86
    .line 87
    move-object/from16 v17, v13

    .line 88
    .line 89
    move-object/from16 v13, v19

    .line 90
    .line 91
    move-object/from16 p1, v14

    .line 92
    .line 93
    move-object/from16 v14, v16

    .line 94
    .line 95
    move-object/from16 v20, v15

    .line 96
    .line 97
    move-object/from16 v15, v17

    .line 98
    .line 99
    move-object/from16 v16, v20

    .line 100
    .line 101
    move-object/from16 v17, p1

    .line 102
    .line 103
    invoke-virtual/range {v12 .. v17}, Lcom/facebook/appevents/i0$a;->a(Lcom/facebook/appevents/OperationalDataEnum;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/appevents/i0;)V

    .line 104
    .line 105
    .line 106
    const-string v12, "pricingPhases"

    .line 107
    .line 108
    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 109
    .line 110
    .line 111
    move-result-object v11

    .line 112
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    .line 113
    .line 114
    .line 115
    move-result v12

    .line 116
    add-int/lit8 v12, v12, -0x1

    .line 117
    .line 118
    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 119
    .line 120
    .line 121
    move-result-object v11

    .line 122
    if-nez v11, :cond_2

    .line 123
    .line 124
    return-object v7

    .line 125
    :cond_2
    const-string v12, "billingPeriod"

    .line 126
    .line 127
    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v15

    .line 131
    const-string v12, "subscriptionJSON.optStri\u2026IOD\n                    )"

    .line 132
    .line 133
    invoke-static {v15, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    const-string v14, "fb_iap_subs_period"

    .line 137
    .line 138
    move-object/from16 v12, v18

    .line 139
    .line 140
    move-object/from16 v13, v19

    .line 141
    .line 142
    move-object/from16 v16, v20

    .line 143
    .line 144
    move-object/from16 v17, p1

    .line 145
    .line 146
    invoke-virtual/range {v12 .. v17}, Lcom/facebook/appevents/i0$a;->a(Lcom/facebook/appevents/OperationalDataEnum;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/appevents/i0;)V

    .line 147
    .line 148
    .line 149
    const-string v12, "recurrenceMode"

    .line 150
    .line 151
    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 152
    .line 153
    .line 154
    move-result v13

    .line 155
    if-eqz v13, :cond_3

    .line 156
    .line 157
    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    move-result v12

    .line 161
    const/4 v13, 0x3

    .line 162
    if-eq v12, v13, :cond_3

    .line 163
    .line 164
    const-string v14, "fb_iap_subs_auto_renewing"

    .line 165
    .line 166
    const-string v15, "true"

    .line 167
    .line 168
    move-object/from16 v12, v18

    .line 169
    .line 170
    move-object/from16 v13, v19

    .line 171
    .line 172
    move-object/from16 v16, v20

    .line 173
    .line 174
    move-object/from16 v17, p1

    .line 175
    .line 176
    invoke-virtual/range {v12 .. v17}, Lcom/facebook/appevents/i0$a;->a(Lcom/facebook/appevents/OperationalDataEnum;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/appevents/i0;)V

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_3
    const-string v14, "fb_iap_subs_auto_renewing"

    .line 181
    .line 182
    const-string v15, "false"

    .line 183
    .line 184
    move-object/from16 v12, v18

    .line 185
    .line 186
    move-object/from16 v13, v19

    .line 187
    .line 188
    move-object/from16 v16, v20

    .line 189
    .line 190
    move-object/from16 v17, p1

    .line 191
    .line 192
    invoke-virtual/range {v12 .. v17}, Lcom/facebook/appevents/i0$a;->a(Lcom/facebook/appevents/OperationalDataEnum;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/appevents/i0;)V

    .line 193
    .line 194
    .line 195
    :goto_1
    new-instance v12, La2/i$a;

    .line 196
    .line 197
    new-instance v13, Ljava/math/BigDecimal;

    .line 198
    .line 199
    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 200
    .line 201
    .line 202
    move-result-wide v14

    .line 203
    long-to-double v14, v14

    .line 204
    div-double/2addr v14, v4

    .line 205
    invoke-direct {v13, v14, v15}, Ljava/math/BigDecimal;-><init>(D)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v11

    .line 212
    invoke-static {v11}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    .line 213
    .line 214
    .line 215
    move-result-object v11

    .line 216
    const-string v14, "getInstance(subscription\u2026RICE_CURRENCY_CODE_V5V7))"

    .line 217
    .line 218
    invoke-static {v11, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    move-object/from16 v15, p1

    .line 222
    .line 223
    move-object/from16 v14, v20

    .line 224
    .line 225
    invoke-direct {v12, v13, v11, v14, v15}, La2/i$a;-><init>(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;Lcom/facebook/appevents/i0;)V

    .line 226
    .line 227
    .line 228
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    add-int/lit8 v10, v10, 0x1

    .line 232
    .line 233
    goto/16 :goto_0

    .line 234
    .line 235
    :cond_4
    return-object v2

    .line 236
    :cond_5
    const-string v2, "oneTimePurchaseOfferDetails"

    .line 237
    .line 238
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    if-nez v1, :cond_6

    .line 243
    .line 244
    return-object v7

    .line 245
    :cond_6
    new-instance v2, La2/i$a;

    .line 246
    .line 247
    new-instance v7, Ljava/math/BigDecimal;

    .line 248
    .line 249
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 250
    .line 251
    .line 252
    move-result-wide v8

    .line 253
    long-to-double v8, v8

    .line 254
    div-double/2addr v8, v4

    .line 255
    invoke-direct {v7, v8, v9}, Ljava/math/BigDecimal;-><init>(D)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    invoke-static {v1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    const-string v3, "getInstance(oneTimePurch\u2026RICE_CURRENCY_CODE_V5V7))"

    .line 267
    .line 268
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    move-object/from16 v3, p3

    .line 272
    .line 273
    invoke-direct {v2, v7, v1, v0, v3}, La2/i$a;-><init>(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;Lcom/facebook/appevents/i0;)V

    .line 274
    .line 275
    .line 276
    filled-new-array {v2}, [La2/i$a;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    return-object v0
.end method

.method public static final declared-synchronized f(Ljava/util/List;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "La2/i$a;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-class v0, La2/i;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "purchaseLoggingParametersList"

    .line 5
    .line 6
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v1, "eventName"

    .line 10
    .line 11
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, La2/i$a;

    .line 34
    .line 35
    new-instance v4, Ly1/a;

    .line 36
    .line 37
    invoke-virtual {v3}, La2/i$a;->d()Ljava/math/BigDecimal;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-virtual {v5}, Ljava/math/BigDecimal;->doubleValue()D

    .line 42
    .line 43
    .line 44
    move-result-wide v5

    .line 45
    invoke-virtual {v3}, La2/i$a;->a()Ljava/util/Currency;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-direct {v4, p1, v5, v6, v3}, Ly1/a;-><init>(Ljava/lang/String;DLjava/util/Currency;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_2

    .line 58
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 59
    .line 60
    .line 61
    move-result-wide v2

    .line 62
    check-cast p0, Ljava/lang/Iterable;

    .line 63
    .line 64
    new-instance p1, Ljava/util/ArrayList;

    .line 65
    .line 66
    const/16 v4, 0xa

    .line 67
    .line 68
    invoke-static {p0, v4}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    invoke-direct {p1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 73
    .line 74
    .line 75
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_1

    .line 84
    .line 85
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    check-cast v4, La2/i$a;

    .line 90
    .line 91
    new-instance v5, Lkotlin/Pair;

    .line 92
    .line 93
    invoke-virtual {v4}, La2/i$a;->c()Landroid/os/Bundle;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    invoke-virtual {v4}, La2/i$a;->b()Lcom/facebook/appevents/i0;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-direct {v5, v6, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    invoke-interface {p1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_1
    const/4 p0, 0x1

    .line 109
    invoke-static {v1, v2, v3, p0, p1}, Lcom/facebook/appevents/iap/g;->f(Ljava/util/List;JZLjava/util/List;)Landroid/os/Bundle;

    .line 110
    .line 111
    .line 112
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit v0

    .line 114
    return-object p0

    .line 115
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    throw p0
.end method

.method public static final g()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/facebook/v;->m()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/facebook/internal/FetchedAppSettingsManager;->f(Ljava/lang/String;)Lcom/facebook/internal/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/facebook/v;->p()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/facebook/internal/p;->i()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0
.end method

.method public static final h()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/facebook/v;->l()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/facebook/v;->m()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {}, Lcom/facebook/v;->p()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    instance-of v2, v0, Landroid/app/Application;

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    sget-object v2, Lcom/facebook/appevents/AppEventsLogger;->b:Lcom/facebook/appevents/AppEventsLogger$a;

    .line 20
    .line 21
    check-cast v0, Landroid/app/Application;

    .line 22
    .line 23
    invoke-virtual {v2, v0, v1}, Lcom/facebook/appevents/AppEventsLogger$a;->a(Landroid/app/Application;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    sget-object v0, La2/i;->b:Ljava/lang/String;

    .line 28
    .line 29
    const-string v1, "Automatic logging of basic events will not happen, because FacebookSdk.getApplicationContext() returns object that is not instance of android.app.Application. Make sure you call FacebookSdk.sdkInitialize() from Application class and pass application context."

    .line 30
    .line 31
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method public static final i(Ljava/lang/String;J)V
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/facebook/v;->l()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/facebook/v;->m()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v1, v2}, Lcom/facebook/internal/FetchedAppSettingsManager;->u(Ljava/lang/String;Z)Lcom/facebook/internal/p;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/facebook/internal/p;->a()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    const-wide/16 v1, 0x0

    .line 23
    .line 24
    cmp-long v1, p1, v1

    .line 25
    .line 26
    if-lez v1, :cond_0

    .line 27
    .line 28
    new-instance v1, Lcom/facebook/appevents/h0;

    .line 29
    .line 30
    invoke-direct {v1, v0}, Lcom/facebook/appevents/h0;-><init>(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Landroid/os/Bundle;

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 37
    .line 38
    .line 39
    const-string v2, "fb_aa_time_spent_view_name"

    .line 40
    .line 41
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    const-string p0, "fb_aa_time_spent_on_view"

    .line 45
    .line 46
    long-to-double p1, p1

    .line 47
    invoke-virtual {v1, p0, p1, p2, v0}, Lcom/facebook/appevents/h0;->c(Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    return-void
.end method

.method public static final j(Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/appevents/iap/InAppPurchaseUtils$BillingClientVersion;Z)V
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/appevents/iap/InAppPurchaseUtils$BillingClientVersion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "purchase"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "skuDetails"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, La2/i;->g()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    sget-object v0, La2/i;->a:La2/i;

    .line 19
    .line 20
    invoke-direct {v0, p0, p1, p3}, La2/i;->b(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/appevents/iap/InAppPurchaseUtils$BillingClientVersion;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    if-nez p0, :cond_1

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result p3

    .line 31
    if-eqz p3, :cond_2

    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    const-string p3, "fb_mobile_purchase"

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    if-eqz p2, :cond_5

    .line 38
    .line 39
    const-string v1, "app_events_if_auto_log_subs"

    .line 40
    .line 41
    invoke-static {}, Lcom/facebook/v;->m()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v1, v2, v0}, Lcom/facebook/internal/o;->d(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_5

    .line 50
    .line 51
    if-eqz p4, :cond_3

    .line 52
    .line 53
    const-string p1, "SubscriptionRestore"

    .line 54
    .line 55
    :goto_0
    move-object v2, p1

    .line 56
    goto :goto_1

    .line 57
    :cond_3
    sget-object p4, Ly1/l;->a:Ly1/l;

    .line 58
    .line 59
    invoke-virtual {p4, p1}, Ly1/l;->m(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_4

    .line 64
    .line 65
    const-string p1, "StartTrial"

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    const-string p1, "Subscribe"

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_5
    if-eqz p4, :cond_6

    .line 72
    .line 73
    const-string p1, "fb_mobile_purchase_restored"

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_6
    move-object v2, p3

    .line 77
    :goto_1
    if-eqz p2, :cond_7

    .line 78
    .line 79
    sget-object p1, Lcom/facebook/internal/FeatureManager$Feature;->AndroidManualImplicitSubsDedupe:Lcom/facebook/internal/FeatureManager$Feature;

    .line 80
    .line 81
    invoke-static {p1}, Lcom/facebook/internal/FeatureManager;->g(Lcom/facebook/internal/FeatureManager$Feature;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_7

    .line 86
    .line 87
    invoke-static {p0, v2}, La2/i;->f(Ljava/util/List;Ljava/lang/String;)Landroid/os/Bundle;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    goto :goto_2

    .line 92
    :cond_7
    if-nez p2, :cond_8

    .line 93
    .line 94
    sget-object p1, Lcom/facebook/internal/FeatureManager$Feature;->AndroidManualImplicitPurchaseDedupe:Lcom/facebook/internal/FeatureManager$Feature;

    .line 95
    .line 96
    invoke-static {p1}, Lcom/facebook/internal/FeatureManager;->g(Lcom/facebook/internal/FeatureManager$Feature;)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_8

    .line 101
    .line 102
    invoke-static {p0}, La2/i;->a(Ljava/util/List;)Landroid/os/Bundle;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    goto :goto_2

    .line 107
    :cond_8
    const/4 p1, 0x0

    .line 108
    :goto_2
    sget-object p2, Ly1/k;->a:Ly1/k;

    .line 109
    .line 110
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p4

    .line 114
    check-cast p4, La2/i$a;

    .line 115
    .line 116
    invoke-virtual {p4}, La2/i$a;->c()Landroid/os/Bundle;

    .line 117
    .line 118
    .line 119
    move-result-object p4

    .line 120
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    check-cast v1, La2/i$a;

    .line 125
    .line 126
    invoke-virtual {v1}, La2/i$a;->b()Lcom/facebook/appevents/i0;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {p2, p1, p4, v1}, Ly1/k;->a(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/facebook/appevents/i0;)Lkotlin/Pair;

    .line 131
    .line 132
    .line 133
    invoke-static {v2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-nez p1, :cond_9

    .line 138
    .line 139
    sget-object v1, La2/i;->c:Lcom/facebook/appevents/h0;

    .line 140
    .line 141
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    check-cast p1, La2/i$a;

    .line 146
    .line 147
    invoke-virtual {p1}, La2/i$a;->d()Ljava/math/BigDecimal;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    check-cast p1, La2/i$a;

    .line 156
    .line 157
    invoke-virtual {p1}, La2/i$a;->a()Ljava/util/Currency;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    check-cast p1, La2/i$a;

    .line 166
    .line 167
    invoke-virtual {p1}, La2/i$a;->c()Landroid/os/Bundle;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    check-cast p0, La2/i$a;

    .line 176
    .line 177
    invoke-virtual {p0}, La2/i$a;->b()Lcom/facebook/appevents/i0;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    invoke-virtual/range {v1 .. v6}, Lcom/facebook/appevents/h0;->i(Ljava/lang/String;Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;Lcom/facebook/appevents/i0;)V

    .line 182
    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_9
    sget-object p1, La2/i;->c:Lcom/facebook/appevents/h0;

    .line 186
    .line 187
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    check-cast p2, La2/i$a;

    .line 192
    .line 193
    invoke-virtual {p2}, La2/i$a;->d()Ljava/math/BigDecimal;

    .line 194
    .line 195
    .line 196
    move-result-object p2

    .line 197
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object p3

    .line 201
    check-cast p3, La2/i$a;

    .line 202
    .line 203
    invoke-virtual {p3}, La2/i$a;->a()Ljava/util/Currency;

    .line 204
    .line 205
    .line 206
    move-result-object p3

    .line 207
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object p4

    .line 211
    check-cast p4, La2/i$a;

    .line 212
    .line 213
    invoke-virtual {p4}, La2/i$a;->c()Landroid/os/Bundle;

    .line 214
    .line 215
    .line 216
    move-result-object p4

    .line 217
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object p0

    .line 221
    check-cast p0, La2/i$a;

    .line 222
    .line 223
    invoke-virtual {p0}, La2/i$a;->b()Lcom/facebook/appevents/i0;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    invoke-virtual {p1, p2, p3, p4, p0}, Lcom/facebook/appevents/h0;->j(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;Lcom/facebook/appevents/i0;)V

    .line 228
    .line 229
    .line 230
    :goto_3
    return-void
.end method

.method public static synthetic k(Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/appevents/iap/InAppPurchaseUtils$BillingClientVersion;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p5, 0x10

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p4, 0x0

    .line 6
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, La2/i;->j(Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/appevents/iap/InAppPurchaseUtils$BillingClientVersion;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
