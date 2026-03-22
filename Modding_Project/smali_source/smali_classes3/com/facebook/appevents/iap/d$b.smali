.class public final Lcom/facebook/appevents/iap/d$b;
.super Ljava/lang/Object;
.source "InAppPurchaseBillingClientWrapperV2V4.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/iap/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
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
    invoke-direct {p0}, Lcom/facebook/appevents/iap/d$b;-><init>()V

    return-void
.end method

.method private final a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    const-string v0, "com.android.billingclient.api.BillingClient$Builder"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->a(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "com.android.billingclient.api.PurchasesUpdatedListener"

    .line 8
    .line 9
    invoke-static {v1}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->a(Ljava/lang/String;)Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v0, :cond_5

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-class v3, Landroid/content/Context;

    .line 20
    .line 21
    filled-new-array {v3}, [Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const-string v4, "newBuilder"

    .line 26
    .line 27
    invoke-static {p2, v4, v3}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const-string v4, "enablePendingPurchases"

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    new-array v6, v5, [Ljava/lang/Class;

    .line 35
    .line 36
    invoke-static {v0, v4, v6}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const-string v6, "setListener"

    .line 41
    .line 42
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    invoke-static {v0, v6, v7}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    const-string v7, "build"

    .line 51
    .line 52
    new-array v8, v5, [Ljava/lang/Class;

    .line 53
    .line 54
    invoke-static {v0, v7, v8}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    if-eqz v3, :cond_5

    .line 59
    .line 60
    if-eqz v4, :cond_5

    .line 61
    .line 62
    if-eqz v6, :cond_5

    .line 63
    .line 64
    if-nez v7, :cond_1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {p2, v3, v2, p1}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->e(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-nez p1, :cond_2

    .line 76
    .line 77
    return-object v2

    .line 78
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    new-instance v3, Lcom/facebook/appevents/iap/d$d;

    .line 87
    .line 88
    invoke-direct {v3}, Lcom/facebook/appevents/iap/d$d;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-static {p2, v1, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-static {v0, v6, p1, p2}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->e(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    if-nez p1, :cond_3

    .line 104
    .line 105
    return-object v2

    .line 106
    :cond_3
    new-array p2, v5, [Ljava/lang/Object;

    .line 107
    .line 108
    invoke-static {v0, v4, p1, p2}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->e(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    if-nez p1, :cond_4

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_4
    new-array p2, v5, [Ljava/lang/Object;

    .line 116
    .line 117
    invoke-static {v0, v7, p1, p2}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->e(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    :cond_5
    :goto_0
    return-object v2
.end method

.method private final b(Landroid/content/Context;)Lcom/facebook/appevents/iap/d;
    .locals 21

    .line 1
    sget-object v0, Lcom/facebook/appevents/iap/h;->g:Lcom/facebook/appevents/iap/h$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/facebook/appevents/iap/h$a;->b()Lcom/facebook/appevents/iap/h;

    .line 4
    .line 5
    .line 6
    move-result-object v17

    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez v17, :cond_0

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    const-string v1, "com.android.billingclient.api.BillingClient"

    .line 12
    .line 13
    invoke-static {v1}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->a(Ljava/lang/String;)Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const-string v1, "com.android.billingclient.api.Purchase"

    .line 18
    .line 19
    invoke-static {v1}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->a(Ljava/lang/String;)Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    const-string v1, "com.android.billingclient.api.Purchase$PurchasesResult"

    .line 24
    .line 25
    invoke-static {v1}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->a(Ljava/lang/String;)Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    const-string v1, "com.android.billingclient.api.SkuDetails"

    .line 30
    .line 31
    invoke-static {v1}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->a(Ljava/lang/String;)Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    const-string v1, "com.android.billingclient.api.PurchaseHistoryRecord"

    .line 36
    .line 37
    invoke-static {v1}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->a(Ljava/lang/String;)Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    const-string v1, "com.android.billingclient.api.SkuDetailsResponseListener"

    .line 42
    .line 43
    invoke-static {v1}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->a(Ljava/lang/String;)Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    const-string v1, "com.android.billingclient.api.PurchaseHistoryResponseListener"

    .line 48
    .line 49
    invoke-static {v1}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->a(Ljava/lang/String;)Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    move-result-object v9

    .line 53
    const-string v1, "Failed to create Google Play billing library wrapper for in-app purchase auto-logging"

    .line 54
    .line 55
    if-eqz v3, :cond_5

    .line 56
    .line 57
    if-eqz v4, :cond_5

    .line 58
    .line 59
    if-eqz v5, :cond_5

    .line 60
    .line 61
    if-eqz v6, :cond_5

    .line 62
    .line 63
    if-eqz v8, :cond_5

    .line 64
    .line 65
    if-eqz v7, :cond_5

    .line 66
    .line 67
    if-nez v9, :cond_1

    .line 68
    .line 69
    goto/16 :goto_1

    .line 70
    .line 71
    :cond_1
    const-string v2, "queryPurchases"

    .line 72
    .line 73
    const-class v10, Ljava/lang/String;

    .line 74
    .line 75
    filled-new-array {v10}, [Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    move-result-object v11

    .line 79
    invoke-static {v3, v2, v11}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 80
    .line 81
    .line 82
    move-result-object v11

    .line 83
    const-string v2, "getPurchasesList"

    .line 84
    .line 85
    const/4 v12, 0x0

    .line 86
    new-array v13, v12, [Ljava/lang/Class;

    .line 87
    .line 88
    invoke-static {v4, v2, v13}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 89
    .line 90
    .line 91
    move-result-object v13

    .line 92
    new-array v2, v12, [Ljava/lang/Class;

    .line 93
    .line 94
    const-string v14, "getOriginalJson"

    .line 95
    .line 96
    invoke-static {v5, v14, v2}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 97
    .line 98
    .line 99
    move-result-object v15

    .line 100
    new-array v2, v12, [Ljava/lang/Class;

    .line 101
    .line 102
    invoke-static {v6, v14, v2}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 103
    .line 104
    .line 105
    move-result-object v16

    .line 106
    new-array v2, v12, [Ljava/lang/Class;

    .line 107
    .line 108
    invoke-static {v7, v14, v2}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 109
    .line 110
    .line 111
    move-result-object v14

    .line 112
    invoke-virtual/range {v17 .. v17}, Lcom/facebook/appevents/iap/h;->d()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    filled-new-array {v2, v8}, [Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    const-string v12, "querySkuDetailsAsync"

    .line 121
    .line 122
    invoke-static {v3, v12, v2}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 123
    .line 124
    .line 125
    move-result-object v19

    .line 126
    const-string v2, "queryPurchaseHistoryAsync"

    .line 127
    .line 128
    filled-new-array {v10, v9}, [Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    move-result-object v10

    .line 132
    invoke-static {v3, v2, v10}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 133
    .line 134
    .line 135
    move-result-object v20

    .line 136
    if-eqz v11, :cond_4

    .line 137
    .line 138
    if-eqz v13, :cond_4

    .line 139
    .line 140
    if-eqz v15, :cond_4

    .line 141
    .line 142
    if-eqz v16, :cond_4

    .line 143
    .line 144
    if-eqz v14, :cond_4

    .line 145
    .line 146
    if-eqz v19, :cond_4

    .line 147
    .line 148
    if-nez v20, :cond_2

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_2
    move-object/from16 v12, p0

    .line 152
    .line 153
    move-object/from16 v2, p1

    .line 154
    .line 155
    invoke-direct {v12, v2, v3}, Lcom/facebook/appevents/iap/d$b;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    if-nez v2, :cond_3

    .line 160
    .line 161
    invoke-static {}, Lcom/facebook/appevents/iap/d;->l()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    const-string v2, "Failed to build a Google Play billing library wrapper for in-app purchase auto-logging"

    .line 166
    .line 167
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    return-object v0

    .line 171
    :cond_3
    new-instance v0, Lcom/facebook/appevents/iap/d;

    .line 172
    .line 173
    move-object v1, v0

    .line 174
    const/16 v18, 0x0

    .line 175
    .line 176
    move-object v10, v11

    .line 177
    move-object v11, v13

    .line 178
    move-object v12, v15

    .line 179
    move-object/from16 v13, v16

    .line 180
    .line 181
    move-object/from16 v15, v19

    .line 182
    .line 183
    move-object/from16 v16, v20

    .line 184
    .line 185
    invoke-direct/range {v1 .. v18}, Lcom/facebook/appevents/iap/d;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/facebook/appevents/iap/h;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 186
    .line 187
    .line 188
    invoke-static {v0}, Lcom/facebook/appevents/iap/d;->o(Lcom/facebook/appevents/iap/d;)V

    .line 189
    .line 190
    .line 191
    invoke-static {}, Lcom/facebook/appevents/iap/d;->g()Lcom/facebook/appevents/iap/d;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    return-object v0

    .line 196
    :cond_4
    :goto_0
    invoke-static {}, Lcom/facebook/appevents/iap/d;->l()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    return-object v0

    .line 204
    :cond_5
    :goto_1
    invoke-static {}, Lcom/facebook/appevents/iap/d;->l()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    return-object v0
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
    invoke-static {}, Lcom/facebook/appevents/iap/d;->f()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final declared-synchronized d(Landroid/content/Context;)Lcom/facebook/appevents/iap/d;
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
    invoke-static {}, Lcom/facebook/appevents/iap/d;->g()Lcom/facebook/appevents/iap/d;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/facebook/appevents/iap/d$b;->b(Landroid/content/Context;)Lcom/facebook/appevents/iap/d;

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
    invoke-static {}, Lcom/facebook/appevents/iap/d;->j()Ljava/util/Map;

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
    invoke-static {}, Lcom/facebook/appevents/iap/d;->k()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final g()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/appevents/iap/d;->m()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
