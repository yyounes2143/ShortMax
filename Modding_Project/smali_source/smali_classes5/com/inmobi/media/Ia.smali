.class public final Lcom/inmobi/media/Ia;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/La;


# instance fields
.field public final a:Lcom/inmobi/media/Ha;

.field public final b:Lcom/inmobi/media/nc;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/Ha;Lcom/inmobi/media/nc;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/inmobi/media/Ia;->a:Lcom/inmobi/media/Ha;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/inmobi/media/Ia;->b:Lcom/inmobi/media/nc;

    .line 7
    .line 8
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string p2, "toString(...)"

    .line 17
    .line 18
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/inmobi/media/Ia;->c:Ljava/lang/String;

    .line 22
    .line 23
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 27
    .line 28
    .line 29
    iput-object p2, p0, Lcom/inmobi/media/Ia;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    .line 31
    sget-object p2, Lcom/inmobi/media/Aa;->a:Lcom/inmobi/media/b5;

    .line 32
    .line 33
    const-string v0, "next(...)"

    .line 34
    .line 35
    const-string v1, "listener"

    .line 36
    .line 37
    const-string v2, "id"

    .line 38
    .line 39
    if-eqz p2, :cond_1

    .line 40
    .line 41
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v3, p2, Lcom/inmobi/media/Ma;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 48
    .line 49
    new-instance v4, Ljava/lang/ref/WeakReference;

    .line 50
    .line 51
    invoke-direct {v4, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    iget-object p2, p2, Lcom/inmobi/media/Ma;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 58
    .line 59
    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_1

    .line 72
    .line 73
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    check-cast v3, Ljava/util/Map$Entry;

    .line 81
    .line 82
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    if-nez v3, :cond_0

    .line 93
    .line 94
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    sget-object p2, Lcom/inmobi/media/Aa;->b:Lcom/inmobi/media/F3;

    .line 99
    .line 100
    if-eqz p2, :cond_3

    .line 101
    .line 102
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object v1, p2, Lcom/inmobi/media/Ma;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 109
    .line 110
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 111
    .line 112
    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    iget-object p1, p2, Lcom/inmobi/media/Ma;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 119
    .line 120
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result p2

    .line 132
    if-eqz p2, :cond_3

    .line 133
    .line 134
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    check-cast p2, Ljava/util/Map$Entry;

    .line 142
    .line 143
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    check-cast p2, Ljava/lang/ref/WeakReference;

    .line 148
    .line 149
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    if-nez p2, :cond_2

    .line 154
    .line 155
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_3
    return-void
.end method

.method public static final a(Lcom/inmobi/media/Ia;Ljava/lang/String;)V
    .locals 7

    const-string v0, "event"

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$json"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Ia;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/media/za;

    .line 4
    iget-object v2, v1, Lcom/inmobi/media/za;->e:Ljava/lang/String;

    .line 5
    invoke-virtual {p0, v2}, Lcom/inmobi/media/Ia;->c(Ljava/lang/String;)V

    .line 6
    invoke-static {v1}, Lcom/inmobi/media/Ia;->a(Lcom/inmobi/media/za;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :goto_1
    const/16 v1, 0x8c5

    .line 7
    invoke-static {p0, v1}, Lcom/inmobi/media/Ia;->a(Lcom/inmobi/media/Ia;S)V

    .line 8
    sget-object p0, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    new-instance p0, Lcom/inmobi/media/f2;

    invoke-direct {p0, p1}, Lcom/inmobi/media/f2;-><init>(Ljava/lang/Throwable;)V

    .line 9
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object p1, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {p1, p0}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    goto :goto_3

    :goto_2
    const/16 v1, 0x8c4

    .line 11
    invoke-static {p0, v1}, Lcom/inmobi/media/Ia;->a(Lcom/inmobi/media/Ia;S)V

    .line 12
    sget-object p0, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 13
    invoke-static {p1, v0}, Lcom/inmobi/media/w5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/f2;

    move-result-object p0

    .line 14
    sget-object p1, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {p1, p0}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    goto :goto_3

    :catch_2
    const/16 p1, 0x8c3

    .line 15
    invoke-static {p0, p1}, Lcom/inmobi/media/Ia;->a(Lcom/inmobi/media/Ia;S)V

    .line 16
    iget-object p0, p0, Lcom/inmobi/media/Ia;->a:Lcom/inmobi/media/Ha;

    if-eqz p0, :cond_0

    .line 17
    sget-object p1, Lcom/inmobi/media/n4;->a:[Lcom/inmobi/media/n4;

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 19
    move-object v0, p0

    check-cast v0, Lcom/inmobi/media/Yb;

    const/4 v6, 0x0

    const-string v1, ""

    const/16 v2, -0x68

    const-string v3, "Ping JSON is invalid"

    invoke-virtual/range {v0 .. v6}, Lcom/inmobi/media/Yb;->a(Ljava/lang/String;ILjava/lang/String;JI)V

    :cond_0
    :goto_3
    return-void
.end method

.method public static a(Lcom/inmobi/media/Ia;S)V
    .locals 2

    .line 81
    iget-object p0, p0, Lcom/inmobi/media/Ia;->b:Lcom/inmobi/media/nc;

    if-eqz p0, :cond_0

    .line 82
    const-string v0, "priority"

    const-string v1, "unknown"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/inmobi/media/nc;->a()Ljava/util/Map;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    .line 84
    const-string v0, "errorCode"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string p1, "trigger"

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 86
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "retryCount"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string p1, "PingFailed"

    invoke-static {p1, p0}, Lcom/inmobi/media/Oa;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/inmobi/media/za;)V
    .locals 2

    .line 20
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    iget-object v0, p0, Lcom/inmobi/media/za;->e:Ljava/lang/String;

    .line 22
    const-string v1, "high"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    sget-object v0, Lcom/inmobi/media/Aa;->a:Lcom/inmobi/media/b5;

    if-eqz v0, :cond_1

    .line 24
    invoke-virtual {v0, p0}, Lcom/inmobi/media/Ma;->b(Lcom/inmobi/media/za;)V

    goto :goto_0

    .line 25
    :cond_0
    sget-object v0, Lcom/inmobi/media/Aa;->b:Lcom/inmobi/media/F3;

    if-eqz v0, :cond_1

    .line 26
    invoke-virtual {v0, p0}, Lcom/inmobi/media/Ma;->b(Lcom/inmobi/media/za;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/List;
    .locals 22

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 27
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 28
    new-instance v3, Lorg/json/JSONArray;

    move-object/from16 v4, p1

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_1

    const/16 v1, 0x8cd

    .line 30
    invoke-static {v0, v1}, Lcom/inmobi/media/Ia;->a(Lcom/inmobi/media/Ia;S)V

    .line 31
    iget-object v1, v0, Lcom/inmobi/media/Ia;->a:Lcom/inmobi/media/Ha;

    if-eqz v1, :cond_0

    .line 32
    sget-object v2, Lcom/inmobi/media/n4;->a:[Lcom/inmobi/media/n4;

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 34
    move-object v3, v1

    check-cast v3, Lcom/inmobi/media/Yb;

    const/4 v9, 0x0

    const-string v4, ""

    const/16 v5, -0x69

    const-string v6, "Ping array is empty"

    invoke-virtual/range {v3 .. v9}, Lcom/inmobi/media/Yb;->a(Ljava/lang/String;ILjava/lang/String;JI)V

    .line 35
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 36
    :cond_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_e

    .line 37
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    if-nez v7, :cond_2

    const/16 v7, 0x8ce

    .line 38
    invoke-static {v0, v7}, Lcom/inmobi/media/Ia;->a(Lcom/inmobi/media/Ia;S)V

    goto/16 :goto_8

    .line 39
    :cond_2
    const-string v8, "id"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 40
    invoke-static {v8}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto/16 :goto_7

    .line 41
    :cond_3
    const-string v9, "url"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_b

    .line 42
    invoke-static {v10}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto/16 :goto_6

    .line 43
    :cond_4
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 44
    :try_start_0
    new-instance v9, Ljava/net/URI;

    invoke-direct {v9, v10}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v9}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v11

    const-string v12, "http"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {v9}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v11

    const-string v12, "https"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    :cond_5
    invoke-virtual {v9}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    invoke-static {v9}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v9, :cond_6

    goto/16 :goto_5

    .line 46
    :cond_6
    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    .line 47
    const-string v9, "headers"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 48
    invoke-virtual {v9}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v11

    .line 49
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 50
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 51
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v14, ""

    invoke-virtual {v9, v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "optString(...)"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 52
    :cond_7
    const-string v9, "allowRedirects"

    invoke-virtual {v7, v9, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 53
    const-string v9, "priority"

    const-string v11, "normal"

    invoke-virtual {v7, v9, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 54
    const-string v14, "ackRequired"

    invoke-virtual {v7, v14, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 55
    new-instance v7, Lcom/inmobi/media/za;

    .line 56
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-nez v9, :cond_8

    move-object v14, v11

    goto :goto_2

    :cond_8
    move-object v14, v9

    .line 57
    :goto_2
    iget-object v11, v0, Lcom/inmobi/media/Ia;->c:Ljava/lang/String;

    .line 58
    iget-object v9, v0, Lcom/inmobi/media/Ia;->b:Lcom/inmobi/media/nc;

    if-eqz v9, :cond_9

    .line 59
    iget-object v9, v9, Lcom/inmobi/media/nc;->a:Lcom/inmobi/media/hc;

    :goto_3
    move-object/from16 v21, v9

    goto :goto_4

    :cond_9
    const/4 v9, 0x0

    goto :goto_3

    :goto_4
    const/16 v16, 0x0

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const/16 v20, 0x0

    move-object v9, v7

    move-object/from16 v17, v11

    move-object v11, v8

    .line 61
    invoke-direct/range {v9 .. v21}, Lcom/inmobi/media/za;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;ZILjava/lang/String;JLjava/lang/Long;Lcom/inmobi/media/hc;)V

    .line 62
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :catch_0
    :cond_a
    :goto_5
    const/16 v7, 0x8d0

    .line 63
    invoke-static {v0, v7}, Lcom/inmobi/media/Ia;->a(Lcom/inmobi/media/Ia;S)V

    .line 64
    iget-object v7, v0, Lcom/inmobi/media/Ia;->a:Lcom/inmobi/media/Ha;

    if-eqz v7, :cond_d

    .line 65
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 66
    sget-object v9, Lcom/inmobi/media/n4;->a:[Lcom/inmobi/media/n4;

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 68
    move-object v9, v7

    check-cast v9, Lcom/inmobi/media/Yb;

    const/4 v15, 0x0

    const/16 v11, -0x66

    const-string v12, "Ping url is invalid"

    move-object v10, v8

    invoke-virtual/range {v9 .. v15}, Lcom/inmobi/media/Yb;->a(Ljava/lang/String;ILjava/lang/String;JI)V

    goto :goto_8

    :cond_b
    :goto_6
    const/16 v7, 0x8cc

    .line 69
    invoke-static {v0, v7}, Lcom/inmobi/media/Ia;->a(Lcom/inmobi/media/Ia;S)V

    .line 70
    iget-object v7, v0, Lcom/inmobi/media/Ia;->a:Lcom/inmobi/media/Ha;

    if-eqz v7, :cond_d

    .line 71
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 72
    sget-object v9, Lcom/inmobi/media/n4;->a:[Lcom/inmobi/media/n4;

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 74
    move-object v9, v7

    check-cast v9, Lcom/inmobi/media/Yb;

    const/4 v15, 0x0

    const/16 v11, -0x67

    const-string v12, "Ping URL is missing"

    move-object v10, v8

    invoke-virtual/range {v9 .. v15}, Lcom/inmobi/media/Yb;->a(Ljava/lang/String;ILjava/lang/String;JI)V

    goto :goto_8

    :cond_c
    :goto_7
    const/16 v7, 0x8cf

    .line 75
    invoke-static {v0, v7}, Lcom/inmobi/media/Ia;->a(Lcom/inmobi/media/Ia;S)V

    .line 76
    iget-object v7, v0, Lcom/inmobi/media/Ia;->a:Lcom/inmobi/media/Ha;

    if-eqz v7, :cond_d

    .line 77
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 78
    sget-object v9, Lcom/inmobi/media/n4;->a:[Lcom/inmobi/media/n4;

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 80
    move-object v9, v7

    check-cast v9, Lcom/inmobi/media/Yb;

    const/4 v15, 0x0

    const/16 v11, -0x65

    const-string v12, "Ping ID is missing"

    move-object v10, v8

    invoke-virtual/range {v9 .. v15}, Lcom/inmobi/media/Yb;->a(Ljava/lang/String;ILjava/lang/String;JI)V

    :cond_d
    :goto_8
    add-int/2addr v6, v1

    goto/16 :goto_0

    :cond_e
    return-object v2
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "json"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/inmobi/media/z4;->b:Lms/i;

    .line 7
    .line 8
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 13
    .line 14
    new-instance v1, Lub/l0;

    .line 15
    .line 16
    invoke-direct {v1, p0, p1}, Lub/l0;-><init>(Lcom/inmobi/media/Ia;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ia;->b:Lcom/inmobi/media/nc;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "priority"

    .line 6
    .line 7
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/inmobi/media/nc;->a()Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "trigger"

    .line 15
    .line 16
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    const-string p1, "PingStarted"

    .line 20
    .line 21
    invoke-static {p1, v0}, Lcom/inmobi/media/Oa;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
