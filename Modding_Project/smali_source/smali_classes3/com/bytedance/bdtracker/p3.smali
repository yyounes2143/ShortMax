.class public Lcom/bytedance/bdtracker/p3;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static d:Lorg/json/JSONObject;


# instance fields
.field public a:Ljava/lang/String;

.field public final b:Lcom/bytedance/bdtracker/d;

.field public final c:Lcom/bytedance/bdtracker/p4;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "https://databyterangers.com.cn"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/bytedance/bdtracker/p3;->a:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 9
    .line 10
    new-instance v0, Lcom/bytedance/bdtracker/p4;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Lcom/bytedance/bdtracker/p4;-><init>(Lcom/bytedance/bdtracker/d;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/bytedance/bdtracker/p3;->c:Lcom/bytedance/bdtracker/p4;

    .line 16
    .line 17
    return-void
.end method

.method public static a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "aid"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "os"

    const-string v1, "Android"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "os_version"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "sdk_version"

    const-string v1, "6.15.4"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "app_version"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 6
    if-eqz p0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    const-string v0, "?"

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v0, "&"

    goto :goto_0

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_2
    return-void
.end method

.method public static b(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "magic_tag"

    const-string v2, "ss_app_log"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "header"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string p0, "_gen_time"

    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object v0
.end method


# virtual methods
.method public a([Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/bdtracker/p1;)I
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/bdtracker/p3;->a()Ljava/util/HashMap;

    move-result-object v12

    array-length v13, v2

    const/4 v15, 0x0

    const/4 v11, 0x0

    move v10, v11

    move-object/from16 v16, v15

    const/16 v17, 0x66

    :goto_0
    if-ge v10, v13, :cond_5

    aget-object v6, v2, v10

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v4, v1, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    invoke-virtual {v4}, Lcom/bytedance/bdtracker/d;->getNetClient()Lcom/bytedance/applog/network/INetworkClient;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/16 v18, 0x1

    const v19, 0xea60

    const/4 v5, 0x1

    const/4 v9, 0x0

    move-object/from16 v7, p2

    move-object v8, v12

    move/from16 v20, v10

    move/from16 v10, v18

    move v14, v11

    move/from16 v11, v19

    :try_start_1
    invoke-interface/range {v4 .. v11}, Lcom/bytedance/applog/network/INetworkClient;->execute(BLjava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;BZI)[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v1, v4}, Lcom/bytedance/bdtracker/p3;->a(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v0, "ss_app_log"

    :try_start_3
    const-string v5, "magic_tag"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v0, :cond_1

    const-string v0, "success"

    :try_start_4
    const-string v5, "message"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-eqz v0, :cond_0

    const/16 v17, 0xc8

    goto :goto_5

    :cond_0
    const/16 v17, 0x65

    move-object/from16 v16, v4

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    move-object/from16 v16, v4

    const/16 v17, 0x66

    goto :goto_4

    :goto_1
    move-object/from16 v16, v4

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move/from16 v20, v10

    move v14, v11

    :goto_2
    instance-of v4, v0, Lcom/bytedance/applog/network/RangersHttpException;

    if-eqz v4, :cond_3

    check-cast v0, Lcom/bytedance/applog/network/RangersHttpException;

    invoke-virtual {v0}, Lcom/bytedance/applog/network/RangersHttpException;->getResponseCode()I

    move-result v0

    .line 18
    iget-object v4, v3, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    .line 19
    invoke-virtual {v4}, Lcom/bytedance/applog/InitConfig;->isCongestionControlEnable()Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x1f4

    if-lt v0, v4, :cond_2

    const/16 v4, 0x258

    if-ge v0, v4, :cond_2

    move/from16 v17, v0

    :goto_3
    move-object/from16 v4, v16

    goto :goto_5

    :cond_2
    move/from16 v17, v0

    goto :goto_4

    :cond_3
    iget-object v4, v1, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 20
    iget-object v4, v4, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 21
    new-array v5, v14, [Ljava/lang/Object;

    const/16 v6, 0xb

    const-string v7, "Send to server failed"

    invoke-interface {v4, v6, v7, v0, v5}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_4
    :goto_4
    add-int/lit8 v10, v20, 0x1

    move v11, v14

    goto/16 :goto_0

    :cond_5
    move v14, v11

    goto :goto_3

    :goto_5
    if-eqz v4, :cond_d

    invoke-virtual {v3, v4}, Lcom/bytedance/bdtracker/p1;->a(Lorg/json/JSONObject;)V

    const-string v0, "blocklist"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string v2, "v1"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v11

    goto :goto_6

    :cond_6
    move v11, v14

    :goto_6
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v11}, Ljava/util/HashSet;-><init>(I)V

    move v5, v14

    :goto_7
    if-ge v5, v11, :cond_8

    invoke-virtual {v2, v5, v15}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_8
    const-string v2, "v3"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v11

    goto :goto_8

    :cond_9
    move v11, v14

    :goto_8
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v11}, Ljava/util/HashSet;-><init>(I)V

    :goto_9
    if-ge v14, v11, :cond_b

    invoke-virtual {v0, v14, v15}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    :cond_b
    invoke-virtual {v3, v4, v2}, Lcom/bytedance/bdtracker/p1;->a(Ljava/util/HashSet;Ljava/util/HashSet;)V

    goto :goto_a

    :cond_c
    invoke-virtual {v3, v15, v15}, Lcom/bytedance/bdtracker/p1;->a(Ljava/util/HashSet;Ljava/util/HashSet;)V

    :cond_d
    :goto_a
    return v17
.end method

.method public final a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Map;I)Ljava/lang/String;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v0, p1

    const-string v2, "key"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v2, "iv"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-nez v2, :cond_0

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v14, v12

    goto :goto_0

    :cond_0
    move v14, v13

    :goto_0
    iget-object v2, v1, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    invoke-virtual {v2}, Lcom/bytedance/bdtracker/d;->getNetClient()Lcom/bytedance/applog/network/INetworkClient;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v8, 0x1

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move v7, v14

    move/from16 v9, p4

    invoke-interface/range {v2 .. v9}, Lcom/bytedance/applog/network/INetworkClient;->execute(BLjava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;BZI)[B

    move-result-object v2

    if-eqz v14, :cond_6

    const/4 v3, 0x0

    if-nez v2, :cond_1

    goto :goto_7

    :cond_1
    invoke-static {v2, v10, v11}, Lcom/bytedance/bdtracker/p4;->a([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    if-eqz v4, :cond_4

    .line 16
    array-length v2, v4

    if-gtz v2, :cond_2

    move-object v2, v3

    goto :goto_5

    :cond_2
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v6, 0x400

    :try_start_2
    new-array v6, v6, [B

    :goto_1
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-ltz v7, :cond_3

    invoke-virtual {v2, v6, v13, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_2
    move-object v3, v5

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v4, v3

    goto :goto_2

    :catch_0
    move-object v4, v3

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v4, v3

    :goto_3
    invoke-static {v4}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/io/Closeable;)V

    throw v0

    :catch_1
    move-object v4, v3

    move-object v5, v4

    :catch_2
    :cond_3
    :goto_4
    invoke-static {v4}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/io/Closeable;)V

    invoke-static {v5}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/io/Closeable;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    :goto_5
    if-eqz v2, :cond_5

    .line 17
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    :goto_6
    move v12, v13

    goto :goto_7

    :cond_4
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_6

    :cond_5
    :goto_7
    if-eqz v12, :cond_7

    new-instance v10, Ljava/lang/String;

    iget-object v2, v1, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    invoke-virtual {v2}, Lcom/bytedance/bdtracker/d;->getNetClient()Lcom/bytedance/applog/network/INetworkClient;

    move-result-object v2

    const/4 v8, 0x1

    const v9, 0xea60

    const/4 v3, 0x1

    const/4 v7, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    invoke-interface/range {v2 .. v9}, Lcom/bytedance/applog/network/INetworkClient;->execute(BLjava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;BZI)[B

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    move-object v3, v10

    goto :goto_8

    :cond_6
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    :cond_7
    :goto_8
    return-object v3
.end method

.method public final a()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iget-object v1, p0, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    invoke-virtual {v1}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/bytedance/applog/InitConfig;->getHttpHeaders()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    iget-object v1, p0, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    invoke-static {v0, v1}, Lcom/bytedance/bdtracker/p4;->a(Ljava/util/HashMap;Lcom/bytedance/bdtracker/d;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/p3;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 8
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 v1, 0x0

    .line 9
    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0xb

    const-string v3, "JSON handle failed"

    invoke-interface {v0, v2, v3, p1, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 12

    iget-object v0, p0, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 10
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 11
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Start to register to uri:{} with request:{}..."

    const/16 v3, 0xb

    invoke-interface {v0, v3, v2, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/bytedance/bdtracker/p3;->a()Ljava/util/HashMap;

    move-result-object v8

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    invoke-virtual {v1}, Lcom/bytedance/bdtracker/d;->getNetClient()Lcom/bytedance/applog/network/INetworkClient;

    move-result-object v4

    iget-object v1, p0, Lcom/bytedance/bdtracker/p3;->c:Lcom/bytedance/bdtracker/p4;

    invoke-virtual {v1, p1}, Lcom/bytedance/bdtracker/p4;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x1

    const v11, 0xea60

    const/4 v5, 0x1

    const/4 v9, 0x0

    move-object v7, p2

    invoke-interface/range {v4 .. v11}, Lcom/bytedance/applog/network/INetworkClient;->execute(BLjava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;BZI)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p1, p0, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 12
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string p2, "request register success: {}"

    .line 13
    :try_start_2
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v3, p2, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 v0, 0x0

    :goto_0
    iget-object p2, p0, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 14
    iget-object p2, p2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 v1, 0x0

    .line 15
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "request register error"

    invoke-interface {p2, v3, v2, p1, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/p3;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;
    .locals 4

    .line 4
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catchall_0
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/bytedance/bdtracker/l0$b;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public final a(Ljava/lang/String;I[BLjava/lang/String;JLjava/net/HttpURLConnection;)V
    .locals 10

    .line 5
    new-instance v9, Lcom/bytedance/bdtracker/p3$b;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/bytedance/bdtracker/p3$b;-><init>(Lcom/bytedance/bdtracker/p3;Ljava/lang/String;I[BLjava/lang/String;JLjava/net/HttpURLConnection;)V

    const-string v0, "do_request_end"

    invoke-static {v0, v9}, Lcom/bytedance/applog/log/LogUtils;->sendJsonFetcher(Ljava/lang/String;Lcom/bytedance/applog/log/EventBus$DataFetcher;)V

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 5

    .line 7
    const-string v0, "server_time"

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-string v2, "local_time"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sput-object p1, Lcom/bytedance/bdtracker/p3;->d:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "server_time_sync"

    :try_start_1
    new-instance v1, Lcom/bytedance/bdtracker/p3$a;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/bdtracker/p3$a;-><init>(Lcom/bytedance/bdtracker/p3;Lorg/json/JSONObject;)V

    invoke-static {v0, v1}, Lcom/bytedance/applog/log/LogUtils;->sendJsonFetcher(Ljava/lang/String;Lcom/bytedance/applog/log/EventBus$DataFetcher;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public a(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 12

    iget-object v0, p0, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 22
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 23
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Start to send event:{} with cookie:{} to et..."

    const/16 v3, 0xb

    invoke-interface {v0, v3, v2, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    invoke-virtual {v1}, Lcom/bytedance/bdtracker/d;->getHeader()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "header"

    invoke-virtual {v7, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string p1, "event_v3"

    invoke-virtual {v7, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 24
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 25
    new-array v2, v0, [Ljava/lang/Object;

    const-string v4, "JSON handle failed"

    invoke-interface {v1, v3, v4, p1, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/p3;->a()Ljava/util/HashMap;

    move-result-object v8

    const-string p1, "Cookie"

    invoke-virtual {v8, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_1
    new-instance p1, Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    invoke-virtual {v1}, Lcom/bytedance/bdtracker/d;->getNetClient()Lcom/bytedance/applog/network/INetworkClient;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bytedance/bdtracker/p3;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/simulator/mobile/log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x1

    const v11, 0xea60

    const/4 v5, 0x1

    const/4 v9, 0x0

    invoke-interface/range {v4 .. v11}, Lcom/bytedance/applog/network/INetworkClient;->execute(BLjava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;BZI)[B

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "keep"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    invoke-virtual {v1, v0, p2}, Lcom/bytedance/bdtracker/d;->setRangersEventVerifyEnable(ZLjava/lang/String;)V

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    iget-object p2, p0, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 26
    iget-object p2, p2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v1, "Send event to et with response:{}"

    .line 27
    :try_start_2
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, v3, v1, p1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 p1, 0x1

    return p1

    :goto_2
    iget-object p2, p0, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 28
    iget-object p2, p2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 29
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Post to event verify failed"

    invoke-interface {p2, v3, v2, p1, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return v0
.end method

.method public b(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 12

    iget-object v0, p0, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 2
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 3
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Start to report oaid to uri:{} with request:{}..."

    const/16 v3, 0xb

    invoke-interface {v0, v3, v2, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/bytedance/bdtracker/p3;->a()Ljava/util/HashMap;

    move-result-object v8

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    invoke-virtual {v1}, Lcom/bytedance/bdtracker/d;->getNetClient()Lcom/bytedance/applog/network/INetworkClient;

    move-result-object v4

    iget-object v1, p0, Lcom/bytedance/bdtracker/p3;->c:Lcom/bytedance/bdtracker/p4;

    invoke-virtual {v1, p1}, Lcom/bytedance/bdtracker/p4;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x1

    const v11, 0xea60

    const/4 v5, 0x1

    const/4 v9, 0x0

    move-object v7, p2

    invoke-interface/range {v4 .. v11}, Lcom/bytedance/applog/network/INetworkClient;->execute(BLjava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;BZI)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object p1, p0, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 4
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string p2, "reportOaid success: {}"

    .line 5
    :try_start_2
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v3, p2, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    const/4 v0, 0x0

    :goto_0
    iget-object p2, p0, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 6
    iget-object p2, p2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 v1, 0x0

    .line 7
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "reportOaid error"

    invoke-interface {p2, v3, v2, p1, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/p3;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
