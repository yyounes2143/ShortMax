.class public Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final oJ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk/oJ;",
            "Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->oJ:Ljava/util/Map;

    .line 11
    .line 12
    return-void
.end method

.method public static Pfn(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk/oJ;Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;)V
    .locals 7

    .line 1
    if-eqz p0, :cond_5

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->kkU()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-gtz v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->oJ:Ljava/util/Map;

    .line 14
    .line 15
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB;

    .line 20
    .line 21
    if-nez p0, :cond_2

    .line 22
    .line 23
    return-void

    .line 24
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB;->ex()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB;->Pfn()Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v0, :cond_5

    .line 33
    .line 34
    if-nez v1, :cond_3

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->ex()J

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    new-instance v4, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/PiB;

    .line 42
    .line 43
    invoke-direct {v4}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/PiB;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->tB()J

    .line 47
    .line 48
    .line 49
    move-result-wide v5

    .line 50
    invoke-virtual {v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/PiB;->oJ(J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v2, v3}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/PiB;->ZYk(J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->kkU()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-virtual {v4, v2}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/PiB;->oJ(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB;->tB()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB;->ZYk()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-static {v1, p0, v2, v0, p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ILcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;)Lorg/json/JSONObject;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    iget v0, v0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->Pfn:I

    .line 76
    .line 77
    if-lez v0, :cond_4

    .line 78
    .line 79
    :try_start_0
    const-string v2, "play_time"

    .line 80
    .line 81
    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    const-string v2, "TTAD.VideoEventManager"

    .line 87
    .line 88
    const-string v3, ""

    .line 89
    .line 90
    invoke-static {v2, v3, v0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    .line 92
    .line 93
    :cond_4
    :goto_0
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    new-instance v2, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;

    .line 98
    .line 99
    invoke-direct {v2, v1, v0, p0, v4}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/tB;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->dLZ()Z

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    invoke-virtual {v2, p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;->oJ(Z)V

    .line 107
    .line 108
    .line 109
    const-string p0, "play_buffer"

    .line 110
    .line 111
    invoke-static {v2, p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :cond_5
    :goto_1
    return-void
.end method

.method static synthetic ZYk(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->ex(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ZYk(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk/oJ;Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;)V
    .locals 9

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->oJ:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB;

    if-nez p0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB;->ex()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB;->Pfn()Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object v1

    if-eqz v0, :cond_5

    if-nez v1, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->ZYk()J

    move-result-wide v2

    .line 7
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->ex()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_5

    cmp-long v6, v2, v6

    if-gtz v6, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    new-instance v6, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/Pfn;

    invoke-direct {v6}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/Pfn;-><init>()V

    .line 9
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->tB()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/Pfn;->oJ(J)V

    .line 10
    invoke-virtual {v6, v4, v5}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/Pfn;->ZYk(J)V

    .line 11
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB;->tB()I

    move-result v4

    .line 12
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB;->ZYk()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v4, v0, p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ILcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;)Lorg/json/JSONObject;

    move-result-object p0

    .line 13
    iget v0, v0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->Pfn:I

    const-string v4, ""

    const-string v5, "TTAD.VideoEventManager"

    if-lez v0, :cond_4

    .line 14
    :try_start_0
    const-string v7, "play_time"

    invoke-virtual {p0, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 15
    invoke-static {v5, v4, v0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    :cond_4
    :goto_0
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/lang/String;

    move-result-object v0

    .line 17
    new-instance v7, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;

    invoke-direct {v7, v1, v0, p0, v6}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/tB;)V

    .line 18
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->dLZ()Z

    move-result p0

    invoke-virtual {v7, p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;->oJ(Z)V

    .line 19
    :try_start_1
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 20
    const-string v0, "duration"

    invoke-virtual {p0, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 21
    const-string v0, "percent"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->cFZ()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 22
    const-string p1, "feed_continue"

    invoke-static {v7, p1, p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    .line 23
    invoke-static {v5, v4, p0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public static ZYk(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk/oJ;Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V
    .locals 10

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 24
    :cond_0
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->Pfn(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk/oJ;Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;)V

    .line 25
    sget-object v0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->oJ:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB;

    if-nez v0, :cond_1

    return-void

    .line 26
    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB;->ex()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;

    move-result-object v1

    .line 27
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB;->Pfn()Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object v2

    if-eqz v1, :cond_4

    if-nez v2, :cond_2

    goto :goto_2

    .line 28
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->ZYk()J

    move-result-wide v3

    .line 29
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->ex()J

    move-result-wide v5

    .line 30
    new-instance v7, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/ba;

    invoke-direct {v7}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/ba;-><init>()V

    .line 31
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->tB()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/ba;->ZYk(J)V

    .line 32
    invoke-virtual {v7, v5, v6}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/ba;->oJ(J)V

    .line 33
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->jFA()I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/ba;->oJ(I)V

    .line 34
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB;->tB()I

    move-result v5

    .line 35
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB;->ZYk()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v5, v1, p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ILcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;)Lorg/json/JSONObject;

    move-result-object v0

    .line 36
    iget v1, v1, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->Pfn:I

    const-string v5, ""

    const-string v6, "TTAD.VideoEventManager"

    if-lez v1, :cond_3

    .line 37
    :try_start_0
    const-string v8, "play_time"

    invoke-virtual {v0, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 38
    invoke-static {v6, v5, v1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    :cond_3
    :goto_0
    invoke-static {p1, v2, v0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lorg/json/JSONObject;)V

    .line 40
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/lang/String;

    move-result-object v1

    .line 41
    new-instance v8, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;

    invoke-direct {v8, v2, v1, v0, v7}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/tB;)V

    .line 42
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->dLZ()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;->oJ(Z)V

    .line 43
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 44
    const-string v1, "duration"

    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 45
    const-string v1, "percent"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->cFZ()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 46
    const-string p1, "feed_over"

    invoke-static {v8, p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 47
    invoke-static {v6, v5, p1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    :goto_1
    sget-object p1, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->oJ:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    return-void
.end method

.method public static ZYk(Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ<",
            "Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/jFA;",
            ">;)V"
        }
    .end annotation

    .line 2
    const-string v0, "load_video_cancel"

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/awB/tB;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;)V

    return-void
.end method

.method private static ex(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)Ljava/lang/String;
    .locals 2

    .line 22
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->Pfn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->si()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ex(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk/oJ;Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;)V
    .locals 10

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 1
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->oJ:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB;

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB;->ex()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB;->Pfn()Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object v2

    if-eqz v1, :cond_3

    if-nez v2, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->ZYk()J

    move-result-wide v3

    .line 5
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->ex()J

    move-result-wide v5

    .line 6
    new-instance v7, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/ZYk;

    invoke-direct {v7}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/ZYk;-><init>()V

    .line 7
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->tB()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/ZYk;->oJ(J)V

    .line 8
    invoke-virtual {v7, v5, v6}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/ZYk;->ZYk(J)V

    .line 9
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->Pfn()I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/ZYk;->oJ(I)V

    .line 10
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->ba()I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/ZYk;->ZYk(I)V

    .line 11
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB;->tB()I

    move-result v5

    .line 12
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB;->ZYk()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v5, v1, p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ILcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;)Lorg/json/JSONObject;

    move-result-object v0

    .line 13
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/lang/String;

    move-result-object v1

    .line 14
    new-instance v5, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;

    invoke-direct {v5, v2, v1, v0, v7}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/tB;)V

    .line 15
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->dLZ()Z

    move-result v0

    invoke-virtual {v5, v0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;->oJ(Z)V

    .line 16
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 17
    const-string v1, "duration"

    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 18
    const-string v1, "percent"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->cFZ()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 19
    const-string p1, "endcard_skip"

    invoke-static {v5, p1, v0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 20
    const-string v0, "TTAD.VideoEventManager"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    :goto_0
    sget-object p1, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->oJ:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)J
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->tB(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ILcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ILcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ILcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;)Lorg/json/JSONObject;
    .locals 3

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    const-string v1, "session_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    :goto_0
    if-lez p2, :cond_1

    .line 6
    const-string p1, "play_type"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    if-eqz p0, :cond_6

    .line 7
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 8
    const-string p2, "video_resolution"

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->jFA()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    const-string p2, "video_size"

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->Pfn()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    const-string p2, "video_url"

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->dLZ()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    const-string p1, "player_type"

    invoke-virtual {p3}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->Ry()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 12
    const-string p1, "video_encode_type"

    invoke-virtual {p3}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->WcQ()Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 13
    :cond_2
    invoke-virtual {p3}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->oJ()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 14
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {p3}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->tB()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_4

    .line 15
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_4
    if-eqz p4, :cond_5

    .line 16
    const-string p2, "surface_texture_updated"

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->awB()Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 17
    :cond_5
    const-string p2, "pag_json_data"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    const-string p1, "dp_creative_type"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->GSK()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 19
    :goto_2
    const-string p1, "TTAD.VideoEventManager"

    const-string p2, ""

    invoke-static {p1, p2, p0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    return-object v0
.end method

.method public static oJ(Landroid/content/Context;Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk/oJ;Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V
    .locals 7

    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 35
    :cond_0
    sget-object p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->oJ:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB;

    if-nez p0, :cond_1

    return-void

    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB;->ex()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;

    move-result-object p1

    .line 37
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB;->Pfn()Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object v0

    if-eqz p1, :cond_7

    if-nez v0, :cond_2

    goto/16 :goto_3

    .line 38
    :cond_2
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->dLZ()Z

    move-result v1

    if-nez v1, :cond_3

    .line 39
    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;)V

    .line 40
    :cond_3
    new-instance v1, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/so;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/so;-><init>()V

    .line 41
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->BTZ()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/so;->oJ(I)V

    .line 42
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->rQ()I

    move-result v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ/ZYk;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ/ZYk;->ZYk(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/so;->ZYk(J)V

    .line 43
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB;->oJ()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/so;->oJ(J)V

    .line 44
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB;->tB()I

    move-result v2

    .line 45
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB;->ZYk()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v2, p1, p2}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ILcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;)Lorg/json/JSONObject;

    move-result-object p0

    .line 46
    iget p1, p1, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->Pfn:I

    const-string v2, ""

    const-string v3, "TTAD.VideoEventManager"

    if-lez p1, :cond_4

    .line 47
    :try_start_0
    const-string v4, "play_time"

    invoke-virtual {p0, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 48
    invoke-static {v3, v2, p1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    :cond_4
    :goto_0
    const-string p1, "pag_json_data"

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 50
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 51
    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v6

    goto :goto_1

    :catch_1
    move-exception v5

    .line 52
    invoke-static {v3, v2, v5}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    if-nez v4, :cond_6

    .line 53
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 54
    :cond_6
    :try_start_2
    const-string v5, "is_received_video_not_playing_info"

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->WcQ()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 55
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 56
    invoke-static {v3, v2, p1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    :goto_2
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/lang/String;

    move-result-object p1

    .line 58
    new-instance v2, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;

    invoke-direct {v2, v0, p1, p0, v1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/tB;)V

    .line 59
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->dLZ()Z

    move-result p0

    invoke-virtual {v2, p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;->oJ(Z)V

    .line 60
    const-string p0, "feed_play"

    invoke-static {v2, p0, p3}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public static oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk/oJ;Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;)V
    .locals 9

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 61
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->oJ:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB;

    if-nez p0, :cond_1

    return-void

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB;->ex()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;

    move-result-object v0

    .line 63
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB;->Pfn()Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object v1

    if-eqz v0, :cond_5

    if-nez v1, :cond_2

    goto :goto_1

    .line 64
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->ZYk()J

    move-result-wide v2

    .line 65
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->ex()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_5

    cmp-long v6, v2, v6

    if-gtz v6, :cond_3

    goto :goto_1

    .line 66
    :cond_3
    new-instance v6, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/cFZ;

    invoke-direct {v6}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/cFZ;-><init>()V

    .line 67
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->tB()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/cFZ;->oJ(J)V

    .line 68
    invoke-virtual {v6, v4, v5}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/cFZ;->ZYk(J)V

    .line 69
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB;->tB()I

    move-result v4

    .line 70
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB;->ZYk()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v4, v0, p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ILcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;)Lorg/json/JSONObject;

    move-result-object p0

    .line 71
    iget v0, v0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->Pfn:I

    const-string v4, ""

    const-string v5, "TTAD.VideoEventManager"

    if-lez v0, :cond_4

    .line 72
    :try_start_0
    const-string v7, "play_time"

    invoke-virtual {p0, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 73
    invoke-static {v5, v4, v0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    :cond_4
    :goto_0
    invoke-static {p1, v1, p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lorg/json/JSONObject;)V

    .line 75
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/lang/String;

    move-result-object v0

    .line 76
    new-instance v7, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;

    invoke-direct {v7, v1, v0, p0, v6}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/tB;)V

    .line 77
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->dLZ()Z

    move-result p0

    invoke-virtual {v7, p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;->oJ(Z)V

    .line 78
    :try_start_1
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 79
    const-string v0, "duration"

    invoke-virtual {p0, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 80
    const-string v0, "percent"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->cFZ()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 81
    const-string p1, "feed_pause"

    invoke-static {v7, p1, p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 82
    invoke-static {v5, v4, p0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public static oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk/oJ;Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V
    .locals 9

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 90
    :cond_0
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->Pfn(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk/oJ;Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;)V

    .line 91
    sget-object v0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->oJ:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB;

    if-nez p0, :cond_1

    return-void

    .line 92
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB;->ex()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;

    move-result-object v0

    .line 93
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB;->Pfn()Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object v1

    if-eqz v0, :cond_4

    if-nez v1, :cond_2

    goto :goto_1

    .line 94
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->ZYk()J

    move-result-wide v2

    .line 95
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->ex()J

    move-result-wide v4

    .line 96
    new-instance v6, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/ex;

    invoke-direct {v6}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/ex;-><init>()V

    .line 97
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->tB()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/ex;->ZYk(J)V

    .line 98
    invoke-virtual {v6, v4, v5}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/ex;->oJ(J)V

    .line 99
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->so()I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/ex;->oJ(I)V

    .line 100
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->jFA()I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/ex;->ZYk(I)V

    .line 101
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB;->tB()I

    move-result v4

    .line 102
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB;->ZYk()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v4, v0, p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ILcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;)Lorg/json/JSONObject;

    move-result-object p0

    .line 103
    iget v0, v0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->Pfn:I

    const-string v4, ""

    const-string v5, "TTAD.VideoEventManager"

    if-lez v0, :cond_3

    .line 104
    :try_start_0
    const-string v7, "play_time"

    invoke-virtual {p0, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 105
    invoke-static {v5, v4, v0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    :cond_3
    :goto_0
    invoke-static {p1, v1, p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lorg/json/JSONObject;)V

    .line 107
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/lang/String;

    move-result-object v0

    .line 108
    new-instance v7, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;

    invoke-direct {v7, v1, v0, p0, v6}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/tB;)V

    .line 109
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->dLZ()Z

    move-result p0

    invoke-virtual {v7, p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;->oJ(Z)V

    .line 110
    :try_start_1
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 111
    const-string v0, "duration"

    invoke-virtual {p0, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 112
    const-string v0, "percent"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->cFZ()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 113
    const-string p1, "feed_break"

    invoke-static {v7, p1, p0, p2}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    .line 114
    invoke-static {v5, v4, p0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk/oJ;ZLjava/lang/String;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 115
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->oJ:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB;

    if-nez p0, :cond_1

    return-void

    .line 116
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB;->ex()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;

    move-result-object v0

    .line 117
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB;->Pfn()Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object v1

    if-eqz v0, :cond_4

    if-nez v1, :cond_2

    goto :goto_3

    .line 118
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB;->ZYk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB;->tB()I

    move-result p0

    const/4 v3, 0x0

    invoke-static {v1, v2, p0, v0, v3}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ILcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;)Lorg/json/JSONObject;

    move-result-object p0

    .line 119
    :try_start_0
    iget v0, v0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->Pfn:I

    if-lez v0, :cond_3

    .line 120
    const-string v2, "play_time"

    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 121
    :cond_3
    :goto_0
    const-string v0, "is_mute"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 122
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 123
    const-string v0, "from"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string p2, "pag_json_data"

    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 125
    :goto_1
    const-string p2, "TTAD.VideoEventManager"

    const-string v0, ""

    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    :goto_2
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/lang/String;

    move-result-object p1

    .line 127
    new-instance p2, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;

    invoke-direct {p2, v1, p1, p0, v3}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/tB;)V

    .line 128
    const-string p0, "mute_state_change"

    invoke-static {p2, p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;Ljava/lang/String;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk/oJ;Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)V
    .locals 11

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_6

    .line 21
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Xe;->oJ()Ljava/lang/String;

    move-result-object v7

    .line 22
    invoke-virtual {p2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->Xe()Z

    move-result v0

    const/4 v8, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    :goto_0
    move v9, v0

    goto :goto_1

    .line 23
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->rQ()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ/ZYk;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ/ZYk;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v9, v8

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 24
    :goto_1
    new-instance v10, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    move-object v0, v10

    move-object v3, v7

    move v4, v9

    move-object v5, p2

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB;-><init>(JLjava/lang/String;ILcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 25
    sget-object v0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->oJ:Ljava/util/Map;

    invoke-interface {v0, p1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {p0, v7, v9, p2}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ILcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)Lorg/json/JSONObject;

    move-result-object p1

    .line 27
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 28
    :try_start_0
    iget v2, p2, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->Pfn:I

    if-lez v2, :cond_3

    .line 29
    const-string v3, "play_time"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_3

    .line 30
    :cond_3
    :goto_2
    const-string v2, "is_mute"

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->dLZ()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 31
    :goto_3
    const-string v3, "TTAD.VideoEventManager"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    :goto_4
    new-instance v2, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, p1, v3}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/tB;)V

    .line 33
    invoke-virtual {p2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->Ry()I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_4

    goto :goto_5

    :cond_4
    move v8, v1

    :goto_5
    invoke-virtual {v2, v8}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;->oJ(Z)V

    .line 34
    const-string p0, "play_start"

    invoke-static {v2, p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;Ljava/lang/String;)V

    :cond_5
    :goto_6
    return-void
.end method

.method private static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;)V
    .locals 1

    .line 137
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/awB/tB;->oJ()Lcom/bytedance/sdk/openadsdk/awB/tB;

    .line 138
    new-instance v0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ$2;

    invoke-direct {v0, p1, p2, p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ$2;-><init>(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    const-string p0, "pangle_video_play_state"

    const/4 p1, 0x0

    invoke-static {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/awB/tB;->oJ(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/awB/ZYk;)V

    return-void
.end method

.method private static oJ(Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lorg/json/JSONObject;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 83
    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->zxE()Lcom/bytedance/sdk/openadsdk/core/model/LpP;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 85
    const-string v1, "speed_type"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->zxE()Lcom/bytedance/sdk/openadsdk/core/model/LpP;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/LpP;->ZYk()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 86
    const-string v1, "speed"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->zxE()Lcom/bytedance/sdk/openadsdk/core/model/LpP;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/LpP;->oJ()F

    move-result p1

    float-to-double v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 87
    const-string p1, "speed_duration"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->oJ()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 88
    const-string p0, "pag_json_data"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 89
    const-string p1, "TTAD.VideoEventManager"

    const-string p2, ""

    invoke-static {p1, p2, p0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ<",
            "Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/kkU;",
            ">;)V"
        }
    .end annotation

    .line 20
    const-string v0, "load_video_error"

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/awB/tB;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;)V

    return-void
.end method

.method private static oJ(Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 129
    invoke-static {p0, p1, v0, v0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V

    return-void
.end method

.method private static oJ(Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V
    .locals 1

    const/4 v0, 0x0

    .line 131
    invoke-static {p0, p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V

    return-void
.end method

.method private static oJ(Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    const/4 v0, 0x0

    .line 130
    invoke-static {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V

    return-void
.end method

.method private static oJ(Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 132
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 133
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;->Pfn()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;->ZYk()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 134
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;->ZYk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "stream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "embeded_ad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 135
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "customer_"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    :goto_0
    move-object v4, p1

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;->oJ()Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;->ZYk()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ$1;

    invoke-direct {v5, p0, v4, p3, p2}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ$1;-><init>(Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ex/cFZ;Lorg/json/JSONObject;)V

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    return-void
.end method

.method private static tB(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)J
    .locals 4

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->WcQ()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->jr()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->cY()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    .line 23
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->ba()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    :cond_2
    return-wide v0
.end method

.method public static tB(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk/oJ;Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;)V
    .locals 9

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 1
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->oJ:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB;

    if-nez p0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB;->ex()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB;->Pfn()Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object v1

    if-eqz v0, :cond_4

    if-nez v1, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->ZYk()J

    move-result-wide v2

    .line 5
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->ex()J

    move-result-wide v4

    .line 6
    new-instance v6, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/WcQ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->PiB()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/oJ;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/WcQ;-><init>(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/oJ;)V

    .line 7
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->tB()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/WcQ;->oJ(J)V

    .line 8
    invoke-virtual {v6, v4, v5}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/WcQ;->ZYk(J)V

    .line 9
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB;->tB()I

    move-result v4

    .line 10
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB;->ZYk()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v4, v0, p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ILcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;)Lorg/json/JSONObject;

    move-result-object p0

    .line 11
    iget v0, v0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->Pfn:I

    const-string v4, ""

    const-string v5, "TTAD.VideoEventManager"

    if-lez v0, :cond_3

    .line 12
    :try_start_0
    const-string v7, "play_time"

    invoke-virtual {p0, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    invoke-static {v5, v4, v0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    :cond_3
    :goto_0
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/lang/String;

    move-result-object v0

    .line 15
    new-instance v7, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;

    invoke-direct {v7, v1, v0, p0, v6}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/tB;)V

    .line 16
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->dLZ()Z

    move-result p0

    invoke-virtual {v7, p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;->oJ(Z)V

    .line 17
    :try_start_1
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 18
    const-string v0, "duration"

    invoke-virtual {p0, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 19
    const-string v0, "percent"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->cFZ()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 20
    const-string p1, "play_error"

    invoke-static {v7, p1, p0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    .line 21
    invoke-static {v5, v4, p0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method
