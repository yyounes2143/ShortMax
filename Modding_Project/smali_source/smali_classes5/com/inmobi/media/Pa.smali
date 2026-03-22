.class public final Lcom/inmobi/media/Pa;
.super Lcom/inmobi/media/T1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "pings"

    .line 2
    .line 3
    const-string v1, "(id TEXT PRIMARY KEY,url TEXT NOT NULL,headers TEXT,allow_redirects TEXT NOT NULL,priority TEXT NOT NULL,ack_required TEXT NOT NULL,time_created INTEGER NOT NULL,owner TEXT NOT NULL,retry_count INTEGER DEFAULT 0,retryAfter INTEGER DEFAULT 0,telemetry_metadata TEXT)"

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Lcom/inmobi/media/T1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/inmobi/media/za;
    .locals 9

    const-string v0, "priority"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    const/4 p1, 0x1

    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 42
    const-string v6, "time_created ASC"

    const/16 v8, 0xc

    const-string v2, "priority = ?"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v8}, Lcom/inmobi/media/T1;->a(Lcom/inmobi/media/T1;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I)Ljava/util/ArrayList;

    move-result-object p1

    .line 43
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/inmobi/media/za;

    if-eqz p1, :cond_0

    .line 44
    iget-object v0, p1, Lcom/inmobi/media/za;->b:Ljava/lang/String;

    .line 45
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "id = ?"

    invoke-virtual {p0, v1, v0}, Lcom/inmobi/media/T1;->a(Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final a(Landroid/content/ContentValues;)Ljava/lang/Object;
    .locals 30

    move-object/from16 v0, p1

    .line 1
    const-string v1, "getString(...)"

    const-string v2, "contentValues"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    const-string v2, "id"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3
    const-string v2, "url"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4
    const-string v2, "headers"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    const-string v2, "<this>"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 8
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    const-string v7, "keys(...)"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, ""

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 10
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v8, v9

    :goto_1
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 11
    :cond_1
    const-string v2, "allow_redirects"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 12
    const-string v2, "priority"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 13
    const-string v3, "ack_required"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 14
    const-string v3, "retry_count"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    :goto_2
    move v10, v3

    goto :goto_3

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_2

    .line 15
    :goto_3
    const-string v3, "owner"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v3, "unknown"

    :cond_3
    move-object v11, v3

    .line 16
    const-string v3, "retryAfter"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    .line 17
    const-string v3, "time_created"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 18
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 19
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 20
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 21
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 22
    const-string v3, "telemetry_metadata"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 23
    const-string v3, "json"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/inmobi/media/hc;

    .line 26
    new-instance v15, Lcom/inmobi/media/X;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v27, v14

    .line 27
    :try_start_1
    const-string v14, "adType"

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {v15, v14}, Lcom/inmobi/media/X;-><init>(Ljava/lang/String;)V

    .line 29
    const-string v14, "plId"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-wide/from16 v28, v12

    :try_start_2
    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v15, v12, v13}, Lcom/inmobi/media/X;->a(J)Lcom/inmobi/media/X;

    move-result-object v12

    invoke-virtual {v12}, Lcom/inmobi/media/X;->a()Lcom/inmobi/media/Z;

    move-result-object v16

    .line 30
    const-string v12, "markupType"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    const-string v13, "metadataBlob"

    invoke-virtual {v3, v13, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v13, "optString(...)"

    invoke-static {v8, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    const-string v13, "creativeType"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    const-string v14, "creativeId"

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    const-string v1, "isRewarded"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v22

    .line 35
    const-string v1, "adPosition"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v19, 0x0

    const/16 v24, 0x0

    move-object v15, v0

    move-object/from16 v17, v12

    move-object/from16 v18, v8

    move-object/from16 v20, v13

    move-object/from16 v21, v14

    .line 36
    invoke-direct/range {v15 .. v26}, Lcom/inmobi/media/hc;-><init>(Lcom/inmobi/media/Z;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZILcom/inmobi/media/T0;Lcom/inmobi/media/mc;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_4
    move-object v15, v0

    goto :goto_6

    :catch_0
    move-wide/from16 v28, v12

    goto :goto_5

    :catch_1
    :cond_4
    move-wide/from16 v28, v12

    move-object/from16 v27, v14

    :catch_2
    :goto_5
    const/4 v0, 0x0

    goto :goto_4

    .line 37
    :goto_6
    new-instance v0, Lcom/inmobi/media/za;

    move-object v3, v0

    move-object v8, v2

    move-wide/from16 v12, v28

    move-object/from16 v14, v27

    invoke-direct/range {v3 .. v15}, Lcom/inmobi/media/za;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;ZILjava/lang/String;JLjava/lang/Long;Lcom/inmobi/media/hc;)V

    return-object v0
.end method

.method public final a(Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 11

    const-string v0, "priority"

    const-string v1, "high"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    move-result-object v5

    .line 39
    const-string v8, "time_created ASC"

    const/16 v10, 0xc

    const-string v4, "priority = ? AND retry_count >= ? AND retryAfter <= ?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move-object v9, p1

    invoke-static/range {v3 .. v10}, Lcom/inmobi/media/T1;->a(Lcom/inmobi/media/T1;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 5

    .line 1
    check-cast p1, Lcom/inmobi/media/za;

    .line 2
    .line 3
    const-string v0, "item"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroid/content/ContentValues;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v1, p1, Lcom/inmobi/media/za;->b:Ljava/lang/String;

    .line 14
    .line 15
    const-string v2, "id"

    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v1, "url"

    .line 21
    .line 22
    iget-object v2, p1, Lcom/inmobi/media/za;->a:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p1, Lcom/inmobi/media/za;->c:Ljava/util/Map;

    .line 28
    .line 29
    const-string v2, "<this>"

    .line 30
    .line 31
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance v2, Lorg/json/JSONObject;

    .line 35
    .line 36
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_0

    .line 52
    .line 53
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Ljava/util/Map$Entry;

    .line 58
    .line 59
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    check-cast v4, Ljava/lang/String;

    .line 64
    .line 65
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    check-cast v3, Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const-string v2, "headers"

    .line 80
    .line 81
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-boolean v1, p1, Lcom/inmobi/media/za;->d:Z

    .line 85
    .line 86
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    const-string v2, "allow_redirects"

    .line 91
    .line 92
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const-string v1, "priority"

    .line 96
    .line 97
    iget-object v2, p1, Lcom/inmobi/media/za;->e:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-boolean v1, p1, Lcom/inmobi/media/za;->f:Z

    .line 103
    .line 104
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    const-string v2, "ack_required"

    .line 109
    .line 110
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget-wide v1, p1, Lcom/inmobi/media/za;->i:J

    .line 114
    .line 115
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    const-string v2, "time_created"

    .line 120
    .line 121
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 122
    .line 123
    .line 124
    iget v1, p1, Lcom/inmobi/media/za;->g:I

    .line 125
    .line 126
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    const-string v2, "retry_count"

    .line 131
    .line 132
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 133
    .line 134
    .line 135
    const-string v1, "owner"

    .line 136
    .line 137
    iget-object v2, p1, Lcom/inmobi/media/za;->h:Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iget-object v1, p1, Lcom/inmobi/media/za;->j:Ljava/lang/Long;

    .line 143
    .line 144
    if-eqz v1, :cond_1

    .line 145
    .line 146
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 147
    .line 148
    .line 149
    move-result-wide v1

    .line 150
    goto :goto_1

    .line 151
    :cond_1
    const-wide/16 v1, 0x0

    .line 152
    .line 153
    :goto_1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    const-string v2, "retryAfter"

    .line 158
    .line 159
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 160
    .line 161
    .line 162
    iget-object p1, p1, Lcom/inmobi/media/za;->k:Lcom/inmobi/media/hc;

    .line 163
    .line 164
    if-eqz p1, :cond_2

    .line 165
    .line 166
    new-instance v1, Lorg/json/JSONObject;

    .line 167
    .line 168
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 169
    .line 170
    .line 171
    iget-object v2, p1, Lcom/inmobi/media/hc;->a:Lcom/inmobi/media/Z;

    .line 172
    .line 173
    invoke-virtual {v2}, Lcom/inmobi/media/Z;->m()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    const-string v3, "plType"

    .line 178
    .line 179
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    iget-object v2, p1, Lcom/inmobi/media/hc;->a:Lcom/inmobi/media/Z;

    .line 184
    .line 185
    invoke-virtual {v2}, Lcom/inmobi/media/Z;->l()J

    .line 186
    .line 187
    .line 188
    move-result-wide v2

    .line 189
    const-string v4, "plId"

    .line 190
    .line 191
    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    iget-object v2, p1, Lcom/inmobi/media/hc;->a:Lcom/inmobi/media/Z;

    .line 196
    .line 197
    invoke-virtual {v2}, Lcom/inmobi/media/Z;->b()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    const-string v3, "adType"

    .line 202
    .line 203
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    iget-object v2, p1, Lcom/inmobi/media/hc;->b:Ljava/lang/String;

    .line 208
    .line 209
    const-string v3, "markupType"

    .line 210
    .line 211
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-static {}, Lcom/inmobi/media/L3;->q()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    const-string v3, "networkType"

    .line 220
    .line 221
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    iget-object v2, p1, Lcom/inmobi/media/hc;->e:Ljava/lang/String;

    .line 226
    .line 227
    const-string v3, "creativeType"

    .line 228
    .line 229
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    iget-object v2, p1, Lcom/inmobi/media/hc;->f:Ljava/lang/String;

    .line 234
    .line 235
    const-string v3, "creativeId"

    .line 236
    .line 237
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    iget-boolean v2, p1, Lcom/inmobi/media/hc;->g:Z

    .line 242
    .line 243
    const-string v3, "isRewarded"

    .line 244
    .line 245
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    iget v2, p1, Lcom/inmobi/media/hc;->h:I

    .line 250
    .line 251
    const-string v3, "adPosition"

    .line 252
    .line 253
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    iget-object p1, p1, Lcom/inmobi/media/hc;->c:Ljava/lang/String;

    .line 258
    .line 259
    const-string v2, "metadataBlob"

    .line 260
    .line 261
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    const-string v1, "toString(...)"

    .line 270
    .line 271
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    const-string v1, "telemetry_metadata"

    .line 275
    .line 276
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    :cond_2
    return-object v0
.end method
