.class public Lcom/bytedance/sdk/openadsdk/core/cY;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/Id;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/cY$ZYk;,
        Lcom/bytedance/sdk/openadsdk/core/cY$oJ;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/openadsdk/core/Id<",
        "Lcom/bytedance/sdk/openadsdk/ex/oJ;",
        ">;"
    }
.end annotation


# instance fields
.field private final oJ:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method private Pfn(Lorg/json/JSONObject;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    const-string v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "success"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private Pfn(Ljava/lang/String;)[B
    .locals 5

    .line 2
    const-string v0, "NetApiImpl"

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v2, 0x0

    .line 3
    new-array v2, v2, [B

    .line 4
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 5
    :try_start_1
    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    :try_start_2
    const-string v1, "utf-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :goto_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 10
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v1, v4

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v1, v4

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_3
    move-exception p1

    goto :goto_1

    :catchall_2
    move-exception p1

    move-object v3, v1

    goto :goto_4

    :catch_4
    move-exception p1

    move-object v3, v1

    .line 12
    :goto_1
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_1

    .line 13
    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_2

    :catch_5
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    .line 15
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 16
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_2
    :goto_3
    return-object v2

    :goto_4
    if-eqz v1, :cond_3

    .line 17
    :try_start_8
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_5

    :catch_6
    move-exception v1

    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_5
    if-eqz v3, :cond_4

    .line 19
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 20
    :try_start_9
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_6

    :catch_7
    move-exception v1

    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_4
    :goto_6
    throw p1

    :cond_5
    :goto_7
    return-object v1
.end method

.method private static ZYk(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 154
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/oJ;->tB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    .line 155
    invoke-static {p1}, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptManager;->decryptType4(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 156
    iget-object p1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 157
    move-object p0, p1

    check-cast p0, Ljava/lang/String;

    const/4 p1, 0x1

    .line 158
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/Xe;->oJ(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 159
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/Xe;->oJ(Z)V

    if-eqz p0, :cond_2

    .line 160
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_2
    const/4 p0, 0x2

    .line 161
    sget-object v0, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->GET_ADS:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    invoke-static {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Xe;->oJ(ILcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;I)V

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static ZYk(Lcom/bytedance/sdk/openadsdk/AdSlot;)Ljava/lang/String;
    .locals 9

    .line 135
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/jFA;->PiB()Ljava/lang/String;

    move-result-object v0

    if-nez p0, :cond_1

    .line 136
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    return-object v0

    .line 137
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getUserData()Ljava/lang/String;

    move-result-object p0

    .line 138
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object p0

    .line 139
    :cond_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    .line 140
    :cond_3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 141
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x0

    .line 143
    const-string v7, "name"

    if-ge v5, v3, :cond_5

    .line 144
    :try_start_1
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 145
    invoke-virtual {v8, v7, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 146
    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 147
    :cond_5
    :try_start_2
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    :goto_1
    if-ge v4, v0, :cond_7

    .line 149
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 150
    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 151
    invoke-virtual {v1, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 152
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 153
    :cond_7
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    return-object p0

    :catchall_1
    return-object v0
.end method

.method private ZYk()Ljava/util/Map;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 134
    const-string v1, "Content-Type"

    const-string v2, "application/octet-stream;tt-data=a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static ZYk(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 6

    const/4 v0, 0x0

    .line 188
    :try_start_0
    invoke-static {p0}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/ZYk;->ZYk(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 189
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 190
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 191
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 192
    invoke-static {v2}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/ZYk;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/oJ/tB/ZYk;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 193
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 194
    const-string v4, "id"

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/oJ/tB/ZYk;->ZYk()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    const-string v4, "md5"

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/oJ/tB/ZYk;->tB()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_2
    return-object v1

    :cond_3
    :goto_1
    return-object v0

    .line 197
    :goto_2
    const-string v1, "NetApiImpl"

    const-string v2, "getParentTplIds: "

    invoke-static {v1, v2, p0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private ZYk(Ljava/lang/String;Ljava/util/List;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Lcom/pgl/ssdk/ces/out/DungeonFlag;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 116
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 117
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 118
    const-string v2, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 119
    const-string v2, "ad_sdk_version"

    const-string v3, "7.5.0.4"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 121
    const-string p1, "gaid"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/ZYk/oJ;->oJ()Lcom/bytedance/sdk/openadsdk/RZ/oJ/ZYk/oJ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/ZYk/oJ;->ZYk()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    const-string p1, "extra"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    const-string p1, "filter_words"

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string p1, "dislike_source"

    invoke-virtual {v1, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->ib()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->Jm()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 126
    invoke-static {p3}, Lcom/bytedance/sdk/component/utils/oJ;->oJ(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 127
    const-string p2, "creative_info"

    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    const-string p1, "feedback_type"

    const/4 p2, 0x1

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 129
    const-string p1, "user_description"

    invoke-virtual {v1, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    :cond_0
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 131
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 132
    const-string p2, "actions"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method private ZYk(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/HL;ILcom/bytedance/sdk/openadsdk/core/Id$oJ;)V
    .locals 28

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v10, p2

    move-object/from16 v14, p4

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->YF()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x9c7c

    .line 2
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/so;->oJ(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v14, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Id$oJ;->oJ(ILjava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/oq/oJ;->tB()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/WcQ;->ba()V

    .line 5
    :cond_1
    new-instance v15, Lcom/bytedance/sdk/openadsdk/core/model/tB;

    invoke-direct {v15}, Lcom/bytedance/sdk/openadsdk/core/model/tB;-><init>()V

    .line 6
    invoke-virtual {v15, v13}, Lcom/bytedance/sdk/openadsdk/core/model/tB;->oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/jFA;->oJ()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v14, :cond_2

    .line 8
    const-string v0, "Ad request is temporarily paused, Please contact your AM"

    const/16 v1, 0x3e8

    invoke-interface {v14, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/Id$oJ;->oJ(ILjava/lang/String;)V

    .line 9
    invoke-virtual {v15, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tB;->oJ(I)V

    .line 10
    invoke-static {v15}, Lcom/bytedance/sdk/openadsdk/core/model/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/tB;)V

    :cond_2
    return-void

    .line 11
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->wd()Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz v14, :cond_4

    const/16 v0, -0x10

    .line 12
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/so;->oJ(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v14, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Id$oJ;->oJ(ILjava/lang/String;)V

    const/16 v0, 0x3e9

    .line 13
    invoke-virtual {v15, v0}, Lcom/bytedance/sdk/openadsdk/core/model/tB;->oJ(I)V

    .line 14
    invoke-static {v15}, Lcom/bytedance/sdk/openadsdk/core/model/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/tB;)V

    :cond_4
    return-void

    :cond_5
    if-nez v14, :cond_6

    return-void

    .line 15
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Lcom/bytedance/sdk/openadsdk/core/cY;->ex(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, -0x8

    .line 16
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/so;->oJ(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v14, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Id$oJ;->oJ(ILjava/lang/String;)V

    return-void

    .line 17
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "NetApiImpl"

    const-string v3, "Pangle_Debug_Mode"

    const/4 v11, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_10

    iget-boolean v0, v10, Lcom/bytedance/sdk/openadsdk/core/model/HL;->ba:Z

    if-nez v0, :cond_10

    const/4 v0, 0x2

    .line 18
    invoke-virtual {v15, v0}, Lcom/bytedance/sdk/openadsdk/core/model/tB;->ZYk(I)V

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/bytedance/sdk/openadsdk/core/model/tB;->oJ(Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lcom/bytedance/sdk/component/utils/awB;->ex()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/cFZ/ZYk;->oJ(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    :cond_8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->Qu()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/nke;->oJ()Lcom/bytedance/sdk/openadsdk/core/LpP;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/LpP;->ex()I

    move-result v0

    if-ne v0, v4, :cond_9

    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v12, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 24
    :cond_9
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v12, v0}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_a

    const/16 v0, 0xc

    .line 26
    invoke-virtual {v15, v0}, Lcom/bytedance/sdk/openadsdk/core/model/tB;->tB(I)V

    .line 27
    invoke-direct {v12, v14, v15}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Lcom/bytedance/sdk/openadsdk/core/Id$oJ;Lcom/bytedance/sdk/openadsdk/core/model/tB;)V

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_0

    .line 28
    :cond_a
    invoke-static {v0, v13, v10}, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->oJ(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/HL;)Lcom/bytedance/sdk/openadsdk/core/cY$oJ;

    move-result-object v0

    .line 29
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->kkU:Ljava/util/ArrayList;

    invoke-virtual {v15, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tB;->oJ(Ljava/util/ArrayList;)V

    .line 30
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->jFA:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ;->oJ(Ljava/lang/String;)V

    .line 31
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->ex:I

    const/16 v3, 0x4e20

    if-eq v1, v3, :cond_b

    .line 32
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->Pfn:Ljava/lang/String;

    invoke-interface {v14, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/Id$oJ;->oJ(ILjava/lang/String;)V

    .line 33
    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->ex:I

    invoke-virtual {v15, v0}, Lcom/bytedance/sdk/openadsdk/core/model/tB;->oJ(I)V

    const/16 v0, 0x9

    .line 34
    invoke-virtual {v15, v0}, Lcom/bytedance/sdk/openadsdk/core/model/tB;->tB(I)V

    .line 35
    invoke-static {v15}, Lcom/bytedance/sdk/openadsdk/core/model/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/tB;)V

    return-void

    .line 36
    :cond_b
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    if-nez v1, :cond_c

    const/16 v0, 0xd

    .line 37
    invoke-virtual {v15, v0}, Lcom/bytedance/sdk/openadsdk/core/model/tB;->tB(I)V

    .line 38
    invoke-direct {v12, v14, v15}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Lcom/bytedance/sdk/openadsdk/core/Id$oJ;Lcom/bytedance/sdk/openadsdk/core/model/tB;)V

    return-void

    .line 39
    :cond_c
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 40
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/awB/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 41
    :cond_d
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    invoke-direct {v12, v1}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;)V

    .line 42
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    invoke-direct {v12, v1, v14}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/core/Id$oJ;)Z

    move-result v1

    if-eqz v1, :cond_e

    return-void

    .line 43
    :cond_e
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;)V

    .line 44
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    invoke-interface {v14, v1, v15}, Lcom/bytedance/sdk/openadsdk/core/Id$oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/core/model/tB;)V

    .line 45
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 46
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/cFZ/ZYk;->oJ()Lcom/bytedance/sdk/openadsdk/cFZ/ZYk;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/bytedance/sdk/openadsdk/cFZ/ZYk;->oJ(Ljava/util/Map;)V

    .line 47
    :cond_f
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    invoke-direct {v12, v1}, Lcom/bytedance/sdk/openadsdk/core/cY;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/oJ;)V

    .line 48
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ex/oJ;->oJ()Lcom/bytedance/sdk/openadsdk/core/ex/oJ;

    move-result-object v1

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/ex/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 49
    :goto_0
    const-string v1, "get ad error: "

    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v1, 0xe

    .line 50
    invoke-virtual {v15, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tB;->tB(I)V

    .line 51
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/bytedance/sdk/openadsdk/core/model/tB;->ZYk(Ljava/lang/String;)V

    .line 52
    invoke-direct {v12, v14, v15}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Lcom/bytedance/sdk/openadsdk/core/Id$oJ;Lcom/bytedance/sdk/openadsdk/core/model/tB;)V

    return-void

    :cond_10
    if-eqz v10, :cond_11

    .line 53
    iget-object v0, v10, Lcom/bytedance/sdk/openadsdk/core/model/HL;->BTZ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 54
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    iget-object v5, v10, Lcom/bytedance/sdk/openadsdk/core/model/HL;->BTZ:Ljava/lang/String;

    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v12, v0}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 56
    invoke-static {v0, v13, v10}, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->oJ(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/HL;)Lcom/bytedance/sdk/openadsdk/core/cY$oJ;

    move-result-object v0

    .line 57
    iget-object v5, v10, Lcom/bytedance/sdk/openadsdk/core/model/HL;->PiB:Lcom/bytedance/sdk/openadsdk/core/QSm;

    if-eqz v5, :cond_11

    .line 58
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    if-eqz v0, :cond_11

    .line 59
    invoke-interface {v5, v0}, Lcom/bytedance/sdk/openadsdk/core/QSm;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 60
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;)V

    .line 61
    invoke-interface {v14, v0, v15}, Lcom/bytedance/sdk/openadsdk/core/Id$oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/core/model/tB;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 62
    :catchall_1
    :cond_11
    invoke-direct/range {p0 .. p3}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/HL;I)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_12

    const/16 v0, -0x9

    .line 63
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/so;->oJ(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v14, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Id$oJ;->oJ(ILjava/lang/String;)V

    .line 64
    invoke-virtual {v15, v0}, Lcom/bytedance/sdk/openadsdk/core/model/tB;->oJ(I)V

    .line 65
    invoke-static {v15}, Lcom/bytedance/sdk/openadsdk/core/model/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/tB;)V

    return-void

    .line 66
    :cond_12
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->Qu()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/nke;->oJ()Lcom/bytedance/sdk/openadsdk/core/LpP;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/LpP;->ex()I

    move-result v0

    if-ne v0, v4, :cond_13

    .line 67
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    iget-object v6, v12, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ:Landroid/content/Context;

    invoke-static {v3, v0, v6}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 69
    :cond_13
    const-string v0, "/api/ad/union/sdk/get_ads/"

    invoke-static {v0, v4, v11}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->ZYk()Lcom/bytedance/sdk/openadsdk/Ry/ZYk;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->tB()Lcom/bytedance/sdk/component/cFZ/oJ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/cFZ/oJ;->ZYk()Lcom/bytedance/sdk/component/cFZ/ZYk/ex;

    move-result-object v9

    .line 71
    :try_start_2
    invoke-static {v9, v0}, Lcom/bytedance/sdk/openadsdk/so/ex;->oJ(Lcom/bytedance/sdk/component/cFZ/ZYk/tB;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 72
    invoke-virtual {v9, v3}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ZYk(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 73
    :catch_0
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v6

    invoke-interface {v6}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->awB()Z

    move-result v6

    invoke-virtual {v9, v3, v6}, Lcom/bytedance/sdk/component/cFZ/ZYk/ex;->oJ(Ljava/lang/String;Z)V

    .line 74
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/jFA/tB;->oJ(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 75
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 76
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 77
    :try_start_3
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 78
    invoke-virtual {v9, v0, v7}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ZYk(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 80
    :cond_14
    :try_start_4
    const-string v0, "User-Agent"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ex()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ZYk(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-direct {v12, v9, v5}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Lcom/bytedance/sdk/component/cFZ/ZYk/ex;Lorg/json/JSONObject;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 82
    :catch_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/wd;->ZYk()Lcom/bytedance/sdk/openadsdk/utils/wd;

    move-result-object v6

    .line 83
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getRequestExtraMap()Ljava/util/Map;

    move-result-object v8

    .line 84
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/jFA;->si()Z

    move-result v0

    if-eqz v0, :cond_15

    if-eqz v8, :cond_15

    move/from16 v16, v4

    goto :goto_2

    :cond_15
    move/from16 v16, v11

    :goto_2
    if-eqz v16, :cond_16

    .line 85
    const-string v0, "pgad_start"

    invoke-interface {v8, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    const/16 v0, 0xa

    .line 86
    invoke-virtual {v9, v0}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->oJ(I)V

    .line 87
    const-string v0, "get_ad"

    invoke-virtual {v9, v0}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->oJ(Ljava/lang/String;)V

    .line 88
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/cY$8;

    invoke-direct {v0, v12, v13}, Lcom/bytedance/sdk/openadsdk/core/cY$8;-><init>(Lcom/bytedance/sdk/openadsdk/core/cY;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/si/tB;->oJ(Lcom/bytedance/sdk/openadsdk/si/ex;)V

    .line 89
    invoke-static {}, Lcom/bytedance/sdk/component/utils/awB;->ex()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 90
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    :cond_17
    if-nez v1, :cond_18

    .line 91
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/cY$9;

    move-object v1, v0

    move-object/from16 v2, p0

    move/from16 v3, v16

    move-object v4, v8

    move-object v5, v6

    move-object/from16 v6, p1

    move-object v7, v15

    move-object/from16 v8, p4

    move-object v13, v9

    move-object/from16 v9, p2

    move/from16 v10, p3

    move v14, v11

    move-object v11, v13

    invoke-direct/range {v1 .. v11}, Lcom/bytedance/sdk/openadsdk/core/cY$9;-><init>(Lcom/bytedance/sdk/openadsdk/core/cY;ZLjava/util/Map;Lcom/bytedance/sdk/openadsdk/utils/wd;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/tB;Lcom/bytedance/sdk/openadsdk/core/Id$oJ;Lcom/bytedance/sdk/openadsdk/core/model/HL;ILcom/bytedance/sdk/component/cFZ/ZYk/ex;)V

    invoke-virtual {v13, v0}, Lcom/bytedance/sdk/component/cFZ/ZYk/ex;->oJ(Lcom/bytedance/sdk/component/cFZ/oJ/oJ;)V

    move v12, v14

    goto/16 :goto_5

    :cond_18
    move-object/from16 v17, v9

    .line 92
    :try_start_5
    invoke-virtual/range {v17 .. v17}, Lcom/bytedance/sdk/component/cFZ/ZYk/ex;->oJ()Lcom/bytedance/sdk/component/cFZ/ZYk;

    move-result-object v0

    if-nez v0, :cond_19

    .line 93
    new-instance v0, Lcom/bytedance/sdk/component/cFZ/ZYk;

    const-string v21, "response is null, content type is not support!!"

    const-string v23, "REQUEST_BODY_NULL"

    const-wide/16 v24, 0x1

    const-wide/16 v26, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x1389

    const/16 v22, 0x0

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v27}, Lcom/bytedance/sdk/component/cFZ/ZYk;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    :cond_19
    move-object v4, v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v18, v8

    move v12, v11

    goto :goto_4

    .line 94
    :goto_3
    invoke-virtual {v4}, Lcom/bytedance/sdk/component/cFZ/ZYk;->ba()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v0, :cond_1a

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object v3, v4

    move/from16 v4, v16

    move-object v5, v8

    move-object/from16 v7, p1

    move-object/from16 v18, v8

    move-object v8, v15

    move-object/from16 v9, p4

    move-object/from16 v10, p2

    move v12, v11

    move/from16 v11, p3

    .line 95
    :try_start_6
    invoke-direct/range {v1 .. v11}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Lcom/bytedance/sdk/component/cFZ/ZYk/tB;Lcom/bytedance/sdk/component/cFZ/ZYk;ZLjava/util/Map;Lcom/bytedance/sdk/openadsdk/utils/wd;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/tB;Lcom/bytedance/sdk/openadsdk/core/Id$oJ;Lcom/bytedance/sdk/openadsdk/core/model/HL;I)V

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_4

    :cond_1a
    move-object/from16 v18, v8

    move v12, v11

    .line 96
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/cFZ/ZYk;->ZYk()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object/from16 v5, p1

    move/from16 v6, v16

    move-object/from16 v7, v18

    move-object/from16 v8, p4

    move-object v9, v15

    .line 97
    invoke-direct/range {v1 .. v9}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Lcom/bytedance/sdk/component/cFZ/ZYk/ex;Ljava/io/IOException;Lcom/bytedance/sdk/component/cFZ/ZYk;Lcom/bytedance/sdk/openadsdk/AdSlot;ZLjava/util/Map;Lcom/bytedance/sdk/openadsdk/core/Id$oJ;Lcom/bytedance/sdk/openadsdk/core/model/tB;)V

    .line 98
    invoke-virtual/range {v17 .. v17}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ex()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/oq;->oJ(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_5

    .line 99
    :goto_4
    new-instance v11, Lcom/bytedance/sdk/component/cFZ/ZYk;

    const-wide/16 v7, 0x1

    const-wide/16 v9, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x138a

    const-string v4, "execute method throw exception"

    const/4 v5, 0x0

    const-string v6, "REQUEST_BODY_EXCEPTION"

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/bytedance/sdk/component/cFZ/ZYk;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    .line 100
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object v4, v11

    move-object/from16 v5, p1

    move/from16 v6, v16

    move-object/from16 v7, v18

    move-object/from16 v8, p4

    move-object v9, v15

    .line 101
    invoke-direct/range {v1 .. v9}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Lcom/bytedance/sdk/component/cFZ/ZYk/ex;Ljava/io/IOException;Lcom/bytedance/sdk/component/cFZ/ZYk;Lcom/bytedance/sdk/openadsdk/AdSlot;ZLjava/util/Map;Lcom/bytedance/sdk/openadsdk/core/Id$oJ;Lcom/bytedance/sdk/openadsdk/core/model/tB;)V

    .line 102
    :goto_5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/ZYk/oJ;->oJ()Lcom/bytedance/sdk/openadsdk/RZ/oJ/ZYk/oJ;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/ZYk/oJ;->oJ(Z)V

    return-void
.end method

.method private ZYk(Lcom/bytedance/sdk/openadsdk/core/model/oJ;)V
    .locals 9

    .line 103
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 104
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 105
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 106
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz v2, :cond_2

    .line 107
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->bgF()Lcom/bytedance/sdk/openadsdk/core/model/cFZ;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v6, 0x0

    .line 108
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zjw()Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    move-result-object v7

    const-string v4, ""

    const/4 v5, 0x0

    move-object v3, p0

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Ljava/lang/String;IILcom/bytedance/sdk/openadsdk/core/model/Ry;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 109
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->XSu()Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    move-result-object v7

    const-string v4, ""

    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Ljava/lang/String;IILcom/bytedance/sdk/openadsdk/core/model/Ry;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 110
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->yB()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 111
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    move v4, v0

    .line 112
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 113
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    invoke-direct {p0, v2, v5}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/model/Ry;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 114
    :cond_1
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 115
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->kkU()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->tB()I

    move-result v5

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->ZYk()I

    move-result v6

    const/4 v7, 0x0

    move-object v3, p0

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Ljava/lang/String;IILcom/bytedance/sdk/openadsdk/core/model/Ry;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method private ba(Lorg/json/JSONObject;)V
    .locals 2
    .annotation runtime Lcom/pgl/ssdk/ces/out/DungeonFlag;
    .end annotation

    .line 1
    :try_start_0
    const-string v0, "package_name"

    .line 2
    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ba()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    .line 9
    .line 10
    const-string v0, "version_code"

    .line 11
    .line 12
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->cFZ()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    .line 18
    .line 19
    const-string v0, "version"

    .line 20
    .line 21
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->so()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    :catch_0
    return-void
.end method

.method private ex(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    const-string v1, "Content-Type"

    const-string v2, "application/json; charset=utf-8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/cY;->tB(Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    const-string p1, "Content-Encoding"

    const-string v1, "union_sdk_encode"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private ex(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/cFZ/ZYk;->oJ()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/cFZ/ZYk;->oJ(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/cFZ/ZYk;->ZYk()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Ljava/lang/String;J)V

    :cond_1
    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic oJ(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/cY;->ZYk(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private oJ(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 332
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 333
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 334
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/FilterWord;

    .line 335
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private static oJ(Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    .line 328
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->ib()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->oJ(Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/jr;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/jr;-><init>(Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;)V

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptManager;->encryptType4(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/embedapplog/IDefaultEncrypt;)Lorg/json/JSONObject;

    move-result-object p0

    .line 330
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/Xe;->oJ(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 331
    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/oJ;->oJ(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;)Lorg/json/JSONObject;
    .locals 4

    .line 340
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 341
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v1

    .line 342
    const-string v2, "personalized_ad"

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->HyG()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 343
    const-string v1, "lmt"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->tB()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 344
    const-string v1, "gdpr"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/jFA;->kkU()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 345
    const-string v1, "pa_consent"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/jFA;->dLZ()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 346
    const-string v1, "is_gdpr_user"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->XAo()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz p0, :cond_0

    .line 347
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/HL;->oJ:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 348
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/HL;->oJ:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/HL;

    if-eqz v1, :cond_0

    .line 349
    const-string v2, "lastadomain"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/HL;->ZYk()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 350
    const-string v2, "lastbundle"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/HL;->tB()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 351
    const-string v2, "lastclick"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/HL;->ex()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 352
    const-string v2, "lastskip"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/HL;->Pfn()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 353
    :cond_0
    const-string v1, "data"

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/cY;->ZYk(Lcom/bytedance/sdk/openadsdk/AdSlot;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method private oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;ILcom/bytedance/sdk/openadsdk/core/model/HL;)Lorg/json/JSONObject;
    .locals 5

    .line 356
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 357
    :try_start_0
    const-string v1, "id"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 358
    const-string v1, "adtype"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 359
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getAdId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCreativeId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExt()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 362
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 363
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getAdId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 364
    const-string v2, "ad_id"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getAdId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 365
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCreativeId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 366
    const-string v2, "creative_id"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCreativeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 367
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExt()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 368
    const-string v2, "ext"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 369
    :cond_3
    const-string v2, "preview_ads"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :cond_4
    const-string v1, "render_method"

    const-string v2, "accepted_size"

    const/4 v3, 0x1

    if-eqz p3, :cond_6

    .line 371
    :try_start_1
    iget v4, p3, Lcom/bytedance/sdk/openadsdk/core/model/HL;->jFA:I

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 372
    iget v1, p3, Lcom/bytedance/sdk/openadsdk/core/model/HL;->jFA:I

    if-ne v1, v3, :cond_5

    .line 373
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getImgAcceptedWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getImgAcceptedHeight()I

    move-result v4

    invoke-direct {p0, v0, v2, v1, v4}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Lorg/json/JSONObject;Ljava/lang/String;II)V

    goto :goto_0

    :cond_5
    const/4 v4, 0x2

    if-ne v1, v4, :cond_7

    .line 374
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedWidth()F

    move-result v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedHeight()F

    move-result v4

    invoke-direct {p0, v0, v2, v1, v4}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Lorg/json/JSONObject;Ljava/lang/String;FF)V

    goto :goto_0

    .line 375
    :cond_6
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 376
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getImgAcceptedWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getImgAcceptedHeight()I

    move-result v4

    invoke-direct {p0, v0, v2, v1, v4}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Lorg/json/JSONObject;Ljava/lang/String;II)V

    .line 377
    :cond_7
    :goto_0
    const-string v1, "ptpl_ids"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/cY;->ZYk(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 378
    const-string v1, "ugen_ptpl_ids"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/cY;->tB(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 379
    const-string v1, "ptpl_ids_v3"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_v3"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/cY;->tB(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 380
    const-string v1, "pos"

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getPosition(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 381
    const-string v1, "is_support_dpl"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->isSupportDeepLink()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-eq p2, v3, :cond_8

    const/4 v1, 0x5

    if-ne p2, v1, :cond_9

    .line 382
    :cond_8
    const-string v1, "is_origin_ad"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_9
    if-eqz p3, :cond_a

    .line 383
    iget-object v1, p3, Lcom/bytedance/sdk/openadsdk/core/model/HL;->cFZ:Lorg/json/JSONObject;

    if-eqz v1, :cond_a

    .line 384
    const-string v2, "session_params"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a
    if-eqz p3, :cond_b

    .line 385
    iget-object v1, p3, Lcom/bytedance/sdk/openadsdk/core/model/HL;->so:Lorg/json/JSONObject;

    if-eqz v1, :cond_b

    .line 386
    const-string v2, "common_params"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 387
    :cond_b
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getAdCount()I

    move-result v1

    if-gtz v1, :cond_c

    move v1, v3

    :cond_c
    const/4 v2, 0x3

    if-le v1, v2, :cond_d

    move v1, v2

    :cond_d
    const/4 v2, 0x7

    if-eq p2, v2, :cond_e

    const/16 v2, 0x8

    if-ne p2, v2, :cond_f

    :cond_e
    move v1, v3

    :cond_f
    if-eqz p3, :cond_10

    .line 388
    iget-object p3, p3, Lcom/bytedance/sdk/openadsdk/core/model/HL;->Pfn:Lorg/json/JSONArray;

    if-eqz p3, :cond_10

    .line 389
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getAdCount()I

    move-result v1

    .line 390
    :cond_10
    const-string p3, "ad_count"

    invoke-virtual {v0, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-ne p2, v3, :cond_11

    .line 391
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 392
    const-string p3, "is_rotate_banner"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getIsRotateBanner()I

    move-result v1

    invoke-virtual {p2, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 393
    const-string p3, "rotate_time"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getRotateTime()I

    move-result v1

    invoke-virtual {p2, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 394
    const-string p3, "rotate_order"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getRotateOrder()I

    move-result v1

    invoke-virtual {p2, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 395
    const-string p3, "type"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBannerType()I

    move-result p1

    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 396
    const-string p1, "banner"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_11
    return-object v0
.end method

.method private oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/HL;I)Lorg/json/JSONObject;
    .locals 10
    .annotation runtime Lcom/pgl/ssdk/ces/out/DungeonFlag;
    .end annotation

    .line 6
    const-string v0, "app"

    const-string v1, "7.5.0.4"

    const-string v2, "ad_sdk_version"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 7
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    if-eqz p2, :cond_1

    .line 8
    iget-object v5, p2, Lcom/bytedance/sdk/openadsdk/core/model/HL;->oJ:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v5, p2, Lcom/bytedance/sdk/openadsdk/core/model/HL;->oJ:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->Pfn()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    const/4 v6, 0x7

    .line 9
    const-string v7, "req_type"

    if-ne p3, v6, :cond_2

    if-eqz p2, :cond_4

    .line 10
    :try_start_1
    iget v6, p2, Lcom/bytedance/sdk/openadsdk/core/model/HL;->ZYk:I

    if-lez v6, :cond_4

    .line 11
    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    :cond_2
    const/16 v6, 0x8

    if-ne p3, v6, :cond_3

    if-eqz p2, :cond_4

    .line 12
    iget v6, p2, Lcom/bytedance/sdk/openadsdk/core/model/HL;->tB:I

    if-lez v6, :cond_4

    .line 13
    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    :cond_3
    const/4 v6, 0x3

    if-ne p3, v6, :cond_4

    if-eqz p2, :cond_4

    .line 14
    iget v6, p2, Lcom/bytedance/sdk/openadsdk/core/model/HL;->ex:I

    if-lez v6, :cond_4

    .line 15
    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :cond_4
    :goto_2
    :try_start_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v6

    invoke-interface {v6}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->jFA()Ljava/lang/String;

    move-result-object v6

    .line 17
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v7

    invoke-interface {v7}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->Ry()Ljava/lang/String;

    move-result-object v7

    if-eqz v6, :cond_5

    if-eqz v7, :cond_5

    .line 18
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 19
    const-string v9, "version"

    invoke-virtual {v8, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    const-string v6, "param"

    invoke-virtual {v8, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    const-string v6, "abtest"

    invoke-virtual {v4, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 22
    :catchall_1
    :cond_5
    :try_start_3
    const-string v6, "request_id"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Lorg/json/JSONObject;)V

    .line 24
    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    const-string v6, "js_render_ver"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/so/BTZ;->ZYk()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    const-string v6, "js_render_v3_ver"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/so/BTZ;->tB()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    const-string v6, "source_type"

    invoke-virtual {v4, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/cY;->tB()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v0, v6}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->oJ(Landroid/content/Context;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 30
    const-string v7, "device"

    invoke-virtual {v4, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    const-string v0, "user"

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    const-string v0, "ua"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ex()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    const-string v0, "channel"

    const-string v7, "main"

    invoke-virtual {v4, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 35
    invoke-direct {p0, p1, p3, p2}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;ILcom/bytedance/sdk/openadsdk/core/model/HL;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {v0, p3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 36
    const-string p3, "adslots"

    invoke-virtual {v4, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    invoke-direct {p0, v4, p2}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/HL;)V

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    const-wide/16 v7, 0x3e8

    div-long/2addr p2, v7

    .line 39
    const-string v0, "ts"

    invoke-virtual {v4, v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 40
    const-string v0, ""

    .line 41
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    if-eqz v5, :cond_6

    .line 42
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    :cond_6
    const-string p1, "req_sign"

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/Pfn;->oJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA/tB;->Pfn()I

    move-result p1

    if-eqz p1, :cond_7

    .line 45
    const-string p1, "pglx"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA/tB;->Pfn()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    :cond_7
    const-string p1, "adx_id"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/jFA;->jr()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ba/ZYk;->oJ()Lcom/bytedance/sdk/openadsdk/ba/ZYk;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/bytedance/sdk/openadsdk/ba/ZYk;->oJ(Lorg/json/JSONObject;)V

    .line 48
    sget-object p1, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->GET_ADS:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    invoke-static {p1, v4}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 49
    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    const-string p1, "oversea_version_type"

    invoke-virtual {v3, p1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 51
    :goto_3
    const-string p2, "body data exception"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    :goto_4
    return-object v3
.end method

.method private oJ(Lcom/bytedance/sdk/component/ZYk/oJ/kkU;Lcom/bytedance/sdk/openadsdk/core/model/HL;Lcom/bytedance/sdk/openadsdk/utils/wd;Lcom/bytedance/sdk/openadsdk/utils/wd;ILcom/bytedance/sdk/openadsdk/utils/wd;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;)V
    .locals 13

    move-object v1, p2

    .line 205
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->bgF()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 206
    :cond_0
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    .line 207
    :try_start_0
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/model/HL;->kkU:Lcom/bytedance/sdk/openadsdk/utils/wd;

    iget-wide v4, v0, Lcom/bytedance/sdk/openadsdk/utils/wd;->oJ:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_1

    move-object/from16 v5, p6

    .line 208
    invoke-virtual {v5, v0}, Lcom/bytedance/sdk/openadsdk/utils/wd;->oJ(Lcom/bytedance/sdk/openadsdk/utils/wd;)J

    move-result-wide v2

    :goto_0
    move-wide v11, v2

    goto :goto_1

    :cond_1
    move-object/from16 v5, p6

    goto :goto_0

    :goto_1
    const/4 v9, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object v8, v10

    .line 209
    invoke-static/range {v0 .. v9}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Lcom/bytedance/sdk/component/ZYk/oJ/kkU;Lcom/bytedance/sdk/openadsdk/core/model/HL;Lcom/bytedance/sdk/openadsdk/utils/wd;Lcom/bytedance/sdk/openadsdk/utils/wd;ILcom/bytedance/sdk/openadsdk/utils/wd;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    .line 210
    const-string v0, "load_ad_time"

    move-object/from16 p1, p7

    move-object/from16 p2, p8

    move-object/from16 p3, v0

    move-wide/from16 p4, v11

    move-object/from16 p6, v10

    invoke-static/range {p1 .. p6}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static oJ(Lcom/bytedance/sdk/component/ZYk/oJ/kkU;Lcom/bytedance/sdk/openadsdk/core/model/HL;Lcom/bytedance/sdk/openadsdk/utils/wd;Lcom/bytedance/sdk/openadsdk/utils/wd;ILcom/bytedance/sdk/openadsdk/utils/wd;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lorg/json/JSONObject;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    .line 211
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/model/HL;->kkU:Lcom/bytedance/sdk/openadsdk/utils/wd;

    iget-wide v2, p1, Lcom/bytedance/sdk/openadsdk/utils/wd;->oJ:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    .line 212
    const-string v2, "client_start_time"

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/utils/wd;->oJ(Lcom/bytedance/sdk/openadsdk/utils/wd;)J

    move-result-wide v3

    invoke-virtual {p8, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 213
    :cond_0
    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/openadsdk/utils/wd;->oJ(Lcom/bytedance/sdk/openadsdk/utils/wd;)J

    move-result-wide p1

    const-string v2, "network_time"

    invoke-virtual {p8, v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 214
    const-string p1, "sever_time"

    invoke-virtual {p8, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 215
    const-string p1, "client_end_time"

    invoke-virtual {p5, p3}, Lcom/bytedance/sdk/openadsdk/utils/wd;->oJ(Lcom/bytedance/sdk/openadsdk/utils/wd;)J

    move-result-wide p2

    invoke-virtual {p8, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 216
    const-string p1, "open_ad"

    invoke-virtual {p7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 217
    invoke-virtual {p6}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Xe()Z

    move-result p1

    const-string p2, "is_icon_only"

    invoke-virtual {p8, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    if-eqz p6, :cond_2

    .line 218
    const-string p1, "render_control_type"

    invoke-virtual {p6}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oIC()I

    move-result p2

    invoke-virtual {p8, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 219
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->oJ()Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->tB()I

    move-result p1

    const-string p2, "webview_cache_size"

    invoke-virtual {p8, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 220
    const-string p1, "sync_barrier_open"

    invoke-virtual {p8, p1, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 221
    iget-wide p1, p0, Lcom/bytedance/sdk/component/ZYk/oJ/kkU;->ZYk:J

    cmp-long p3, p1, v0

    if-lez p3, :cond_3

    .line 222
    iget-wide p3, p0, Lcom/bytedance/sdk/component/ZYk/oJ/kkU;->tB:J

    sub-long/2addr p3, p1

    const-string p1, "enqueue_2_run_ts"

    invoke-virtual {p8, p1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 223
    iget-wide p1, p0, Lcom/bytedance/sdk/component/ZYk/oJ/kkU;->Pfn:J

    iget-wide p3, p0, Lcom/bytedance/sdk/component/ZYk/oJ/kkU;->ZYk:J

    sub-long/2addr p1, p3

    const-string p3, "run_2_connect_end_ts"

    invoke-virtual {p8, p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 224
    iget-wide p1, p0, Lcom/bytedance/sdk/component/ZYk/oJ/kkU;->ba:J

    iget-wide p3, p0, Lcom/bytedance/sdk/component/ZYk/oJ/kkU;->Pfn:J

    sub-long/2addr p1, p3

    const-string p3, "connect_end_2_response_end_ts"

    invoke-virtual {p8, p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 225
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-wide p3, p0, Lcom/bytedance/sdk/component/ZYk/oJ/kkU;->ba:J

    sub-long/2addr p1, p3

    const-string p0, "response_end_2_callback_end_ts"

    invoke-virtual {p8, p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_3
    return-void
.end method

.method private oJ(Lcom/bytedance/sdk/component/cFZ/ZYk/ex;Ljava/io/IOException;Lcom/bytedance/sdk/component/cFZ/ZYk;Lcom/bytedance/sdk/openadsdk/AdSlot;ZLjava/util/Map;Lcom/bytedance/sdk/openadsdk/core/Id$oJ;Lcom/bytedance/sdk/openadsdk/core/model/tB;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/cFZ/ZYk/ex;",
            "Ljava/io/IOException;",
            "Lcom/bytedance/sdk/component/cFZ/ZYk;",
            "Lcom/bytedance/sdk/openadsdk/AdSlot;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/Id$oJ;",
            "Lcom/bytedance/sdk/openadsdk/core/model/tB;",
            ")V"
        }
    .end annotation

    .line 74
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/cY$10;

    invoke-direct {v0, p0, p4}, Lcom/bytedance/sdk/openadsdk/core/cY$10;-><init>(Lcom/bytedance/sdk/openadsdk/core/cY;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/si/tB;->tB(Lcom/bytedance/sdk/openadsdk/si/ex;)V

    if-eqz p3, :cond_0

    .line 75
    invoke-virtual {p3}, Lcom/bytedance/sdk/component/cFZ/ZYk;->ZYk()Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 76
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    .line 77
    :cond_1
    const-string p4, ""

    .line 78
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/wd;->ZYk()Lcom/bytedance/sdk/openadsdk/utils/wd;

    move-result-object v0

    if-eqz p5, :cond_2

    .line 79
    iget-wide v0, v0, Lcom/bytedance/sdk/openadsdk/utils/wd;->oJ:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    const-string v0, "pgad_end"

    invoke-interface {p6, v0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object p5

    invoke-interface {p5}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->Qu()Z

    move-result p5

    if-eqz p5, :cond_4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/nke;->oJ()Lcom/bytedance/sdk/openadsdk/core/LpP;

    move-result-object p5

    invoke-interface {p5}, Lcom/bytedance/sdk/openadsdk/core/LpP;->ex()I

    move-result p5

    const/4 p6, 0x1

    if-ne p5, p6, :cond_4

    if-eqz p2, :cond_3

    .line 81
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p5

    goto :goto_1

    :cond_3
    const/4 p5, 0x0

    .line 82
    :goto_1
    const-string p6, "Pangle_Debug_Mode"

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ:Landroid/content/Context;

    invoke-static {p6, p5, v0}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :cond_4
    if-eqz p3, :cond_5

    .line 83
    invoke-virtual {p3}, Lcom/bytedance/sdk/component/cFZ/ZYk;->oJ()I

    move-result p2

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_6

    .line 84
    instance-of p2, p2, Ljava/net/SocketTimeoutException;

    if-eqz p2, :cond_6

    const/16 p2, 0x25a

    goto :goto_2

    :cond_6
    const/16 p2, 0x259

    :goto_2
    if-eqz p7, :cond_7

    .line 85
    invoke-interface {p7, p2, p4}, Lcom/bytedance/sdk/openadsdk/core/Id$oJ;->oJ(ILjava/lang/String;)V

    .line 86
    :cond_7
    invoke-virtual {p8, p2}, Lcom/bytedance/sdk/openadsdk/core/model/tB;->oJ(I)V

    const/16 p3, 0xa

    .line 87
    invoke-virtual {p8, p3}, Lcom/bytedance/sdk/openadsdk/core/model/tB;->tB(I)V

    .line 88
    invoke-virtual {p8, p4}, Lcom/bytedance/sdk/openadsdk/core/model/tB;->ZYk(Ljava/lang/String;)V

    .line 89
    invoke-static {p8}, Lcom/bytedance/sdk/openadsdk/core/model/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/tB;)V

    .line 90
    sget-object p3, Lcom/bytedance/sdk/openadsdk/ex/oJ/ba;->tB:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 91
    sget-object p3, Lcom/bytedance/sdk/openadsdk/ex/oJ/ba;->oJ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 92
    sget-object p3, Lcom/bytedance/sdk/openadsdk/ex/oJ/ba;->cFZ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 93
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ex/oJ/ba;->Pfn()V

    .line 94
    invoke-static {p2, p4}, Lcom/bytedance/sdk/openadsdk/ex/oJ/ba;->oJ(ILjava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ex/oJ/ba;->tB()V

    .line 96
    const-string p3, "get_ad"

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ex()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2, p4}, Lcom/bytedance/sdk/openadsdk/awB/oJ/Pfn;->oJ(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private oJ(Lcom/bytedance/sdk/component/cFZ/ZYk/ex;Lorg/json/JSONObject;)V
    .locals 1

    .line 430
    :try_start_0
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/cY;->tB(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    const-string v0, "cypher"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 432
    const-string p2, "x-pgli18n"

    const-string v0, "4"

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ZYk(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string p2, "Content-Type"

    const-string v0, "application/json; charset=utf-8"

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ZYk(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private oJ(Lcom/bytedance/sdk/component/cFZ/ZYk/tB;Lcom/bytedance/sdk/component/cFZ/ZYk;ZLjava/util/Map;Lcom/bytedance/sdk/openadsdk/utils/wd;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/tB;Lcom/bytedance/sdk/openadsdk/core/Id$oJ;Lcom/bytedance/sdk/openadsdk/core/model/HL;I)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/cFZ/ZYk/tB;",
            "Lcom/bytedance/sdk/component/cFZ/ZYk;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/utils/wd;",
            "Lcom/bytedance/sdk/openadsdk/AdSlot;",
            "Lcom/bytedance/sdk/openadsdk/core/model/tB;",
            "Lcom/bytedance/sdk/openadsdk/core/Id$oJ;",
            "Lcom/bytedance/sdk/openadsdk/core/model/HL;",
            "I)V"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move-object/from16 v9, p7

    move-object/from16 v8, p8

    move-object/from16 v3, p9

    if-eqz p3, :cond_0

    .line 97
    const-string v2, "pgad_end"

    move-object/from16 v4, p4

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p2, :cond_12

    .line 98
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/cFZ/ZYk;->ba()Z

    move-result v2

    const-string v7, "get_ad"

    if-eqz v2, :cond_11

    .line 99
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/cY$11;

    invoke-direct {v2, v10, v1}, Lcom/bytedance/sdk/openadsdk/core/cY$11;-><init>(Lcom/bytedance/sdk/openadsdk/core/cY;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/si/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/si/ex;)V

    .line 100
    sget-object v2, Lcom/bytedance/sdk/openadsdk/ex/oJ/ba;->ZYk:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 101
    sget-object v2, Lcom/bytedance/sdk/openadsdk/ex/oJ/ba;->oJ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 102
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/wd;->ZYk()Lcom/bytedance/sdk/openadsdk/utils/wd;

    move-result-object v5

    .line 103
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/cFZ/ZYk;->ex()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-virtual {v9, v2}, Lcom/bytedance/sdk/openadsdk/core/model/tB;->oJ(Ljava/lang/String;)V

    .line 105
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v6

    invoke-interface {v6}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->Qu()Z

    move-result v6

    const/4 v11, 0x1

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/nke;->oJ()Lcom/bytedance/sdk/openadsdk/core/LpP;

    move-result-object v6

    invoke-interface {v6}, Lcom/bytedance/sdk/openadsdk/core/LpP;->ex()I

    move-result v6

    if-ne v6, v11, :cond_1

    .line 107
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 108
    const-string v12, "Pangle_Debug_Mode"

    iget-object v13, v10, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ:Landroid/content/Context;

    invoke-static {v12, v6, v13}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v12, v7

    move-object v13, v8

    move-object v14, v9

    goto/16 :goto_6

    .line 109
    :cond_1
    :goto_0
    invoke-virtual {v10, v4}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_2

    const/16 v0, 0xc

    .line 110
    invoke-virtual {v9, v0}, Lcom/bytedance/sdk/openadsdk/core/model/tB;->tB(I)V

    .line 111
    invoke-direct {v10, v8, v9}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Lcom/bytedance/sdk/openadsdk/core/Id$oJ;Lcom/bytedance/sdk/openadsdk/core/model/tB;)V

    .line 112
    sget-object v0, Lcom/bytedance/sdk/openadsdk/ex/oJ/ba;->ba:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 113
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ex/oJ/ba;->tB()V

    return-void

    .line 114
    :cond_2
    invoke-static {v4, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->oJ(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/HL;)Lcom/bytedance/sdk/openadsdk/core/cY$oJ;

    move-result-object v1

    .line 115
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->kkU:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Lcom/bytedance/sdk/openadsdk/core/model/tB;->oJ(Ljava/util/ArrayList;)V

    .line 116
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->jFA:Ljava/lang/String;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/BTZ;->oJ(Ljava/lang/String;)V

    .line 117
    iget v4, v1, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->ex:I

    const/16 v6, 0x4e20

    if-eq v4, v6, :cond_4

    .line 118
    invoke-virtual {v9, v4}, Lcom/bytedance/sdk/openadsdk/core/model/tB;->oJ(I)V

    .line 119
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->HL()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, v1, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->ex:I

    const v2, 0x9c5d

    if-ne v0, v2, :cond_3

    const/16 v0, -0x64

    .line 120
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/so;->oJ(I)Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-interface {v8, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Id$oJ;->oJ(ILjava/lang/String;)V

    goto :goto_1

    .line 122
    :cond_3
    iget v0, v1, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->ex:I

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->Pfn:Ljava/lang/String;

    invoke-interface {v8, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Id$oJ;->oJ(ILjava/lang/String;)V

    :goto_1
    const/16 v0, 0x9

    .line 123
    invoke-virtual {v9, v0}, Lcom/bytedance/sdk/openadsdk/core/model/tB;->tB(I)V

    .line 124
    invoke-static/range {p7 .. p7}, Lcom/bytedance/sdk/openadsdk/core/model/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/tB;)V

    .line 125
    sget-object v0, Lcom/bytedance/sdk/openadsdk/ex/oJ/ba;->ba:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 126
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ex/oJ/ba;->tB()V

    return-void

    .line 127
    :cond_4
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    if-nez v4, :cond_5

    const/16 v0, 0xd

    .line 128
    invoke-virtual {v9, v0}, Lcom/bytedance/sdk/openadsdk/core/model/tB;->tB(I)V

    .line 129
    invoke-direct {v10, v8, v9}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Lcom/bytedance/sdk/openadsdk/core/Id$oJ;Lcom/bytedance/sdk/openadsdk/core/model/tB;)V

    .line 130
    sget-object v0, Lcom/bytedance/sdk/openadsdk/ex/oJ/ba;->Pfn:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 131
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ex/oJ/ba;->tB()V

    return-void

    .line 132
    :cond_5
    invoke-direct {v10, v4, v8}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/core/Id$oJ;)Z

    move-result v4

    if-eqz v4, :cond_6

    return-void

    .line 133
    :cond_6
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    invoke-virtual {v4, v2}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->tB(Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/wd;->ZYk()Lcom/bytedance/sdk/openadsdk/utils/wd;

    move-result-object v6

    if-eqz v3, :cond_7

    .line 135
    iget-object v2, v3, Lcom/bytedance/sdk/openadsdk/core/model/HL;->dLZ:Lcom/bytedance/sdk/openadsdk/core/model/nke;

    if-eqz v2, :cond_7

    .line 136
    iget v4, v1, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->oJ:I

    invoke-virtual {v2, v0, v5, v4, v6}, Lcom/bytedance/sdk/openadsdk/core/model/nke;->oJ(Lcom/bytedance/sdk/openadsdk/utils/wd;Lcom/bytedance/sdk/openadsdk/utils/wd;ILcom/bytedance/sdk/openadsdk/utils/wd;)V

    .line 137
    :cond_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/oq/oJ;->ex()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_8

    move/from16 v2, p10

    if-ne v2, v11, :cond_9

    move/from16 v21, v11

    goto :goto_2

    :cond_8
    move/from16 v2, p10

    :cond_9
    move/from16 v21, v4

    :goto_2
    if-eqz v21, :cond_d

    .line 138
    iget-object v11, v1, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_d

    iget-object v11, v1, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    .line 139
    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_d

    .line 140
    iget-object v11, v1, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v17, v11

    check-cast v17, Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 141
    invoke-static/range {p10 .. p10}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->tB(I)Ljava/lang/String;

    move-result-object v15

    .line 142
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 143
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v11, 0x0

    if-eqz v3, :cond_a

    .line 144
    :try_start_1
    iget-object v4, v3, Lcom/bytedance/sdk/openadsdk/core/model/HL;->kkU:Lcom/bytedance/sdk/openadsdk/utils/wd;

    iget-wide v2, v4, Lcom/bytedance/sdk/openadsdk/utils/wd;->oJ:J

    cmp-long v2, v2, v11

    if-lez v2, :cond_a

    .line 145
    invoke-virtual {v6, v4}, Lcom/bytedance/sdk/openadsdk/utils/wd;->oJ(Lcom/bytedance/sdk/openadsdk/utils/wd;)J

    move-result-wide v11

    :cond_a
    move-wide v2, v11

    if-eqz v17, :cond_c

    .line 146
    invoke-virtual/range {v17 .. v17}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->XQY()Z

    move-result v4

    .line 147
    const-string v11, "is_new_engine"

    invoke-virtual {v13, v11, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 148
    const-string v11, "webview_cache_size"

    if-eqz v4, :cond_b

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->oJ()Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->ex()I

    move-result v4

    goto :goto_3

    :cond_b
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->oJ()Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/adexpress/Pfn/Pfn;->tB()I

    move-result v4

    :goto_3
    invoke-virtual {v13, v11, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 149
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/cFZ/ZYk;->cFZ()Lcom/bytedance/sdk/component/ZYk/oJ/kkU;

    move-result-object v11

    iget v4, v1, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->oJ:I

    const/16 v20, 0x1

    move-object/from16 v12, p9

    move-object/from16 p4, v13

    move-object/from16 v13, p5

    move-object v0, v14

    move-object v14, v5

    move-object/from16 p6, v15

    move v15, v4

    move-object/from16 v16, v6

    move-object/from16 v18, p6

    move-object/from16 v19, p4

    invoke-static/range {v11 .. v20}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Lcom/bytedance/sdk/component/ZYk/oJ/kkU;Lcom/bytedance/sdk/openadsdk/core/model/HL;Lcom/bytedance/sdk/openadsdk/utils/wd;Lcom/bytedance/sdk/openadsdk/utils/wd;ILcom/bytedance/sdk/openadsdk/utils/wd;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    .line 150
    const-string v4, "duration"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 151
    const-string v2, "extra_data"

    move-object/from16 v3, p4

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    const-string v2, "tag"

    move-object/from16 v3, p6

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    const-string v2, "callback_start"

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/utils/wd;->oJ()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 154
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->oJ(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    :catch_0
    :cond_d
    :try_start_2
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;)V

    .line 156
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    invoke-interface {v8, v0, v9}, Lcom/bytedance/sdk/openadsdk/core/Id$oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/core/model/tB;)V

    .line 157
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    invoke-direct {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/cY;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/oJ;)V

    .line 158
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ex/oJ;->oJ()Lcom/bytedance/sdk/openadsdk/core/ex/oJ;

    move-result-object v0

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/ex/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;)V

    .line 159
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 160
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/cFZ/ZYk;->oJ()Lcom/bytedance/sdk/openadsdk/cFZ/ZYk;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/cFZ/ZYk;->oJ(Ljava/util/Map;)V

    .line 161
    :cond_e
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    .line 162
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    if-nez v21, :cond_f

    .line 163
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 164
    invoke-static/range {p10 .. p10}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->tB(I)Ljava/lang/String;

    move-result-object v11

    .line 165
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/cFZ/ZYk;->cFZ()Lcom/bytedance/sdk/component/ZYk/oJ/kkU;

    move-result-object v2

    iget v12, v1, Lcom/bytedance/sdk/openadsdk/core/cY$oJ;->oJ:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v1, p0

    move-object/from16 v3, p9

    move-object/from16 v4, p5

    move-object v13, v6

    move v6, v12

    move-object v12, v7

    move-object v7, v13

    move-object v13, v8

    move-object v8, v0

    move-object v14, v9

    move-object v9, v11

    :try_start_3
    invoke-direct/range {v1 .. v9}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Lcom/bytedance/sdk/component/ZYk/oJ/kkU;Lcom/bytedance/sdk/openadsdk/core/model/HL;Lcom/bytedance/sdk/openadsdk/utils/wd;Lcom/bytedance/sdk/openadsdk/utils/wd;ILcom/bytedance/sdk/openadsdk/utils/wd;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_6

    :cond_f
    move-object v12, v7

    move-object v13, v8

    move-object v14, v9

    .line 166
    :goto_4
    sget-object v0, Lcom/bytedance/sdk/openadsdk/ex/oJ/ba;->ex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_5

    :cond_10
    move-object v12, v7

    move-object v13, v8

    move-object v14, v9

    .line 167
    :goto_5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ex/oJ/ba;->tB()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    .line 168
    :goto_6
    const-string v1, "NetApiImpl"

    const-string v2, "get ad error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tB;->ZYk(Ljava/lang/String;)V

    const/16 v1, 0xe

    .line 170
    invoke-virtual {v14, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tB;->tB(I)V

    .line 171
    invoke-direct {v10, v13, v14}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Lcom/bytedance/sdk/openadsdk/core/Id$oJ;Lcom/bytedance/sdk/openadsdk/core/model/tB;)V

    .line 172
    sget-object v1, Lcom/bytedance/sdk/openadsdk/ex/oJ/ba;->Pfn:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 173
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ex/oJ/ba;->tB()V

    .line 174
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ex()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x9

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/awB/oJ/Pfn;->oJ(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 175
    const-string v1, ""

    const-string v2, "parse_error"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->reportCustomError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_11
    move-object v12, v7

    move-object v13, v8

    move-object v14, v9

    .line 176
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/cY$12;

    invoke-direct {v0, v10, v1}, Lcom/bytedance/sdk/openadsdk/core/cY$12;-><init>(Lcom/bytedance/sdk/openadsdk/core/cY;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/si/tB;->tB(Lcom/bytedance/sdk/openadsdk/si/ex;)V

    .line 177
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/cFZ/ZYk;->oJ()I

    move-result v0

    .line 178
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/cFZ/ZYk;->ZYk()Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-interface {v13, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Id$oJ;->oJ(ILjava/lang/String;)V

    .line 180
    invoke-virtual {v14, v0}, Lcom/bytedance/sdk/openadsdk/core/model/tB;->oJ(I)V

    const/16 v2, 0xb

    .line 181
    invoke-virtual {v14, v2}, Lcom/bytedance/sdk/openadsdk/core/model/tB;->tB(I)V

    .line 182
    invoke-virtual {v14, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tB;->ZYk(Ljava/lang/String;)V

    .line 183
    invoke-static/range {p7 .. p7}, Lcom/bytedance/sdk/openadsdk/core/model/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/tB;)V

    .line 184
    sget-object v2, Lcom/bytedance/sdk/openadsdk/ex/oJ/ba;->so:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 185
    sget-object v2, Lcom/bytedance/sdk/openadsdk/ex/oJ/ba;->tB:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 186
    sget-object v2, Lcom/bytedance/sdk/openadsdk/ex/oJ/ba;->oJ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 187
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ex/oJ/ba;->Pfn()V

    .line 188
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/ex/oJ/ba;->oJ(ILjava/lang/String;)V

    .line 189
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ex/oJ/ba;->tB()V

    .line 190
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ex()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/awB/oJ/Pfn;->oJ(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_12
    return-void
.end method

.method private oJ(Lcom/bytedance/sdk/openadsdk/core/Id$ZYk;)V
    .locals 2

    const/4 v0, -0x1

    .line 339
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/so;->oJ(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Id$ZYk;->oJ(ILjava/lang/String;)V

    return-void
.end method

.method private oJ(Lcom/bytedance/sdk/openadsdk/core/Id$oJ;Lcom/bytedance/sdk/openadsdk/core/model/tB;)V
    .locals 2

    const/4 v0, -0x1

    .line 336
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/so;->oJ(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Id$oJ;->oJ(ILjava/lang/String;)V

    .line 337
    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/model/tB;->oJ(I)V

    .line 338
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/tB;)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/cY;Lcom/bytedance/sdk/component/cFZ/ZYk/ex;Ljava/io/IOException;Lcom/bytedance/sdk/component/cFZ/ZYk;Lcom/bytedance/sdk/openadsdk/AdSlot;ZLjava/util/Map;Lcom/bytedance/sdk/openadsdk/core/Id$oJ;Lcom/bytedance/sdk/openadsdk/core/model/tB;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p8}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Lcom/bytedance/sdk/component/cFZ/ZYk/ex;Ljava/io/IOException;Lcom/bytedance/sdk/component/cFZ/ZYk;Lcom/bytedance/sdk/openadsdk/AdSlot;ZLjava/util/Map;Lcom/bytedance/sdk/openadsdk/core/Id$oJ;Lcom/bytedance/sdk/openadsdk/core/model/tB;)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/cY;Lcom/bytedance/sdk/component/cFZ/ZYk/tB;Lcom/bytedance/sdk/component/cFZ/ZYk;ZLjava/util/Map;Lcom/bytedance/sdk/openadsdk/utils/wd;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/tB;Lcom/bytedance/sdk/openadsdk/core/Id$oJ;Lcom/bytedance/sdk/openadsdk/core/model/HL;I)V
    .locals 0

    .line 3
    invoke-direct/range {p0 .. p10}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Lcom/bytedance/sdk/component/cFZ/ZYk/tB;Lcom/bytedance/sdk/component/cFZ/ZYk;ZLjava/util/Map;Lcom/bytedance/sdk/openadsdk/utils/wd;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/tB;Lcom/bytedance/sdk/openadsdk/core/Id$oJ;Lcom/bytedance/sdk/openadsdk/core/model/HL;I)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/cY;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/HL;ILcom/bytedance/sdk/openadsdk/core/Id$oJ;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/cY;->ZYk(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/HL;ILcom/bytedance/sdk/openadsdk/core/Id$oJ;)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/cY;Lcom/bytedance/sdk/openadsdk/core/Id$ZYk;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Lcom/bytedance/sdk/openadsdk/core/Id$ZYk;)V

    return-void
.end method

.method private oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/model/Ry;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 204
    :cond_0
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/jFA/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/Ry;)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/Pfn/kkU;->tB(I)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/jFA/ZYk;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->oJ()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/cY$14;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/cY$14;-><init>(Lcom/bytedance/sdk/openadsdk/core/cY;)V

    invoke-direct {v1, p1, p2, v2}, Lcom/bytedance/sdk/openadsdk/jFA/ZYk;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lcom/bytedance/sdk/component/Pfn/eZI;)V

    const/4 p1, 0x4

    invoke-interface {v0, v1, p1}, Lcom/bytedance/sdk/component/Pfn/kkU;->oJ(Lcom/bytedance/sdk/component/Pfn/eZI;I)Lcom/bytedance/sdk/component/Pfn/jFA;

    return-void
.end method

.method private oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 72
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ba()Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 73
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->dZS()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->Ln(Ljava/lang/String;)V

    return-void
.end method

.method private oJ(Ljava/lang/String;IILcom/bytedance/sdk/openadsdk/core/model/Ry;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 4

    .line 198
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 199
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/jFA/ex;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object p4

    invoke-interface {p4, p2}, Lcom/bytedance/sdk/component/Pfn/kkU;->oJ(I)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object p2

    invoke-interface {p2, p3}, Lcom/bytedance/sdk/component/Pfn/kkU;->ZYk(I)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object p2

    .line 200
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->Pfn(Landroid/content/Context;)I

    move-result p3

    invoke-interface {p2, p3}, Lcom/bytedance/sdk/component/Pfn/kkU;->Pfn(I)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object p2

    .line 201
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/content/Context;)I

    move-result p3

    invoke-interface {p2, p3}, Lcom/bytedance/sdk/component/Pfn/kkU;->ex(I)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object p2

    .line 202
    invoke-interface {p2, v3}, Lcom/bytedance/sdk/component/Pfn/kkU;->tB(I)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object p2

    new-instance p3, Lcom/bytedance/sdk/openadsdk/jFA/ZYk;

    invoke-direct {p3, p5, p1, v2}, Lcom/bytedance/sdk/openadsdk/jFA/ZYk;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lcom/bytedance/sdk/component/Pfn/eZI;)V

    invoke-interface {p2, p3, v1}, Lcom/bytedance/sdk/component/Pfn/kkU;->oJ(Lcom/bytedance/sdk/component/Pfn/eZI;I)Lcom/bytedance/sdk/component/Pfn/jFA;

    return-void

    :cond_0
    if-nez p4, :cond_1

    return-void

    .line 203
    :cond_1
    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/jFA/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/Ry;)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/bytedance/sdk/component/Pfn/kkU;->tB(I)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/jFA/ZYk;

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->oJ()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p5, p3, v2}, Lcom/bytedance/sdk/openadsdk/jFA/ZYk;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lcom/bytedance/sdk/component/Pfn/eZI;)V

    invoke-interface {p1, p2, v1}, Lcom/bytedance/sdk/component/Pfn/kkU;->oJ(Lcom/bytedance/sdk/component/Pfn/eZI;I)Lcom/bytedance/sdk/component/Pfn/jFA;

    return-void
.end method

.method private oJ(Ljava/util/Map;Lcom/bytedance/sdk/component/cFZ/ZYk/ex;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/bytedance/sdk/component/cFZ/ZYk/ex;",
            ")V"
        }
    .end annotation

    .line 274
    const-string v0, "ADD header exceptopn"

    const-string v1, "NetApiImpl"

    if-eqz p1, :cond_0

    .line 275
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 276
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v3, v2}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ZYk(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 277
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 278
    :cond_0
    :try_start_1
    const-string p1, "User-Agent"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ex()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p1, v2}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ZYk(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 279
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private oJ(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/HL;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 52
    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/model/HL;->Pfn:Lorg/json/JSONArray;

    if-nez p2, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    :try_start_0
    const-string v0, "source_temai_product_ids"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method private oJ(Lorg/json/JSONObject;Ljava/lang/String;FF)V
    .locals 3

    const/4 v0, 0x0

    cmpl-float v1, p3, v0

    if-ltz v1, :cond_0

    cmpl-float v0, p4, v0

    if-ltz v0, :cond_0

    .line 403
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 404
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 405
    :try_start_0
    const-string v2, "width"

    float-to-int p3, p3

    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 406
    const-string p3, "height"

    float-to-int p4, p4

    invoke-virtual {v0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 407
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 408
    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private oJ(Lorg/json/JSONObject;Ljava/lang/String;II)V
    .locals 3

    if-lez p3, :cond_0

    if-lez p4, :cond_0

    .line 397
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 398
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 399
    :try_start_0
    const-string v2, "width"

    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 400
    const-string p3, "height"

    invoke-virtual {v0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 401
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 402
    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private static oJ(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 354
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 355
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method private oJ(Lorg/json/JSONObject;Z)V
    .locals 7

    .line 280
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/jFA;->Ry()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 281
    :cond_0
    :try_start_0
    const-string v0, "header"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "aid"

    const-string v2, "4562"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 282
    const-string v1, "reportETEvent error"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "NetApiImpl"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->ZYk()Lcom/bytedance/sdk/openadsdk/Ry/ZYk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->tB()Lcom/bytedance/sdk/component/cFZ/oJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cFZ/oJ;->ZYk()Lcom/bytedance/sdk/component/cFZ/ZYk/ex;

    move-result-object v0

    .line 284
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ZYk(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p2, :cond_5

    .line 285
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->ib()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object p2

    sget-object v2, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->APP_LOG:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    invoke-interface {p2, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->oJ(Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;)Z

    move-result p2

    .line 286
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/cY;->Pfn(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz p2, :cond_3

    .line 287
    invoke-static {v3}, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptManager;->encryptType4WithoutBase64([B)Landroid/util/Pair;

    move-result-object p2

    const/4 v4, 0x1

    if-eqz p2, :cond_1

    .line 288
    iget-object v5, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v5, :cond_1

    move-object v6, v5

    check-cast v6, [B

    array-length v6, v6

    if-lez v6, :cond_1

    .line 289
    move-object v1, v5

    check-cast v1, [B

    .line 290
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/Xe;->ZYk(Z)V

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    if-eqz p2, :cond_2

    .line 291
    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_1

    :cond_2
    move p2, v5

    .line 292
    :goto_1
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/Xe;->ZYk(Z)V

    .line 293
    invoke-static {v4, v2, p2}, Lcom/bytedance/sdk/openadsdk/core/Xe;->oJ(ILcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;I)V

    .line 294
    :cond_3
    :goto_2
    const-string p2, "application/octet-stream;tt-data=a"

    if-eqz v1, :cond_4

    .line 295
    const-string v2, "Content-Encoding"

    const-string v3, "union_sdk_encode"

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ZYk(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v2, "x-pgli18n"

    const-string v3, "4"

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ZYk(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-virtual {v0, p2, v1}, Lcom/bytedance/sdk/component/cFZ/ZYk/ex;->oJ(Ljava/lang/String;[B)V

    goto :goto_3

    .line 298
    :cond_4
    invoke-static {v3}, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptManager;->encryptV3([B)[B

    move-result-object v1

    if-eqz v1, :cond_5

    .line 299
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/cY;->ZYk()Ljava/util/Map;

    move-result-object v2

    .line 300
    invoke-direct {p0, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Ljava/util/Map;Lcom/bytedance/sdk/component/cFZ/ZYk/ex;)V

    .line 301
    invoke-virtual {v0, p2, v1}, Lcom/bytedance/sdk/component/cFZ/ZYk/ex;->oJ(Ljava/lang/String;[B)V

    :cond_5
    :goto_3
    if-nez v1, :cond_7

    .line 302
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/oJ;->oJ(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    .line 303
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/cY;->tB(Lorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    move-object p1, p2

    .line 304
    :goto_4
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/cY;->ex(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p2

    .line 305
    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Ljava/util/Map;Lcom/bytedance/sdk/component/cFZ/ZYk/ex;)V

    .line 306
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object p2

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->awB()Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/cFZ/ZYk/ex;->oJ(Ljava/lang/String;Z)V

    :cond_7
    const/4 p1, 0x7

    .line 307
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->oJ(I)V

    .line 308
    const-string p1, "et_applog"

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->oJ(Ljava/lang/String;)V

    .line 309
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/cY$15;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/cY$15;-><init>(Lcom/bytedance/sdk/openadsdk/core/cY;)V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/cFZ/ZYk/ex;->oJ(Lcom/bytedance/sdk/component/cFZ/oJ/oJ;)V

    return-void
.end method

.method private oJ(Lcom/bytedance/sdk/openadsdk/core/model/HL;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 62
    iget v0, p1, Lcom/bytedance/sdk/openadsdk/core/model/HL;->ZYk:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/bytedance/sdk/openadsdk/core/model/HL;->tB:I

    if-eq v0, v1, :cond_0

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/model/HL;->ex:I

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/core/Id$oJ;)Z
    .locals 9

    const/4 v0, 0x1

    const v1, 0x9c75

    if-nez p1, :cond_0

    .line 191
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/so;->oJ(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/Id$oJ;->oJ(ILjava/lang/String;)V

    return v0

    .line 192
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex()Ljava/util/List;

    move-result-object p1

    .line 193
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 194
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 195
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->crS()Lcom/bytedance/sdk/openadsdk/core/model/ZYk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/ZYk;->ZYk()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->crS()Lcom/bytedance/sdk/openadsdk/core/model/ZYk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/ZYk;->tB()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 196
    :cond_2
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/so;->oJ(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/Id$oJ;->oJ(ILjava/lang/String;)V

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Lcom/bytedance/sdk/openadsdk/core/cY$13;

    invoke-direct {v8, p0, v5}, Lcom/bytedance/sdk/openadsdk/core/cY$13;-><init>(Lcom/bytedance/sdk/openadsdk/core/cY;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    const-string v7, "material_error"

    invoke-static/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    return v0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public static tB(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 7

    const/4 v0, 0x0

    .line 19
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/kkU/oJ/ZYk;->oJ()Lcom/bytedance/sdk/openadsdk/core/kkU/oJ/ZYk;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/kkU/oJ/ZYk;->oJ(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 20
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 21
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 22
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/kkU/oJ/oJ;

    if-eqz v2, :cond_1

    .line 23
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/kkU/oJ/oJ;->Pfn()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 24
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 25
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/kkU/oJ/oJ;->oJ()Ljava/lang/String;

    move-result-object v4

    .line 26
    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 27
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 28
    const-string v5, "id"

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    const-string v4, "md5"

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/kkU/oJ/oJ;->ZYk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_2
    return-object v1

    :cond_3
    :goto_1
    return-object v0

    .line 31
    :goto_2
    const-string v1, "NetApiImpl"

    const-string v2, "getUgenParentTplIds: "

    invoke-static {v1, v2, p0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private tB()Lorg/json/JSONObject;
    .locals 8
    .annotation runtime Lcom/pgl/ssdk/ces/out/DungeonFlag;
    .end annotation

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    const-string v1, "appid"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ex()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    const-string v1, "name"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/jFA;->so()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/cY;->ba(Lorg/json/JSONObject;)V

    .line 6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v1

    .line 7
    const-string v2, ""
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 8
    :try_start_1
    invoke-virtual {v1}, Landroid/content/Context;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 9
    :try_start_2
    const-string v4, "NetApiImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "failed to get the application installation package path. error: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_0
    :goto_0
    const-string v3, "package_install_path"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    const-string v2, "is_paid_app"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 12
    const-string v2, "apk_sign"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/ZYk;->cFZ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    const-string v2, "app_running_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/WcQ;->oJ()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 14
    const-string v2, "fmwname"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->kkU()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    const-string v2, "is_init"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/WcQ;->Pfn()Z

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz v1, :cond_5

    .line 16
    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 17
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x3

    if-eq v1, v5, :cond_3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x4

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_1

    :cond_3
    move v3, v2

    goto :goto_1

    :cond_4
    move v3, v5

    .line 18
    :goto_1
    const-string v1, "orientation_support"

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_5
    return-object v0
.end method

.method private tB(Lorg/json/JSONObject;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public ZYk(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/ex/Pfn;
    .locals 10

    .line 162
    const-string v0, "error unknown"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 163
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/jFA;->oJ()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v3

    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->YF()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_4

    :cond_0
    if-eqz p1, :cond_8

    .line 164
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-gtz v3, :cond_1

    goto/16 :goto_4

    .line 165
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->ZYk()Lcom/bytedance/sdk/openadsdk/Ry/ZYk;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->tB()Lcom/bytedance/sdk/component/cFZ/oJ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/cFZ/oJ;->ZYk()Lcom/bytedance/sdk/component/cFZ/ZYk/ex;

    move-result-object v3

    const/4 v4, 0x0

    .line 166
    :try_start_0
    sget-object v5, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->STATS_LOG:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    invoke-static {v5, p1}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 167
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v6

    invoke-interface {v6}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->awB()Z

    move-result v6

    invoke-virtual {v3, v5, v6}, Lcom/bytedance/sdk/component/cFZ/ZYk/ex;->oJ(Ljava/lang/String;Z)V

    .line 168
    const-string v5, "/api/ad/union/sdk/stats/batch/"

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 169
    invoke-virtual {v3, v5}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ZYk(Ljava/lang/String;)V

    .line 170
    invoke-direct {p0, v3, p1}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Lcom/bytedance/sdk/component/cFZ/ZYk/ex;Lorg/json/JSONObject;)V

    .line 171
    const-string p1, "User-Agent"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ex()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, p1, v5}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ZYk(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->ib()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->UK()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 173
    const-string p1, "_disable_retry"

    const-string v5, "1"

    invoke-virtual {v3, p1, v5}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ZYk(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 174
    :cond_2
    invoke-virtual {v3}, Lcom/bytedance/sdk/component/cFZ/ZYk/ex;->oJ()Lcom/bytedance/sdk/component/cFZ/ZYk;

    move-result-object p1

    if-nez p1, :cond_3

    .line 175
    :try_start_1
    new-instance p1, Lcom/bytedance/sdk/openadsdk/ex/Pfn;

    invoke-direct {p1, v4, v4, v0, v4}, Lcom/bytedance/sdk/openadsdk/ex/Pfn;-><init>(ZILjava/lang/String;Z)V

    return-object p1

    .line 176
    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cFZ/ZYk;->ba()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cFZ/ZYk;->ex()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 177
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cFZ/ZYk;->ex()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 178
    const-string v6, "code"

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 179
    const-string v7, "data"

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v5, 0x4e20

    const/4 v7, 0x1

    if-ne v6, v5, :cond_4

    move v5, v7

    goto :goto_0

    :cond_4
    move v5, v4

    :goto_0
    const v8, 0xea65

    if-ne v6, v8, :cond_5

    goto :goto_1

    :cond_5
    move v7, v4

    goto :goto_1

    :cond_6
    move v5, v4

    move v7, v5

    .line 180
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cFZ/ZYk;->oJ()I

    move-result v4

    .line 181
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cFZ/ZYk;->ba()Z

    move-result v6

    if-nez v6, :cond_7

    .line 182
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cFZ/ZYk;->ZYk()Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-virtual {v3}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ex()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/oq;->oJ(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move p1, v4

    move v4, v5

    goto :goto_2

    :catchall_1
    move p1, v4

    move v7, p1

    :goto_2
    move v5, v4

    move v4, p1

    .line 184
    :cond_7
    :goto_3
    sget-object p1, Lcom/bytedance/sdk/openadsdk/ex/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/ex/oJ/ZYk;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v1

    invoke-static {p1, v5, v4, v8, v9}, Lcom/bytedance/sdk/openadsdk/ex/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/ex/oJ/ZYk;ZIJ)V

    .line 185
    new-instance p1, Lcom/bytedance/sdk/openadsdk/ex/Pfn;

    invoke-direct {p1, v5, v4, v0, v7}, Lcom/bytedance/sdk/openadsdk/ex/Pfn;-><init>(ZILjava/lang/String;Z)V

    return-object p1

    .line 186
    :catchall_2
    sget-object p1, Lcom/bytedance/sdk/openadsdk/ex/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/ex/oJ/ZYk;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-static {p1, v4, v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/ex/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/ex/oJ/ZYk;ZIJ)V

    .line 187
    new-instance p1, Lcom/bytedance/sdk/openadsdk/ex/Pfn;

    invoke-direct {p1, v4, v4, v0, v4}, Lcom/bytedance/sdk/openadsdk/ex/Pfn;-><init>(ZILjava/lang/String;Z)V

    return-object p1

    :cond_8
    :goto_4
    return-object v4
.end method

.method public oJ()Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;
    .locals 15

    .line 434
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/jFA;->oJ()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 435
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-string v0, "tpl_fetch_model"

    const-string v6, "date"

    const-wide/16 v7, 0x0

    invoke-static {v0, v6, v7, v8}, Lcom/bytedance/sdk/openadsdk/multipro/ex/ex;->oJ(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v9

    sub-long/2addr v2, v9

    .line 436
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v9

    invoke-interface {v9}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->UN()Ljava/lang/String;

    move-result-object v9

    .line 437
    const-string v10, "last_url"

    const-string v11, ""

    invoke-static {v0, v10, v11}, Lcom/bytedance/sdk/openadsdk/multipro/ex/ex;->ZYk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 438
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v13

    invoke-interface {v13}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->Xe()I

    move-result v13

    int-to-long v13, v13

    cmp-long v13, v2, v13

    const-string v14, "model"

    if-gtz v13, :cond_1

    cmp-long v2, v2, v7

    if-ltz v2, :cond_1

    invoke-static {v9, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 439
    invoke-static {v0, v14, v11}, Lcom/bytedance/sdk/openadsdk/multipro/ex/ex;->ZYk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 440
    :try_start_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 441
    invoke-static {v2}, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;->Pfn(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 442
    :catch_0
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->ZYk()Lcom/bytedance/sdk/openadsdk/Ry/ZYk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->tB()Lcom/bytedance/sdk/component/cFZ/oJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/cFZ/oJ;->tB()Lcom/bytedance/sdk/component/cFZ/ZYk/ZYk;

    move-result-object v2

    .line 443
    invoke-static {v2, v9}, Lcom/bytedance/sdk/openadsdk/so/ex;->oJ(Lcom/bytedance/sdk/component/cFZ/ZYk/tB;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 444
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ZYk(Ljava/lang/String;)V

    .line 445
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/cFZ/ZYk/ZYk;->oJ()Lcom/bytedance/sdk/component/cFZ/ZYk;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 446
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/cFZ/ZYk;->ba()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 447
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/cFZ/ZYk;->ex()Ljava/lang/String;

    move-result-object v2

    .line 448
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 449
    const-string v2, "template_fetch_url"

    invoke-virtual {v7, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 450
    invoke-static {v7}, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;->oJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;

    move-result-object v1

    .line 451
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v6, v2}, Lcom/bytedance/sdk/openadsdk/multipro/ex/ex;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 452
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v14, v2}, Lcom/bytedance/sdk/openadsdk/multipro/ex/ex;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    invoke-static {v0, v10, v9}, Lcom/bytedance/sdk/openadsdk/multipro/ex/ex;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 454
    const-string v2, "NetApiImpl"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v1
.end method

.method public oJ(Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/ex/Pfn;
    .locals 12
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation runtime Lcom/pgl/ssdk/ces/out/DungeonFlag;
    .end annotation

    .line 226
    const-string v0, "NetApiImpl"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 227
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/jFA;->oJ()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return-object v5

    .line 228
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->ZYk()Lcom/bytedance/sdk/openadsdk/Ry/ZYk;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->tB()Lcom/bytedance/sdk/component/cFZ/oJ;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/cFZ/oJ;->ZYk()Lcom/bytedance/sdk/component/cFZ/ZYk/ex;

    move-result-object v4

    .line 229
    invoke-virtual {v4, p2}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ZYk(Ljava/lang/String;)V

    .line 230
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->ib()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v6

    invoke-interface {v6}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->TA()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 231
    const-string v6, "_disable_retry"

    const-string v7, "1"

    invoke-virtual {v4, v6, v7}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ZYk(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_9

    :cond_1
    :goto_0
    const/4 v6, 0x1

    if-eqz p3, :cond_6

    .line 232
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->ib()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v7

    sget-object v8, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->APP_LOG:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    invoke-interface {v7, v8}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->oJ(Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;)Z

    move-result v7

    .line 233
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/bytedance/sdk/openadsdk/core/cY;->Pfn(Ljava/lang/String;)[B

    move-result-object v9

    if-eqz v7, :cond_4

    .line 234
    invoke-static {v9}, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptManager;->encryptType4WithoutBase64([B)Landroid/util/Pair;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 235
    iget-object v10, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v10, :cond_2

    move-object v11, v10

    check-cast v11, [B

    array-length v11, v11

    if-lez v11, :cond_2

    .line 236
    move-object v5, v10

    check-cast v5, [B

    .line 237
    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/core/Xe;->ZYk(Z)V

    goto :goto_2

    :cond_2
    if-eqz v7, :cond_3

    .line 238
    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_1

    :cond_3
    move v7, v1

    .line 239
    :goto_1
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/Xe;->ZYk(Z)V

    .line 240
    invoke-static {v6, v8, v7}, Lcom/bytedance/sdk/openadsdk/core/Xe;->oJ(ILcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    :cond_4
    :goto_2
    const-string v7, "application/octet-stream;tt-data=a"

    if-eqz v5, :cond_5

    .line 242
    :try_start_1
    const-string v8, "Content-Encoding"

    const-string v9, "union_sdk_encode"

    invoke-virtual {v4, v8, v9}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ZYk(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v8, "x-pgli18n"

    const-string v9, "4"

    invoke-virtual {v4, v8, v9}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ZYk(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {v4, v7, v5}, Lcom/bytedance/sdk/component/cFZ/ZYk/ex;->oJ(Ljava/lang/String;[B)V

    goto :goto_3

    .line 245
    :cond_5
    invoke-static {v9}, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptManager;->encryptV3([B)[B

    move-result-object v5

    if-eqz v5, :cond_6

    .line 246
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/cY;->ZYk()Ljava/util/Map;

    move-result-object v8

    .line 247
    invoke-direct {p0, v8, v4}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Ljava/util/Map;Lcom/bytedance/sdk/component/cFZ/ZYk/ex;)V

    .line 248
    invoke-virtual {v4, v7, v5}, Lcom/bytedance/sdk/component/cFZ/ZYk/ex;->oJ(Ljava/lang/String;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :goto_3
    if-nez v5, :cond_8

    .line 249
    :try_start_2
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/oJ;->oJ(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 250
    :try_start_3
    invoke-direct {p0, v5}, Lcom/bytedance/sdk/openadsdk/core/cY;->tB(Lorg/json/JSONObject;)Z

    move-result v7

    if-nez v7, :cond_7

    move-object v5, p1

    .line 251
    :cond_7
    invoke-direct {p0, v5}, Lcom/bytedance/sdk/openadsdk/core/cY;->ex(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v7

    .line 252
    invoke-direct {p0, v7, v4}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Ljava/util/Map;Lcom/bytedance/sdk/component/cFZ/ZYk/ex;)V

    .line 253
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v7

    invoke-interface {v7}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->awB()Z

    move-result v7

    invoke-virtual {v4, v5, v7}, Lcom/bytedance/sdk/component/cFZ/ZYk/ex;->oJ(Ljava/lang/String;Z)V

    goto :goto_4

    :catch_0
    move-exception p1

    .line 254
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    new-instance p1, Lcom/bytedance/sdk/openadsdk/ex/Pfn;

    const-string p2, "encrypt_error"

    const/4 p3, -0x2

    invoke-direct {p1, v1, p3, p2, v1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn;-><init>(ZILjava/lang/String;Z)V

    return-object p1

    .line 256
    :cond_8
    :goto_4
    invoke-virtual {v4}, Lcom/bytedance/sdk/component/cFZ/ZYk/ex;->oJ()Lcom/bytedance/sdk/component/cFZ/ZYk;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 257
    invoke-virtual {v4}, Lcom/bytedance/sdk/component/cFZ/ZYk;->ba()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/cFZ/ZYk;->ex()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 258
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/cFZ/ZYk;->ex()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 259
    invoke-direct {p0, v5}, Lcom/bytedance/sdk/openadsdk/core/cY;->Pfn(Lorg/json/JSONObject;)Z

    move-result v5

    goto :goto_5

    :cond_9
    move v5, v1

    .line 260
    :goto_5
    const-string v7, "error unknown"

    if-eqz v4, :cond_a

    .line 261
    invoke-virtual {v4}, Lcom/bytedance/sdk/component/cFZ/ZYk;->oJ()I

    move-result v8

    goto :goto_6

    :cond_a
    move v8, v1

    :goto_6
    if-nez v5, :cond_b

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_b

    .line 262
    const-string v7, "server say not success"

    goto :goto_7

    :cond_b
    if-eqz v4, :cond_c

    .line 263
    invoke-virtual {v4}, Lcom/bytedance/sdk/component/cFZ/ZYk;->ZYk()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 264
    invoke-virtual {v4}, Lcom/bytedance/sdk/component/cFZ/ZYk;->ZYk()Ljava/lang/String;

    move-result-object v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_c
    move v6, v1

    .line 265
    :goto_7
    const-string v9, "applog"

    if-nez v4, :cond_d

    .line 266
    :try_start_4
    const-string v4, "response is null"

    const/4 v10, -0x1

    invoke-static {v9, p2, v10, v4}, Lcom/bytedance/sdk/openadsdk/awB/oJ/Pfn;->oJ(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_8

    .line 267
    :cond_d
    invoke-virtual {v4}, Lcom/bytedance/sdk/component/cFZ/ZYk;->ba()Z

    move-result v10

    if-nez v10, :cond_e

    .line 268
    invoke-virtual {v4}, Lcom/bytedance/sdk/component/cFZ/ZYk;->ZYk()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, p2, v8, v4}, Lcom/bytedance/sdk/openadsdk/awB/oJ/Pfn;->oJ(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 269
    :cond_e
    :goto_8
    invoke-direct {p0, p1, p3}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Lorg/json/JSONObject;Z)V

    .line 270
    sget-object p1, Lcom/bytedance/sdk/openadsdk/ex/oJ/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/ex/oJ/ZYk;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v2

    invoke-static {p1, v5, v8, p2, p3}, Lcom/bytedance/sdk/openadsdk/ex/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/ex/oJ/ZYk;ZIJ)V

    .line 271
    new-instance p1, Lcom/bytedance/sdk/openadsdk/ex/Pfn;

    invoke-direct {p1, v5, v8, v7, v6}, Lcom/bytedance/sdk/openadsdk/ex/Pfn;-><init>(ZILjava/lang/String;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object p1

    .line 272
    :goto_9
    const-string p2, "uploadEvent error"

    invoke-static {v0, p2, p1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 273
    new-instance p1, Lcom/bytedance/sdk/openadsdk/ex/Pfn;

    const/16 p2, 0x1fd

    const-string p3, "service_busy"

    invoke-direct {p1, v1, p2, p3, v1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn;-><init>(ZILjava/lang/String;Z)V

    return-object p1
.end method

.method public oJ(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 4

    .line 422
    const-string v0, "auction_price"

    if-nez p1, :cond_0

    return-object p1

    .line 423
    :cond_0
    :try_start_0
    const-string v1, "cypher"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 424
    const-string v2, "message"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 425
    const-string v3, ""

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 426
    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/cY;->ZYk(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 427
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    .line 428
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 429
    :try_start_2
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-object p1, v2

    :catch_0
    :catchall_1
    :cond_1
    return-object p1
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/HL;ILcom/bytedance/sdk/openadsdk/core/Id$oJ;)V
    .locals 8

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 63
    iget v1, p2, Lcom/bytedance/sdk/openadsdk/core/model/HL;->ZYk:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p2, Lcom/bytedance/sdk/openadsdk/core/model/HL;->tB:I

    if-eq v1, v2, :cond_0

    iget v1, p2, Lcom/bytedance/sdk/openadsdk/core/model/HL;->ex:I

    if-ne v1, v2, :cond_1

    .line 64
    :cond_0
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->setPreload(Z)V

    .line 65
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->isPreload()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p2, :cond_2

    iget-boolean v1, p2, Lcom/bytedance/sdk/openadsdk/core/model/HL;->ba:Z

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 66
    :goto_0
    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/oJ/oJ;

    invoke-direct {v7, p4, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/oJ/oJ;-><init>(Lcom/bytedance/sdk/openadsdk/core/Id$oJ;Lcom/bytedance/sdk/openadsdk/AdSlot;Z)V

    .line 67
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p4, v0, :cond_3

    .line 68
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/WcQ;->ZYk()Landroid/os/Handler;

    move-result-object p4

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/cY$1;

    const-string v3, "getAd"

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/core/cY$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/cY;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/HL;ILcom/bytedance/sdk/openadsdk/core/Id$oJ;)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 69
    :cond_3
    invoke-direct {p0, p1, p2, p3, v7}, Lcom/bytedance/sdk/openadsdk/core/cY;->ZYk(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/HL;ILcom/bytedance/sdk/openadsdk/core/Id$oJ;)V

    .line 70
    :goto_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/oq/oJ;->tB()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 71
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/WcQ;->cFZ()V

    :cond_4
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/HL;ILcom/bytedance/sdk/openadsdk/core/QSm;)V
    .locals 2

    .line 54
    iget-boolean v0, p2, Lcom/bytedance/sdk/openadsdk/core/model/HL;->ba:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/HL;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p4, :cond_1

    .line 56
    invoke-interface {p4}, Lcom/bytedance/sdk/openadsdk/core/QSm;->oJ()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 58
    iput-object v0, p2, Lcom/bytedance/sdk/openadsdk/core/model/HL;->BTZ:Ljava/lang/String;

    .line 59
    iput-object p4, p2, Lcom/bytedance/sdk/openadsdk/core/model/HL;->PiB:Lcom/bytedance/sdk/openadsdk/core/QSm;

    .line 60
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/HL;ILcom/bytedance/sdk/openadsdk/core/Id$oJ;)V

    return-void

    .line 61
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/HL;ILcom/bytedance/sdk/openadsdk/core/Id$oJ;)V

    return-void
.end method

.method public oJ(Ljava/lang/String;)V
    .locals 1

    .line 455
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->ZYk()Lcom/bytedance/sdk/openadsdk/Ry/ZYk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->tB()Lcom/bytedance/sdk/component/cFZ/oJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cFZ/oJ;->tB()Lcom/bytedance/sdk/component/cFZ/ZYk/ZYk;

    move-result-object v0

    .line 456
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ZYk(Ljava/lang/String;)V

    .line 457
    const-string p1, "upload_bidding"

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->oJ(Ljava/lang/String;)V

    const/4 p1, 0x7

    .line 458
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->oJ(I)V

    .line 459
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/cY$6;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/cY$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/cY;)V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/cFZ/ZYk/ZYk;->oJ(Lcom/bytedance/sdk/component/cFZ/oJ/oJ;)V

    return-void
.end method

.method public oJ(Ljava/lang/String;Ljava/util/List;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 310
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/jFA;->oJ()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 311
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/core/cY;->ZYk(Ljava/lang/String;Ljava/util/List;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 312
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->ZYk()Lcom/bytedance/sdk/openadsdk/Ry/ZYk;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->tB()Lcom/bytedance/sdk/component/cFZ/oJ;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/cFZ/oJ;->ZYk()Lcom/bytedance/sdk/component/cFZ/ZYk/ex;

    move-result-object p3

    .line 313
    const-string p4, "/api/ad/union/dislike_event/"

    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 314
    sget-object p5, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->DISLIKE:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    invoke-static {p5, p2}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    const/4 p5, 0x0

    if-eqz p2, :cond_2

    .line 315
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, p5

    .line 316
    :goto_0
    invoke-direct {p0, p3, p2}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Lcom/bytedance/sdk/component/cFZ/ZYk/ex;Lorg/json/JSONObject;)V

    .line 317
    invoke-virtual {p3, p4}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ZYk(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p3, v0}, Lcom/bytedance/sdk/component/cFZ/ZYk/ex;->ex(Ljava/lang/String;)V

    const/4 p2, 0x7

    .line 319
    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->oJ(I)V

    .line 320
    const-string p2, "dislike"

    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->oJ(Ljava/lang/String;)V

    .line 321
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/cY$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/cY$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/cY;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/si/tB;->oJ(Lcom/bytedance/sdk/openadsdk/si/ex;)V

    .line 322
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/cY$3;

    invoke-direct {v0, p0, p4}, Lcom/bytedance/sdk/openadsdk/core/cY$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/cY;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/bytedance/sdk/component/cFZ/ZYk/ex;->oJ(Lcom/bytedance/sdk/component/cFZ/oJ/oJ;)V

    .line 323
    :try_start_0
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 324
    const-string p1, "cid"

    const-string p4, ""

    invoke-virtual {p3, p1, p4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 325
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 326
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ba/ZYk;->oJ()Lcom/bytedance/sdk/openadsdk/ba/ZYk;

    move-result-object p3

    invoke-virtual {p3, p2, p1, p5, p5}, Lcom/bytedance/sdk/openadsdk/ba/ZYk;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_3
    :goto_1
    return-void

    .line 327
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public oJ(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/Id$ZYk;)V
    .locals 3

    .line 409
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/jFA;->oJ()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x3e8

    .line 410
    const-string v0, "Ad request is temporarily paused, Please contact your AM"

    invoke-interface {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/Id$ZYk;->oJ(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_4

    if-nez p2, :cond_2

    goto :goto_2

    .line 411
    :cond_2
    sget-object v0, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->REWARD_VERIFY:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 412
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->ZYk()Lcom/bytedance/sdk/openadsdk/Ry/ZYk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->tB()Lcom/bytedance/sdk/component/cFZ/oJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cFZ/oJ;->ZYk()Lcom/bytedance/sdk/component/cFZ/ZYk/ex;

    move-result-object v0

    .line 413
    :try_start_0
    const-string v1, "/api/ad/union/sdk/reward_video/reward/"

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/so/ex;->oJ(Lcom/bytedance/sdk/component/cFZ/ZYk/tB;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 414
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ZYk(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 415
    const-string v2, "NetApiImpl"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Lcom/bytedance/sdk/component/cFZ/ZYk/ex;Lorg/json/JSONObject;)V

    if-eqz p1, :cond_3

    .line 417
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const-string p1, ""

    :goto_1
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/cFZ/ZYk/ex;->ex(Ljava/lang/String;)V

    const/16 p1, 0xa

    .line 418
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->oJ(I)V

    .line 419
    const-string p1, "reward"

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->oJ(Ljava/lang/String;)V

    .line 420
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/cY$4;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/cY$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/cY;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/si/tB;->oJ(Lcom/bytedance/sdk/openadsdk/si/ex;)V

    .line 421
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/cY$5;

    invoke-direct {p1, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/cY$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/cY;Lcom/bytedance/sdk/openadsdk/core/Id$ZYk;)V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/cFZ/ZYk/ex;->oJ(Lcom/bytedance/sdk/component/cFZ/oJ/oJ;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public oJ(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3

    .line 460
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->ZYk()Lcom/bytedance/sdk/openadsdk/Ry/ZYk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->tB()Lcom/bytedance/sdk/component/cFZ/oJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cFZ/oJ;->ZYk()Lcom/bytedance/sdk/component/cFZ/ZYk/ex;

    move-result-object v0

    .line 461
    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ZYk(Ljava/lang/String;)V

    .line 462
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->generateRequestHeader()Landroid/util/Pair;

    move-result-object p2

    .line 463
    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "cypher"

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ZYk(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    const-string v1, "transfer-param"

    invoke-virtual {v0, v1, p2}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ZYk(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object p2

    invoke-interface {p2}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->JJ()Ljava/lang/String;

    move-result-object p2

    const-string v1, "x-pangle-target-idc"

    invoke-virtual {v0, v1, p2}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ZYk(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/cFZ/ZYk/ex;->oJ(Lorg/json/JSONObject;)V

    const/4 p1, 0x5

    .line 467
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->oJ(I)V

    .line 468
    const-string p1, "apm_pv"

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->oJ(Ljava/lang/String;)V

    .line 469
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/cY$7;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/cY$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/cY;)V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/cFZ/ZYk/ex;->oJ(Lcom/bytedance/sdk/component/cFZ/oJ/oJ;)V

    return-void
.end method
