.class public final Lcom/inmobi/media/U2;
.super Lcom/inmobi/media/N9;
.source "SourceFile"


# instance fields
.field public final A:I

.field public final B:Ljava/lang/String;

.field public final C:Z

.field public final y:Ljava/util/Map;

.field public final z:I


# direct methods
.method public constructor <init>(Ljava/util/Map;Lcom/inmobi/media/ue;Ljava/lang/String;IIZLjava/lang/String;Z)V
    .locals 11

    .line 1
    move-object v8, p0

    .line 2
    move-object v9, p1

    .line 3
    move-object/from16 v10, p7

    .line 4
    .line 5
    const-string v0, "requestedConfigMap"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "uidMap"

    .line 11
    .line 12
    move-object v3, p2

    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "url"

    .line 17
    .line 18
    move-object v1, p3

    .line 19
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v0, "accountId"

    .line 23
    .line 24
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v0, "root"

    .line 28
    .line 29
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-static {p3}, Lkotlin/text/StringsKt;->v1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    :goto_0
    const-string v0, "https://config.inmobi.com/config-server/v1/config/secure.cfg"

    .line 51
    .line 52
    move-object v2, v0

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    move-object v2, v1

    .line 55
    :goto_1
    const-string v6, "application/x-www-form-urlencoded"

    .line 56
    .line 57
    const/16 v7, 0x40

    .line 58
    .line 59
    const-string v1, "POST"

    .line 60
    .line 61
    const/4 v5, 0x0

    .line 62
    move-object v0, p0

    .line 63
    move-object v3, p2

    .line 64
    move/from16 v4, p6

    .line 65
    .line 66
    invoke-direct/range {v0 .. v7}, Lcom/inmobi/media/N9;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/ue;ZLcom/inmobi/media/z5;Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    iput-object v9, v8, Lcom/inmobi/media/U2;->y:Ljava/util/Map;

    .line 70
    .line 71
    move v0, p4

    .line 72
    iput v0, v8, Lcom/inmobi/media/U2;->z:I

    .line 73
    .line 74
    move/from16 v0, p5

    .line 75
    .line 76
    iput v0, v8, Lcom/inmobi/media/U2;->A:I

    .line 77
    .line 78
    iput-object v10, v8, Lcom/inmobi/media/U2;->B:Ljava/lang/String;

    .line 79
    .line 80
    move/from16 v0, p8

    .line 81
    .line 82
    iput-boolean v0, v8, Lcom/inmobi/media/U2;->C:Z

    .line 83
    .line 84
    return-void
.end method


# virtual methods
.method public final f()V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/inmobi/media/N9;->u:Z

    .line 3
    .line 4
    invoke-super {p0}, Lcom/inmobi/media/N9;->f()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/inmobi/media/N9;->k:Ljava/util/HashMap;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    new-instance v1, Lcom/inmobi/media/Q2;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/inmobi/media/Q2;-><init>()V

    .line 14
    .line 15
    .line 16
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    .line 17
    .line 18
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v3, p0, Lcom/inmobi/media/U2;->y:Ljava/util/Map;

    .line 22
    .line 23
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Ljava/util/Map$Entry;

    .line 42
    .line 43
    new-instance v5, Lorg/json/JSONObject;

    .line 44
    .line 45
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v6, "n"

    .line 49
    .line 50
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    .line 56
    .line 57
    const-string v6, "t"

    .line 58
    .line 59
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    check-cast v7, Ljava/lang/String;

    .line 64
    .line 65
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    check-cast v4, Lcom/inmobi/commons/core/configs/Config;

    .line 70
    .line 71
    invoke-virtual {v4}, Lcom/inmobi/commons/core/configs/Config;->getAccountId$media_release()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {v1, v7, v4}, Lcom/inmobi/media/Q2;->a(Ljava/lang/String;Ljava/lang/String;)J

    .line 76
    .line 77
    .line 78
    move-result-wide v7

    .line 79
    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    const-string v2, "toString(...)"

    .line 91
    .line 92
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :catch_0
    const-string v1, ""

    .line 97
    .line 98
    :goto_1
    const-string v2, "p"

    .line 99
    .line 100
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Ljava/lang/String;

    .line 105
    .line 106
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/N9;->k:Ljava/util/HashMap;

    .line 107
    .line 108
    if-eqz v0, :cond_2

    .line 109
    .line 110
    iget-object v1, p0, Lcom/inmobi/media/U2;->B:Ljava/lang/String;

    .line 111
    .line 112
    const-string v2, "im-accid"

    .line 113
    .line 114
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Ljava/lang/String;

    .line 119
    .line 120
    :cond_2
    iget-boolean v0, p0, Lcom/inmobi/media/U2;->C:Z

    .line 121
    .line 122
    if-eqz v0, :cond_3

    .line 123
    .line 124
    iget-object v0, p0, Lcom/inmobi/media/N9;->i:Ljava/util/HashMap;

    .line 125
    .line 126
    const-string v1, "rip"

    .line 127
    .line 128
    const-string v2, "true"

    .line 129
    .line 130
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    :cond_3
    return-void
.end method
